+++
title = "Episode 29"
description = """
  This week we look at fixes from the past two weeks including BIND, NTFS-3G,
  Dovecot, Pacemaker and more, plus we follow up last episodes IoT security
  discussion with Joe McManus talking about Ubuntu Core. Finally we cover the
  release of Ubuntu 19.04 Disco Dingo and the transition of Ubuntu 14.04
  Trusty Tahr to Extended Security Maintenance.
  """
date = 2019-04-30
lastmod = 2020-03-19T20:22:55+10:30
draft = false
weight = 1039
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E029.mp3"
podcast_duration = "21:03"
podcast_bytes = 20214308
permalink = "https://ubuntusecuritypodcast.org/episode-29/"
+++

## Overview {#overview}

This week we look at fixes from the past two weeks including BIND, NTFS-3G,
Dovecot, Pacemaker and more, plus we follow up last episodes IoT security
discussion with Joe McManus talking about Ubuntu Core. Finally we cover the
release of Ubuntu 19.04 Disco Dingo and the transition of Ubuntu 14.04
Trusty Tahr to Extended Security Maintenance.


## These past two weeks in Ubuntu Security Updates {#these-past-two-weeks-in-ubuntu-security-updates}

53 unique CVEs addressed


### [[USN-3947-1](https://usn.ubuntu.com/3947-1/), USN-3947-2] Libxslt vulnerability {#usn-3947-1-usn-3947-2-libxslt-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-11068](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11068)
-   Library to transform XML via XML definitions
-   Includes a security framework since XSLT can define operations to
    fetch/read/write files and resources etc
-   Various functions would return 0 if an operation is not allowed by the
    framework which was checked for and correctly disallowed - BUT they could
    also return -1 on error (say from a potentially bad URL) which would not
    be caught and so then would proceed and would fetch from the URL in
    question thereby violating the security policy
-   Fixed to also check for error codes on handle the same as an explicit
    policy violation


### [[USN-3948-1](https://usn.ubuntu.com/3948-1/)] WebKitGTK+ vulnerabilities {#usn-3948-1-webkitgtk-plus-vulnerabilities}

-   14 CVEs addressed in Bionic, Cosmic
    -   [CVE-2019-8563](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8563)
    -   [CVE-2019-8559](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8559)
    -   [CVE-2019-8558](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8558)
    -   [CVE-2019-8551](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8551)
    -   [CVE-2019-8544](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8544)
    -   [CVE-2019-8536](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8536)
    -   [CVE-2019-8535](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8535)
    -   [CVE-2019-8524](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8524)
    -   [CVE-2019-8523](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8523)
    -   [CVE-2019-8518](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8518)
    -   [CVE-2019-8506](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8506)
    -   [CVE-2019-8375](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8375)
    -   [CVE-2019-6251](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6251)
    -   [CVE-2019-11070](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11070)
-   Wide mix of issues fixed including XSS and DoS attacks or possible
    arbitrary code execution if visiting a malicious website


### [[USN-3949-1](https://usn.ubuntu.com/3949-1/)] OpenJDK 11 vulnerability {#usn-3949-1-openjdk-11-vulnerability}

-   1 CVEs addressed in Bionic
    -   [CVE-2019-2422](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2422)
-   Backport of openjdk-11 from Disco to Bionic, includes a minor security
    fix to memory disclosure vulnerablity which could enable an attacker to
    bypass sandbox


### [[USN-3918-4](https://usn.ubuntu.com/3918-4/)] Firefox regressions {#usn-3918-4-firefox-regressions}

-   17 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-9803](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9803)
    -   [CVE-2019-9793](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9793)
    -   [CVE-2019-9809](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9809)
    -   [CVE-2019-9808](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9808)
    -   [CVE-2019-9807](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9807)
    -   [CVE-2019-9806](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9806)
    -   [CVE-2019-9805](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9805)
    -   [CVE-2019-9802](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9802)
    -   [CVE-2019-9799](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9799)
    -   [CVE-2019-9797](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9797)
    -   [CVE-2019-9796](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9796)
    -   [CVE-2019-9795](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9795)
    -   [CVE-2019-9792](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9792)
    -   [CVE-2019-9791](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9791)
    -   [CVE-2019-9790](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9790)
    -   [CVE-2019-9789](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9789)
    -   [CVE-2019-9788](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9788)
