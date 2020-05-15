+++
title = "Episode 48"
description = """
  This week we look at security updates for the Linux kernel, SDL 2, ClamAV
  and more, plus Alex and Joe talk security and performance trade-offs, snaps
  and OWASP Top 10 Cloud Security recommendations, and finally Alex covers
  some recent concerns about the security of the Snap Store.
  """
date = 2019-10-10T20:37:00+10:30
lastmod = 2020-05-15T16:39:16+09:30
draft = false
weight = 1027
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E048.mp3"
podcast_duration = "24:39"
podcast_bytes = 31349229
permalink = "https://ubuntusecuritypodcast.org/episode-48/"
guid = "0efb781981d33bf253bba826020da4b973ac05001f4b599cfa817150fd2b4cfe4a44d6c8790e9885a37d043561ecdba098aeda75e53b56f00f858b38473eef01"
+++

## Overview {#overview}

This week we look at security updates for the Linux kernel, SDL 2, ClamAV
and more, plus Alex and Joe talk security and performance trade-offs, snaps
and OWASP Top 10 Cloud Security recommendations, and finally Alex covers
some recent concerns about the security of the Snap Store.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

31 unique CVEs addressed


### [[USN-4142-1](https://usn.ubuntu.com/4142-1/), [USN-4142-2](https://usn.ubuntu.com/4142-2/)] e2fsprogs vulnerability [00:37] {#usn-4142-1-usn-4142-2-e2fsprogs-vulnerability-00-37}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-5094](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5094) <!-- medium -->
-   Cisco TALOS - possible code execution via OOB write to the heap for code
    which handles quota support in ext4 - so possible to trigger via a
    specially crafted ext4 partition - could be triggered during an fsck on
    the partition etc.


### [[USN-4143-1](https://usn.ubuntu.com/4143-1/)] SDL 2.0 vulnerabilities [01:37] {#usn-4143-1-sdl-2-dot-0-vulnerabilities-01-37}

-   5 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-7638](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7638) <!-- medium -->
    -   [CVE-2019-7637](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7637) <!-- medium -->
    -   [CVE-2019-7636](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7636) <!-- medium -->
    -   [CVE-2019-7635](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7635) <!-- medium -->
    -   [CVE-2017-2888](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-2888) <!-- medium -->
-   3 different heap based buffer over-reads -> crash, DoS
-   Heap based buffer over-write -> possible code execution or at least crash -> DoS
-   Integer overflow -> small alloc -> heap based buffer overflow -> possible
    code execution


### [[USN-4147-1](https://usn.ubuntu.com/4147-1/)] Linux kernel vulnerabilities [02:23] {#usn-4147-1-linux-kernel-vulnerabilities-02-23}

-   18 CVEs addressed in Bionic (HWE), Disco
    -   [CVE-2019-15223](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15223) <!-- negligible -->
    -   [CVE-2019-15221](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15221) <!-- negligible -->
    -   [CVE-2019-15218](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15218) <!-- negligible -->
    -   [CVE-2019-15217](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15217) <!-- negligible -->
    -   [CVE-2019-9506](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9506) <!-- medium -->
    -   [CVE-2019-15926](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15926) <!-- medium -->
    -   [CVE-2019-15925](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15925) <!-- low -->
    -   [CVE-2019-15538](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15538) <!-- low -->
    -   [CVE-2019-15220](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15220) <!-- low -->
    -   [CVE-2019-15215](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15215) <!-- low -->
    -   [CVE-2019-15212](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15212) <!-- low -->
    -   [CVE-2019-15211](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15211) <!-- low -->
    -   [CVE-2019-15118](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15118) <!-- medium -->
    -   [CVE-2019-15117](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15117) <!-- medium -->
    -   [CVE-2019-15090](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15090) <!-- medium -->
    -   [CVE-2019-13631](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13631) <!-- low -->
    -   [CVE-2019-10207](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10207) <!-- medium -->
    -   [CVE-2019-0136](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0136) <!-- medium -->
