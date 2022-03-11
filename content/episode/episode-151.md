+++
title = "Episode 151"
description = """
  This week we do the usual round-up of security vulnerability fixes for the
  various Ubuntu releases, plus we discuss enabling PIE for Python and
  preview some upcoming content on Ubuntu system hardening as well.
  """
date = 2022-03-04T15:31:00+10:30
lastmod = 2022-03-04T15:32:31+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E151.mp3"
podcast_duration = 559
podcast_bytes = 7468558
permalink = "https://ubuntusecuritypodcast.org/episode-151/"
guid = "b49a5da81cbdc2ad450faaa0b4df18a3e231b91427796591b5e069a977d74a089c0fd87a893352b109b0fac7a1c34033b04bcbb2b30acb8eff7be5a7ccb0b442"
+++

## Overview {#overview}

This week we do the usual round-up of security vulnerability fixes for the
various Ubuntu releases, plus we discuss enabling PIE for Python and
preview some upcoming content on Ubuntu system hardening as well.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

44 unique CVEs addressed


### [[USN-5292-4](https://ubuntu.com/security/notices/USN-5292-4)] snapd regression [00:52] {#usn-5292-4-snapd-regression-00-52}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-44731](https://ubuntu.com/security/CVE-2021-44731)
    -   [CVE-2021-44730](https://ubuntu.com/security/CVE-2021-44730)
    -   [CVE-2021-4120](https://ubuntu.com/security/CVE-2021-4120)
    -   [CVE-2021-3155](https://ubuntu.com/security/CVE-2021-3155)
-   [Episode 149](https://ubuntusecuritypodcast.org/episode-149/) - another regression with fish shell


### [[USN-5303-1](https://ubuntu.com/security/notices/USN-5303-1)] PHP vulnerability [01:20] {#usn-5303-1-php-vulnerability-01-20}

-   1 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-21708](https://ubuntu.com/security/CVE-2021-21708)
-   UAF - PoC exists which shows the ability to crash PHP interpreter via a
    crafted database query - possible RCE as well


### [[USN-5304-1](https://ubuntu.com/security/notices/USN-5304-1)] PolicyKit vulnerability [01:40] {#usn-5304-1-policykit-vulnerability-01-40}

-   1 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-4115](https://ubuntu.com/security/CVE-2021-4115)
-   fd exhaustion - send 2 requests and cause the first one to fail - leaks
    the fd - eventually polkit runs out of fds and crashes - will be
    restarted by systemd so impact is low


### [[USN-5305-1](https://ubuntu.com/security/notices/USN-5305-1)] MariaDB vulnerabilities [02:17] {#usn-5305-1-mariadb-vulnerabilities-02-17}

-   10 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-24052](https://ubuntu.com/security/CVE-2022-24052) <!--  -->
    -   [CVE-2022-24051](https://ubuntu.com/security/CVE-2022-24051) <!--  -->
    -   [CVE-2022-24050](https://ubuntu.com/security/CVE-2022-24050) <!--  -->
    -   [CVE-2022-24048](https://ubuntu.com/security/CVE-2022-24048) <!--  -->
    -   [CVE-2021-46668](https://ubuntu.com/security/CVE-2021-46668) <!--  -->
    -   [CVE-2021-46665](https://ubuntu.com/security/CVE-2021-46665) <!--  -->
    -   [CVE-2021-46664](https://ubuntu.com/security/CVE-2021-46664) <!--  -->
    -   [CVE-2021-46663](https://ubuntu.com/security/CVE-2021-46663) <!--  -->
    -   [CVE-2021-46661](https://ubuntu.com/security/CVE-2021-46661) <!--  -->
    -   [CVE-2021-46659](https://ubuntu.com/security/CVE-2021-46659) <!--  -->
-   Several security issues - latest upstream point releases
-   10.3.34 for 20.04 LTS
-   10.5.15 for 21.10


### [[USN-5306-1](https://ubuntu.com/security/notices/USN-5306-1)] WebKitGTK vulnerabilities [02:44] {#usn-5306-1-webkitgtk-vulnerabilities-02-44}

-   3 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-22592](https://ubuntu.com/security/CVE-2022-22592) <!--  -->
    -   [CVE-2022-22590](https://ubuntu.com/security/CVE-2022-22590) <!--  -->
    -   [CVE-2022-22589](https://ubuntu.com/security/CVE-2022-22589) <!--  -->
-   Various issues in webkit fixed


### [[USN-5307-1](https://ubuntu.com/security/notices/USN-5307-1)] QEMU vulnerabilities [02:58] {#usn-5307-1-qemu-vulnerabilities-02-58}

-   11 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-0358](https://ubuntu.com/security/CVE-2022-0358) <!--  -->
    -   [CVE-2021-4158](https://ubuntu.com/security/CVE-2021-4158) <!--  -->
    -   [CVE-2021-3930](https://ubuntu.com/security/CVE-2021-3930)
    -   [CVE-2021-3748](https://ubuntu.com/security/CVE-2021-3748)
    -   [CVE-2021-3713](https://ubuntu.com/security/CVE-2021-3713)
    -   [CVE-2021-3682](https://ubuntu.com/security/CVE-2021-3682)
    -   [CVE-2021-3546](https://ubuntu.com/security/CVE-2021-3546)
    -   [CVE-2021-3545](https://ubuntu.com/security/CVE-2021-3545)
    -   [CVE-2021-3544](https://ubuntu.com/security/CVE-2021-3544)
    -   [CVE-2021-20203](https://ubuntu.com/security/CVE-2021-20203)
    -   [CVE-2021-20196](https://ubuntu.com/security/CVE-2021-20196)
-   Various issues - integer overflow, NULL ptr derefs, memory leaks and
    disclosures in vhost-user GPU driver, crash or possible code-exec in USB
    redirector device emulation etc


### [[USN-5309-1](https://ubuntu.com/security/notices/USN-5309-1)] virglrenderer vulnerabilities [03:28] {#usn-5309-1-virglrenderer-vulnerabilities-03-28}

-   2 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-0175](https://ubuntu.com/security/CVE-2022-0175) <!--  -->
    -   [CVE-2022-0135](https://ubuntu.com/security/CVE-2022-0135) <!--  -->
-   Virtual GPU for KVM
-   info leak and possible OOB write


### [[USN-5310-1](https://ubuntu.com/security/notices/USN-5310-1)] GNU C Library vulnerabilities [03:48] {#usn-5310-1-gnu-c-library-vulnerabilities-03-48}

-   12 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-23219](https://ubuntu.com/security/CVE-2022-23219) <!--  -->
    -   [CVE-2022-23218](https://ubuntu.com/security/CVE-2022-23218) <!--  -->
    -   [CVE-2021-3999](https://ubuntu.com/security/CVE-2021-3999) <!--  -->
    -   [CVE-2021-3998](https://ubuntu.com/security/CVE-2021-3998) <!--  -->
    -   [CVE-2021-35942](https://ubuntu.com/security/CVE-2021-35942)
    -   [CVE-2021-27645](https://ubuntu.com/security/CVE-2021-27645)
    -   [CVE-2020-6096](https://ubuntu.com/security/CVE-2020-6096)
    -   [CVE-2021-3326](https://ubuntu.com/security/CVE-2021-3326)
    -   [CVE-2020-29562](https://ubuntu.com/security/CVE-2020-29562)
    -   [CVE-2020-27618](https://ubuntu.com/security/CVE-2020-27618)
    -   [CVE-2019-25013](https://ubuntu.com/security/CVE-2019-25013)
    -   [CVE-2016-10228](https://ubuntu.com/security/CVE-2016-10228)
-   Usual mix of issues in libc - OOB read / writes - crash / possible code
    execution - in various modules - character encoding handling in iconv,
    netgroup lookups via nscd daemon, `wordexp()` / `realpath()` / `getcwd()`
    functions etc


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Python + PIE? [04:45] {#python-plus-pie-04-45}

-   <https://bugs.launchpad.net/ubuntu/+source/python2.7/+bug/1452115>
-   Request since 2015 to enable this
-   When compiled as PIE enables to use exec ASLR which can frustrate ROP
    exploits etc
-   Performance testing shows this to have no impact
-   Coordinating with foundations team to try and land for Ubuntu 22.04 LTS
    as a FFe


### Security advice for running your own server [07:02] {#security-advice-for-running-your-own-server-07-02}

-   <https://discourse.ubuntu.com/t/basic-security-advice-for-running-your-own-server/26786>


### Hiring [07:33] {#hiring-07-33}


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>
-   Home based, worldwide


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)