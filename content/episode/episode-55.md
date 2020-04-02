+++
title = "Episode 55"
description = """
  This week we cover security updates for NSS, SQLite, the Linux kernel and
  more, plus Joe and Alex discuss a recent FBI advisory warning about
  possible dangers of Smart TVs.
  """
date = 2019-12-09T13:05:00+10:30
lastmod = 2020-04-02T16:35:47+10:30
draft = false
weight = 1015
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E055.mp3"
podcast_duration = "25:29"
podcast_bytes = 32757219
permalink = "https://ubuntusecuritypodcast.org/episode-55/"
guid = "c0e25d7ca543be2f8864b68c4880a8bce21bdc7fafe372f1a4f9b438b97114da4a395d106471dd4ac1ad2550aa4d13a8d9bade442b08f1ffb531220b45501952"
+++

## Overview {#overview}

This week we cover security updates for NSS, SQLite, the Linux kernel and
more, plus Joe and Alex discuss a recent FBI advisory warning about
possible dangers of Smart TVs.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

49 unique CVEs addressed


### [[USN-4203-1](https://usn.ubuntu.com/4203-1/), [USN-4203-2](https://usn.ubuntu.com/4203-2/)] NSS vulnerability [00:59] {#usn-4203-1-usn-4203-2-nss-vulnerability-00-59}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-11745](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11745) <!-- medium -->
-   OOB write if using an output buffer smaller than the block size (since
    used block size instead of buffer size) when writing output for
    NSC\_EncryptUpdate()


### [[USN-4204-1](https://usn.ubuntu.com/4204-1/)] psutil vulnerability [02:05] {#usn-4204-1-psutil-vulnerability-02-05}

-   1 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-18874](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18874) <!-- medium -->
-   Double free due to mishandling of reference counting when handling errors
    during conversion of system data into Python objects - could be triggered
    when using a malicious disk partition label with an invalid character
    that fails to decode - so triggers error than fails to cleanup properly
    and results in a double free


### [[USN-4205-1](https://usn.ubuntu.com/4205-1/)] SQLite vulnerabilities [02:59] {#usn-4205-1-sqlite-vulnerabilities-02-59}

-   6 CVEs addressed in Precise ESM, Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-5827](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5827) <!-- low -->
    -   [CVE-2019-5018](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5018) <!-- low -->
    -   [CVE-2019-19244](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19244) <!-- medium -->
    -   [CVE-2019-19242](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19242) <!-- low -->
    -   [CVE-2019-16168](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16168) <!-- low -->
    -   [CVE-2018-8740](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-8740) <!-- low -->
-   Various robustness updates for SQLite related to CVEs from other
    applications that misuse SQLite - so this makes SQLite more tolerant if
    it is misused in the future - plus a fix of a possible crash (DoS) under
    certain usage scenarios.


### [[USN-4208-1](https://usn.ubuntu.com/4208-1/)] Linux kernel vulnerabilities [03:42] {#usn-4208-1-linux-kernel-vulnerabilities-03-42}

-   12 CVEs addressed in Bionic (gcp-edge), Eoan (5.3 kernel)
    -   [CVE-2019-17075](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17075) <!-- negligible -->
    -   [CVE-2019-19083](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19083) <!-- low -->
    -   [CVE-2019-19075](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19075) <!-- low -->
    -   [CVE-2019-19069](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19069) <!-- medium -->
    -   [CVE-2019-19067](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19067) <!-- low -->
    -   [CVE-2019-19065](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19065) <!-- low -->
    -   [CVE-2019-19061](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19061) <!-- low -->
    -   [CVE-2019-19060](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19060) <!-- low -->
    -   [CVE-2019-19048](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19048) <!-- medium -->
    -   [CVE-2019-18810](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18810) <!-- low -->
    -   [CVE-2019-17133](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17133) <!-- medium -->
    -   [CVE-2019-15794](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15794) <!-- medium -->
-   Buffer overflow in wifi driver stack - able to be triggered by a remote
    user in wifi range
-   Ubuntu specific OverlayFS and ShiftFS memory mapped reference counting
    issue - can be triggered when combined with that when combined with AUFS
    by a local attacker.
-   Memory leak based denial of service issues in various drivers (usually
    during error conditions so unlikely to ever be hit in real use or able to
    be easily triggered by malicious local users):
    -   AMD Display Engine
    -   Qualcomm FastRPC
    -   Cascoda CA8210 SPI 802.15.4 wireless controller
    -   AMD Audio CoProcessor
    -   Intel OPA Gen1 Infiniband
    -   ADIS16400 IIO IMU
    -   VirtualBox guest
    -   ARM Komeda display


### [[USN-4209-1](https://usn.ubuntu.com/4209-1/)] Linux kernel vulnerabilities [06:07] {#usn-4209-1-linux-kernel-vulnerabilities-06-07}

-   3 CVEs addressed in Bionic (HWE), Disco (5.0 kernel)
    -   [CVE-2019-19076](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19076) <!-- low -->
    -   [CVE-2019-16746](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16746) <!-- medium -->
    -   [CVE-2019-15794](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15794) <!-- medium -->
-   Memory leak in Netronome NFP4000/NFP6k000 driver
-   Buffer overflow via 802.11 wifi config interface - local user onlu
-   OverlayFS/ShiftFS issue above


### [[USN-4210-1](https://usn.ubuntu.com/4210-1/)] Linux kernel vulnerabilities [06:47] {#usn-4210-1-linux-kernel-vulnerabilities-06-47}

