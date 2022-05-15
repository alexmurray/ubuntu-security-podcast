+++
title = "Episode 60"
description = """
  Security updates for python-apt, GnuTLS, tcpdump, the Linux kernel and
  more, plus we look at plans to integrate Ubuntu Security Notices within the
  main ubuntu.com website.
  """
date = 2020-01-30T17:12:00+10:30
lastmod = 2022-05-15T18:06:51+09:30
draft = false
weight = 1100
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E060.mp3"
podcast_duration = "13:39"
podcast_bytes = 13112345
permalink = "https://ubuntusecuritypodcast.org/episode-60/"
guid = "f21f0a310cd9b3b77ec9aed4aba7830629eb3657eee049ddc03e2be9574b0f08fa15d82320b65e0b6a592206f8237b260aba32005dc4b60a69ee7ccbb9f662ee"
+++

## Overview {#overview}

Security updates for python-apt, GnuTLS, tcpdump, the Linux kernel and
more, plus we look at plans to integrate Ubuntu Security Notices within the
main ubuntu.com website.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

91 unique CVEs addressed


### [[USN-4247-1](https://usn.ubuntu.com/4247-1/), [USN-4247-2](https://usn.ubuntu.com/4247-2/), [USN-4247-3](https://usn.ubuntu.com/4247-3/)] python-apt vulnerabilities [00:42] {#usn-4247-1-usn-4247-2-usn-4247-3-python-apt-vulnerabilities-00-42}