-   OOB read in ath6kl driver - possible to trigger remotely from the network - crash, DoS
-   Bluetooth KNOB attack
-   Crashes from malicious USB audio devices:
    -   Infinite recursion when parsing device descriptors (if
        had multiple identical device descriptors could be triggered)
    -   OOB read if specified an invalid input pin
-   OOB read in QLogic QEDI iSCSI driver
-   2 covered in [Episode 46](https://ubuntusecuritypodcast.org/episode-46/)
    -   Possible code execution via a NULL pointer dereference in bluetooth UART
        driver - so if an attacker can map executable code at address zero can
        achieve code execution - in Ubuntu we have mmap\_min\_addr set to a
        non-zero value so this is mitigated by default
    -   DoS in Intel wifi driver - allows a malicious client to knock a peer of
        the network


### [[USN-4144-1](https://usn.ubuntu.com/4144-1/)] Linux kernel vulnerabilities [05:02] {#usn-4144-1-linux-kernel-vulnerabilities-05-02}

-   2 CVEs addressed in Xenial (HWE), Bionic
    -   [CVE-2019-15538](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15538) <!-- low -->
    -   [CVE-2018-20976](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20976) <!-- medium -->
-   2 different XFS issues
    -   UAF triggered from a malicious XFS image -> code exection? -> crash, DoS
    -   CPU based DoS if can trigger a chgrp() error due to out-of-quota


### [[USN-4145-1](https://usn.ubuntu.com/4145-1/)] Linux kernel vulnerabilities [05:46] {#usn-4145-1-linux-kernel-vulnerabilities-05-46}

-   11 CVEs addressed in Xenial
    -   [CVE-2019-15926](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15926) <!-- medium -->
    -   [CVE-2019-15215](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15215) <!-- low -->
    -   [CVE-2019-15211](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15211) <!-- low -->
    -   [CVE-2019-13631](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13631) <!-- low -->
    -   [CVE-2019-11487](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11487) <!-- low -->
    -   [CVE-2019-10207](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10207) <!-- medium -->
    -   [CVE-2019-0136](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0136) <!-- medium -->
    -   [CVE-2018-20976](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20976) <!-- medium -->
    -   [CVE-2018-20961](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20961) <!-- medium -->
    -   [CVE-2017-18509](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-18509) <!-- medium -->
    -   [CVE-2016-10905](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-10905) <!-- medium -->
-   Most covered above


### [[USN-4146-1](https://usn.ubuntu.com/4146-1/), [USN-4146-2](https://usn.ubuntu.com/4146-2/)] ClamAV vulnerabilities [06:00] {#usn-4146-1-usn-4146-2-clamav-vulnerabilities-06-00}

-   2 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-12900](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12900) <!-- medium -->
    -   [CVE-2019-12625](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12625) <!-- medium -->
-   Update to latest upstream version (0.101.4)
-   OOB read when handling crafted BZIP2 and ZIP files - was covered for
    bzip2 itself in Ubuntu in [Episode 38](https://ubuntusecuritypodcast.org/episode-38/) - vendored in clamav


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe talk security and performance trade-offs, snaps and OWASP Top 10 Cloud Security recommendations [07:01] {#alex-and-joe-talk-security-and-performance-trade-offs-snaps-and-owasp-top-10-cloud-security-recommendations-07-01}

-   <https://snapcraft.io/teamtime>
-   <https://threatpost.com/intimate-details-healthcare-workers-exposed-cloud-security/149007/>
-   <https://www.owasp.org/index.php/Category:OWASP%5FCloud%5F%E2%80%90%5F10%5FProject>


### Alex addresses some concerns with the perceived security of the Snap Store [20:44] {#alex-addresses-some-concerns-with-the-perceived-security-of-the-snap-store-20-44}


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)