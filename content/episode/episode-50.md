+++
title = "Episode 50"
description = """
  Alex and Joe discuss the big news of this week - the release of Ubuntu
  19.10 Eoan Ermine - plus we look at updates for the Linux kernel, libxslt,
  UW IMAP and more.
  """
date = 2019-10-24T15:28:00+10:30
lastmod = 2020-04-24T10:49:28+09:30
draft = false
weight = 1023
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E050.mp3"
podcast_duration = "23:48"
podcast_bytes = 31288105
permalink = "https://ubuntusecuritypodcast.org/episode-50/"
guid = "1ac5b387f58f50b867a6d837f8d9a835c345e155c44b99ff9b2908d433b078520fce6a6a2591e83251e878e95e4937992d25f4f2092f884cdb47c1a102297bad"
+++

## Overview {#overview}

Alex and Joe discuss the big news of this week - the release of Ubuntu
19.10 Eoan Ermine - plus we look at updates for the Linux kernel, libxslt,
UW IMAP and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

51 unique CVEs addressed


### [[USN-4156-2](https://usn.ubuntu.com/4156-2/)] SDL vulnerabilities [00:37] {#usn-4156-2-sdl-vulnerabilities-00-37}

-   11 CVEs addressed in Precise ESM, Trusty ESM
    -   [CVE-2019-7637](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7637) <!-- medium -->
    -   [CVE-2019-7636](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7636) <!-- medium -->
    -   [CVE-2019-7635](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7635) <!-- medium -->
    -   [CVE-2019-7578](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7578) <!-- low -->
    -   [CVE-2019-7577](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7577) <!-- low -->
    -   [CVE-2019-7576](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7576) <!-- low -->
    -   [CVE-2019-7575](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7575) <!-- low -->
    -   [CVE-2019-7574](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7574) <!-- low -->
    -   [CVE-2019-7573](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7573) <!-- low -->
    -   [CVE-2019-7572](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7572) <!-- low -->
    -   [CVE-2019-13616](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13616) <!-- low -->
-   Covered in [Episode 49](https://ubuntusecuritypodcast.org/episode-49/) and [Episode 48](https://ubuntusecuritypodcast.org/episode-48/)


### [[USN-4160-1](https://usn.ubuntu.com/4160-1/)] UW IMAP vulnerability [01:04] {#usn-4160-1-uw-imap-vulnerability-01-04}

-   1 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2018-19518](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19518) <!-- medium -->
-   University of Washington IMAP toolkit (used by PHP for it's IMAP implementation)
-   Used rsh to implement various operations - wouldn't try and sanitize the
    provided hostname - so if attacker could provide a hostname/mailbox to
    php's IMAP without any validation could execute arbitrary commands on the
    host
    -   Fixed by turning off the rsh based functionality by default in PHP - if
        you still want this you can set imap.enable\_insecure\_rsh but this is
        not advised...


### [[USN-4158-1](https://usn.ubuntu.com/4158-1/)] LibTIFF vulnerabilities [02:17] {#usn-4158-1-libtiff-vulnerabilities-02-17}

-   2 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-17546](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17546) <!-- medium -->
    -   [CVE-2019-14973](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14973) <!-- low -->
-   Integer overflow -> heap based buffer overflow -> crash, DoS or code
    execution
-   (Low) Integer overflow due to undefined behaviour in existing overflow
    checking code when multiplying various elements -> no known way to
    exploit


### [[USN-4155-2](https://usn.ubuntu.com/4155-2/)] Aspell vulnerability [03:13] {#usn-4155-2-aspell-vulnerability-03-13}

-   1 CVEs addressed in Eoan
    -   [CVE-2019-17544](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17544) <!-- medium -->
-   [Episode 49](https://ubuntusecuritypodcast.org/episode-49/) covered for older releases - Eoan is now out so updated there too


### [[USN-4159-1](https://usn.ubuntu.com/4159-1/)] Exiv2 vulnerability [03:31] {#usn-4159-1-exiv2-vulnerability-03-31}

-   1 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-17402](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17402) <!-- medium -->
-   OOB read -> crash, DoS


