+++
title = "Episode 119"
description = """
  This week we cover security updates for the Linux kernel, PolicyKit, Intel
  Microcode and more, plus we look at a report of an apparent malicious snap
  in the Snap Store and some of the mechanics behind snap confinement.
  """
date = 2021-06-11T10:53:00+09:30
lastmod = 2021-06-11T10:53:42+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E119.mp3"
podcast_duration = "14:38"
podcast_bytes = 11276225
permalink = "https://ubuntusecuritypodcast.org/episode-119/"
guid = "0a9ae10a119edff8c63af0049d12ad1ec78c835e904acecd3a32404bff978eae43ca09a1f89f65d4dcb45a633bca48021a27f8a7f9337444bbfd87ae127a8e7e"
+++

## Overview {#overview}

This week we cover security updates for the Linux kernel, PolicyKit, Intel
Microcode and more, plus we look at a report of an apparent malicious snap
in the Snap Store and some of the mechanics behind snap confinement.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

42 unique CVEs addressed


### [[USN-4979-1](https://ubuntu.com/security/notices/USN-4979-1)] Linux kernel vulnerabilities [01:04] {#usn-4979-1-linux-kernel-vulnerabilities-01-04}

-   13 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2021-3483](https://ubuntu.com/security/CVE-2021-3483)
    -   [CVE-2021-3428](https://ubuntu.com/security/CVE-2021-3428)
    -   [CVE-2021-33033](https://ubuntu.com/security/CVE-2021-33033)
    -   [CVE-2021-31916](https://ubuntu.com/security/CVE-2021-31916)
    -   [CVE-2021-29647](https://ubuntu.com/security/CVE-2021-29647)
    -   [CVE-2021-28972](https://ubuntu.com/security/CVE-2021-28972)
    -   [CVE-2021-28971](https://ubuntu.com/security/CVE-2021-28971)
    -   [CVE-2021-28964](https://ubuntu.com/security/CVE-2021-28964)
    -   [CVE-2021-28660](https://ubuntu.com/security/CVE-2021-28660)
    -   [CVE-2020-25673](https://ubuntu.com/security/CVE-2020-25673)
    -   [CVE-2020-25672](https://ubuntu.com/security/CVE-2020-25672)
    -   [CVE-2020-25671](https://ubuntu.com/security/CVE-2020-25671)
    -   [CVE-2020-25670](https://ubuntu.com/security/CVE-2020-25670)
-   4.15 based kernel
-   integer overflow in ext4 extent handling -> could be triggered by
    mounting an malicious ext4 image -> crash (DoS)
-   reference counting error in firewire packet sniffer driver - UAF
-   NFC LLCP issues above


### [[USN-4982-1](https://ubuntu.com/security/notices/USN-4982-1)] Linux kernel vulnerabilities [02:23] {#usn-4982-1-linux-kernel-vulnerabilities-02-23}

-   13 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3483](https://ubuntu.com/security/CVE-2021-3483)
    -   [CVE-2021-31916](https://ubuntu.com/security/CVE-2021-31916)
    -   [CVE-2021-29647](https://ubuntu.com/security/CVE-2021-29647)
    -   [CVE-2021-29264](https://ubuntu.com/security/CVE-2021-29264)
    -   [CVE-2021-28972](https://ubuntu.com/security/CVE-2021-28972)
    -   [CVE-2021-28971](https://ubuntu.com/security/CVE-2021-28971)
    -   [CVE-2021-28964](https://ubuntu.com/security/CVE-2021-28964)
    -   [CVE-2021-28950](https://ubuntu.com/security/CVE-2021-28950)
    -   [CVE-2021-28688](https://ubuntu.com/security/CVE-2021-28688)
    -   [CVE-2020-25673](https://ubuntu.com/security/CVE-2020-25673)
    -   [CVE-2020-25672](https://ubuntu.com/security/CVE-2020-25672)
    -   [CVE-2020-25671](https://ubuntu.com/security/CVE-2020-25671)
    -   [CVE-2020-25670](https://ubuntu.com/security/CVE-2020-25670)
-   5.4 based kernel


### [[USN-4984-1](https://ubuntu.com/security/notices/USN-4984-1)] Linux kernel vulnerabilities [02:39] {#usn-4984-1-linux-kernel-vulnerabilities-02-39}

-   13 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-3483](https://ubuntu.com/security/CVE-2021-3483)
    -   [CVE-2021-33033](https://ubuntu.com/security/CVE-2021-33033)
    -   [CVE-2021-31916](https://ubuntu.com/security/CVE-2021-31916)
    -   [CVE-2021-30002](https://ubuntu.com/security/CVE-2021-30002)
    -   [CVE-2021-29647](https://ubuntu.com/security/CVE-2021-29647)
    -   [CVE-2021-28972](https://ubuntu.com/security/CVE-2021-28972)
    -   [CVE-2021-28971](https://ubuntu.com/security/CVE-2021-28971)
    -   [CVE-2021-28964](https://ubuntu.com/security/CVE-2021-28964)
    -   [CVE-2021-28952](https://ubuntu.com/security/CVE-2021-28952)
    -   [CVE-2021-28950](https://ubuntu.com/security/CVE-2021-28950)
    -   [CVE-2021-28688](https://ubuntu.com/security/CVE-2021-28688)
    -   [CVE-2021-28660](https://ubuntu.com/security/CVE-2021-28660)
    -   [CVE-2021-28038](https://ubuntu.com/security/CVE-2021-28038)
-   5.8 based kernel


### [[USN-4977-1](https://ubuntu.com/security/notices/USN-4977-1)] Linux kernel vulnerabilities {#usn-4977-1-linux-kernel-vulnerabilities}

-   6 CVEs addressed in Hirsute (21.04)
    -   [CVE-2021-3501](https://ubuntu.com/security/CVE-2021-3501)
    -   [CVE-2021-29155](https://ubuntu.com/security/CVE-2021-29155)
    -   [CVE-2020-25673](https://ubuntu.com/security/CVE-2020-25673)
    -   [CVE-2020-25672](https://ubuntu.com/security/CVE-2020-25672)
    -   [CVE-2020-25671](https://ubuntu.com/security/CVE-2020-25671)
    -   [CVE-2020-25670](https://ubuntu.com/security/CVE-2020-25670)
-   5.11 based kernel
-   OOB write in KVM VMX implementation (crash -> DoS, RCE)
-   eBPF Spectre side-channel attack - info leak
-   NFC LLCP (logical link control protocol) - allows to multiplex a single
    connection between two NFC devices
    -   infinite loop on error condition -> DoS
    -   memory leak
    -   reference count mishandling -> crash -> DoS


### [[USN-4983-1](https://ubuntu.com/security/notices/USN-4983-1)] Linux kernel (OEM) vulnerabilities [03:32] {#usn-4983-1-linux-kernel--oem--vulnerabilities-03-32}

-   4 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-3501](https://ubuntu.com/security/CVE-2021-3501)
    -   [CVE-2021-31829](https://ubuntu.com/security/CVE-2021-31829)
    -   [CVE-2021-29155](https://ubuntu.com/security/CVE-2021-29155)
    -   [CVE-2021-33200](https://ubuntu.com/security/CVE-2021-33200)
-   5.10 based kernel
-   OOB write in KVM VMX implementation (crash -> DoS, RCE)
-   eBPF Spectre side-channel attacks - verifier fails to stop loading of eBPF
    programs which could cause speculative loads -> info leak
-   eBPF pointer limit error - OOB read/write - crash / RCE


### [[USN-4978-1](https://ubuntu.com/security/notices/USN-4978-1)] Firefox vulnerabilities [03:40] {#usn-4978-1-firefox-vulnerabilities-03-40}

-   5 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-29960](https://ubuntu.com/security/CVE-2021-29960)
    -   [CVE-2021-29967](https://ubuntu.com/security/CVE-2021-29967)
    -   [CVE-2021-29966](https://ubuntu.com/security/CVE-2021-29966)
    -   [CVE-2021-29961](https://ubuntu.com/security/CVE-2021-29961)
    -   [CVE-2021-29959](https://ubuntu.com/security/CVE-2021-29959)
-   89.0 upstream release
    -   not only the new visual UI PLUS enhanced private browsing mode via
        "Total Cookie Protection" - confines cookies to the site where they
        were created to avoid tracking across sites - PLUS a bunch of security
        fixes including
        -   cached the last filename of a printed file even in private browsing
            mode - would then surface this next time you choose to print a file
        -   Various memory safety issues - RCE / crash etc


### [[USN-4980-1](https://ubuntu.com/security/notices/USN-4980-1)] polkit vulnerability [04:43] {#usn-4980-1-polkit-vulnerability-04-43}

-   1 CVEs addressed in Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-3560](https://ubuntu.com/security/CVE-2021-3560)
-   Daemons often use policykit to ask whether a user's application is
    permitted to perform an action - to do this, they send the DBus name of
    the process to polkit and it looks up the resulting uid/pid via an
    internal function polkit_system_bus_name_get_creds_sync() - logic error
    within policykit when looking if the process in question were to
    disconnect from DBus at the right time, policykit would return an error
    but also a boolean TRUE value indicating success (depends on how the
    daemon interpreted this value with an associated error). This could then
    allow an application which was not privileged to be able to perform more
    privileged actions. Fixed to actually return FALSE in this case and avoid
    any potential confusion.


### [[USN-4981-1](https://ubuntu.com/security/notices/USN-4981-1)] Squid vulnerabilities [06:11] {#usn-4981-1-squid-vulnerabilities-06-11}

-   7 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-33620](https://ubuntu.com/security/CVE-2021-33620)
    -   [CVE-2021-31808](https://ubuntu.com/security/CVE-2021-31808)
    -   [CVE-2021-31807](https://ubuntu.com/security/CVE-2021-31807)
    -   [CVE-2021-31806](https://ubuntu.com/security/CVE-2021-31806)
    -   [CVE-2021-28662](https://ubuntu.com/security/CVE-2021-28662)
    -   [CVE-2021-28652](https://ubuntu.com/security/CVE-2021-28652)
    -   [CVE-2021-28651](https://ubuntu.com/security/CVE-2021-28651)
-   All DoS issues - memory leaks, OOB reads etc, able to be triggered by
    remote attackers


### [[USN-4969-3](https://ubuntu.com/security/notices/USN-4969-3)] DHCP regression [06:28] {#usn-4969-3-dhcp-regression-06-28}

-   Affecting Hirsute (21.04)
-   [Episode 118](https://ubuntusecuritypodcast.org/episode-118/) - update for 21.04 **only** introduced a regression where valid
    config files would be seen as invalid and rejected and hence
    isc-dhcp-server would fail to start - actually caused as a result of the
    newer toolchain used in 21.04 - has stricter aliasing checking and so
    would treat certain operations introduced in this change as UB and change
    code-flow as a result. Fixed by disabling this stricter aliasing checking
    in the build to restore the original behaviour.


### [[USN-4937-2](https://ubuntu.com/security/notices/USN-4937-2)] GNOME Autoar regression [07:22] {#usn-4937-2-gnome-autoar-regression-07-22}

-   [Episode 115](https://ubuntusecuritypodcast.org/episode-115/)
-   Affecting Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
-   upstream regression where when extracting an archive, only an empty
    directory would be created if an archive contained a file of the same
    name as the archive itself - fixed to avoid creating this directory first
    so that files would then actually get created as expected


### [[USN-4985-1](https://ubuntu.com/security/notices/USN-4985-1)] Intel Microcode vulnerabilities [07:48] {#usn-4985-1-intel-microcode-vulnerabilities-07-48}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2020-24513](https://ubuntu.com/security/CVE-2020-24513)
    -   [CVE-2020-24512](https://ubuntu.com/security/CVE-2020-24512)
    -   [CVE-2020-24511](https://ubuntu.com/security/CVE-2020-24511)
    -   [CVE-2017-5715](https://ubuntu.com/security/CVE-2017-5715)
    -   [CVE-2021-24489](https://ubuntu.com/security/CVE-2021-24489)
-   Latest intel-microcode release from upstream, fixes a number of security
    issues for particular processors PLUS potential stability issues that
    have been seen in previous microcode releases (processor would hang if
    tried to load a too new microcode version compared to the one contained
    within the BIOS)
    -   potential cross-domain issue with Intel VT-d (priv esc) plus a fix for
        an issue which would result in EIBRS (Spectre) mitigations not being
        applied, cache-lines not being flushed properly and a speculative
        execution issue specific to Atom processors via micro-arch buffers.


### [[USN-4986-1](https://ubuntu.com/security/notices/USN-4986-1)] rpcbind vulnerability [09:02] {#usn-4986-1-rpcbind-vulnerability-09-02}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2017-8779](https://ubuntu.com/security/CVE-2017-8779)
-   DoS since would fail to free memory allocated during particular
    requests - could then be made to crash by allocating too much memory


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### odrive-unofficial snap investigation [09:20] {#odrive-unofficial-snap-investigation-09-20}

-   <https://twitter.com/XHaughin/status/1400743600464355331>


### The magic behind snap interfaces [12:36] {#the-magic-behind-snap-interfaces-12-36}

-   <https://ubuntu.com/blog/the-magic-behind-snap-interfaces>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
