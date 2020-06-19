+++
title = "Episode 79"
description = """
  This week Joe discusses Intel's CET announcement with John Johansen, plus
  Alex details recent security fixes including SQLite, fwupd, NSS, DBus and
  more.
  """
date = 2020-06-19T16:06:00+09:30
lastmod = 2020-06-19T16:10:42+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E079.mp3"
podcast_duration = "23:01"
podcast_bytes = 22108069
permalink = "https://ubuntusecuritypodcast.org/episode-79/"
guid = "069f8ee0d049cb3efe3a8d1c4883fd518ee0d6b95332531af2ce42971cc6b8acfcb31f58cfa9fbf70adc61a7a03d7bda1fd93ade2478f6ead6deb5ae593768e8"
+++

## Overview {#overview}

This week Joe discusses Intel's CET announcement with John Johansen, plus
Alex details recent security fixes including SQLite, fwupd, NSS, DBus and
more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

24 unique CVEs addressed


### [[USN-4394-1](https://usn.ubuntu.com/4394-1/)] SQLite vulnerabilities [00:56] {#usn-4394-1-sqlite-vulnerabilities-00-56}

-   9 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-13632](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13632) <!-- medium -->
    -   [CVE-2020-13631](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13631) <!-- low -->
    -   [CVE-2020-13630](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13630) <!-- medium -->
    -   [CVE-2020-13435](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13435) <!-- medium -->
    -   [CVE-2020-13434](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13434) <!-- medium -->
    -   [CVE-2020-11655](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11655) <!-- low -->
    -   [CVE-2019-19645](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19645) <!-- low -->
    -   [CVE-2019-19603](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19603) <!-- low -->
    -   [CVE-2018-8740](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-8740) <!-- low -->
-   NULL ptr deref via crafted query, UAF, OOB read, integer overflow when
    printing high precision floating point numbers, various minor issues when
    handling crafted databases


### [[USN-4385-2](https://usn.ubuntu.com/4385-2/)] Intel Microcode regression [01:43] {#usn-4385-2-intel-microcode-regression-01-43}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-0549](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0549) <!-- medium -->
    -   [CVE-2020-0548](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0548) <!-- medium -->
    -   [CVE-2020-0543](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0543) <!-- medium -->
-   [Episode 78](https://ubuntusecuritypodcast.org/episode-78/) - SRBDS etc - microcode is specific to processors, and is
    identified by the triplet of CPU Family, Model and Stepping - this is
    listed in /proc/cpuinfo - mine say is 6, 142, 10 - in hex - 06-8E-0A -
    would cause a specific Skylake processor type to fail to boot
    (06-4e-03) - we reverted this back to the previous release version from
    November 2019


### [[USN-4395-1](https://usn.ubuntu.com/4395-1/)] fwupd vulnerability [03:39] {#usn-4395-1-fwupd-vulnerability-03-39}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-10759](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10759) <!-- medium -->
-   A crafted firmware update file could bypass signature verification - in
    general not an issue since would need to be able to get in the middle of
    firmware updates (which come from LVFS via HTTPS) - so either would need
    to compromise LVFS directly or the HTTPS connection to it.
    -   Dangling S3 bucket... :/
-   <https://github.com/justinsteven/advisories/blob/master/2020%5Ffwupd%5Fdangling%5Fs3%5Fbucket%5Fand%5FCVE-2020-10759%5Fsignature%5Fverification%5Fbypass.md>


### [[USN-4315-2](https://usn.ubuntu.com/4315-2/)] Apport vulnerabilities [06:11] {#usn-4315-2-apport-vulnerabilities-06-11}

-   2 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2020-8833](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8833) <!-- medium -->
    -   [CVE-2020-8831](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8831) <!-- high -->
-   [Episode 70](https://ubuntusecuritypodcast.org/episode-70/)


### [[USN-4396-1](//usn.ubuntu.com/4396-1/)] libexif vulnerabilities [06:24] {#usn-4396-1--usn-dot-ubuntu-dot-com-4396-1--libexif-vulnerabilities-06-24}

-   6 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-13114](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13114) <!-- low -->
    -   [CVE-2020-13113](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13113) <!-- medium -->
    -   [CVE-2020-13112](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13112) <!-- medium -->
    -   [CVE-2020-0198](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0198) <!-- medium -->
    -   [CVE-2020-0182](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0182) <!-- medium -->
    -   [CVE-2020-0093](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0093) <!-- low -->