### [[USN-4164-1](https://usn.ubuntu.com/4164-1/)] Libxslt vulnerabilities [03:44] {#usn-4164-1-libxslt-vulnerabilities-03-44}

-   3 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-18197](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18197) <!-- medium -->
    -   [CVE-2019-13118](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13118) <!-- low -->
    -   [CVE-2019-13117](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13117) <!-- low -->
-   OSS-Fuzz found 3 issues
    -   possible heap buffer overflow as a result of a dangling pointer - so
        same memory area could be reused for future memory operations -> fixed
        to reset the pointer when done
    -   2 low priority issues - both stack memory info disclosures


### [[USN-4157-1](https://usn.ubuntu.com/4157-1/), [USN-4157-2](https://usn.ubuntu.com/4157-2/)] Linux kernel vulnerabilities [04:59] {#usn-4157-1-usn-4157-2-linux-kernel-vulnerabilities-04-59}

-   9 CVEs addressed in Bionic (HWE) and Disco
    -   [CVE-2019-2181](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2181) <!-- medium -->
    -   [CVE-2019-16714](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16714) <!-- low -->
    -   [CVE-2019-15902](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15902) <!-- medium -->
    -   [CVE-2019-15505](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15505) <!-- low -->
    -   [CVE-2019-15504](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15504) <!-- low -->
    -   [CVE-2019-14821](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14821) <!-- medium -->
    -   [CVE-2019-14816](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14816) <!-- medium -->
    -   [CVE-2019-14815](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14815) <!-- medium -->
    -   [CVE-2019-14814](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14814) <!-- medium -->
-   Integer overflow -> buffer overflow -> root privesc in binder
-   Reintroduction of Spectre v1 vulnerability in ptrace subsystem - Brad
    Spengler - fixed properly in Linus' tree but not when it got backported
    to the stable tree - two lines of code got reordered - so load of
    possible speculative value occurred \_after\_it had been used - so the
    speculative load barrier had no effect - Ubuntu regularly backports fixes
    from the latest stable tree so we ended up affected as well
    -   <https://grsecurity.net/teardown%5Fof%5Fa%5Ffailed%5Flinux%5Flts%5Fspectre%5Ffix.php>
-   Possible DoS (kernel crash) if users can write to /dev/kvm - by default
    on Ubuntu users don't have this privilege so generally not affected
-   2 different heap based buffer overflows in Marvell Wifi driver ->
    occurred when setting parameters for the driver so could be triggered by
    a local users -> crash, DoS or
    possible code execution


### [[USN-4161-1](https://usn.ubuntu.com/4161-1/)] Linux kernel vulnerability [07:40] {#usn-4161-1-linux-kernel-vulnerability-07-40}

-   1 CVEs addressed in Eoan
    -   [CVE-2019-18198](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18198) <!-- high -->
-   Eoan kernel "0-day" - will discuss with Joe later


### [[USN-4162-1](https://usn.ubuntu.com/4162-1/)] Linux kernel vulnerabilities [07:58] {#usn-4162-1-linux-kernel-vulnerabilities-07-58}

-   10 CVEs addressed in Trusty ESM (Azure), Xenial (HWE), Bionic
    -   [CVE-2019-15918](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15918) <!-- medium -->
    -   [CVE-2019-15902](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15902) <!-- medium -->
    -   [CVE-2019-15505](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15505) <!-- low -->
    -   [CVE-2019-15118](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15118) <!-- medium -->
    -   [CVE-2019-15117](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15117) <!-- medium -->
    -   [CVE-2019-14821](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14821) <!-- medium -->
    -   [CVE-2019-14816](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14816) <!-- medium -->
    -   [CVE-2019-14815](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14815) <!-- medium -->
    -   [CVE-2019-14814](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14814) <!-- medium -->
    -   [CVE-2018-21008](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-21008) <!-- medium -->
-   SMB based buffer overread if try mounting a share with version specified
    as 3.0 but the share itself is version 2.10 -> parameter size mismatch ->
    read of too much memory -> info disclosure
-   UAF in RSI 91x Wi-Fi driver -> able to be triggered by a remote network
    peer -> crash, DoS or possible RCE