-   [Episode 26](https://ubuntusecuritypodcast.org/episode-26/) covered 66.0.2 regression - this is now 66.0.3 to fix further
    regressions in keyboard handling as discussed previously


### [[USN-3914-2](https://usn.ubuntu.com/3914-2/)] NTFS-3G update {#usn-3914-2-ntfs-3g-update}

-   Affecting Xenial, Bionic, Cosmic
-   [Episode 25](https://ubuntusecuritypodcast.org/episode-25/) covered ntfs-3g update for possible heap buffer overflow
    -   As was setuid root this could possibly be used for root privilege
        escalation
-   This update removes setuid root to additionally harden ntfs-3g so that
    any future vulnerablilites can't be used for privilege escalation


### [[USN-3950-1](https://usn.ubuntu.com/3950-1/)] ZNC vulnerability {#usn-3950-1-znc-vulnerability}

-   1 CVEs addressed in Cosmic
    -   [CVE-2019-9917](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9917)
-   crash -> DoS due to improper handling of character encoding - if a remote
    user specified an invalid encoding it could cause znc to crash
-   Fixed to fallback to utf-8 if unknown encoding specified


### [[USN-3951-1](https://usn.ubuntu.com/3951-1/)] Dovecot vulnerability {#usn-3951-1-dovecot-vulnerability}

-   1 CVEs addressed in Cosmic, Disco
    -   [CVE-2019-10691](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10691)
-   Only affects Dovecot 2.3 and hence only Cosmic, Disco, Eoan etc
-   Improper handling of invalid utf-8 username in JSON encoding could cause
    the authentication service to crash


### [[USN-3952-1](https://usn.ubuntu.com/3952-1/)] Pacemaker vulnerabilities {#usn-3952-1-pacemaker-vulnerabilities}

-   3 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-3885](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3885)
    -   [CVE-2018-16878](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16878)
    -   [CVE-2018-16877](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16877)
-   Cluster resource manager - high availability and load balancing for OpenStack
-   All discovered by Jan Pokorný - local attacker could possibly escalate
    privileges or cause a denial of service or to cause sensitive information
    to be leaked to system logs


### [[USN-3953-1](https://usn.ubuntu.com/3953-1/)] PHP vulnerabilities {#usn-3953-1-php-vulnerabilities}

-   2 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11035](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11035)
    -   [CVE-2019-11034](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11034)
-   php7.2 and php7.0
-   Buffer over-read when processing certain EXIF tags - possible information
    disclosure or crash -> DoS


### [[USN-3922-2](https://usn.ubuntu.com/3922-2/), USN-3922-3] PHP vulnerabilities {#usn-3922-2-usn-3922-3-php-vulnerabilities}

-   7 CVEs addressed in Precise ESM, Trusty
    -   [CVE-2019-9641](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9641)
    -   [CVE-2019-9640](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9640)
    -   [CVE-2019-9639](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9639)
    -   [CVE-2019-9638](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9638)
    -   [CVE-2019-9637](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9637)
    -   [CVE-2019-9675](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9675)
    -   [CVE-2019-9022](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9022)
-   Most covered back in [Episode 26](https://ubuntusecuritypodcast.org/episode-26/)


### [[USN-3936-2](https://usn.ubuntu.com/3936-2/)] AdvanceCOMP vulnerability {#usn-3936-2-advancecomp-vulnerability}

-   1 CVEs addressed in Disco
    -   [CVE-2019-9210](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9210)
-   Corresponding update for Disco - covered in [Episode 27](https://ubuntusecuritypodcast.org/episode-27/)


### [[USN-3954-1](https://usn.ubuntu.com/3954-1/)] FreeRADIUS vulnerabilities {#usn-3954-1-freeradius-vulnerabilities}

-   2 CVEs addressed in Bionic, Cosmic, Disco
    -   [CVE-2019-11235](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11235)
    -   [CVE-2019-11234](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11234)
-   2 possible "Dragonblood" authentication bypass issues - mentioned back in
    [Episode 28](https://ubuntusecuritypodcast.org/episode-28/) in the context of wpa\_supplicant and hostapd - similar issue
    for FreeRADIUS


### [[USN-3955-1](https://usn.ubuntu.com/3955-1/)] tcpflow vulnerabilities {#usn-3955-1-tcpflow-vulnerabilities}

-   2 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2018-18409](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18409)
    -   [CVE-2018-14938](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14938)
-   Stack based buffer overflow and an integer overflow -> usual effects
    (crash -> DoS / information disclosure)


### [[USN-3956-1](https://usn.ubuntu.com/3956-1/)] Bind vulnerability {#usn-3956-1-bind-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2018-5743](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5743)
-   DoS - possible to bypass bind's limits on simultaneous TCP clients and so
    cause a DoS via excessive resource usage


## IoT Security follow-up with Joe McManus {#iot-security-follow-up-with-joe-mcmanus}

-   Alex and Joe follow up on last episode's conversation about IoT and in
    particular talk about Ubuntu Core and how this has been engineered to
    address many of these common IoT security design and implementation flaws


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 19.04 Disco Dingo Released {#ubuntu-19-dot-04-disco-dingo-released}

-   Released on Thursday 18th April
-   Officially supported by Canonical for 9 months - with security fixes for
    packages in main by the security team


### Ubuntu 14.04 Trusty Tahr transitions to Extended Security Maintenance {#ubuntu-14-dot-04-trusty-tahr-transitions-to-extended-security-maintenance}

-   Standard support period concluded on Thursday 25th April
-   Users are encouraged to upgrade to our latest LTS release 18.04 via 16.04
-   Extended security maintenance is now available via Ubuntu Advantage
-   <https://blog.ubuntu.com/2019/02/05/ubuntu-14-04-trusty-tahr>
-   <https://www.ubuntu.com/esm>


### Hiring {#hiring}


#### Ubuntu Security Generalist {#ubuntu-security-generalist}

-   <https://boards.greenhouse.io/canonical/jobs/1548812>


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)