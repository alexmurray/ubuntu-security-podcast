+++
title = "Episode 157"
description = """
  Ubuntu 22.04 LTS (Jammy Jellyfish) is officially released 🎉 and so this
  week we take a quick look at the new features and enhancements, with a
  particular focus on security, plus we cover security updates for the Linux
  kernel, Firefox, Django, Git, Gzip and more.
  """
date = 2022-04-22T11:33:00+09:30
lastmod = 2022-05-15T18:05:36+09:30
draft = false
weight = 1003
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E157.mp3"
podcast_duration = 1130
podcast_bytes = 14667692
permalink = "https://ubuntusecuritypodcast.org/episode-157/"
guid = "520ab5eda515d6b3d50f0f54a2e02f1adaaa9e6d5ff115a0e98141bd445e46dcc4105fd19c5f8e027223dd814aef24163803f1858143ff7ce9d05e8ebe0393a5"
+++

## Overview {#overview}

Ubuntu 22.04 LTS (Jammy Jellyfish) is officially released 🎉 and so this
week we take a quick look at the new features and enhancements, with a
particular focus on security, plus we cover security updates for the Linux
kernel, Firefox, Django, Git, Gzip and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

58 unique CVEs addressed


### [[USN-5368-1](https://ubuntu.com/security/notices/USN-5368-1)] Linux kernel vulnerabilities [00:51] {#usn-5368-1-linux-kernel-vulnerabilities-00-51}

