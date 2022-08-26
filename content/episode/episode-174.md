+++
title = "Episode 174"
description = """
  This week we cover the debate around the decision in Ubuntu 22.10 to disable
  presenting platform security assessments to end users via GNOME, plus we look at
  security updates for zlib, PostgreSQL, the Linux kernel, Exim and more.
  """
date = 2022-08-26T16:25:00+09:30
lastmod = 2022-08-26T16:25:57+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E174.mp3"
podcast_duration = 1005
podcast_bytes = 12178336
permalink = "https://ubuntusecuritypodcast.org/episode-174/"
guid = "15ba43838b15754484b2d2dbe8c52b8e826b3e652bb8cf54ae8921c0359da39f4c944af6366bf00d9f0b0ec4716c5cb4b676497afb54f5cb93004700834a75f2"
+++

## Overview {#overview}

This week we cover the debate around the decision in Ubuntu 22.10 to disable
presenting platform security assessments to end users via GNOME, plus we look at
security updates for zlib, PostgreSQL, the Linux kernel, Exim and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

12 unique CVEs addressed


### [[USN-5570-1](https://ubuntu.com/security/notices/USN-5570-1), [USN-5573-1](https://ubuntu.com/security/notices/USN-5573-1)] zlib and rsync vulnerability [00:43] {#usn-5570-1-usn-5573-1-zlib-and-rsync-vulnerability-00-43}

