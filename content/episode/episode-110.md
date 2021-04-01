+++
title = "Episode 110"
description = """
  This week we look at 2 years of 14.04 ESM, a kernel Livepatch issue,
  DNS-over-HTTPS for Google Chrome plus security updates for ldb, OpenSSL,
  Squid, curl and more.
  """
date = 2021-04-01T11:38:00+10:30
lastmod = 2021-04-01T11:38:46+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E110.mp3"
podcast_duration = "13:57"
podcast_bytes = 10995052
permalink = "https://ubuntusecuritypodcast.org/episode-110/"
guid = "a5a42f217ed6b0ae12ea68204a2f506d92c57d99ee778d0ee0b261d8544f41cf37c375e75f8643cb1c3e5664d4be482b80fd1ae01c3543c3773d073d5aac7760"
+++

## Overview {#overview}

This week we look at 2 years of 14.04 ESM, a kernel Livepatch issue,
DNS-over-HTTPS for Google Chrome plus security updates for ldb, OpenSSL,
Squid, curl and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

38 unique CVEs addressed


### [[USN-4888-1](https://ubuntu.com/security/notices/USN-4888-1), [USN-4888-2](https://ubuntu.com/security/notices/USN-4888-2)] ldb vulnerabilities [01:06] {#usn-4888-1-usn-4888-2-ldb-vulnerabilities-01-06}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-27840](https://ubuntu.com/security/CVE-2020-27840) <!-- high -->
    -   [CVE-2021-20277](https://ubuntu.com/security/CVE-2021-20277) <!-- high -->
-   In the ldb package but was reported by Samba - libldb provides an
    LDAP-like database - is used internally by Samba etc - and whilst the
    Samba package contains a copy of ldb internally we don't compile this in
    Ubuntu, instead we link it against the ldb package in the repo so we only
    have to patch a CVE in one place
-   Heap buffer overflow when parsing a DN string with lots of trailing
    whitespace - allows to place a single NUL byte at a chosen offset before
    an allocated buffer
-   Heap buffer overflow when parsing an LDAP attribute string with multiple
    consecutive leading spaces - memmove() to a location beyond the end of
    the buffer
-   Crash -> DoS, can't rule out RCE due to nature of heap buffer overflows


### [[USN-4889-1](https://ubuntu.com/security/notices/USN-4889-1)] Linux kernel vulnerabilities [02:49] {#usn-4889-1-linux-kernel-vulnerabilities-02-49}

-   3 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2021-27364](https://ubuntu.com/security/CVE-2021-27364) <!-- medium -->
    -   [CVE-2021-27363](https://ubuntu.com/security/CVE-2021-27363) <!-- medium -->
    -   [CVE-2021-27365](https://ubuntu.com/security/CVE-2021-27365) <!-- high -->
-   iSCSI issues discussed in [Episode 109](https://ubuntusecuritypodcast.org/episode-109/) (most interesting was various heap
    buffer overflows that could possibly be used for codeexec)


### [[USN-4890-1](https://ubuntu.com/security/notices/USN-4890-1)] Linux kernel vulnerabilities [03:09] {#usn-4890-1-linux-kernel-vulnerabilities-03-09}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-27170](https://ubuntu.com/security/CVE-2020-27170) <!-- high -->
    -   [CVE-2020-27171](https://ubuntu.com/security/CVE-2020-27171) <!-- high -->
-   BPF speculative execution issues also discussed in [Episode 109](https://ubuntusecuritypodcast.org/episode-109/)


### [[USN-4891-1](https://ubuntu.com/security/notices/USN-4891-1)] OpenSSL vulnerability [03:26] {#usn-4891-1-openssl-vulnerability-03-26}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-3449](https://ubuntu.com/security/CVE-2021-3449) <!-- high -->
-   NULL ptr deref when processing signature algorithms - could allow a
    remote client to crash a server during renegotiation


### [[USN-3685-2](https://ubuntu.com/security/notices/USN-3685-2)] Ruby regression {#usn-3685-2-ruby-regression}

-   9 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2018-8777](https://ubuntu.com/security/CVE-2018-8777) <!-- low -->
    -   [CVE-2018-1000074](https://ubuntu.com/security/CVE-2018-1000074) <!-- medium -->
    -   [CVE-2017-17742](https://ubuntu.com/security/CVE-2017-17742) <!-- medium -->
    -   [CVE-2017-10784](https://ubuntu.com/security/CVE-2017-10784) <!-- medium -->
    -   [CVE-2017-14064](https://ubuntu.com/security/CVE-2017-14064) <!-- low -->
    -   [CVE-2017-0902](https://ubuntu.com/security/CVE-2017-0902) <!-- medium -->
    -   [CVE-2017-0901](https://ubuntu.com/security/CVE-2017-0901) <!-- medium -->
    -   [CVE-2017-0898](https://ubuntu.com/security/CVE-2017-0898) <!-- medium -->
    -   [CVE-2017-0903](https://ubuntu.com/security/CVE-2017-0903) <!-- medium -->


### [[USN-4893-1](https://ubuntu.com/security/notices/USN-4893-1)] Firefox vulnerabilities [03:47] {#usn-4893-1-firefox-vulnerabilities-03-47}

-   8 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-23986](https://ubuntu.com/security/CVE-2021-23986) <!-- medium -->
    -   [CVE-2021-23985](https://ubuntu.com/security/CVE-2021-23985) <!-- low -->
    -   [CVE-2021-23984](https://ubuntu.com/security/CVE-2021-23984) <!-- medium -->
    -   [CVE-2021-23988](https://ubuntu.com/security/CVE-2021-23988) <!-- medium -->
    -   [CVE-2021-23987](https://ubuntu.com/security/CVE-2021-23987) <!-- medium -->
    -   [CVE-2021-23983](https://ubuntu.com/security/CVE-2021-23983) <!-- medium -->
    -   [CVE-2021-23982](https://ubuntu.com/security/CVE-2021-23982) <!-- medium -->
    -   [CVE-2021-23981](https://ubuntu.com/security/CVE-2021-23981) <!-- medium -->
-   87.0 - various web issues (malicious website -> XSS, DoS, RCE etc) plus
    some specific fixes for issues which could allow extensions to either
    spoof website pop-ups or to read the response of various cross-origin
    requests, plus a silent enabling of the DevTools remote debugging feature
    (so a local attacker could modify the browser config to turn this on
    without any hint to the user, and then a remote attacker could use this
    to snoop on the browser session)


### [[USN-4894-1](https://ubuntu.com/security/notices/USN-4894-1)] WebKitGTK vulnerabilities [04:49] {#usn-4894-1-webkitgtk-vulnerabilities-04-49}

-   7 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-1870](https://ubuntu.com/security/CVE-2021-1870) <!-- medium -->
    -   [CVE-2021-1801](https://ubuntu.com/security/CVE-2021-1801) <!-- medium -->
    -   [CVE-2021-1799](https://ubuntu.com/security/CVE-2021-1799) <!-- medium -->
    -   [CVE-2021-1789](https://ubuntu.com/security/CVE-2021-1789) <!-- medium -->
    -   [CVE-2021-1765](https://ubuntu.com/security/CVE-2021-1765) <!-- medium -->
    -   [CVE-2020-29623](https://ubuntu.com/security/CVE-2020-29623) <!-- medium -->
    -   [CVE-2020-27918](https://ubuntu.com/security/CVE-2020-27918) <!-- medium -->
-   Usual web issues - malicious website -> XSS, DoS, RCE etc


### [[USN-4895-1](https://ubuntu.com/security/notices/USN-4895-1)] Squid vulnerabilities [05:19] {#usn-4895-1-squid-vulnerabilities-05-19}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-25097](https://ubuntu.com/security/CVE-2020-25097) <!-- medium -->
    -   [CVE-2020-15049](https://ubuntu.com/security/CVE-2020-15049) <!-- low -->
-   2 different HTTP request smuggling attack issues - one could result in
    possible cache poisoning and the other in the ability to bypass security
    controls and access forbidden services


### [[USN-4896-1](https://ubuntu.com/security/notices/USN-4896-1)] lxml vulnerability [05:39] {#usn-4896-1-lxml-vulnerability-05-39}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-28957](https://ubuntu.com/security/CVE-2021-28957) <!-- medium -->
-   Mishandled HTML attributes which could allow a remote attacker to perform
    XSS - depends on how lxml is used in application context


### [[USN-4897-1](https://ubuntu.com/security/notices/USN-4897-1)] Pygments vulnerability [06:03] {#usn-4897-1-pygments-vulnerability-06-03}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-27291](https://ubuntu.com/security/CVE-2021-27291) <!-- medium -->
-   Another pygments vuln ([Episode 109](https://ubuntusecuritypodcast.org/episode-109/)) - this one due to the use of regex in
    various lexers, these have exponential or cubic complexity so could allow
    an attacker to DoS via CPU


### [[USN-4898-1](https://ubuntu.com/security/notices/USN-4898-1)] curl vulnerabilities [06:38] {#usn-4898-1-curl-vulnerabilities-06-38}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-22890](https://ubuntu.com/security/CVE-2021-22890) <!-- medium -->
    -   [CVE-2021-22876](https://ubuntu.com/security/CVE-2021-22876) <!-- medium -->
-   Failed to strip credentials from referrer headers - could then be leaked
-   Incorrect handling of session tickets when using an HTTPS proxy -
    attacker who controlled the proxy could cause curl to bypass cert checks
    and intercept comms as a result - only affected later Ubuntu releases
    (20.04 LTS, 20.10)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Livepatch incident for CVE-2020-29372 [07:26] {#livepatch-incident-for-cve-2020-29372-07-26}

-   <https://ubuntu.com/blog/livepatch-2021-03-24-incident-investigation-report>


### Summary of 14.04 ESM so far [09:39] {#summary-of-14-dot-04-esm-so-far-09-39}

-   <https://ubuntu.com/blog/what-lies-after-lts-two-years-of-ubuntu-14-04-in-esm>


### DoH coming for Google Chrome on Linux [11:01] {#doh-coming-for-google-chrome-on-linux-11-01}

-   <https://www.bleepingcomputer.com/news/security/google-chrome-for-linux-is-getting-dns-over-https-but-theres-a-catch>
-   Targeting chrome 91 but perhaps more likely 92 (89 is current stable
    release, new release every 6 weeks)
-   Needs to parse /etc/nsswitch.conf - uses the hosts: entry and expects
    'files dns' - should hopefully also support mdns4\_minimal so that then
    this would work with Ubuntu OOTB (since on 20.04 we use these 3 resolvers
    by default)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