-   UAF due to uninitialised memory, various buffer over-reads, integer
    overflow, etc


### [[USN-4397-1](https://usn.ubuntu.com/4397-1/)] NSS vulnerabilities [07:24] {#usn-4397-1-nss-vulnerabilities-07-24}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-12399](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12399) <!-- medium -->
    -   [CVE-2019-17023](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17023) <!-- low -->
-   Possible timing side-channel attack during DSA key generation - due to
    the difference in time of various operations (dependent on the contents
    of the private key) - the key value could be inferred by an attacker


### [[USN-4398-1](https://usn.ubuntu.com/4398-1/), [USN-4398-2](https://usn.ubuntu.com/4398-2/)] DBus vulnerability [08:01] {#usn-4398-1-usn-4398-2-dbus-vulnerability-08-01}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-12049](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12049) <!-- medium -->
-   DBus can be used to send file-descriptors - client sends to server via
    the dbus daemon - daemon will validate that messages only contain a
    certain number of file-descriptors - if too may, will reject BUT fail to
    close those file-descriptors - eventually would accumulate too many open
    files itself and so the daemon would not be able to accept new
    connections -> DoS from a local unprivileged user


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe discusses Intel CET with John Johansen (aka JJ) [09:28] {#joe-discusses-intel-cet-with-john-johansen--aka-jj--09-28}

-   Return Oriented Programming (ROP) <https://en.wikipedia.org/wiki/Return-oriented%5Fprogramming>
-   Sigreturn Oriented Programming (SROP) (<https://en.wikipedia.org/wiki/Sigreturn-oriented%5Fprogramming>
-   Jump/Call Oriented Programming (JOP) <https://www.csc2.ncsu.edu/faculty/xjiang4/pubs/ASIACCS11.pdf>

-   Control-flow Enforcement technology (CET)
    -   <https://www.linuxplumbersconf.org/event/2/contributions/147/attachments/72/83/CET-LPC-2018.pdf>
    -   <https://software.intel.com/sites/default/files/managed/4d/2a/control-flow-enforcement-technology-preview.pdf>

-   CFI in software
    -   <https://www.cse.usf.edu/~ligatti/papers/cficcs.pdf>

<!--listend-->

-   CET on Linux
    -   Kernel
        -   <https://lwn.net/Articles/758245/>

    -   gcc
        -   <https://gcc.gnu.org/git/?p=gcc.git;a=commitdiff;h=8d286dd118a5bd16f7ae0fb9dfcdcfd020bea803>
        -   <https://gcc.gnu.org/git/?p=gcc.git;a=commit;h=d17cdc17c90ce77cb90c569322c1f241d3530cec>
        -   <https://gcc.gnu.org/git/?p=gcc.git;a=commit;h=d21486483579c2205fcabf1308b155000af86fe1>
        -   <https://gcc.gnu.org/git/?p=gcc.git&a=search&h=HEAD&st=commit&s=CET>

    -   glibc
        -   <https://sourceware.org/legacy-ml/libc-alpha/2018-08/msg00003.html>

<!--listend-->

-   LLVM/Clang
    -   not just CET, clang has it own CFI not dependent on CET but will support CET
    -   <https://clang.llvm.org/docs/ControlFlowIntegrity.html>
    -   <https://clang.llvm.org/docs/ShadowCallStack.html>
-   CET on windows
    -   <https://windows-internals.com/cet-on-windows/>

-   Pre CET software based CFI on windows
    -   <https://docs.microsoft.com/en-us/windows/win32/secbp/control-flow-guard>

-   Papers/talks on attacking CET/CFI
    -   <https://i.blackhat.com/asia-19/Thu-March-28/bh-asia-Sun-How-to-Survive-the-Hardware-Assisted-Control-Flow-Integrity-Enforcement.pdf>
    -   <https://windows-internals.com/cet-on-windows/>

-   Smashing the stack for fun and profit
    -   <https://www.eecs.umich.edu/courses/eecs588/static/stack%5Fsmashing.pdf>

-   StackClash
    -   <https://blog.qualys.com/securitylabs/2017/06/19/the-stack-clash>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