-   ptrace spectrev1 reissue, KVM crash, Marvell Wifi Driver issues from above
-   USB audio issues from [Episode 48](https://ubuntusecuritypodcast.org/episode-48/) (Disco kernel -> now fixed in Bionic
    kernel as well)


### [[USN-4163-1](https://usn.ubuntu.com/4163-1/), [USN-4163-2](https://usn.ubuntu.com/4163-2/)] Linux kernel vulnerabilities [09:29] {#usn-4163-1-usn-4163-2-linux-kernel-vulnerabilities-09-29}

-   10 CVEs addressed in Xenial and Trusty ESM (HWE)
    -   [CVE-2019-15902](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15902) <!-- medium -->
    -   [CVE-2019-15505](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15505) <!-- low -->
    -   [CVE-2019-15118](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15118) <!-- medium -->
    -   [CVE-2019-15117](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15117) <!-- medium -->
    -   [CVE-2019-14821](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14821) <!-- medium -->
    -   [CVE-2019-14816](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14816) <!-- medium -->
    -   [CVE-2019-14814](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14814) <!-- medium -->
    -   [CVE-2018-21008](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-21008) <!-- medium -->
    -   [CVE-2017-18232](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-18232) <!-- medium -->
    -   [CVE-2016-10906](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-10906) <!-- low -->
-   Spectrev1 reissue, USB Audio, KVM crash, Marvell and RSI 91x WiFi Driver
    issues all covered earlier
-   Serial attached SCSI implementation mishandled error condition leading to
    deadlock -> local user could possibly trigger this leading to a DoS


### [[LSN-0058-1](https://lists.ubuntu.com/archives/ubuntu-security-announce/2019-October/005162.html)] Linux kernel vulnerability [10:09] {#lsn-0058-1-linux-kernel-vulnerability-10-09}

-   22 CVEs addressed in Bionic and Xenial + Xenial (HWE)
    -   [CVE-2019-14835](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14835) <!-- high -->
    -   [CVE-2019-14821](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14821) <!-- medium -->
    -   [CVE-2019-14816](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14816) <!-- medium -->
    -   [CVE-2019-14815](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14815) <!-- medium -->
    -   [CVE-2019-14814](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14814) <!-- medium -->
    -   [CVE-2019-14284](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14284) <!-- medium -->
    -   [CVE-2019-14283](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14283) <!-- medium -->
    -   [CVE-2019-12614](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12614) <!-- low -->
    -   [CVE-2019-11833](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11833) <!-- medium -->
    -   [CVE-2019-11478](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11478) <!-- high -->
    -   [CVE-2019-11477](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11477) <!-- high -->
    -   [CVE-2019-10207](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10207) <!-- medium -->
    -   [CVE-2019-10126](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10126) <!-- medium -->
    -   [CVE-2019-3846](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3846) <!-- medium -->
    -   [CVE-2019-2181](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2181) <!-- medium -->
    -   [CVE-2019-2054](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2054) <!-- medium -->
    -   [CVE-2019-0136](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0136) <!-- medium -->
    -   [CVE-2018-21008](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-21008) <!-- medium -->
    -   [CVE-2018-20976](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20976) <!-- medium -->
    -   [CVE-2018-20961](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20961) <!-- medium -->
    -   [CVE-2018-20856](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20856) <!-- medium -->
    -   [CVE-2016-10905](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-10905) <!-- medium -->
-   Most all covered in previous episodes or previously in this episode
-   2 high priority issues
    -   vhost\_net issue from [Episode 47](https://ubuntusecuritypodcast.org/episode-47/)
    -   SACKPanic from [Episode 37](https://ubuntusecuritypodcast.org/episode-37/)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe and Alex on Ubuntu 19.10 (Eoan Ermine) released but with possible local user kernel DoS bug [11:02] {#joe-and-alex-on-ubuntu-19-dot-10--eoan-ermine--released-but-with-possible-local-user-kernel-dos-bug-11-02}

-   <https://twitter.com/sylvia%5Fritter>
-   <https://www.phoronix.com/scan.php?page=news%5Fitem&px=Ubuntu-19.10-Kernel-Bug>
    -   Mitigate by installing the latest eoan kernel update or by disabling
        user namspaces:
        sysctl user.max\_user\_namespaces=0


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)