+++
title = "Episode 11"
description = "This week we look at some details of the 23 unique CVEs addressed across the supported Ubuntu releases, discuss the latest purported Intel side-channel vulnerability PortSmash and more."
date = 2018-11-12
lastmod = 2020-05-08T16:36:48+09:30
draft = false
weight = 1063
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E011.mp3"
podcast_duration = "13:03"
podcast_bytes = 12529292
permalink = "https://ubuntusecuritypodcast.org/episode-11/"
+++

## Overview {#overview}

This week we look at some details of the 23 unique CVEs addressed across the supported Ubuntu releases, discuss the latest purported Intel side-channel vulnerability PortSmash and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

23 unique CVEs addressed


### [[USN-3806-1](https://usn.ubuntu.com/3806-1/)] systemd vulnerability {#usn-3806-1-systemd-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2018-15688](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15688)
-   Reported by Felix Wilhelm from Google Security Team to Ubuntu in [LP #1795921](https://bugs.launchpad.net/ubuntu/+source/systemd/+bug/1795921)
-   systemd contains DHCPv6 client written from scratch
-   Heap buffer overflow in DHCPv6 option handling (say via server id of >=493 bytes)
-   Coordinated with systemd upstream and Red Hat to resolve this


### [[USN-3807-1](https://usn.ubuntu.com/3807-1/)] NetworkManager vulnerability {#usn-3807-1-networkmanager-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2018-15688](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15688)
-   NetworkManager contains the same code taken from systemd-networkd so is also vulnerable


### [[USN-3808-1](https://usn.ubuntu.com/3808-1/)] Ruby vulnerabilities {#usn-3808-1-ruby-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic and Cosmic
    -   [CVE-2018-16395](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16395)
    -   [CVE-2018-16396](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16396)
-   Misuses return value when comparing names in X509 certificates
    -   If returned 1 on comparing name would assume are identical but are in fact not
    -   Could allow to impersonate a certificate
-   Taint flags not propagated when unpacking arrays into strings, or packing strings into arrays
    -   Could allow untrusted data to be treated as trusted


### [[USN-3809-1](https://usn.ubuntu.com/3809-1/)] OpenSSH vulnerabilities {#usn-3809-1-openssh-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-15473](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15473)
    -   [CVE-2016-10708](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-10708)
-   User enumeration due to fail to bail out early on invalid user authentication
    -   Would take longer to process a packet with a valid username than an invalid one
    -   Can determine account names as a result via brute-force timing attack
-   Possible to crash the per-connection process on NULL pointer dereference
    -   Low priority since doesn't crash the main daemon so not really a DoS


### [[USN-3786-2](https://usn.ubuntu.com/3786-2/)] libxkbcommon vulnerabilities {#usn-3786-2-libxkbcommon-vulnerabilities}

-   11 CVEs addressed in Bionic
    -   [CVE-2018-15856](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15856)
    -   [CVE-2018-15864](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15864)
    -   [CVE-2018-15863](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15863)
    -   [CVE-2018-15862](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15862)
    -   [CVE-2018-15861](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15861)
    -   [CVE-2018-15859](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15859)
    -   [CVE-2018-15858](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15858)
    -   [CVE-2018-15857](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15857)
    -   [CVE-2018-15855](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15855)
    -   [CVE-2018-15854](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15854)
    -   [CVE-2018-15853](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15853)
-   Episode 7 for Trusty and Xenial
-   Some common CVEs, some new ones specific to Bionic version


### [[USN-3810-1](https://usn.ubuntu.com/3810-1/)] ppp vulnerability {#usn-3810-1-ppp-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-11574](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11574)
-   Ubuntu specific change to pppd to add support for EAP-TLS authentication
    -   Could be triggered on both peer or server side
    -   Lack of input validation coupled with an integer overflow lead to crash and possible authentication bypass
    -   Leads to memcpy() with a negative length value (and hence very large unsigned value)
    -   Theoretically possible to overwrite other data structures related to server state and therefore bypass authentication


### [[USN-3811-1](https://usn.ubuntu.com/3811-1/)] SpamAssassin vulnerabilities {#usn-3811-1-spamassassin-vulnerabilities}

-   3 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-11781](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11781)
    -   [CVE-2018-11780](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11780)
    -   [CVE-2017-15705](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-15705)
-   Updated to latest stable version of spamassassin (3.4.2)
    -   So all supported Ubuntu releases now have 3.4.2
-   Local user code injection via meta rule syntax
-   RCE via PDFInfo plugin
-   Failure to handle unclosed HTML tags in emails leading to DoS


### [[USN-3812-1](https://usn.ubuntu.com/3812-1/)] nginx vulnerabilities {#usn-3812-1-nginx-vulnerabilities}

-   3 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-16845](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16845)
    -   [CVE-2018-16844](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16844)
    -   [CVE-2018-16843](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16843)
-   DoS due to memory usage in HTTP/2 handling
-   DoS due to excessive CPU usage in HTTP/2 handling
-   When processing a specially crafted mp4 file, could lead to infinite loop
    -   This module is in the nginx-extras package


### [[USN-3813-1](https://usn.ubuntu.com/3813-1/)] pyOpenSSL vulnerabilities {#usn-3813-1-pyopenssl-vulnerabilities}

-   2 CVEs addressed in Xenial
    -   [CVE-2018-1000808](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000808)
    -   [CVE-2018-1000807](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000807)
-   DoS via crash in handling of X509 certificates
-   UAF in handling of X509 certificates


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### [PortSmash](https://eprint.iacr.org/2018/1060) - New Intel side-channel vulnerability or expected behaviour for SMT? {#portsmash-new-intel-side-channel-vulnerability-or-expected-behaviour-for-smt}

-   [CVE-2018-5407](https://people.canonical.com/~ubuntu-security/cve/2018/CVE-2018-5407.html) assigned to OpenSSL but described as a side-channel in Intel SMT / Hyper-Threading
    -   <https://www.openwall.com/lists/oss-security/2018/11/01/4>
    -   Affects OpenSSL <= 1.1.0h
-   [Originally suggested as a possible side-channel in 2015](https://www.openwall.com/lists/oss-security/2015/08/12/8)
-   Due to sharing of execution engines in SMT
    -   Two processes across shared hyper-threads, contend for execution units across same ports
    -   Meaure port contention delay -> side channel to recover ECDSA private key of server running in other process
-   So crypto code needs not only to be constant-time, but also secret-independent execution-flow
    -   ie. execute same instruction sequence regardless of secret
    -   all code and data addresses are assumed public
-   Or disable HT / learn to schedule trust domains across different hyper-threads (gang-scheduling)


### Hiring {#hiring}


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1158266>


## Preview of Next Episode {#preview-of-next-episode}


### Upcoming fixes {#upcoming-fixes}

-   libmspack, systemd, gettext


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)