-   23 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-27666](https://ubuntu.com/security/CVE-2022-27666) <!-- medium -->
    -   [CVE-2022-0742](https://ubuntu.com/security/CVE-2022-0742) <!-- medium -->
    -   [CVE-2022-0516](https://ubuntu.com/security/CVE-2022-0516) <!-- medium -->
    -   [CVE-2022-0435](https://ubuntu.com/security/CVE-2022-0435) <!-- medium -->
    -   [CVE-2022-0382](https://ubuntu.com/security/CVE-2022-0382) <!-- medium -->
    -   [CVE-2022-0264](https://ubuntu.com/security/CVE-2022-0264) <!-- medium -->
    -   [CVE-2021-45480](https://ubuntu.com/security/CVE-2021-45480) <!-- medium -->
    -   [CVE-2021-45402](https://ubuntu.com/security/CVE-2021-45402) <!-- medium -->
    -   [CVE-2021-45095](https://ubuntu.com/security/CVE-2021-45095) <!-- medium -->
    -   [CVE-2021-44733](https://ubuntu.com/security/CVE-2021-44733) <!-- medium -->
    -   [CVE-2021-43975](https://ubuntu.com/security/CVE-2021-43975) <!-- medium -->
    -   [CVE-2021-4197](https://ubuntu.com/security/CVE-2021-4197) <!-- medium -->
    -   [CVE-2021-4135](https://ubuntu.com/security/CVE-2021-4135) <!-- medium -->
    -   [CVE-2021-39698](https://ubuntu.com/security/CVE-2021-39698) <!-- medium -->
    -   [CVE-2021-39685](https://ubuntu.com/security/CVE-2021-39685) <!-- medium -->
    -   [CVE-2021-28715](https://ubuntu.com/security/CVE-2021-28715) <!-- medium -->
    -   [CVE-2021-28714](https://ubuntu.com/security/CVE-2021-28714) <!-- medium -->
    -   [CVE-2021-28713](https://ubuntu.com/security/CVE-2021-28713) <!-- low -->
    -   [CVE-2021-28712](https://ubuntu.com/security/CVE-2021-28712) <!-- low -->
    -   [CVE-2021-28711](https://ubuntu.com/security/CVE-2021-28711) <!-- low -->
    -   [CVE-2022-0492](https://ubuntu.com/security/CVE-2022-0492) <!-- high -->
    -   [CVE-2022-1055](https://ubuntu.com/security/CVE-2022-1055) <!-- high -->
    -   [CVE-2022-23222](https://ubuntu.com/security/CVE-2022-23222) <!-- high -->
-   5.13 azure/oracle for 20.04 LTS
-   BPF verifier could possibly allow pointer arithmetic in BPF operations -
    OOB read / write -&gt; crash (DoS) or privesc
-   cgroups v1 `release_agent` not properly restricted -&gt; privesc
-   UAF in network traffic control - DoS/crash


### [[USN-5377-1](https://ubuntu.com/security/notices/USN-5377-1)] Linux kernel (BlueField) vulnerabilities [01:52] {#usn-5377-1-linux-kernel--bluefield--vulnerabilities-01-52}

-   15 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-27666](https://ubuntu.com/security/CVE-2022-27666) <!-- medium -->
    -   [CVE-2022-0435](https://ubuntu.com/security/CVE-2022-0435) <!-- medium -->
    -   [CVE-2021-45480](https://ubuntu.com/security/CVE-2021-45480) <!-- medium -->
    -   [CVE-2021-45469](https://ubuntu.com/security/CVE-2021-45469) <!-- medium -->
    -   [CVE-2021-45095](https://ubuntu.com/security/CVE-2021-45095) <!-- medium -->
    -   [CVE-2021-44733](https://ubuntu.com/security/CVE-2021-44733) <!-- medium -->
    -   [CVE-2021-43976](https://ubuntu.com/security/CVE-2021-43976) <!-- low -->
    -   [CVE-2021-4135](https://ubuntu.com/security/CVE-2021-4135) <!-- medium -->
    -   [CVE-2021-28715](https://ubuntu.com/security/CVE-2021-28715) <!-- medium -->
    -   [CVE-2021-28714](https://ubuntu.com/security/CVE-2021-28714) <!-- medium -->
    -   [CVE-2021-28713](https://ubuntu.com/security/CVE-2021-28713) <!-- low -->
    -   [CVE-2021-28712](https://ubuntu.com/security/CVE-2021-28712) <!-- low -->
    -   [CVE-2021-28711](https://ubuntu.com/security/CVE-2021-28711) <!-- low -->
    -   [CVE-2022-0492](https://ubuntu.com/security/CVE-2022-0492) <!-- high -->
    -   [CVE-2022-1055](https://ubuntu.com/security/CVE-2022-1055) <!-- high -->
-   BPF verifier could possibly allow pointer arithmetic in BPF operations -
    OOB read / write -&gt; crash (DoS) or privesc
-   cgroups v1 `release_agent` not properly restricted -&gt; privesc


### [[USN-5366-1](https://ubuntu.com/security/notices/USN-5366-1)] FriBidi vulnerabilities [02:07] {#usn-5366-1-fribidi-vulnerabilities-02-07}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-25310](https://ubuntu.com/security/CVE-2022-25310) <!-- medium -->
    -   [CVE-2022-25309](https://ubuntu.com/security/CVE-2022-25309) <!-- medium -->
    -   [CVE-2022-25308](https://ubuntu.com/security/CVE-2022-25308) <!-- medium -->
-   Various memory corruption vulns in library for handling unicode
    bidirectional text


### [[USN-5369-1](https://ubuntu.com/security/notices/USN-5369-1)] oslo.utils vulnerability [02:21] {#usn-5369-1-oslo-dot-utils-vulnerability-02-21}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-0718](https://ubuntu.com/security/CVE-2022-0718) <!-- medium -->
-   Python utility functions for OpenStack
-   Passwords which contained a double-quote would not be properly masked in
    debug logs in which case the part of the password following the double
    quote would be exposed


### [[USN-5370-1](https://ubuntu.com/security/notices/USN-5370-1)] Firefox vulnerabilities [02:50] {#usn-5370-1-firefox-vulnerabilities-02-50}

-   11 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-28287](https://ubuntu.com/security/CVE-2022-28287) <!-- medium -->
    -   [CVE-2022-28283](https://ubuntu.com/security/CVE-2022-28283) <!-- medium -->
    -   [CVE-2022-28289](https://ubuntu.com/security/CVE-2022-28289) <!-- medium -->
    -   [CVE-2022-28288](https://ubuntu.com/security/CVE-2022-28288) <!-- medium -->
    -   [CVE-2022-28286](https://ubuntu.com/security/CVE-2022-28286) <!-- low -->
    -   [CVE-2022-28285](https://ubuntu.com/security/CVE-2022-28285) <!-- medium -->
    -   [CVE-2022-28284](https://ubuntu.com/security/CVE-2022-28284) <!-- medium -->
    -   [CVE-2022-28282](https://ubuntu.com/security/CVE-2022-28282) <!-- medium -->
    -   [CVE-2022-28281](https://ubuntu.com/security/CVE-2022-28281) <!-- medium -->
    -   [CVE-2022-24713](https://ubuntu.com/security/CVE-2022-24713) <!-- medium -->
    -   [CVE-2022-1097](https://ubuntu.com/security/CVE-2022-1097) <!-- medium -->
-   99.0
-   Including an issue where just selecting text could be enough to cause a
    memory corruption in text selection cache and cause firefox to crash


### [[USN-5331-2](https://ubuntu.com/security/notices/USN-5331-2)] tcpdump vulnerabilities [03:34] {#usn-5331-2-tcpdump-vulnerabilities-03-34}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-8037](https://ubuntu.com/security/CVE-2020-8037) <!-- low -->
    -   [CVE-2018-16301](https://ubuntu.com/security/CVE-2018-16301) <!-- low -->
-   [Episode 153](https://ubuntusecuritypodcast.org/episode-153/) for xenial - now same updates for bionic + focal


### [[USN-5373-1](https://ubuntu.com/security/notices/USN-5373-1), [USN-5373-2](https://ubuntu.com/security/notices/USN-5373-2)] Django vulnerabilities [03:47] {#usn-5373-1-usn-5373-2-django-vulnerabilities-03-47}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-32052](https://ubuntu.com/security/CVE-2021-32052) <!-- medium -->
    -   [CVE-2022-28347](https://ubuntu.com/security/CVE-2022-28347) <!-- high -->
    -   [CVE-2022-28346](https://ubuntu.com/security/CVE-2022-28346) <!-- high -->
-   2 different SQL injection attacks and 1 header in injection attack


### [[USN-5374-1](https://ubuntu.com/security/notices/USN-5374-1)] libarchive vulnerability [04:07] {#usn-5374-1-libarchive-vulnerability-04-07}

-   1 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-26280](https://ubuntu.com/security/CVE-2022-26280) <!-- medium -->
-   OOB when handling crafted LZMA archives -&gt; DoS


### [[USN-5372-1](https://ubuntu.com/security/notices/USN-5372-1)] Subversion vulnerabilities [04:24] {#usn-5372-1-subversion-vulnerabilities-04-24}

-   2 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-24070](https://ubuntu.com/security/CVE-2022-24070) <!-- medium -->
    -   [CVE-2021-28544](https://ubuntu.com/security/CVE-2021-28544) <!-- medium -->
-   2 vulns in svn server - both in handling of path based auth rules - 1 as
    logic error could then allow an attacker to bypass these and info about
    private paths
-   other as a UAF -&gt; crash/RCE


### [[USN-5376-1](https://ubuntu.com/security/notices/USN-5376-1)] Git vulnerability [05:13] {#usn-5376-1-git-vulnerability-05-13}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-24765](https://ubuntu.com/security/CVE-2022-24765) <!-- medium -->
-   Possible local RCE if another user creates a .git directory in the system
    root and specifies arbitrary commands in that git config


### [[USN-5371-1](https://ubuntu.com/security/notices/USN-5371-1)] nginx vulnerabilities [05:55] {#usn-5371-1-nginx-vulnerabilities-05-55}

-   3 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-3618](https://ubuntu.com/security/CVE-2021-3618) <!-- low -->
    -   [CVE-2020-36309](https://ubuntu.com/security/CVE-2020-36309) <!-- low -->
    -   [CVE-2020-11724](https://ubuntu.com/security/CVE-2020-11724) <!-- medium -->
-   HTTP req smuggling


### [[USN-5378-1](https://ubuntu.com/security/notices/USN-5378-1), [USN-5378-2](https://ubuntu.com/security/notices/USN-5378-2), [USN-5378-3](https://ubuntu.com/security/notices/USN-5378-3), [USN-5378-4](https://ubuntu.com/security/notices/USN-5378-4)] Gzip &amp; XZ Utils vulnerability [06:05] {#usn-5378-1-usn-5378-2-usn-5378-3-usn-5378-4-gzip-and-xz-utils-vulnerability-06-05}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-1271](https://ubuntu.com/security/CVE-2022-1271) <!-- medium -->
-   xzgrep/zgrep with crafted filenames -&gt; local file overwrite


### [[USN-5379-1](https://ubuntu.com/security/notices/USN-5379-1)] klibc vulnerabilities [06:27] {#usn-5379-1-klibc-vulnerabilities-06-27}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-31873](https://ubuntu.com/security/CVE-2021-31873) <!-- low -->
    -   [CVE-2021-31872](https://ubuntu.com/security/CVE-2021-31872) <!-- low -->
    -   [CVE-2021-31871](https://ubuntu.com/security/CVE-2021-31871) <!-- low -->
    -   [CVE-2021-31870](https://ubuntu.com/security/CVE-2021-31870) <!-- low -->
-   Various integer overflows and other bugs leading to memory corruption -&gt;
    RCE in these low-level tools (designed for use in initramfs/embedded
    systems etc - cat/dd/dmesg/gzip/ipconfig/mv/readlink and more)


### [[USN-5380-1](https://ubuntu.com/security/notices/USN-5380-1)] Bash vulnerability [07:12] {#usn-5380-1-bash-vulnerability-07-12}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2019-18276](https://ubuntu.com/security/CVE-2019-18276) <!-- low -->
-   Incorrect handling of setuid binaries - didn't drop privileges correctly,
    so could allow a user who could cause bash to load their own crafted
    builtin module to then escalate privileges by then restoring the saved
    UID


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 22.04 LTS Release! [08:02] {#ubuntu-22-dot-04-lts-release-08-02}

-   By the time you read / hear this will likely already be out
-   LTS - 5 years of standard support, plus 5 years of ESM support - 10 years
    of security support in total
-   <https://discourse.ubuntu.com/t/jammy-jellyfish-release-notes/24668>
-   Multiple kernels depending on which product you install
    -   Desktop
        -   5.17 on OEM certified devices
        -   Rolling HWE kernel for other hardware (currently 5.15)
    -   Server
        -   Non-rolling LTS kernel (5.15)
    -   Cloud
        -   Use optimised kernels in collaboration with partners (currently 5.15+
            with additional backports / features)
    -   As always these are just the defaults and you can change as you desired
        (ie could enable rolling HWE kernel on server if required)
-   UDP disabled for NFS mounts
-   Toolchain upgrades
    -   GCC 11.2.0, Python 3.10 (with PIE🥧), LLVM 14, Golang 1.18.x, rustc 1.58
    -   OpenJDK 18 provided (but not default and not in main, still default to
        openjdk-11 in main and supported)
-   systemd-oomd enabled by default on Ubuntu desktop
-   OpenSSL 3.0
    -   Disables various legacy algorithms (SHA1/MD5 for certificate hashes)
-   nftables default backend for firewall
    -   Still ship legacy iptables tools which will use the xtables backend but
        not by default - sysadmins need to ensure all applications which
        configure firewall rules use the same backend (e.g. if using docker
        snap need to switch to legacy xtables backend until the snap is updated
        to detect and use the new nftables backend)
-   ssh-rsa with sha-1 signatures disabled by default in openssh
-   scp supports a new -s option to use sftp instead of scp which is safer
    (see [USN-3885-1](https://usn.ubuntu.com/3885-1/) etc)
-   Firefox is a snap
    -   Maintained and published directly by Mozilla - faster access to newer
        versions
    -   Sandboxed for improved security hardening
-   Lots of changes for server too (new BIND, Apache, PostgreSQL, Django,
    MySQL, Samba)
-   Qemu 6.2.0 (massively improved RISC-V support)
-   Libvirt + swtpm for TPM emulation
    -   virt-manager will then enable a TPM OOTB for UEFI boot of VMs
-   wireguard is now in main \o/
-   First LTS release for Ubuntu Desktop on RPi


### Ubuntu Security Podcast on break for 1 week {#ubuntu-security-podcast-on-break-for-1-week}

-   Returning end of the first week of May 2022


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)