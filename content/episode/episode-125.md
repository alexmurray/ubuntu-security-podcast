+++
title = "Episode 125"
description = """
  This week we discuss new kernel memory hardening and security development
  proposals from Ubuntu Security Alumnus Kees Cook, plus we look at details
  of security updates for WebKitGTK, libsndfile, GnuTLS, exiv2 and more.
  """
date = 2021-08-06T16:02:00+09:30
lastmod = 2022-05-15T18:06:01+09:30
draft = false
weight = 1035
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E125.mp3"
podcast_duration = "12:46"
podcast_bytes = 9977091
permalink = "https://ubuntusecuritypodcast.org/episode-125/"
guid = "dfef16fbc8539e7511d69869af34645ac2622c75bfd6b4e5a913334bd9c6418cb6e50edddd6d06afef91c517b1d81d6389cbe1b127a34ac5f42151b7a8c43a7e"
+++

## Overview {#overview}

This week we discuss new kernel memory hardening and security development
proposals from Ubuntu Security Alumnus Kees Cook, plus we look at details
of security updates for WebKitGTK, libsndfile, GnuTLS, exiv2 and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

22 unique CVEs addressed


### [[USN-5024-1](https://ubuntu.com/security/notices/USN-5024-1)] WebKitGTK vulnerabilities [00:57] {#usn-5024-1-webkitgtk-vulnerabilities-00-57}