-   2 CVEs addressed in Precise ESM, Trusty ESM,  Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-15796](https://ubuntu.com/security/CVE-2019-15796) <!-- medium -->
    -   [CVE-2019-15795](https://ubuntu.com/security/CVE-2019-15795) <!-- medium -->
-   Could still use md5 to validate downloads - md5 has been broken for a
    while now so if md5 hashes were available for a repo then these would be
    trusted - instead, verify all hashes
-   Ensure repository is trusted before downloading from it - in some cases,
    could configure repositories that were not trusted and python-apt based
    clients would not check trust - so would use it - now always check and
    verify unless the repository is specifically configured as trusted


### [[USN-4248-1](https://usn.ubuntu.com/4248-1/)] GraphicsMagick vulnerabilities [02:31] {#usn-4248-1-graphicsmagick-vulnerabilities-02-31}

-   10 CVEs addressed in Xenial
    -   [CVE-2017-17783](https://ubuntu.com/security/CVE-2017-17783) <!-- medium -->
    -   [CVE-2017-17782](https://ubuntu.com/security/CVE-2017-17782) <!-- medium -->
    -   [CVE-2017-17503](https://ubuntu.com/security/CVE-2017-17503) <!-- medium -->
    -   [CVE-2017-17502](https://ubuntu.com/security/CVE-2017-17502) <!-- medium -->
    -   [CVE-2017-17501](https://ubuntu.com/security/CVE-2017-17501) <!-- medium -->
    -   [CVE-2017-17500](https://ubuntu.com/security/CVE-2017-17500) <!-- medium -->
    -   [CVE-2017-17498](https://ubuntu.com/security/CVE-2017-17498) <!-- medium -->
    -   [CVE-2017-16669](https://ubuntu.com/security/CVE-2017-16669) <!-- medium -->
    -   [CVE-2017-16547](https://ubuntu.com/security/CVE-2017-16547) <!-- medium -->
    -   [CVE-2017-16545](https://ubuntu.com/security/CVE-2017-16545) <!-- medium -->
-   [Episode 59](https://ubuntusecuritypodcast.org/episode-59/), [Episode 57](https://ubuntusecuritypodcast.org/episode-57/), [Episode 55](https://ubuntusecuritypodcast.org/episode-55/) etc


### [[USN-4246-1](https://usn.ubuntu.com/4246-1/)] zlib vulnerabilities [02:55] {#usn-4246-1-zlib-vulnerabilities-02-55}

-   4 CVEs addressed in Xenial
    -   [CVE-2016-9843](https://ubuntu.com/security/CVE-2016-9843) <!-- low -->
    -   [CVE-2016-9842](https://ubuntu.com/security/CVE-2016-9842) <!-- low -->
    -   [CVE-2016-9841](https://ubuntu.com/security/CVE-2016-9841) <!-- low -->
    -   [CVE-2016-9840](https://ubuntu.com/security/CVE-2016-9840) <!-- low -->
-   Trail of Bits security audit of zlib found various instances of undefined
    behaviour in the implementation - pointer increment operations on
    undefined memory ranges, shifts by negative indices etc. Unlikely to have
    any real world impact.


### [[USN-4249-1](https://usn.ubuntu.com/4249-1/)] e2fsprogs vulnerability [03:55] {#usn-4249-1-e2fsprogs-vulnerability-03-55}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-5188](https://ubuntu.com/security/CVE-2019-5188) <!-- medium -->
-   Stack buffer overflow when e2fsck'ing a specially crafted ext4
    file-system image


### [[USN-4233-2](https://usn.ubuntu.com/4233-2/)] GnuTLS update [04:34] {#usn-4233-2-gnutls-update-04-34}

-   Affecting Xenial, Bionic
-   [Episode 59](https://ubuntusecuritypodcast.org/episode-59/) - disabled SHA1 for digital signatures in GnuTLS - this update
    adds VERIFY_ALLOW_BROKEN and VERIFY_ALLOW_SIGN_WITH_SHA1 priority strings
    so can still use sha1 if really needed


### [[USN-4230-2](https://usn.ubuntu.com/4230-2/)] ClamAV vulnerability [05:16] {#usn-4230-2-clamav-vulnerability-05-16}

-   1 CVEs addressed in Precise ESM, Trusty ESM
    -   [CVE-2019-15961](https://ubuntu.com/security/CVE-2019-15961) <!-- medium -->
-   [Episode 59](https://ubuntusecuritypodcast.org/episode-59/)


### [[USN-4250-1](https://usn.ubuntu.com/4250-1/)] MySQL vulnerabilities [05:34] {#usn-4250-1-mysql-vulnerabilities-05-34}

-   14 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-2694](https://ubuntu.com/security/CVE-2020-2694) <!-- medium -->
    -   [CVE-2020-2686](https://ubuntu.com/security/CVE-2020-2686) <!-- medium -->
    -   [CVE-2020-2679](https://ubuntu.com/security/CVE-2020-2679) <!-- medium -->
    -   [CVE-2020-2660](https://ubuntu.com/security/CVE-2020-2660) <!-- medium -->
    -   [CVE-2020-2627](https://ubuntu.com/security/CVE-2020-2627) <!-- medium -->
    -   [CVE-2020-2589](https://ubuntu.com/security/CVE-2020-2589) <!-- medium -->
    -   [CVE-2020-2588](https://ubuntu.com/security/CVE-2020-2588) <!-- medium -->
    -   [CVE-2020-2584](https://ubuntu.com/security/CVE-2020-2584) <!-- medium -->
    -   [CVE-2020-2579](https://ubuntu.com/security/CVE-2020-2579) <!-- medium -->
    -   [CVE-2020-2577](https://ubuntu.com/security/CVE-2020-2577) <!-- medium -->
    -   [CVE-2020-2574](https://ubuntu.com/security/CVE-2020-2574) <!-- medium -->
    -   [CVE-2020-2573](https://ubuntu.com/security/CVE-2020-2573) <!-- medium -->
    -   [CVE-2020-2572](https://ubuntu.com/security/CVE-2020-2572) <!-- medium -->
    -   [CVE-2020-2570](https://ubuntu.com/security/CVE-2020-2570) <!-- medium -->
-   New upstream release (5.7.29 - xenial, bionic) (8.0.19 - eoan)


### [[USN-4251-1](https://usn.ubuntu.com/4251-1/)] Tomcat vulnerabilities [06:02] {#usn-4251-1-tomcat-vulnerabilities-06-02}

-   2 CVEs addressed in Xenial
    -   [CVE-2019-17563](https://ubuntu.com/security/CVE-2019-17563) <!-- low -->
    -   [CVE-2019-12418](https://ubuntu.com/security/CVE-2019-12418) <!-- medium -->


### [[USN-4252-1](https://usn.ubuntu.com/4252-1/), [USN-4252-2](https://usn.ubuntu.com/4252-2/)] tcpdump vulnerabilities [06:05] {#usn-4252-1-usn-4252-2-tcpdump-vulnerabilities-06-05}

-   28 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic
    -   [CVE-2019-15167](https://ubuntu.com/security/CVE-2019-15167) <!-- medium -->
    -   [CVE-2019-15166](https://ubuntu.com/security/CVE-2019-15166) <!-- medium -->
    -   [CVE-2019-1010220](https://ubuntu.com/security/CVE-2019-1010220) <!-- low -->
    -   [CVE-2018-19519](https://ubuntu.com/security/CVE-2018-19519) <!-- low -->
    -   [CVE-2018-16452](https://ubuntu.com/security/CVE-2018-16452) <!-- medium -->
    -   [CVE-2018-16451](https://ubuntu.com/security/CVE-2018-16451) <!-- medium -->
    -   [CVE-2018-16300](https://ubuntu.com/security/CVE-2018-16300) <!-- medium -->
    -   [CVE-2018-16230](https://ubuntu.com/security/CVE-2018-16230) <!-- medium -->
    -   [CVE-2018-16229](https://ubuntu.com/security/CVE-2018-16229) <!-- medium -->
    -   [CVE-2018-16228](https://ubuntu.com/security/CVE-2018-16228) <!-- medium -->
    -   [CVE-2018-16227](https://ubuntu.com/security/CVE-2018-16227) <!-- medium -->
    -   [CVE-2018-14882](https://ubuntu.com/security/CVE-2018-14882) <!-- medium -->
    -   [CVE-2018-14881](https://ubuntu.com/security/CVE-2018-14881) <!-- medium -->
    -   [CVE-2018-14880](https://ubuntu.com/security/CVE-2018-14880) <!-- medium -->
    -   [CVE-2018-14879](https://ubuntu.com/security/CVE-2018-14879) <!-- low -->
    -   [CVE-2018-14470](https://ubuntu.com/security/CVE-2018-14470) <!-- medium -->
    -   [CVE-2018-14469](https://ubuntu.com/security/CVE-2018-14469) <!-- medium -->
    -   [CVE-2018-14468](https://ubuntu.com/security/CVE-2018-14468) <!-- medium -->
    -   [CVE-2018-14467](https://ubuntu.com/security/CVE-2018-14467) <!-- medium -->
    -   [CVE-2018-14466](https://ubuntu.com/security/CVE-2018-14466) <!-- medium -->
    -   [CVE-2018-14465](https://ubuntu.com/security/CVE-2018-14465) <!-- medium -->
    -   [CVE-2018-14464](https://ubuntu.com/security/CVE-2018-14464) <!-- medium -->
    -   [CVE-2018-14463](https://ubuntu.com/security/CVE-2018-14463) <!-- medium -->
    -   [CVE-2018-14462](https://ubuntu.com/security/CVE-2018-14462) <!-- medium -->
    -   [CVE-2018-14461](https://ubuntu.com/security/CVE-2018-14461) <!-- medium -->
    -   [CVE-2018-10105](https://ubuntu.com/security/CVE-2018-10105) <!-- medium -->
    -   [CVE-2018-10103](https://ubuntu.com/security/CVE-2018-10103) <!-- medium -->
    -   [CVE-2017-16808](https://ubuntu.com/security/CVE-2017-16808) <!-- low -->
-   Usual mix of buffer overflows and the like in various tcpdump
    dissectors - in general you should not run tcpdump on untrusted data -
    when run as root, by default tcpdump will drop permissions to the tcpdump
    user after opening the capture device so this makes it somewhat safer


### [[USN-4253-1](https://usn.ubuntu.com/4253-1/), [USN-4253-2](https://usn.ubuntu.com/4253-2/)] Linux kernel vulnerability [07:30] {#usn-4253-1-usn-4253-2-linux-kernel-vulnerability-07-30}

-   1 CVEs addressed in Bionic (HWE), Eoan (5.3 kernel)
    -   [CVE-2019-14615](https://ubuntu.com/security/CVE-2019-14615) <!-- medium -->
-   Intel GPU would fail to clear state during context switch - could allow
    an info leak between local users - so update driver to forcibly clear
    state


### [[USN-4255-1](https://usn.ubuntu.com/4255-1/), USN-4255-2] Linux kernel vulnerabilities [08:07] {#usn-4255-1-usn-4255-2-linux-kernel-vulnerabilities-08-07}

-   2 CVEs addressed in Xenial (HWE), Bionic (4.15 kernel)
    -   [CVE-2020-7053](https://ubuntu.com/security/CVE-2020-7053) <!-- medium -->
    -   [CVE-2019-14615](https://ubuntu.com/security/CVE-2019-14615) <!-- medium -->
-   Intel GPU state info leak
-   Intel GPU driver (i915) UAF - crash / code execution


### [[USN-4258-1](https://usn.ubuntu.com/4258-1/)] Linux kernel vulnerabilities [08:40] {#usn-4258-1-linux-kernel-vulnerabilities-08-40}

-   15 CVEs addressed in Bionic (AWS, GCP, GKE) (5.0 kernel)
    -   [CVE-2019-15291](https://ubuntu.com/security/CVE-2019-15291) <!-- negligible -->
    -   [CVE-2019-19767](https://ubuntu.com/security/CVE-2019-19767) <!-- low -->
    -   [CVE-2019-19332](https://ubuntu.com/security/CVE-2019-19332) <!-- medium -->
    -   [CVE-2019-19252](https://ubuntu.com/security/CVE-2019-19252) <!-- medium -->
    -   [CVE-2019-19227](https://ubuntu.com/security/CVE-2019-19227) <!-- low -->
    -   [CVE-2019-19082](https://ubuntu.com/security/CVE-2019-19082) <!-- low -->
    -   [CVE-2019-19079](https://ubuntu.com/security/CVE-2019-19079) <!-- low -->
    -   [CVE-2019-19078](https://ubuntu.com/security/CVE-2019-19078) <!-- low -->
    -   [CVE-2019-19077](https://ubuntu.com/security/CVE-2019-19077) <!-- low -->
    -   [CVE-2019-19071](https://ubuntu.com/security/CVE-2019-19071) <!-- low -->
    -   [CVE-2019-19062](https://ubuntu.com/security/CVE-2019-19062) <!-- medium -->
    -   [CVE-2019-19050](https://ubuntu.com/security/CVE-2019-19050) <!-- medium -->
    -   [CVE-2019-18885](https://ubuntu.com/security/CVE-2019-18885) <!-- low -->
    -   [CVE-2019-18683](https://ubuntu.com/security/CVE-2019-18683) <!-- low -->
    -   [CVE-2019-15099](https://ubuntu.com/security/CVE-2019-15099) <!-- medium -->
-   OOB write in KVM hypervisor via /dev/kvm
-   Virtual console could allow writes via unimplemented unicode devices -
    out of bounds memory access - crash etc
-   2 separate memory leaks in crypto subsystem on certain failure paths -
    local user accessible - DoS via memory exhaustion
-   NULL ptr deref in Atheros wireless USB driver


### [[USN-4254-1](https://usn.ubuntu.com/4254-1/), [USN-4254-2](https://usn.ubuntu.com/4254-2/)] Linux kernel vulnerabilities [09:54] {#usn-4254-1-usn-4254-2-linux-kernel-vulnerabilities-09-54}

-   9 CVEs addressed in Trusty ESM (HWE), Xenial (4.4 kernel)
    -   [CVE-2019-15291](https://ubuntu.com/security/CVE-2019-15291) <!-- negligible -->
    -   [CVE-2019-19332](https://ubuntu.com/security/CVE-2019-19332) <!-- medium -->
    -   [CVE-2019-19227](https://ubuntu.com/security/CVE-2019-19227) <!-- low -->
    -   [CVE-2019-19063](https://ubuntu.com/security/CVE-2019-19063) <!-- low -->
    -   [CVE-2019-19062](https://ubuntu.com/security/CVE-2019-19062) <!-- medium -->
    -   [CVE-2019-19057](https://ubuntu.com/security/CVE-2019-19057) <!-- low -->
    -   [CVE-2019-18885](https://ubuntu.com/security/CVE-2019-18885) <!-- low -->
    -   [CVE-2019-18683](https://ubuntu.com/security/CVE-2019-18683) <!-- low -->
    -   [CVE-2019-14615](https://ubuntu.com/security/CVE-2019-14615) <!-- medium -->
-   OOB write in KVM hypervisor via /dev/kvm
-   Crypto memory leak
-   Intel GPU info leak


### [[USN-4256-1](https://usn.ubuntu.com/4256-1/)] Cyrus SASL vulnerability [10:24] {#usn-4256-1-cyrus-sasl-vulnerability-10-24}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Eoan
    -   [CVE-2019-19906](https://ubuntu.com/security/CVE-2019-19906) <!-- medium -->
-   OOB write due to off-by-one error - originally reported against OpenLDAP
    which uses cyrus-sasl and was able to be crashed by an unauthenticated
    remote user due to this


### [[USN-4236-3](https://usn.ubuntu.com/4236-3/)] Libgcrypt vulnerability [10:57] {#usn-4236-3-libgcrypt-vulnerability-10-57}

-   1 CVEs addressed in Precise ESM, Trusty ESM
    -   [CVE-2019-13627](https://ubuntu.com/security/CVE-2019-13627) <!-- medium -->
-   [Episode 59](https://ubuntusecuritypodcast.org/episode-59/) - ECDSA side-channel timing attack


### [[USN-4257-1](https://usn.ubuntu.com/4257-1/)] OpenJDK vulnerabilities [11:15] {#usn-4257-1-openjdk-vulnerabilities-11-15}

-   8 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-2659](https://ubuntu.com/security/CVE-2020-2659) <!-- medium -->
    -   [CVE-2020-2655](https://ubuntu.com/security/CVE-2020-2655) <!-- medium -->
    -   [CVE-2020-2654](https://ubuntu.com/security/CVE-2020-2654) <!-- low -->
    -   [CVE-2020-2604](https://ubuntu.com/security/CVE-2020-2604) <!-- medium -->
    -   [CVE-2020-2601](https://ubuntu.com/security/CVE-2020-2601) <!-- medium -->
    -   [CVE-2020-2593](https://ubuntu.com/security/CVE-2020-2593) <!-- low -->
    -   [CVE-2020-2590](https://ubuntu.com/security/CVE-2020-2590) <!-- low -->
    -   [CVE-2020-2583](https://ubuntu.com/security/CVE-2020-2583) <!-- low -->
-   Latest upstream release (11.0.6)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Moving Ubuntu Security Notices to ubuntu.com/security [11:34] {#moving-ubuntu-security-notices-to-ubuntu-dot-com-security-11-34}

-   mpt put out a call for feedback on plans to move USNs from usn.ubuntu.com
    to ubuntu.com/security/
-   originally announced as a [plan back in October](https://lists.ubuntu.com/archives/ubuntu-hardened/2019-October/001002.html)
    on the ubuntu-hardened mailing list
-   posted a mock-up of the resulting page and called for feedback
-   this is expected to land in the next few weeks
-   <https://discourse.ubuntu.com/t/security-notices-on-ubuntu-com/14159>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)