+++
title = "Episode 65"
description = """
  Whilst avoiding Coronavirus, this week we look at updates for libarchive,
  OpenSMTPD, rake and more, plus Joe and Alex discuss ROS, the Robot
  Operating System and how the Ubuntu Security Team is involved in the
  ongoing development of secure foundations for robotics.
  """
date = 2020-03-05T14:35:00+10:30
lastmod = 2020-03-19T20:21:48+10:30
draft = false
weight = 1003
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E065.mp3"
podcast_duration = "22:46"
podcast_bytes = 21871516
permalink = "https://ubuntusecuritypodcast.org/episode-65/"
guid = "ae3fd86077905ed6dee84fcdb19c70e71325cde5af0589489d2b4bfbc430c48aa2824bf583508258ead4cb25ccce9877fbf06f84aaa4d736005cc7c00c36d8f6"
+++

## Overview {#overview}

Whilst avoiding Coronavirus, this week we look at updates for libarchive,
OpenSMTPD, rake and more, plus Joe and Alex discuss ROS, the Robot
Operating System and how the Ubuntu Security Team is involved in the
ongoing development of secure foundations for robotics.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

7 unique CVEs addressed


### [[USN-4293-1](https://usn.ubuntu.com/4293-1/)] libarchive vulnerabilities [00:18] {#usn-4293-1-libarchive-vulnerabilities-00-18}

-   2 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-9308](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9308) <!-- medium -->
    -   [CVE-2019-19221](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19221) <!-- low -->
-   OSS-Fuzz: RAR unpacker would try and unpack a file with a corrupted /
    malformed header (ie. zero length etc) - OOB read - crash/DoS
-   OOB read due to use of wrong length parameter to mbtowc()


### [[USN-4294-1](https://usn.ubuntu.com/4294-1/)] OpenSMTPD vulnerabilities [02:00] {#usn-4294-1-opensmtpd-vulnerabilities-02-00}

-   2 CVEs addressed in Bionic, Eoan
    -   [CVE-2020-8793](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8793) <!-- low -->
    -   [CVE-2020-8794](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8794) <!-- high -->
-   Remote code exec on both clients **and** server (as server reuses client-side code for debouncing)
-   Possible arbitrary file read due to race-condition in offline
    functionality - a user could create a hardlink to a root-owned file which
    opensmtpd would then read - mitigated on Ubuntu since we enable
    protected\_hardlinks sysctl which stops regular users creating hardlinks
    to root-owned files


### [[USN-4288-2](https://usn.ubuntu.com/4288-2/)] ppp vulnerability [03:12] {#usn-4288-2-ppp-vulnerability-03-12}

-   1 CVEs addressed in Precise ESM, Trusty ESM
    -   [CVE-2020-8597](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8597) <!-- medium -->
-   [Episode 64](https://ubuntusecuritypodcast.org/episode-64/) (possible buffer overflow)


### [[USN-4290-2](https://usn.ubuntu.com/4290-2/)] libpam-radius-auth vulnerability [03:23] {#usn-4290-2-libpam-radius-auth-vulnerability-03-23}

-   1 CVEs addressed in Precise ESM, Trusty ESM
    -   [CVE-2015-9542](https://people.canonical.com/~ubuntu-security/cve/CVE-2015-9542) <!-- medium -->
-   [Episode 64](https://ubuntusecuritypodcast.org/episode-64/) (stack overflow in password field handling)


### [[USN-4295-1](https://usn.ubuntu.com/4295-1/)] Rake vulnerability [03:31] {#usn-4295-1-rake-vulnerability-03-31}

-   1 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-8130](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8130) <!-- medium -->
-   Command injection vulnerability via Rake::FileList - used the Kernel
    open() method rather than File.open() - this supports launching a process
    if the file-name starts with a pipe \`|\` - so instead just use File.open()


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe and Alex discuss ROS, the Robot Operating System [04:28] {#joe-and-alex-discuss-ros-the-robot-operating-system-04-28}


#### Kyle Fazzari's ROS and Ubuntu Video Series {#kyle-fazzari-s-ros-and-ubuntu-video-series}

-   <https://ubuntu.com/blog/from-ros-prototype-to-production-on-ubuntu-core>
-   <https://ubuntu.com/blog/your-first-robot-a-beginners-guide-to-ros-and-ubuntu-core-1-5>


### Hiring {#hiring}


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://canonical.com/careers/1550997>


#### Security Engineer - Certifications (FIPS, Common Criteria) {#security-engineer-certifications--fips-common-criteria}

-   <https://canonical.com/careers/2085468>


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://canonical.com/careers/2085023>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)