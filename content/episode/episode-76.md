+++
title = "Episode 76"
description = """
  This week we welcome back Vineetha Kamath, Ubuntu Security Certifications
  Manager, to discuss the recent release of FIPS modules for Ubuntu 18.04 LTS
  and we look at security updates for Bind, ClamAV, QEMU, the Linux kernel
  and more.
  """
date = 2020-05-28T15:10:00+09:30
lastmod = 2020-05-28T15:12:48+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E076.mp3"
podcast_duration = "12:56"
podcast_bytes = 12418939
permalink = "https://ubuntusecuritypodcast.org/episode-76/"
guid = "f530bc001e1a19da05704edc11fa374eab6f2240eb97d49bb7c946987b00bbb1ae350d078e7d7caf100c9144d8c1fdeb0c853959ce3293a2e8ce92e9b32ec4c5"
+++

## Overview {#overview}

This week we welcome back Vineetha Kamath, Ubuntu Security Certifications
Manager, to discuss the recent release of FIPS modules for Ubuntu 18.04 LTS
and we look at security updates for Bind, ClamAV, QEMU, the Linux kernel
and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

24 unique CVEs addressed


### [[USN-4365-2](https://usn.ubuntu.com/4365-2/)] Bind vulnerabilities [00:37] {#usn-4365-2-bind-vulnerabilities-00-37}

-   2 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM)
    -   [CVE-2020-8617](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8617)
    -   [CVE-2020-8616](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8616)
-   [Episode 75](https://ubuntusecuritypodcast.org/episode-75/) - <https://nxnsattack.com>


### [[USN-4369-1](https://usn.ubuntu.com/4369-1/)] Linux kernel vulnerabilities [01:11] {#usn-4369-1-linux-kernel-vulnerabilities-01-11}

-   8 CVEs addressed in Bionic (18.04 LTS), Eoan (19.10)
    -   [CVE-2020-12657](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12657)
    -   [CVE-2020-11668](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11668)
    -   [CVE-2020-11609](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11609)
    -   [CVE-2020-11608](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11608)
    -   [CVE-2020-11565](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11565)
    -   [CVE-2020-11494](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11494)
    -   [CVE-2019-19769](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19769)
    -   [CVE-2019-19377](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19377)
-   5.3 (19.10, 18.04 LTS HWE)
-   [Episode 75](https://ubuntusecuritypodcast.org/episode-75/) for details


### [[USN-4370-1](https://usn.ubuntu.com/4370-1/), [USN-4370-2](https://usn.ubuntu.com/4370-2/)] ClamAV vulnerabilities [01:35] {#usn-4370-1-usn-4370-2-clamav-vulnerabilities-01-35}

-   2 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-3341](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3341)
    -   [CVE-2020-3327](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3327)
-   Stack and heap buffer over-reads in the PDF and ARJ (Archived by Rober
    Jung) file parsers -> crash -> DoS


### [[USN-4371-1](https://usn.ubuntu.com/4371-1/)] libvirt vulnerabilities [02:36] {#usn-4371-1-libvirt-vulnerabilities-02-36}

-   2 CVEs addressed in Bionic (18.04 LTS), Eoan (19.10)
    -   [CVE-2020-12430](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12430)
    -   [CVE-2020-10703](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10703)
-   Memory leak able to be triggered by local users with read-only qemu
    access when retrieving domain stats -> DoS


### [[USN-4372-1](https://usn.ubuntu.com/4372-1/)] QEMU vulnerabilities [03:08] {#usn-4372-1-qemu-vulnerabilities-03-08}

-   5 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-1983](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1983)
    -   [CVE-2020-11869](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11869)
    -   [CVE-2020-10702](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10702)
    -   [CVE-2019-20382](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20382)
    -   [CVE-2019-15034](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15034)
-   UAF in libslirp
-   Integer overflow in handling of ATI VGA emulation -> guest to host crash


### [[USN-4373-1](https://usn.ubuntu.com/4373-1/)] Thunderbird vulnerabilities [03:44] {#usn-4373-1-thunderbird-vulnerabilities-03-44}

-   5 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-12397](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12397)
    -   [CVE-2020-12392](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12392)
    -   [CVE-2020-12395](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12395)
    -   [CVE-2020-12387](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12387)
    -   [CVE-2020-6831](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6831)
-   68.8.0


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe McManus and Vineetha Kamath discuss FIPS certification for Ubuntu 18.04 LTS [04:10] {#joe-mcmanus-and-vineetha-kamath-discuss-fips-certification-for-ubuntu-18-dot-04-lts-04-10}


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
