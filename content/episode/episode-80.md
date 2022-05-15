+++
title = "Episode 80"
description = """
  This week, Sid Faber and Kyle Fazzari of the Ubuntu Robotics team interview
  Vijay Sarvepalli from CERT about the recent Ripple20 vulnerabilities
  announcement, plus we look at security updates for Bind, Mutt, curl and
  more.
  """
date = 2020-06-25T15:21:00+09:30
lastmod = 2022-05-15T18:06:35+09:30
draft = false
weight = 1080
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E080.mp3"
podcast_duration = "28:09"
podcast_bytes = 27037897
permalink = "https://ubuntusecuritypodcast.org/episode-80/"
guid = "15ec5b135c45ce85d4c2975cb29628491ec93321270d8b30640902ea175a8df1e6797dce769708b75a9c244e3374ba6b92057dc2843f176db8004ffbd18c3258"
+++

## Overview {#overview}

This week, Sid Faber and Kyle Fazzari of the Ubuntu Robotics team interview
Vijay Sarvepalli from CERT about the recent Ripple20 vulnerabilities
announcement, plus we look at security updates for Bind, Mutt, curl and
more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

8 unique CVEs addressed


### [[USN-4397-2](https://usn.ubuntu.com/4397-2/)] NSS vulnerability [00:40] {#usn-4397-2-nss-vulnerability-00-40}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM)
    -   [CVE-2020-12399](https://ubuntu.com/security/CVE-2020-12399) <!-- medium -->
-   [Episode 79](https://ubuntusecuritypodcast.org/episode-79/) - timing side-channel attack during DSA key generation


### [[USN-4399-1](https://usn.ubuntu.com/4399-1/)] Bind vulnerabilities [01:00] {#usn-4399-1-bind-vulnerabilities-01-00}

-   2 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-8619](https://ubuntu.com/security/CVE-2020-8619) <!-- medium -->
    -   [CVE-2020-8618](https://ubuntu.com/security/CVE-2020-8618) <!-- medium -->
-   2 DoS issues (resulting from the ability to crash BIND) - an
    authoritative nameserver which provides entries containing asterisks
    could change entries and cause BIND to crash, also an attacker who can
    send crafted zone data to cause a zone transfer could trigger an
    assertion failure -&gt; crash


### [[USN-4400-1](https://usn.ubuntu.com/4400-1/)] nfs-utils vulnerability [01:44] {#usn-4400-1-nfs-utils-vulnerability-01-44}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2019-3689](https://ubuntu.com/security/CVE-2019-3689) <!-- low -->
-   /var/lib/nfs was writable by statd user - if this user were compromised
    could change then contents of this directory. This dir also contains
    files owned and managed by root (rmtab etc) - mountd uses rmtab and so
    since statd user can change this files contents, they could make mountd
    create or overwrite other files on the system as root -&gt; and so escalate
    privileges. Fixed to just make the few specific subdirectories owned by
    statd.


### [[USN-4401-1](https://usn.ubuntu.com/4401-1/)] Mutt vulnerabilities [03:16] {#usn-4401-1-mutt-vulnerabilities-03-16}

-   2 CVEs addressed in Precise ESM (12.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-14154](https://ubuntu.com/security/CVE-2020-14154) <!-- low -->
    -   [CVE-2020-14093](https://ubuntu.com/security/CVE-2020-14093) <!-- medium -->
-   2 issues on handling of TLS connections for IMAP servers, could allow a
    middleperson attack since wouldn't properly do authentication of the
    network connection, and would proceed to connect even if a user chooses
    to reject the connection due to an expired certificate. So only relevant
    if using mutt to connect to IMAP directly.


### [[USN-4402-1](https://usn.ubuntu.com/4402-1/)] curl vulnerabilities [04:06] {#usn-4402-1-curl-vulnerabilities-04-06}

-   2 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-8177](https://ubuntu.com/security/CVE-2020-8177) <!-- medium -->
    -   [CVE-2020-8169](https://ubuntu.com/security/CVE-2020-8169) <!-- medium -->
-   Could be tricked to overwrite local files as
    specified by a malicious server when using the CLI arguments -i in
    combination with -J - -J is used to specify that the local filename
    should come from a HTTP header specified by the server. Normally this
    refuses to overwrite any existing local file **but** when using in
    conjunction with -i this check was skipped.
-   Possible partial password leak since could be tricked into appending part
    of the password to the hostname before this is resolved via DNS during a
    redirect - but only if the password contains an @ character....


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Sid Faber and Kyle Fazzari interview Vijay Sarvepalli from CERT about Ripple20 [05:44] {#sid-faber-and-kyle-fazzari-interview-vijay-sarvepalli-from-cert-about-ripple20-05-44}

-   <https://www.us-cert.gov/ncas/current-activity/2020/06/16/ripple20-vulnerabilities-affecting-treck-ip-stacks>
-   <https://www.us-cert.gov/ics/advisories/icsa-20-168-01>
-   <https://insights.sei.cmu.edu/author/vijay-sarvepalli/>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)