-   1 CVEs addressed for zlib in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
-   1 CVEs addressed for rsync in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-37434](https://ubuntu.com/security/CVE-2022-37434) <!-- medium -->
-   Heap-buffer over-read via crafted gzip header - requires an application to
    call the `inflateGetHeader()` function so not everything that uses zlib would be
    affected - impact is DoS via crash
-   Also turns out the original fix introduced a regression upstream so required a
    couple different patches to fix this
    -   thankfully by the time we got around to patching this the regression had
        already been identified and fixed upstream but some other distros who were
        quicker off-the-mark were affected by the regression
-   Also affects rsync in older Ubuntu releases since it contains a vendored copy
    of zlib - but on newer releases rsync uses the system install zlib and so once
    that is patched then rsync is also effectively patched too


### [[USN-5571-1](https://ubuntu.com/security/notices/USN-5571-1)] PostgreSQL vulnerability [02:12] {#usn-5571-1-postgresql-vulnerability-02-12}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-2625](https://ubuntu.com/security/CVE-2022-2625) <!-- medium -->
-   Allowed possible code execution as the postgres superuser via various
    extensions - some of these are bundled with postgres itself and some may come
    from external sources - was fixed however in the core postgres server so no
    need to modify/fix other extensions to remediate this vuln - just need to
    update to this new patched version


### [[USN-5572-1](https://ubuntu.com/security/notices/USN-5572-1)] Linux kernel (AWS) vulnerabilities [02:45] {#usn-5572-1-linux-kernel--aws--vulnerabilities-02-45}

-   3 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-33741](https://ubuntu.com/security/CVE-2022-33741) <!-- medium -->
    -   [CVE-2022-33740](https://ubuntu.com/security/CVE-2022-33740) <!-- medium -->
    -   [CVE-2022-26365](https://ubuntu.com/security/CVE-2022-26365) <!-- medium -->
-   4.4 16.04 ESM AWS
-   3 issues all in Xen paravirtualisation handling - 1 in virtual block driver
    and another in the PV frontend - both of which failed to properly initialise
    memory - could then allow a local attacker to see guest memory contents
-   Third one - memory mgmt issue in PV frontend which could end up sharing
    unrelated data when communicating with various backends - could then possibly
    lead to a crash of the guest or info leak of guest memory etc


### [[USN-5577-1](https://ubuntu.com/security/notices/USN-5577-1)] Linux kernel (OEM) vulnerabilities [03:38] {#usn-5577-1-linux-kernel--oem--vulnerabilities-03-38}

-   2 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-33655](https://ubuntu.com/security/CVE-2021-33655) <!-- medium -->
    -   [CVE-2021-33061](https://ubuntu.com/security/CVE-2021-33061) <!-- medium -->
-   5.14 OEM kernels
-   Intel 10GbE PCI Express driver - insufficient control flow management -&gt; local
    DoS
-   Framebuffer driver failed to verify size limits when changing font / screen
    sizes -&gt; OOB write -&gt; DoS/codeexec-&gt;privesc


### [[USN-5574-1](https://ubuntu.com/security/notices/USN-5574-1)] Exim vulnerability [04:11] {#usn-5574-1-exim-vulnerability-04-11}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-37452](https://ubuntu.com/security/CVE-2022-37452) <!-- medium -->
-   Single-byte heap buffer overflow when doing a host name lookup under certain
    configurations - failed to account for terminating NUL byte and so could
    overwrite this and hence leave a string without a trailing NUL - run of end of
    string -&gt; subsequent further buffer overflow
-   <https://github.com/ivd38/exim_overflow>
-   Requires to have set a custom configuration where the value of one config
    items references the global variable `sender_host_name` so unlikely to affect
    most installations


### [[USN-5575-1](https://ubuntu.com/security/notices/USN-5575-1), [USN-5575-2](https://ubuntu.com/security/notices/USN-5575-2)] Libxslt vulnerabilities [05:06] {#usn-5575-1-usn-5575-2-libxslt-vulnerabilities-05-06}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2021-30560](https://ubuntu.com/security/CVE-2021-30560) <!-- medium -->
    -   [CVE-2019-5815](https://ubuntu.com/security/CVE-2019-5815) <!-- medium -->
-   originally reported against blink (chromium browser engine) - heap corruption
    via crafted HTML
-   plus type confusion bug when handling crafted XML -&gt; heap buffer overflow as
    well


### [[USN-5576-1](https://ubuntu.com/security/notices/USN-5576-1)] Twisted vulnerability [05:41] {#usn-5576-1-twisted-vulnerability-05-41}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-24801](https://ubuntu.com/security/CVE-2022-24801) <!-- medium -->
-   HTTP desync - form of HTTP request smuggling
-   parsed various HTTP requests more leniently than permitted by RFC 7230 - can
    then allow requests which should have been blocked and hence lead to desync if
    requests pass though multiple parsers -&gt; request smuggling -&gt; access to
    privileged endpoints etc


### [[USN-5578-1](https://ubuntu.com/security/notices/USN-5578-1)] Open VM Tools vulnerability [06:23] {#usn-5578-1-open-vm-tools-vulnerability-06-23}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-31676](https://ubuntu.com/security/CVE-2022-31676) <!-- medium -->
-   VMWare OpenVM Tools - failed to properly check access controls on certain
    requests - could then allow a local user who has non-admin access to a guest
    VM to escalate privileges and gain root within the VM


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 22.10 To Disable GNOME 43’s ‘Device Security’ Panel [07:09] {#ubuntu-22-dot-10-to-disable-gnome-43-s-device-security-panel-07-09}

-   <https://www.omgubuntu.co.uk/2022/08/ubuntu-22-10-device-security-panel-disabled>
-   GNOME 43 (Ubuntu 22.10 / Kinetic Kudu) has as new Device Security Panel in
    GNOME Control Center / Settings
-   Shows an assessment of the security of the hardware platform
    -   HSI security levels for the host
    -   <https://fwupd.github.io/libfwupdplugin/hsi.html>
    -   Designed to raise awareness of platform security issues to put pressure on
        vendors to build and provide security configurations OOTB
    -   LVFS analyses firmware binaries to determine how they then affect the security
        of hardware platforms
    -   fwupd then assesses the hardware platform settings in conjuction with the
        details from LVFS for the firmware of the machine and the results can be
        viewed in g-c-c
    -   Includes details like:
        -   Whether SPI memory regions are defined and locked by the BIOS
        -   TPM 2.0 presence
        -   UEFI platform key
        -   IOMMU
        -   Intel BootGuard
        -   Ability to accurately reconstruct the PCR0 value from the TPM event log
        -   Intel CET ([Episode 79 - Joe discusses Intel CET with John Johansen (aka JJ)]({{< relref "episode-79#joe-discusses-intel-cet-with-john-johansen--aka-jj--09-28" >}}))
    -   Unfortunately for most of these options, there is not a lot a user can do to
        easily increase their security / get to a higher level of conformance
    -   So showing this could just alarm users when there is no good action they can
        take to remediate it
        -   especially from the GUI - some of this could be done at a more low-level
            but this has the chance of breaking things
        -   e.g. could try and potentially recompile everything with CET enabled (this
            is already done in Ubuntu for the vast majority of packages but not for
            the kernel - still waiting on Intel to upstream patches required to make
            this work)
        -   but if you do this there is a good chance you could break your install if
            you don't get it right
    -   Ideally if GNOME wants to display security information to the user,
        especially if they want to try and increase security awareness etc, this
        needs to be actionable - and be actionable from the same place as the info
        is displayed - ie in g-c-c itself
    -   and if g-c-c is going to then trigger steps to try and make things more
        secure for the user this needs to be super robust to make sure we still
        don't brick machines etc
    -   so overall, for Ubuntu the desktop and security teams feel this is not ready
        to be included for Ubuntu 22.10 in such a prominent way
        -   users can already get the same info via fwupd already (even in Ubuntu 22.04 LTS)
            ```shell
                      fwupdmgr security
            ```
        -   interesting to note this shows a message:
            ```text
                      The HSI specification is not yet complete. To ignore this warning, use --force
            ```
        -   so even fwupd developers realise this is perhaps still not ready for prime
            time
    -   So the question then as LVFS/fwupd developer Richard Hughes put it:
        "I suppose that not knowing is more secure?"
    -   And as I responded in the LP bug - at this stage yes, since currently it
        would just create alarm with no easy actions for a user to take to remediate
        it - since then there is a risk of DoS by say enabling secure boot when
        unknowingly using unsigned drivers etc


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)