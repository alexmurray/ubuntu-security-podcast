+++
title = "Episode 98"
description = """
  This week we look at updates for c-ares, PulseAudio, phpMyAdmin and more,
  plus we cover security news from the Ubuntu community including planning
  for 16.04 LTS to transition to ESM, libgcrypt FIPS cerified for 18.04 LTS
  and a proposal for making home directories more secure for upcoming Ubuntu
  releases as well.
  """
date = 2020-11-27T14:38:00+10:30
lastmod = 2020-11-27T14:39:45+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E098.mp3"
podcast_duration = "13:54"
podcast_bytes = 10758946
permalink = "https://ubuntusecuritypodcast.org/episode-98/"
guid = "b32306fb10d48096b169a5c6028fa268fcd387cf25b313a5c432c81af177578328433c2e1957ab36f179ffe046bb44689b85baa40afbab5c942949f2cd6d492d"
+++

## Overview {#overview}

This week we look at updates for c-ares, PulseAudio, phpMyAdmin and more,
plus we cover security news from the Ubuntu community including planning
for 16.04 LTS to transition to ESM, libgcrypt FIPS cerified for 18.04 LTS
and a proposal for making home directories more secure for upcoming Ubuntu
releases as well.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

48 unique CVEs addressed


### [[USN-4638-1](https://ubuntu.com/security/notices/USN-4638-1)] c-ares vulnerability [01:00] {#usn-4638-1-c-ares-vulnerability-01-00}

