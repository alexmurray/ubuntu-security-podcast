+++
title = "Episode 117"
description = "This week we're talking about moving IRC networks plus security updates for Pillow, Babel, Apport, X11 and more."
date = 2021-05-28T17:21:00+09:30
lastmod = 2021-05-28T17:24:23+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E117.mp3"
podcast_duration = "09:40"
podcast_bytes = 8030524
permalink = "https://ubuntusecuritypodcast.org/episode-117/"
guid = "b0fe6e834504138a02a53fc582738b0270b774195bf6c3446e05050d7108d69926ad7176e74b451917944499bceca1ad1cfebb94d5868c0ecc4f2dfb26a42ad9"
+++

## Overview {#overview}

This week we're talking about moving IRC networks plus security updates for Pillow, Babel, Apport, X11 and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

24 unique CVEs addressed


### [[USN-4963-1](https://ubuntu.com/security/notices/USN-4963-1)] Pillow vulnerabilities [00:55] {#usn-4963-1-pillow-vulnerabilities-00-55}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-28678](https://ubuntu.com/security/CVE-2021-28678) <!-- low -->
    -   [CVE-2021-28677](https://ubuntu.com/security/CVE-2021-28677) <!-- low -->
    -   [CVE-2021-28676](https://ubuntu.com/security/CVE-2021-28676) <!-- low -->
    -   [CVE-2021-28675](https://ubuntu.com/security/CVE-2021-28675) <!-- low -->
    -   [CVE-2021-25288](https://ubuntu.com/security/CVE-2021-25288) <!-- low -->
    -   [CVE-2021-25287](https://ubuntu.com/security/CVE-2021-25287) <!-- low -->
-   Python image handling library - used by many other packages for their
    image handling
-   All DoS issues via OOB read and similar so not critical


### [[USN-4962-1](https://ubuntu.com/security/notices/USN-4962-1)] Babel vulnerability [01:31] {#usn-4962-1-babel-vulnerability-01-31}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-20095](https://ubuntu.com/security/CVE-2021-20095) <!-- medium -->
-   Internationalisation handling for python apps
-   Directory traversal flaw - could be exploited to load arbitrary locale
    .dat files - these contain serialized Python objects - so hence can get
    arbitrary code execution as a result.
-   Could use relative path to specify a file outside the locate-data
    directory


### [[USN-4964-1](https://ubuntu.com/security/notices/USN-4964-1)] Exiv2 vulnerabilities [02:25] {#usn-4964-1-exiv2-vulnerabilities-02-25}

-   5 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-29623](https://ubuntu.com/security/CVE-2021-29623) <!-- low -->
    -   [CVE-2021-32617](https://ubuntu.com/security/CVE-2021-32617) <!-- low -->
    -   [CVE-2021-29473](https://ubuntu.com/security/CVE-2021-29473) <!-- medium -->
    -   [CVE-2021-29464](https://ubuntu.com/security/CVE-2021-29464) <!-- low -->
    -   [CVE-2021-29463](https://ubuntu.com/security/CVE-2021-29463) <!-- low -->
-   CLI util and library (C++) for reading+modifying metadata in image
    files - more exiv2 - last only in [Episode 115](https://ubuntusecuritypodcast.org/episode-115/)
-   OOB reads on metadata write
-   heap buffer overflow on m w
-   quadratic complexity algorithm on metadata write - DoS
-   stack info leak on m r


### [[USN-4965-1](https://ubuntu.com/security/notices/USN-4965-1), [USN-4965-2](https://ubuntu.com/security/notices/USN-4965-2)] Apport vulnerabilities [03:19] {#usn-4965-1-usn-4965-2-apport-vulnerabilities-03-19}

-   11 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-32557](https://ubuntu.com/security/CVE-2021-32557) <!-- medium -->
    -   [CVE-2021-32556](https://ubuntu.com/security/CVE-2021-32556) <!-- medium -->
    -   [CVE-2021-32555](https://ubuntu.com/security/CVE-2021-32555) <!-- medium -->
    -   [CVE-2021-32554](https://ubuntu.com/security/CVE-2021-32554) <!-- medium -->
    -   [CVE-2021-32553](https://ubuntu.com/security/CVE-2021-32553) <!-- medium -->
    -   [CVE-2021-32552](https://ubuntu.com/security/CVE-2021-32552) <!-- medium -->
    -   [CVE-2021-32551](https://ubuntu.com/security/CVE-2021-32551) <!-- medium -->
    -   [CVE-2021-32550](https://ubuntu.com/security/CVE-2021-32550) <!-- medium -->
    -   [CVE-2021-32549](https://ubuntu.com/security/CVE-2021-32549) <!-- medium -->
    -   [CVE-2021-32548](https://ubuntu.com/security/CVE-2021-32548) <!-- medium -->
    -   [CVE-2021-32547](https://ubuntu.com/security/CVE-2021-32547) <!-- medium -->
-   Seems it's time for more Apport vulns - every quarter or so
-   Arbitrary file read / write vulns discovered by Maik Münch
-   Apport parses various details out of /proc and some of these can be
    crafted by the process, ie process name, current working dir etc - and
    then goes to gather files etc - and so if can craft these details can get
    it to read files which weren't intended via symlinks etc (mitigated by
    symlink protections in Ubuntu) - or from injection of data into say dpkg
    queries to get it to include other files like /etc/passwd since this
    operation happens as root by apport
-   These end up in the crash dump and this can be read by the regular user
-   Also when uploading via whoopsie, race condition where crash dump can be
    replaced by a symlink and then the crash dump will be written to the dest
    of the symlink - file write vuln - but again mitigated by
    symlink-restriction


### [[USN-4966-1](https://ubuntu.com/security/notices/USN-4966-1), [USN-4966-2](https://ubuntu.com/security/notices/USN-4966-2)] libx11 vulnerability [05:57] {#usn-4966-1-usn-4966-2-libx11-vulnerability-05-57}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-31535](https://ubuntu.com/security/CVE-2021-31535) <!-- medium -->
-   When looking up a color, failed to properly validate it - app could then
    get extra X protocol requests sent to the X server - ie. could then
    disable X server authorisation etc so remote attackers could connect to
    the local X server and snoop on inputs etc


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### #ubuntu-hardened -> #ubuntu-security on Libera.Chat [06:45] {#ubuntu-hardened-ubuntu-security-on-libera-dot-chat-06-45}

-   LWN writeup <https://lwn.net/Articles/857140/>
-   Volunteer staff resigned en masse after network was taken over by tech
    entrepreneur
-   [Ubuntu IRC council voted and approved a resolution to recommend moving
    Ubuntu IRC channels from freenode to Libera.Chat](https://lists.ubuntu.com/archives/ubuntu-irc/2021-May/001922.html)
-   [Community Council approved this](https://lists.ubuntu.com/archives/ubuntu-irc/2021-May/001923.html) so now all channels have moved to
    Libera.Chat
-   Almost all of the old channels on freenode have now all been taken over
    by the new freenode staff
-   irc.ubuntu.com now redirects to irc.libera.chat
-   Finally took the opportunity to rename our channel - #ubuntu-security
-   Come join us


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
