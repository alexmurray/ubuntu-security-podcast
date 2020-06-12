+++
title = "Episode 78"
description = """
  SRBDS aka CrossTalk, the latest Intel speculative execution attack, is the
  big news this week in security updates for Ubuntu, as well as fixes for
  GnuTLS, Firefox and more, plus Alex and Joe talk about using STRIDE for
  threat modelling of software products.
  """
date = 2020-06-12T16:23:00+09:30
lastmod = 2020-06-12T16:25:08+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E078.mp3"
podcast_duration = "24:52"
podcast_bytes = 23879380
permalink = "https://ubuntusecuritypodcast.org/episode-78/"
guid = "5930687f6569a7fd92bc06c5860bb5c94dd3073e09e20c5cafbd531a87d0a49f9364181850073bb53c0f388e2a3b31f016fe841a6cb9fe28c7c14b8a125c9065"
+++

## Overview {#overview}

SRBDS aka CrossTalk, the latest Intel speculative execution attack, is the
big news this week in security updates for Ubuntu, as well as fixes for
GnuTLS, Firefox and more, plus Alex and Joe talk about using STRIDE for
threat modelling of software products.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

39 unique CVEs addressed


### [[USN-4381-2](https://usn.ubuntu.com/4381-2/)] Django vulnerabilities [01:00] {#usn-4381-2-django-vulnerabilities-01-00}

-   2 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2020-13596](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13596) <!-- medium -->
    -   [CVE-2020-13254](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13254) <!-- medium -->
-   [Episode 77](https://ubuntusecuritypodcast.org/episode-77/)


### [[USN-4382-1](https://usn.ubuntu.com/4382-1/)] FreeRDP vulnerabilities [01:28] {#usn-4382-1-freerdp-vulnerabilities-01-28}

-   14 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2020-13398](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13398) <!-- medium -->
    -   [CVE-2020-13397](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13397) <!-- low -->
    -   [CVE-2020-13396](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13396) <!-- low -->
    -   [CVE-2020-11526](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11526) <!-- low -->
    -   [CVE-2020-11525](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11525) <!-- low -->
    -   [CVE-2020-11523](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11523) <!-- low -->
    -   [CVE-2020-11522](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11522) <!-- low -->
    -   [CVE-2020-11521](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11521) <!-- low -->
    -   [CVE-2020-11058](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11058) <!-- medium -->
    -   [CVE-2020-11049](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11049) <!-- low -->
    -   [CVE-2020-11048](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11048) <!-- medium -->
    -   [CVE-2020-11046](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11046) <!-- medium -->
    -   [CVE-2020-11045](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11045) <!-- medium -->
    -   [CVE-2020-11042](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11042) <!-- medium -->
-   [Episode 77](https://ubuntusecuritypodcast.org/episode-77/) covered a similar update for FreeRDP2 in 18.04 LTS, 19.10, 20.04 LTS
-   This is the corresponding update for FreeRDP 1 in 16.04 LTS


### [[USN-4383-1](https://usn.ubuntu.com/4383-1/)] Firefox vulnerabilities [02:09] {#usn-4383-1-firefox-vulnerabilities-02-09}

-   8 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-12399](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12399) <!-- medium -->
    -   [CVE-2020-12411](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12411) <!-- medium -->
    -   [CVE-2020-12410](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12410) <!-- medium -->
    -   [CVE-2020-12409](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12409) <!-- low -->
    -   [CVE-2020-12408](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12408) <!-- low -->
    -   [CVE-2020-12407](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12407) <!-- medium -->
    -   [CVE-2020-12406](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12406) <!-- medium -->
    -   [CVE-2020-12405](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12405) <!-- medium -->
-   77.0.1


### [[USN-4384-1](https://usn.ubuntu.com/4384-1/)] GnuTLS vulnerability [02:54] {#usn-4384-1-gnutls-vulnerability-02-54}

-   1 CVEs addressed in Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-13777](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13777) <!-- high -->
-   Rare Friday update - high priority GnuTLS vulnerability - would use an
    all-zero key for encrypting TLS session ticket
-   TLS1.3 -> enables a middleperson attack against resumed sessions
-   TLS1.2 -> enables passive decryption of traffic to/from servers when the
    client supports session tickets


### [[USN-4386-1](https://usn.ubuntu.com/4386-1/)] libjpeg-turbo vulnerability [04:19] {#usn-4386-1-libjpeg-turbo-vulnerability-04-19}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-13790](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13790) <!-- medium -->
    -   Heap buffer over-read via crafted PPM file -> info disclosure / crash


### [[USN-4385-1](https://usn.ubuntu.com/4385-1/)] Intel Microcode vulnerabilities [04:49] {#usn-4385-1-intel-microcode-vulnerabilities-04-49}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-0549](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0549) <!-- medium -->
    -   [CVE-2020-0548](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0548) <!-- medium -->
    -   [CVE-2020-0543](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0543) <!-- medium -->
-   Latest Intel microarchitectural cache side-channel vulnerabilities - L1D
    cache, vector registers, special registers
-   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/SRBDS>
-   Special register buffer data sampling (SRBDS) -> RDRAND, RDSEED etc ->
    aka CrossTalk -> micro-arch buffer is shared across cores so old values
    could be read by other processors
-   microcode clears buffers -> performance decrease for RDRAND etc  as a
    result -> kernel update contains support for a kernel command-line arg to
    disable this mitigation


