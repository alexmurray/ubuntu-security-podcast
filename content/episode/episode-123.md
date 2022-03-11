+++
title = "Episode 123"
description = """
  Is npm audit more harm than good? Plus this week we look at security
  updates for DjVuLibre, libuv, PHP and more.
  """
date = 2021-07-09T13:48:00+09:30
lastmod = 2021-07-09T13:50:33+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E123.mp3"
podcast_duration = "08:57"
podcast_bytes = 7209464
permalink = "https://ubuntusecuritypodcast.org/episode-123/"
guid = "53716e1d5454b19c35501c2028afa9831de625d0dc4f1dffbb8dbf9cd454d7a14fe9d9e86fadb2dc2a27bb8c9aac524370ccbecce9a3084dbf513daa1b34fe28"
+++

## Overview {#overview}

Is npm audit more harm than good? Plus this week we look at security
updates for DjVuLibre, libuv, PHP and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

8 unique CVEs addressed


### [[USN-4905-2](https://ubuntu.com/security/notices/USN-4905-2)] X.Org X Server vulnerability [00:42] {#usn-4905-2-x-dot-org-x-server-vulnerability-00-42}

-   1 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2021-3472](https://ubuntu.com/security/CVE-2021-3472)
-   [Episode 112](https://ubuntusecuritypodcast.org/episode-112/) - Local user (X client) could crash the server via Xinput
    extension and ChangeFeedbackControl request - integer underflow -> heap
    buffer overflow


### [[USN-5005-1](https://ubuntu.com/security/notices/USN-5005-1)] DjVuLibre vulnerability [01:26] {#usn-5005-1-djvulibre-vulnerability-01-26}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-3630](https://ubuntu.com/security/CVE-2021-3630)
-   OOB write via crafted djvu file -> crash -> DoS, RCE


### [[USN-5007-1](https://ubuntu.com/security/notices/USN-5007-1)] libuv vulnerability [01:53] {#usn-5007-1-libuv-vulnerability-01-53}

-   1 CVEs addressed in Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-22918](https://ubuntu.com/security/CVE-2021-22918)
-   Async event handling library - used by nodejs and others - supports async
    handling TCP/UDP sockets, DNS resolution, file system operations etc
-   OOB read when converting strings to ASCII -> can be triggered via calls
    to uv_getaddrinfo() which are done by clients who handle TCP/UDP sockets
    async (ie nodejs, Julia,, BIND etc)


### [[USN-5006-1](https://ubuntu.com/security/notices/USN-5006-1)] PHP vulnerabilities [03:04] {#usn-5006-1-php-vulnerabilities-03-04}

-   5 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-21705](https://ubuntu.com/security/CVE-2021-21705)
    -   [CVE-2021-21704](https://ubuntu.com/security/CVE-2021-21704)
    -   [CVE-2021-21702](https://ubuntu.com/security/CVE-2021-21702)
    -   [CVE-2020-7071](https://ubuntu.com/security/CVE-2020-7071)
    -   [CVE-2020-7068](https://ubuntu.com/security/CVE-2020-7068)
-   UAF in PHAR archive handling - generally these are trusted so low impact
-   mishandling of URLs with embedded passwords - unspecified impact but
    could misparse the URL and cause unwanted behaviour
-   Mishandling of XML when processing SOAP server responses -> NULL ptr
    deref (so malicious server could trigger a crash) -> DoS
-   Ability to bypass Sever Side Request Forgery (SSRF) protections in
    FILTER_VALIDATE_URL


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### npm audit broken by design? [04:13] {#npm-audit-broken-by-design-04-13}

-   <https://overreacted.io/npm-audit-broken-by-design/>


### Ubuntu Security Podcast on break for next 2 weeks [07:56] {#ubuntu-security-podcast-on-break-for-next-2-weeks-07-56}


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