-   6 CVEs addressed in Xenial (HWE), Bionic (4.15)
    -   [CVE-2019-17075](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17075) <!-- negligible -->
    -   [CVE-2019-19075](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19075) <!-- low -->
    -   [CVE-2019-19065](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19065) <!-- low -->
    -   [CVE-2019-19060](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19060) <!-- low -->
    -   [CVE-2019-17133](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17133) <!-- medium -->
    -   [CVE-2019-16746](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16746) <!-- medium -->
-   See above:
    -   Wifi stack buffer overflow from remote user
    -   Wifi config buffer overflow from local user
    -   Memory leaks above:
        -   Cascoda CA8210 SPI 802.15.4 wireless controller
        -   Intel OPA Gen1 Infiniband
        -   ADIS16400 IIO IMU


### [[USN-4211-1](https://usn.ubuntu.com/4211-1/), [USN-4211-2](https://usn.ubuntu.com/4211-2/)] Linux kernel vulnerabilities [07:22] {#usn-4211-1-usn-4211-2-linux-kernel-vulnerabilities-07-22}

-   3 CVEs addressed in Xenial, Trusty ESM (Xenial HWE)
    -   [CVE-2019-17075](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17075) <!-- negligible -->
    -   [CVE-2019-17133](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17133) <!-- medium -->
    -   [CVE-2018-20784](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20784) <!-- medium -->
-   Wifi stack remote user buffer overflow
-   Infinite loop in the CFS scheduler able to be triggered by a local user
    -> DoS


### [[USN-4206-1](https://usn.ubuntu.com/4206-1/)] GraphicsMagick vulnerabilities [07:55] {#usn-4206-1-graphicsmagick-vulnerabilities-07-55}

-   10 CVEs addressed in Xenial
    -   [CVE-2017-6335](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-6335) <!-- low -->
    -   [CVE-2017-14042](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14042) <!-- medium -->
    -   [CVE-2017-13147](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-13147) <!-- medium -->
    -   [CVE-2017-11637](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-11637) <!-- medium -->
    -   [CVE-2017-11636](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-11636) <!-- medium -->
    -   [CVE-2017-11403](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-11403) <!-- medium -->
    -   [CVE-2017-11140](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-11140) <!-- low -->
    -   [CVE-2017-11102](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-11102) <!-- low -->
    -   [CVE-2017-10799](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-10799) <!-- medium -->
    -   [CVE-2017-10794](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-10794) <!-- medium -->
-   Usual sorts of memory mismanagement issues seen in large C codebases
    (most resulting in crash -> DoS)
    -   OOB read
    -   Various memory allocation failure issues - trigger crash -> DoS
    -   NULL pointer dereference
    -   Heap buffer overflow for RGB images with multiple frames with
        non-identical widths
    -   UAF via a crafted MNG image
    -   Resource consumption via crafted JPEG which specifies invalid scanlines
    -   Memory leaks -> memory exhaustion -> crash -> DoS


### [[USN-4207-1](https://usn.ubuntu.com/4207-1/)] GraphicsMagick vulnerabilities [09:18] {#usn-4207-1-graphicsmagick-vulnerabilities-09-18}

-   13 CVEs addressed in Bionic
    -   [CVE-2019-11506](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11506) <!-- medium -->
    -   [CVE-2019-11505](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11505) <!-- medium -->
    -   [CVE-2019-11474](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11474) <!-- low -->
    -   [CVE-2019-11473](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11473) <!-- low -->
    -   [CVE-2019-11010](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11010) <!-- medium -->
    -   [CVE-2019-11009](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11009) <!-- medium -->
    -   [CVE-2019-11008](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11008) <!-- medium -->
    -   [CVE-2019-11007](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11007) <!-- medium -->
    -   [CVE-2019-11006](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11006) <!-- medium -->
    -   [CVE-2019-11005](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11005) <!-- medium -->
    -   [CVE-2018-20189](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20189) <!-- medium -->
    -   [CVE-2018-20185](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20185) <!-- medium -->
    -   [CVE-2018-20184](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20184) <!-- medium -->


### [[USN-4194-2](https://usn.ubuntu.com/4194-2/)] postgresql-common vulnerability [09:29] {#usn-4194-2-postgresql-common-vulnerability-09-29}

-   1 CVEs addressed in Trusty ESM
    -   [CVE-2019-3466](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3466) <!-- medium -->
-   [Episode 54](https://ubuntusecuritypodcast.org/episode-54/) - Debian specific package - privesc


### [[USN-4182-3](https://usn.ubuntu.com/4182-3/), [USN-4182-4](https://usn.ubuntu.com/4182-4/)] Intel Microcode regression [09:44] {#usn-4182-3-usn-4182-4-intel-microcode-regression-09-44}

-   2 CVEs addressed in Trusty ESM, Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-11139](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11139) <!-- medium -->
    -   [CVE-2019-11135](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11135) <!-- high -->
-   Previous microcode update resulted in some Skylake processors hanging on
    a warm reboot - not Ubuntu specific and is tracked upstream by Intel
    <https://github.com/intel/Intel-Linux-Processor-Microcode-Data-Files/issues/21> -
    so this update reverts the microcode only for those specific processor
    models


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe and Alex discuss a recent FBI Advisory concerning SmartTVs [10:50] {#joe-and-alex-discuss-a-recent-fbi-advisory-concerning-smarttvs-10-50}

-   <https://threatpost.com/smart-tvs-cyberthreat-living-room-feds/150713/>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)