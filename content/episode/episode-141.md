+++
title = "Episode 141"
description = """
  A preview of some things to come for the Ubuntu Security Podcast plus we
  cover security updates for Samba, uriparser, libmodbus, MariaDB, Mailman
  and more.
  """
date = 2021-12-10T16:27:00+10:30
lastmod = 2022-05-15T18:05:48+09:30
draft = false
weight = 1019
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E141.mp3"
podcast_duration = "10:51"
podcast_bytes = 8564186
permalink = "https://ubuntusecuritypodcast.org/episode-141/"
guid = "b34159b8f6b641e11b148510550b33141c6a9ab53216fe87c4f0e12651aadf775ddaff407d5b4c2c5c9e48b9e9ad3df792005f1ac1fe717914cf0a1929b9acb1"
+++

## Overview {#overview}

A preview of some things to come for the Ubuntu Security Podcast plus we
cover security updates for Samba, uriparser, libmodbus, MariaDB, Mailman
and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

38 unique CVEs addressed


### [[USN-5174-1](https://ubuntu.com/security/notices/USN-5174-1)] Samba vulnerabilities [00:58] {#usn-5174-1-samba-vulnerabilities-00-58}

-   4 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2021-3671](https://ubuntu.com/security/CVE-2021-3671) <!-- low -->
    -   [CVE-2020-25722](https://ubuntu.com/security/CVE-2020-25722) <!-- medium -->
    -   [CVE-2020-25717](https://ubuntu.com/security/CVE-2020-25717) <!-- medium -->
    -   [CVE-2016-2124](https://ubuntu.com/security/CVE-2016-2124) <!-- medium -->
-   Few weeks ago published Samba updates for a range of vulns - mentioned in
    [Episode 139](https://ubuntusecuritypodcast.org/episode-139/#samba-updates-available-for-testing-for-ubuntu-18-dot-04-lts-05-24) the difficulties involved in patching older Samba versions
    like 4.7.6 as used in Ubuntu 18.04 - backports of patches for the more
    severe vulnerabilities including the ability for authenticated attackers
    to escalate privileges to root on domain machines and others


### [[USN-5142-2](https://ubuntu.com/security/notices/USN-5142-2)] Samba regressions [02:06] {#usn-5142-2-samba-regressions-02-06}

-   9 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-3671](https://ubuntu.com/security/CVE-2021-3671) <!-- low -->
    -   [CVE-2021-3738](https://ubuntu.com/security/CVE-2021-3738) <!-- medium -->
    -   [CVE-2021-23192](https://ubuntu.com/security/CVE-2021-23192) <!-- medium -->
    -   [CVE-2020-25722](https://ubuntu.com/security/CVE-2020-25722) <!-- medium -->
    -   [CVE-2020-25721](https://ubuntu.com/security/CVE-2020-25721) <!-- medium -->
    -   [CVE-2020-25719](https://ubuntu.com/security/CVE-2020-25719) <!-- medium -->
    -   [CVE-2020-25718](https://ubuntu.com/security/CVE-2020-25718) <!-- medium -->
    -   [CVE-2020-25717](https://ubuntu.com/security/CVE-2020-25717) <!-- medium -->
    -   [CVE-2016-2124](https://ubuntu.com/security/CVE-2016-2124) <!-- medium -->
-   Original upstream patches caused a bunch of regressions - once upstream
    subsequently fixed these, we then updated our backports to include those
    regression fixes
-   How soon to ship vuln fixes?


### [[USN-5171-1](https://ubuntu.com/security/notices/USN-5171-1)] Long Range ZIP vulnerabilities [03:22] {#usn-5171-1-long-range-zip-vulnerabilities-03-22}

-   9 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2018-5786](https://ubuntu.com/security/CVE-2018-5786) <!-- medium -->
    -   [CVE-2018-5747](https://ubuntu.com/security/CVE-2018-5747) <!-- medium -->
    -   [CVE-2018-5650](https://ubuntu.com/security/CVE-2018-5650) <!-- medium -->
    -   [CVE-2018-11496](https://ubuntu.com/security/CVE-2018-11496) <!-- medium -->
    -   [CVE-2018-10685](https://ubuntu.com/security/CVE-2018-10685) <!-- medium -->
    -   [CVE-2017-9929](https://ubuntu.com/security/CVE-2017-9929) <!-- medium -->
    -   [CVE-2017-9928](https://ubuntu.com/security/CVE-2017-9928) <!-- medium -->
    -   [CVE-2017-8846](https://ubuntu.com/security/CVE-2017-8846) <!-- low -->
    -   [CVE-2017-8844](https://ubuntu.com/security/CVE-2017-8844) <!-- low -->
-   Compression tool optimised to achieve better performance on larger files
-   Results of fuzzing by various researchers over time - AFL
-   4 UAFs, 2 stack buffer overflows, 2 infinite loop, 1 heap buffer overflow


### [[USN-5172-1](https://ubuntu.com/security/notices/USN-5172-1)] uriparser vulnerabilities [03:56] {#usn-5172-1-uriparser-vulnerabilities-03-56}

-   4 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2018-20721](https://ubuntu.com/security/CVE-2018-20721) <!-- medium -->
    -   [CVE-2018-19200](https://ubuntu.com/security/CVE-2018-19200) <!-- medium -->
    -   [CVE-2018-19199](https://ubuntu.com/security/CVE-2018-19199) <!-- medium -->
    -   [CVE-2018-19198](https://ubuntu.com/security/CVE-2018-19198) <!-- medium -->
-   More fuzzing results -&gt; Google AutoFuzz - seems to manage oss-fuzz etc
-   OOB write, integer overflow, OOB read, NULL ptr deref


### [[USN-5173-1](https://ubuntu.com/security/notices/USN-5173-1)] libmodbus vulnerabilities [04:36] {#usn-5173-1-libmodbus-vulnerabilities-04-36}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-14463](https://ubuntu.com/security/CVE-2019-14463) <!-- medium -->
    -   [CVE-2019-14462](https://ubuntu.com/security/CVE-2019-14462) <!-- medium -->
-   1 vuln originally - OOB read on certain input - patch for this however
    contained a typo which then introduced a second vuln on a subset of the
    original input - second CVE assigned for that - both now fixed


### [[USN-5170-1](https://ubuntu.com/security/notices/USN-5170-1)] MariaDB vulnerability [05:13] {#usn-5170-1-mariadb-vulnerability-05-13}

-   1 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-35604](https://ubuntu.com/security/CVE-2021-35604) <!-- medium -->
-   Latest upstream point releases:
    -   10.5.13 -&gt; 21.04, 21.10
    -   10.3.32 -&gt; 20.04
-   As usual not much details on the vuln (MariaDB fork of MySQL, maintained
    by Oracle who don't provide a lot of specific details in their
    vulnerability reports)


### [[USN-5178-1](https://ubuntu.com/security/notices/USN-5178-1)] Django vulnerability [06:04] {#usn-5178-1-django-vulnerability-06-04}

-   1 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-44420](https://ubuntu.com/security/CVE-2021-44420) <!-- low -->
-   Failed to handle URLs with embedded trailing newlines - newline would
    cause the URL to not match the existing URL path-based access controls so
    could bypass those


### [[USN-5179-1](https://ubuntu.com/security/notices/USN-5179-1)] BusyBox vulnerabilities [06:33] {#usn-5179-1-busybox-vulnerabilities-06-33}

-   10 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-42386](https://ubuntu.com/security/CVE-2021-42386) <!-- low -->
    -   [CVE-2021-42385](https://ubuntu.com/security/CVE-2021-42385) <!-- low -->
    -   [CVE-2021-42384](https://ubuntu.com/security/CVE-2021-42384) <!-- low -->
    -   [CVE-2021-42382](https://ubuntu.com/security/CVE-2021-42382) <!-- low -->
    -   [CVE-2021-42381](https://ubuntu.com/security/CVE-2021-42381) <!-- low -->
    -   [CVE-2021-42380](https://ubuntu.com/security/CVE-2021-42380) <!-- low -->
    -   [CVE-2021-42379](https://ubuntu.com/security/CVE-2021-42379) <!-- low -->
    -   [CVE-2021-42378](https://ubuntu.com/security/CVE-2021-42378) <!-- low -->
    -   [CVE-2021-42374](https://ubuntu.com/security/CVE-2021-42374) <!-- low -->
    -   [CVE-2021-28831](https://ubuntu.com/security/CVE-2021-28831) <!-- low -->
-   Busybox implements a lot of standard unix utilities in a single binary
-   UAF / OOB write when decompressing crafted gzip files
-   Heap OOB on when decompressing crafted lzma
-   Lots of UAFs in awk impl


### [[USN-5180-1](https://ubuntu.com/security/notices/USN-5180-1)] Mailman vulnerability [07:37] {#usn-5180-1-mailman-vulnerability-07-37}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2021-44227](https://ubuntu.com/security/CVE-2021-44227) <!-- medium -->
-   Wouldn't validate that a CSRF token used for admin pages was actually
    issued for that context - so a regular list user could take their own
    CSRF token, craft a URL for the admin user with this token and if the
    admin user visited that then they could evade the inteded CSRF
    protections - so could say change the admindb password etc


### [[USN-5168-4](https://ubuntu.com/security/notices/USN-5168-4)] NSS regression [08:47] {#usn-5168-4-nss-regression-08-47}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2021-43527](https://ubuntu.com/security/CVE-2021-43527) <!-- high -->
-   Typo in backported patch could cause NSS to fail in some circumstances
    and cause an SSL session to fail (DoS)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Preview of some upcoming content and changes [09:26] {#preview-of-some-upcoming-content-and-changes-09-26}


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)