-   13 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-30799](https://ubuntu.com/security/CVE-2021-30799) <!-- medium -->
    -   [CVE-2021-30797](https://ubuntu.com/security/CVE-2021-30797) <!-- medium -->
    -   [CVE-2021-30795](https://ubuntu.com/security/CVE-2021-30795) <!-- medium -->
    -   [CVE-2021-30758](https://ubuntu.com/security/CVE-2021-30758) <!-- medium -->
    -   [CVE-2021-30749](https://ubuntu.com/security/CVE-2021-30749) <!-- medium -->
    -   [CVE-2021-30744](https://ubuntu.com/security/CVE-2021-30744) <!-- medium -->
    -   [CVE-2021-30734](https://ubuntu.com/security/CVE-2021-30734) <!-- medium -->
    -   [CVE-2021-30720](https://ubuntu.com/security/CVE-2021-30720) <!-- medium -->
    -   [CVE-2021-30689](https://ubuntu.com/security/CVE-2021-30689) <!-- medium -->
    -   [CVE-2021-30665](https://ubuntu.com/security/CVE-2021-30665) <!-- medium -->
    -   [CVE-2021-30663](https://ubuntu.com/security/CVE-2021-30663) <!-- medium -->
    -   [CVE-2021-21779](https://ubuntu.com/security/CVE-2021-21779) <!-- medium -->
    -   [CVE-2021-21775](https://ubuntu.com/security/CVE-2021-21775) <!-- medium -->
-   Every 5-10 weeks so time for another one
-   Usual web / js engine issues - XSS, DoS, RCE etc


### [[USN-4944-2](https://ubuntu.com/security/notices/USN-4944-2)] MariaDB regression [01:30] {#usn-4944-2-mariadb-regression-01-30}

-   Affecting Focal (20.04 LTS)
-   Update announced back in [Episode 115](https://ubuntusecuritypodcast.org/episode-115/) - MariaDB intends to be compatible
    with MySQL but failed to include the caching_sha2_password.so module
    which is the standard module used to authenticate in MySQL - as such
    clients would not be able to connect since they expect to use this method
    to authenticate by default. Upstream MariaDB fixed this in newer versions
    and this update backports that fix to the version in Ubuntu 20.04


### [[USN-5025-1](https://ubuntu.com/security/notices/USN-5025-1), [USN-5025-2](https://ubuntu.com/security/notices/USN-5025-2)] libsndfile vulnerability [02:25] {#usn-5025-1-usn-5025-2-libsndfile-vulnerability-02-25}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-3246](https://ubuntu.com/security/CVE-2021-3246) <!-- medium -->
-   Heap buffer overflow in wav decoder - possible RCE / DoS - found by
    OSSFuzz


### [[USN-5026-1](https://ubuntu.com/security/notices/USN-5026-1), [USN-5026-2](https://ubuntu.com/security/notices/USN-5026-2)] QPDF vulnerabilities [02:58] {#usn-5026-1-usn-5026-2-qpdf-vulnerabilities-02-58}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-36978](https://ubuntu.com/security/CVE-2021-36978) <!-- medium -->
    -   [CVE-2018-18020](https://ubuntu.com/security/CVE-2018-18020) <!-- low -->
-   DoS due to recursive parsing in the face of errors - fixed to instead
    bail out if encounters too many successive errors as PDF is damaged in
    this case anyway
-   Heap buffer overflow from crafted PDF - also found by OSSFuzz


### [[USN-5027-1](https://ubuntu.com/security/notices/USN-5027-1), [USN-5027-2](https://ubuntu.com/security/notices/USN-5027-2)] PEAR vulnerability [03:50] {#usn-5027-1-usn-5027-2-pear-vulnerability-03-50}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-32610](https://ubuntu.com/security/CVE-2021-32610) <!-- medium -->
-   Symlink path traversal in handling of tar archives in the Archive_Tar
    module - since PEAR uses this directly when handling archives, it was
    also vulnerable so could be made to overwrite arbitrary local files on
    archive extraction and hence get code execution


### [[USN-5029-1](https://ubuntu.com/security/notices/USN-5029-1)] GnuTLS vulnerabilities [04:22] {#usn-5029-1-gnutls-vulnerabilities-04-22}

-   2 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-20232](https://ubuntu.com/security/CVE-2021-20232) <!-- low -->
    -   [CVE-2021-20231](https://ubuntu.com/security/CVE-2021-20231) <!-- low -->
-   2 possible UAF in certain scenarious - hard to exploit as need to be able
    to predict the behaviour of glibc's memory allocator as well as GnuTLS's
    own internal allocator but could possibly be used for RCE


### [[USN-5028-1](https://ubuntu.com/security/notices/USN-5028-1)] Exiv2 vulnerability [04:57] {#usn-5028-1-exiv2-vulnerability-04-57}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-31291](https://ubuntu.com/security/CVE-2021-31291) <!-- medium -->
-   More exiv2 (last seen in [Episode 115](https://ubuntusecuritypodcast.org/episode-115/) and [Episode 117](https://ubuntusecuritypodcast.org/episode-117/))
-   Heap buffer overflow in handling of jpeg image metadata - DoS / RCE


### [[USN-5030-1](https://ubuntu.com/security/notices/USN-5030-1)] Perl DBI module vulnerabilities [05:24] {#usn-5030-1-perl-dbi-module-vulnerabilities-05-24}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-14393](https://ubuntu.com/security/CVE-2020-14393) <!-- low -->
    -   [CVE-2014-10402](https://ubuntu.com/security/CVE-2014-10402) <!-- medium -->
-   Incomplete fix for previous Perl DBI [CVE-2014-10401](https://ubuntu.com/security/CVE-2014-10401) - would allow access
    to files outside the original data source directory - was still
    potentially vulnerable - fixed to parse attributes more strictly to avoid
    this
-   Possible stack buffer overflow if using a really long perl package name
    as a database driver - unlikely to actually be triggered in practice -
    used a fixed size stack buffer and memcpy()'d into it without checking
    bounds - fixed to allocate the buffer on the heap to the exact required
    size


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Upstream kernel memcpy() hardening [06:31] {#upstream-kernel-memcpy-hardening-06-31}

-   <https://lwn.net/Articles/864521/>
-   Ubuntu Security Alumnus Kees Cook
-   Aiming to make memcpy() within the kernel detect when
    overwriting following structure members
-   Current kernel memcpy() is able to already detect when writing outside
    the bounds of a given structure (when the structure size can be known at
    either compile or run-time) - but can't handle detecting overwriting of
    extra members within a structure
-   Uses the built-in features of GCC plus some C macro smarts to actually
    allow this to be done in certain circumstances without triggering
    warnigns - ie in some cases want to actually overwrite following
    structure members like when handling network packets etc
-   Most cases are only able to be detected at runtime and since it is not
    easy to statically determine all these call sites, for now this proposal
    is warn-only - but in the future the hope is to make it enforcing so it
    can actually stop possible buffer overflows
-   Also had this been present it would have detected the 11 previously known
    memcpy() overflows so shows likely real-world promise as an extra
    defensive measure


### Linux kernel security done right [09:29] {#linux-kernel-security-done-right-09-29}

-   <https://security.googleblog.com/2021/08/linux-kernel-security-done-right.html>
-   More from Kees
-   Makes a strong case for having vendors track either latest released
    kernel or one of the stable trees - instead of each manually backporting
    patches etc - duplicated work
-   Then could devote engineers to working more upstream on testing,
    hardening etc - which benefit everyone - ie by working upstream on a
    common platform this reduces duplicated efforts and gains many
    efficiencies


### Hiring [11:50] {#hiring-11-50}


#### Linux Cryptography and Security Engineer {#linux-cryptography-and-security-engineer}

-   <https://canonical.com/careers/2612092/linux-cryptography-and-security-engineer-remote>


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>


#### Security - Product Manager {#security-product-manager}

-   <https://canonical.com/careers/2278145/security-product-manager-remote>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)