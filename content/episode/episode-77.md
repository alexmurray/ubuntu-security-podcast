+++
title = "Episode 77"
description = """
  This week we look at security updates for Unbound, OpenSSL, Flask, FreeRDP,
  Django and more, plus Joe and Alex discuss the Octopus malware infecting
  Netbeans projects.
  """
date = 2020-06-07T17:39:00+09:30
lastmod = 2022-05-15T18:06:38+09:30
draft = false
weight = 1083
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E077.mp3"
podcast_duration = "20:32"
podcast_bytes = 19725283
permalink = "https://ubuntusecuritypodcast.org/episode-77/"
guid = "ea72606e1738c23293eee0989cacd396a9cfd589449e033294b71506d765fafa1e6f5c6b16edade636cb67e24ae1aa3ec7419fe1a95aeae62e7f753b38c39ec2"
+++

## Overview {#overview}

This week we look at security updates for Unbound, OpenSSL, Flask, FreeRDP,
Django and more, plus Joe and Alex discuss the Octopus malware infecting
Netbeans projects.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

40 unique CVEs addressed


### [[USN-4374-1](https://usn.ubuntu.com/4374-1/)] Unbound vulnerabilities {#usn-4374-1-unbound-vulnerabilities}

-   2 CVEs addressed in Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-12663](https://ubuntu.com/security/CVE-2020-12663) <!-- low -->
    -   [CVE-2020-12662](https://ubuntu.com/security/CVE-2020-12662) <!-- medium -->
-   NXNS attack ([Episode 75](https://ubuntusecuritypodcast.org/episode-75/)) (form of DNS reflection attack)
-   Infinite loop when processing malformed answers from upstream servers -&gt;
    CPU DoS


### [[USN-4375-1](https://usn.ubuntu.com/4375-1/)] PHP vulnerability {#usn-4375-1-php-vulnerability}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2019-11048](https://ubuntu.com/security/CVE-2019-11048) <!-- medium -->
-   DoS via upload of files with very long names -&gt; memory allocation
    failure, stop process, fail to cleanup temp file on disk -&gt; disk space
    DoS


### [[USN-4376-1](https://usn.ubuntu.com/4376-1/)] OpenSSL vulnerabilities {#usn-4376-1-openssl-vulnerabilities}

-   4 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10)
    -   [CVE-2019-1563](https://ubuntu.com/security/CVE-2019-1563) <!-- low -->
    -   [CVE-2019-1551](https://ubuntu.com/security/CVE-2019-1551) <!-- low -->
    -   [CVE-2019-1549](https://ubuntu.com/security/CVE-2019-1549) <!-- low -->
    -   [CVE-2019-1547](https://ubuntu.com/security/CVE-2019-1547) <!-- low -->
-   Timing side-channel attack against ECDSA signatures -&gt; recover private
    keys
-   RNG state shared between parent and child process across fork()
-   Vulnerable to padding oracle attack -&gt; decrypt traffic


### [[USN-4360-4](https://usn.ubuntu.com/4360-4/)] json-c vulnerability {#usn-4360-4-json-c-vulnerability}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-12762](https://ubuntu.com/security/CVE-2020-12762) <!-- medium -->
-   [Episode 75](https://ubuntusecuritypodcast.org/episode-75/) -&gt; update, regression, update without fix -&gt; now properly
    fixed vuln without regression


### [[USN-4359-2](https://usn.ubuntu.com/4359-2/)] APT vulnerability {#usn-4359-2-apt-vulnerability}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM)
    -   [CVE-2020-3810](https://ubuntu.com/security/CVE-2020-3810) <!-- medium -->
-   [Episode 75](https://ubuntusecuritypodcast.org/episode-75/) (ar archive handling)


### [[USN-4367-2](https://usn.ubuntu.com/4367-2/)] Linux kernel regression {#usn-4367-2-linux-kernel-regression}

-   3 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-12657](https://ubuntu.com/security/CVE-2020-12657) <!-- medium -->
    -   [CVE-2020-11565](https://ubuntu.com/security/CVE-2020-11565) <!-- medium -->
    -   [CVE-2019-19377](https://ubuntu.com/security/CVE-2019-19377) <!-- low -->
-   5.4 kernel ([Episode 75](https://ubuntusecuritypodcast.org/episode-75/))
-   [overlayfs regression](https://launchpad.net/bugs/1879690) - caused by adding some changes for shiftfs to
    special-case overlayfs - BUT in-fact was already present in overlayfs and
    this just manifested it - so for now revert the shiftfs related changes
    until is fixed properly in overlayfs itself


### [[USN-4369-2](https://usn.ubuntu.com/4369-2/)] Linux kernel regression {#usn-4369-2-linux-kernel-regression}

-   8 CVEs addressed in Bionic (18.04 LTS), Eoan (19.10)
    -   [CVE-2020-12657](https://ubuntu.com/security/CVE-2020-12657) <!-- medium -->
    -   [CVE-2020-11668](https://ubuntu.com/security/CVE-2020-11668) <!-- medium -->
    -   [CVE-2020-11609](https://ubuntu.com/security/CVE-2020-11609) <!-- medium -->
    -   [CVE-2020-11608](https://ubuntu.com/security/CVE-2020-11608) <!-- medium -->
    -   [CVE-2020-11565](https://ubuntu.com/security/CVE-2020-11565) <!-- medium -->
    -   [CVE-2020-11494](https://ubuntu.com/security/CVE-2020-11494) <!-- medium -->
    -   [CVE-2019-19769](https://ubuntu.com/security/CVE-2019-19769) <!-- medium -->
    -   [CVE-2019-19377](https://ubuntu.com/security/CVE-2019-19377) <!-- low -->
-   5.3 kernel ([Episode 75](https://ubuntusecuritypodcast.org/episode-75/))
-   [overlayfs regression](https://launchpad.net/bugs/1879690) above


### [[USN-4377-1](https://usn.ubuntu.com/4377-1/), [USN-4377-2](https://usn.ubuntu.com/4377-2/)] ca-certificates update {#usn-4377-1-usn-4377-2-ca-certificates-update}

-   Affecting Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
-   "AddTrust Exteral Root CA" certificate had expired - curl and other
    applications would fail to connect if they found a certificate chain
    which validated via this cert (even if other paths in the chain would be
    valid) - removing this cert is the easiest way to fix the issue.
-   Updated the certs for 16.04 &amp; 18.04 LTS as well


### [[USN-4378-1](https://usn.ubuntu.com/4378-1/)] Flask vulnerability {#usn-4378-1-flask-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2018-1000656](https://ubuntu.com/security/CVE-2018-1000656) <!-- low -->
-   DoS via memory exhaustion on crafted inputs


### [[USN-4379-1](https://usn.ubuntu.com/4379-1/)] FreeRDP vulnerabilities {#usn-4379-1-freerdp-vulnerabilities}

-   19 CVEs addressed in Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-13398](https://ubuntu.com/security/CVE-2020-13398) <!-- medium -->
    -   [CVE-2020-13397](https://ubuntu.com/security/CVE-2020-13397) <!-- low -->
    -   [CVE-2020-13396](https://ubuntu.com/security/CVE-2020-13396) <!-- low -->
    -   [CVE-2020-11526](https://ubuntu.com/security/CVE-2020-11526) <!-- low -->
    -   [CVE-2020-11525](https://ubuntu.com/security/CVE-2020-11525) <!-- low -->
    -   [CVE-2020-11524](https://ubuntu.com/security/CVE-2020-11524) <!-- low -->
    -   [CVE-2020-11523](https://ubuntu.com/security/CVE-2020-11523) <!-- low -->
    -   [CVE-2020-11522](https://ubuntu.com/security/CVE-2020-11522) <!-- low -->
    -   [CVE-2020-11521](https://ubuntu.com/security/CVE-2020-11521) <!-- low -->
    -   [CVE-2020-11058](https://ubuntu.com/security/CVE-2020-11058) <!-- medium -->
    -   [CVE-2020-11049](https://ubuntu.com/security/CVE-2020-11049) <!-- low -->
    -   [CVE-2020-11048](https://ubuntu.com/security/CVE-2020-11048) <!-- medium -->
    -   [CVE-2020-11047](https://ubuntu.com/security/CVE-2020-11047) <!-- low -->
    -   [CVE-2020-11046](https://ubuntu.com/security/CVE-2020-11046) <!-- medium -->
    -   [CVE-2020-11045](https://ubuntu.com/security/CVE-2020-11045) <!-- medium -->
    -   [CVE-2020-11044](https://ubuntu.com/security/CVE-2020-11044) <!-- medium -->
    -   [CVE-2020-11042](https://ubuntu.com/security/CVE-2020-11042) <!-- medium -->
    -   [CVE-2019-17177](https://ubuntu.com/security/CVE-2019-17177) <!-- low -->
    -   [CVE-2018-1000852](https://ubuntu.com/security/CVE-2018-1000852) <!-- low -->
-   Various issues including, OOB write for RSA crypto handling, OOB read on
    font handling, info disclosure via ability to read client memory as color
    info, etc.


### [[USN-4380-1](https://usn.ubuntu.com/4380-1/)] Apache Ant vulnerability {#usn-4380-1-apache-ant-vulnerability}

-   1 CVEs addressed in Eoan (19.10)
    -   [CVE-2020-1945](https://ubuntu.com/security/CVE-2020-1945) <!-- medium -->
-   Info leak to / malicious code exec from a local user due to the use of
    system-wide /tmp for several tasks (Mike Salvatore)


### [[USN-4381-1](https://usn.ubuntu.com/4381-1/)] Django vulnerabilities {#usn-4381-1-django-vulnerabilities}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-13596](https://ubuntu.com/security/CVE-2020-13596) <!-- medium -->
    -   [CVE-2020-13254](https://ubuntu.com/security/CVE-2020-13254) <!-- medium -->
-   XSS via the admin ForeignKeyRawIdWidget due to failure to properly
    encoded query parameters
-   Failure to properly validate memcached cache keys - could allow a remote
    attacker to DoS / info leak


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe discuss Github report on Octopus malware targetting Netbeans projects {#alex-and-joe-discuss-github-report-on-octopus-malware-targetting-netbeans-projects}

-   <https://securitylab.github.com/research/octopus-scanner-malware-open-source-supply-chain>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)