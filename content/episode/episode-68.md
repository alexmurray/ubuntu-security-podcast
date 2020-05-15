+++
title = "Episode 68"
description = """
  This week we cover security updates for Apache, Twisted, Vim a kernel
  livepatch and more, plus Alex and Joe discuss OVAL data feeds and the
  cvescan snap for vulnerability awareness.
  """
date = 2020-03-26T13:57:00+10:30
lastmod = 2020-05-15T16:38:28+09:30
draft = false
weight = 1007
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E068.mp3"
podcast_duration = "17:21"
podcast_bytes = 16670420
permalink = "https://ubuntusecuritypodcast.org/episode-68/"
guid = "752981b197f4eaf0db4708b94d9ac79fa9aa156b054327af10cdd189024f6a0c1904b4b04f29ef7651e09135867e5b460294a84be9dc9c793bfc1155c8e0683a"
+++

## Overview {#overview}

This week we cover security updates for Apache, Twisted, Vim a kernel
livepatch and more, plus Alex and Joe discuss OVAL data feeds and the
cvescan snap for vulnerability awareness.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

16 unique CVEs addressed


### [[USN-4307-1](https://usn.ubuntu.com/4307-1/)] Apache HTTP Server update [00:24] {#usn-4307-1-apache-http-server-update-00-24}

-   TLSv1.3 enabled in Ubuntu 18.04 LTS (bionic)
    -   Enabled by default, could cause compatibility issues in some
        environments - can be disabled using the SSLProtocol directive
    -   <https://bugs.launchpad.net/ubuntu/+source/apache2/+bug/1845263>


### [LSN-0064-1] Linux kernel vulnerability [01:03] {#lsn-0064-1-linux-kernel-vulnerability-01-03}

-   1 CVEs addressed in Xenial, Bionic
    -   [CVE-2020-2732](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2732) <!-- medium -->
-   KVM nested virtualisation issue (L2 guest could access resources of L1
    parent) - [Episode 67](https://ubuntusecuritypodcast.org/episode-67/)


### [[USN-4308-1](https://usn.ubuntu.com/4308-1/)] Twisted vulnerabilities [02:07] {#usn-4308-1-twisted-vulnerabilities-02-07}

-   7 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-10109](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10109) <!-- medium -->
    -   [CVE-2020-10108](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10108) <!-- medium -->
    -   [CVE-2019-9515](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9515) <!-- medium -->
    -   [CVE-2019-9514](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9514) <!-- medium -->
    -   [CVE-2019-9512](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9512) <!-- medium -->
    -   [CVE-2019-12855](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12855) <!-- low -->
    -   [CVE-2019-12387](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12387) <!-- low -->
-   2 variations of a HTTP request splitting / smuggling vuln ([Episode 52](https://ubuntusecuritypodcast.org/episode-52/))
-   3 HTTP/2 DoS issues ([Episode 43](https://ubuntusecuritypodcast.org/episode-43/))
-   MITM of XMPP TLS connections due to failure to verify certs
-   Failure to sanitize URIs or HTTP methods in twisted.web


### [[USN-4309-1](https://usn.ubuntu.com/4309-1/)] Vim vulnerabilities [03:53] {#usn-4309-1-vim-vulnerabilities-03-53}

-   7 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Eoan
    -   [CVE-2017-11109](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-11109) <!-- low -->
    -   [CVE-2017-6350](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-6350) <!-- negligible -->
    -   [CVE-2017-6349](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-6349) <!-- negligible -->
    -   [CVE-2019-20079](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20079) <!-- low -->
    -   [CVE-2018-20786](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20786) <!-- low -->
    -   [CVE-2017-5953](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-5953) <!-- low -->
-   All low / negligible since requires a user to use vim to source a crafted
    file (ie a list of commands / settings for vim) or crafted undo /
    spelling dictionary etc
-   Integer overflows -> heap overflows -> DoS / RCE etc


### [[USN-4134-3](https://usn.ubuntu.com/4134-3/)] IBus vulnerability [04:49] {#usn-4134-3-ibus-vulnerability-04-49}

-   1 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2019-14822](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14822) <!-- medium -->
-   [Episode 47](https://ubuntusecuritypodcast.org/episode-47/) - implements it's own private DBus server which clients
    connect to - original vuln allowed any user who knew address of this bus
    to connect to it - update fixed this by checking the connecting user was
    the same as the owning user - but caused a regression in Qt clients -
    would fail to be able to properly connect to ibus - was reverted - this
    has seen been fixed by fixing the GDBusServer implementation in libglib2
    since it was actually incorrect - and so now we have re-fixed in ibus


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe discuss Ubuntu Security OVAL feeds and cvescan [06:47] {#alex-and-joe-discuss-ubuntu-security-oval-feeds-and-cvescan-06-47}

-   <https://people.canonical.com/~ubuntu-security/oval/>
-   <https://snapcraft.io/cvescan>


### Securing open source through CVE prioritisation [15:56] {#securing-open-source-through-cve-prioritisation-15-56}

-   <https://ubuntu.com/blog/securing-open-source-through-cve-prioritisation>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)