-   1 CVEs addressed in Groovy (20.10)
    -   [CVE-2020-8277](https://ubuntu.com/security/CVE-2020-8277)
-   C library for performing async DNS requests and name resolution - a fork
    of the ares library with additional support for IPv6, and 64-bit/cross
    platform support
-   In particular is used by Node.js for DNS support - reported as a DoS via
    a remote attacker who could cause a Node.js application to perform a DNS
    request to a chosen host where a large number of DNS records - internally
    is a buffer-over-read - c-ares would return data of length N but with a
    purported length of >N - only in more recent releases so only affected
    groovy


### [[USN-4639-1](https://ubuntu.com/security/notices/USN-4639-1)] phpMyAdmin vulnerabilities [02:37] {#usn-4639-1-phpmyadmin-vulnerabilities-02-37}

-   13 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-26935](https://ubuntu.com/security/CVE-2020-26935)
    -   [CVE-2020-26934](https://ubuntu.com/security/CVE-2020-26934)
    -   [CVE-2020-10803](https://ubuntu.com/security/CVE-2020-10803)
    -   [CVE-2020-10802](https://ubuntu.com/security/CVE-2020-10802)
    -   [CVE-2019-6799](https://ubuntu.com/security/CVE-2019-6799)
    -   [CVE-2020-5504](https://ubuntu.com/security/CVE-2020-5504)
    -   [CVE-2020-10804](https://ubuntu.com/security/CVE-2020-10804)
    -   [CVE-2019-6798](https://ubuntu.com/security/CVE-2019-6798)
    -   [CVE-2019-12616](https://ubuntu.com/security/CVE-2019-12616)
    -   [CVE-2019-11768](https://ubuntu.com/security/CVE-2019-11768)
    -   [CVE-2018-7260](https://ubuntu.com/security/CVE-2018-7260)
    -   [CVE-2018-19970](https://ubuntu.com/security/CVE-2018-19970)
    -   [CVE-2018-19968](https://ubuntu.com/security/CVE-2018-19968)
-   Various issues - multiple different instances of each of the following:
    XSS, SQL injection, CSRF, sensitive info leaks etc


### [[USN-4637-2](https://ubuntu.com/security/notices/USN-4637-2)] Firefox vulnerabilities [03:08] {#usn-4637-2-firefox-vulnerabilities-03-08}

-   15 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2020-26969](https://ubuntu.com/security/CVE-2020-26969)
    -   [CVE-2020-26968](https://ubuntu.com/security/CVE-2020-26968)
    -   [CVE-2020-26967](https://ubuntu.com/security/CVE-2020-26967)
    -   [CVE-2020-26965](https://ubuntu.com/security/CVE-2020-26965)
    -   [CVE-2020-26963](https://ubuntu.com/security/CVE-2020-26963)
    -   [CVE-2020-26962](https://ubuntu.com/security/CVE-2020-26962)
    -   [CVE-2020-26961](https://ubuntu.com/security/CVE-2020-26961)
    -   [CVE-2020-26960](https://ubuntu.com/security/CVE-2020-26960)
    -   [CVE-2020-26959](https://ubuntu.com/security/CVE-2020-26959)
    -   [CVE-2020-26958](https://ubuntu.com/security/CVE-2020-26958)
    -   [CVE-2020-26956](https://ubuntu.com/security/CVE-2020-26956)
    -   [CVE-2020-26953](https://ubuntu.com/security/CVE-2020-26953)
    -   [CVE-2020-26952](https://ubuntu.com/security/CVE-2020-26952)
    -   [CVE-2020-26951](https://ubuntu.com/security/CVE-2020-26951)
    -   [CVE-2020-16012](https://ubuntu.com/security/CVE-2020-16012)
-   [Episode 97](https://ubuntusecuritypodcast.org/episode-97/)
-   Xenial takes longer usually due to toolchain issues between old versions
    in xenial vs newer things used in Firefox (ie rust etc)


### [[USN-4634-2](https://ubuntu.com/security/notices/USN-4634-2)] OpenLDAP vulnerabilities [03:57] {#usn-4634-2-openldap-vulnerabilities-03-57}

-   2 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM)
    -   [CVE-2020-25710](https://ubuntu.com/security/CVE-2020-25710)
    -   [CVE-2020-25709](https://ubuntu.com/security/CVE-2020-25709)
-   [Episode 97](https://ubuntusecuritypodcast.org/episode-97/) - 2 DoS issues


### [[USN-4640-1](https://ubuntu.com/security/notices/USN-4640-1)] PulseAudio vulnerability [04:13] {#usn-4640-1-pulseaudio-vulnerability-04-13}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-16123](https://ubuntu.com/security/CVE-2020-16123)
-   Discovered and resolved by James Henstridge from the Ubuntu Desktop Team
-   Race condition in snap policy module could allow a confined snap to
    bypass snap pulseaudio restrictions - ie. could record audio when only
    authorised to playback audio
-   <https://twitter.com/JamesHenstridge/status/1331161130740248580>


### [[USN-4641-1](https://ubuntu.com/security/notices/USN-4641-1)] libextractor vulnerabilities [06:20] {#usn-4641-1-libextractor-vulnerabilities-06-20}

-   12 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2018-20431](https://ubuntu.com/security/CVE-2018-20431)
    -   [CVE-2018-14347](https://ubuntu.com/security/CVE-2018-14347)
    -   [CVE-2018-14346](https://ubuntu.com/security/CVE-2018-14346)
    -   [CVE-2017-17440](https://ubuntu.com/security/CVE-2017-17440)
    -   [CVE-2017-15922](https://ubuntu.com/security/CVE-2017-15922)
    -   [CVE-2017-15602](https://ubuntu.com/security/CVE-2017-15602)
    -   [CVE-2017-15601](https://ubuntu.com/security/CVE-2017-15601)
    -   [CVE-2018-20430](https://ubuntu.com/security/CVE-2018-20430)
    -   [CVE-2018-16430](https://ubuntu.com/security/CVE-2018-16430)
    -   [CVE-2017-15600](https://ubuntu.com/security/CVE-2017-15600)
    -   [CVE-2017-15267](https://ubuntu.com/security/CVE-2017-15267)
    -   [CVE-2017-15266](https://ubuntu.com/security/CVE-2017-15266)
-   Used to extract metadata from various file formats (HTML, PS, MS Office,
    audio, images, video, archives, packages etc)
-   NULL ptr deref, divide by zero, OOB read, infinite loop, stack buffer
    overflows, heap buffer overflows etc


### [[USN-4642-1](https://ubuntu.com/security/notices/USN-4642-1)] PDFResurrect vulnerability [07:28] {#usn-4642-1-pdfresurrect-vulnerability-07-28}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2020-9549](https://ubuntu.com/security/CVE-2020-9549)
-   Extract / manipulate revision info in PDFs
-   OOB write


### [[USN-4643-1](https://ubuntu.com/security/notices/USN-4643-1)] atftp vulnerabilities [07:56] {#usn-4643-1-atftp-vulnerabilities-07-56}

-   2 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2019-11366](https://ubuntu.com/security/CVE-2019-11366)
    -   [CVE-2019-11365](https://ubuntu.com/security/CVE-2019-11365)
-   TFTP server / client
-   NULL ptr deref due to race condition from missing mutex lock - different
    threads can race on the same data -> DoS
-   stack buffer overflow due to unsafe calls to strncpy -> DoS / RCE


### [[USN-4644-1](https://ubuntu.com/security/notices/USN-4644-1)] igraph vulnerability [08:35] {#usn-4644-1-igraph-vulnerability-08-35}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2018-20349](https://ubuntu.com/security/CVE-2018-20349)
-   NULL ptr deref


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 16.04 LTS moving to ESM webinar [08:52] {#ubuntu-16-dot-04-lts-moving-to-esm-webinar-08-52}

-   <https://www.brighttalk.com/webcast/6793/453617>
-   8th December 2020, 4pm UTC


### Security Certifications - libgcrypt on Ubuntu 18.04 is FIPS 140-2 certified [10:13] {#security-certifications-libgcrypt-on-ubuntu-18-dot-04-is-fips-140-2-certified-10-13}

-   <https://discourse.ubuntu.com/t/security-certifications-libgcrypt-on-ubuntu-18-04-is-fips-140-2-certified/19511>
-   Ubuntu 18.04 LTS can now provide FIPS certified full disk encryption as via libgcrypt which is now FIPS certified
-   Certified for 5 years until 2025


### Private home directories for Ubuntu 21.04 onwards? [10:45] {#private-home-directories-for-ubuntu-21-dot-04-onwards-10-45}

-   <https://lists.ubuntu.com/archives/ubuntu-devel-discuss/2020-November/018842.html>
-   <https://discourse.ubuntu.com/t/private-home-directories-for-ubuntu-21-04-onwards/19533>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