### [[USN-4387-1](https://usn.ubuntu.com/4387-1/)] Linux kernel vulnerabilities [07:25] {#usn-4387-1-linux-kernel-vulnerabilities-07-25}

-   5 CVEs addressed in Bionic (18.04 LTS), Eoan (19.10)
    -   [CVE-2020-12659](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12659) <!-- low xdp oob write (CAP\_NET\_ADMIN) -->
    -   [CVE-2020-12464](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12464) <!-- medium usb sg -->
    -   [CVE-2020-12114](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12114) <!-- medium fs race -->
    -   [CVE-2020-0543](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0543) <!-- medium srbds -->
    -   [CVE-2020-0067](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0067) <!-- medium f2fs -->
-   5.3
-   Kernel command-line option to disable SRBDS mitigation
-   F2FS bounds check fail on xattrs -> OOB read -> info leak
-   USB scatter-gather UAF -> malicious USB device -> crash / RCE
-   XDP socket fail to validate userspace metadata -> OOB write -> requires
    CAP\_NET\_ADMIN


### [[USN-4388-1](https://usn.ubuntu.com/4388-1/)] Linux kernel vulnerabilities [08:40] {#usn-4388-1-linux-kernel-vulnerabilities-08-40}

-   6 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-1749](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1749) <!-- medium -->
    -   [CVE-2020-12659](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12659) <!-- low xdp oob write (CAP\_NET\_ADMIN) -->
    -   [CVE-2020-12464](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12464) <!-- medium usb sg -->
    -   [CVE-2020-12114](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12114) <!-- medium fs race -->
    -   [CVE-2020-0543](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0543) <!-- medium srbds -->
    -   [CVE-2020-0067](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0067) <!-- medium f2fs -->
-   5.0 gke & oem


### [[USN-4389-1](https://usn.ubuntu.com/4389-1/)] Linux kernel vulnerabilities [08:54] {#usn-4389-1-linux-kernel-vulnerabilities-08-54}

-   6 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-10751](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10751) <!-- negligible -->
    -   [CVE-2020-12659](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12659) <!-- low xdp oob write (CAP\_NET\_ADMIN) -->
    -   [CVE-2020-12464](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12464) <!-- medium usb sg -->
    -   [CVE-2020-12114](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12114) <!-- medium fs race -->
    -   [CVE-2020-0543](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0543) <!-- medium srbds -->
    -   [CVE-2020-0067](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0067) <!-- medium f2fs -->
-   5.4


### [[USN-4390-1](https://usn.ubuntu.com/4390-1/)] Linux kernel vulnerabilities [09:02] {#usn-4390-1-linux-kernel-vulnerabilities-09-02}

-   6 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-10751](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10751) <!-- negligible -->
    -   [CVE-2020-1749](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1749) <!-- medium ipsec info leak -->
    -   [CVE-2020-12464](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12464) <!-- medium usb sg -->
    -   [CVE-2020-12114](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12114) <!-- medium fs race -->
    -   [CVE-2020-0543](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0543) <!-- medium srbds -->
    -   [CVE-2020-0067](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0067) <!-- medium f2fs -->
-   4.15 (14.04 ESM azure, 16.04 LTS - hwe, 18.04 LTS
    all)
-   As above + IPsec fail to encrypt IPv6 in some conditions -> info leak


### [[USN-4391-1](https://usn.ubuntu.com/4391-1/)] Linux kernel vulnerabilities [09:35] {#usn-4391-1-linux-kernel-vulnerabilities-09-35}

-   8 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2020-10751](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10751) <!-- negligible -->
    -   [CVE-2020-1749](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1749) <!-- medium ipsec info leak -->
    -   [CVE-2020-12826](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12826) <!-- medium signal integer overflow -->
    -   [CVE-2020-12769](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12769) <!-- medium -->
    -   [CVE-2020-12464](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12464) <!-- medium usb sg -->
    -   [CVE-2020-12114](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12114) <!-- medium fs race -->
    -   [CVE-2020-0543](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0543) <!-- medium srbds -->
    -   [CVE-2019-19319](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19319) <!-- low -->
-   4.4


### [[USN-4392-1](https://usn.ubuntu.com/4392-1/)] Linux kernel vulnerabilities [09:46] {#usn-4392-1-linux-kernel-vulnerabilities-09-46}

-   3 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM)
    -   [CVE-2020-12114](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12114) <!-- medium fs race -->
    -   [CVE-2020-0543](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0543) <!-- medium srbds -->
    -   [CVE-2020-12654](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12654) <!-- high marvel wifi buffer overflow -->
-   3.13


### [[USN-4393-1](https://usn.ubuntu.com/4393-1/)] Linux kernel vulnerabilities [09:46] {#usn-4393-1-linux-kernel-vulnerabilities-09-46}

-   2 CVEs addressed in Precise ESM (12.04 ESM)
    -   [CVE-2020-0543](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0543) <!-- medium srbds -->
    -   [CVE-2020-12654](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12654) <!-- high marvel wifi buffer overflow -->
-   3.2


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe and Alex discuss Threat Modelling via STRIDE [10:12] {#joe-and-alex-discuss-threat-modelling-via-stride-10-12}

-   <https://en.wikipedia.org/wiki/STRIDE%5F(security)>
-   <https://threatmodelingbook.com/>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
