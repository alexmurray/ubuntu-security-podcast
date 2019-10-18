+++
title = "Episode 6"
description = "This week we look at some details of the 17 unique CVEs addressed across the supported Ubuntu releases and more."
date = 2018-10-02
lastmod = 2019-10-18T14:20:03+10:30
draft = false
weight = 1044
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E006.mp3"
podcast_duration = "11:56"
podcast_bytes = 11472272
permalink = "https://ubuntusecuritypodcast.org/episode-6/"
+++

## Overview {#overview}

This week we look at some details of the 17 unique CVEs addressed across the supported Ubuntu releases and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

17 unique CVEs addressed


### [[USN-3771-1](https://usn.ubuntu.com/3771-1/)] strongSwan vulnerabilities {#usn-3771-1-strongswan-vulnerabilities}

-   4 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-5388](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5388)
    -   [CVE-2018-16152](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16152)
    -   [CVE-2018-16151](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16151)
    -   [CVE-2018-10811](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10811)
-   2 CVEs: flaws in RSA implementation allow Bleichenbacher-style attacks in parsing of the ASN.1 encoded digestInfo
-   strongSwan implementation was too lenient and would allow arbitrary random data to be contained following various elements in the ASN.1
-   Also would not check the correct amount of padding had been used
-   Allows attackers to potentially forge low-exponent signature forgery and hence authentication during IKE authentication
-   2 CVEs for DoS due to missing length check and missing variable initialization


### [[USN-3772-1](https://usn.ubuntu.com/3772-1/)] UDisks vulnerability {#usn-3772-1-udisks-vulnerability}

-   1 CVEs addressed in Bionic
    -   [CVE-2018-17336](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17336)
-   Format string vulnerability which could be exploited via specially crafted disk label
-   udisks prints volume label via printf() passing the label as part of the format string
    -   Simple fix to replace the label with a %s directive and then pass the label to that
    -   ie. don't interpret label as printf() directives directly


### [[USN-3719-3](https://usn.ubuntu.com/3719-3/)] Mutt vulnerabilities {#usn-3719-3-mutt-vulnerabilities}

-   12 CVEs addressed in Xenial
    -   [CVE-2018-14349](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14349)
    -   [CVE-2018-14362](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14362)
    -   [CVE-2018-14351](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14351)
    -   [CVE-2018-14356](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14356)
    -   [CVE-2018-14355](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14355)
    -   [CVE-2018-14357](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14357)
    -   [CVE-2018-14353](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14353)
    -   [CVE-2018-14358](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14358)
    -   [CVE-2018-14359](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14359)
    -   [CVE-2018-14354](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14354)
    -   [CVE-2018-14352](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14352)
    -   [CVE-2018-14350](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14350)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### LSM Stacking upstreaming {#lsm-stacking-upstreaming}

-   Casey Schaufler (Intel, SMACK maintainer) primary developer along with John Johansen and Kees Cook (Google) to upstream support for LSM stacking
-   Currently upstream allows use of one 'major' module (SELinux / AppArmor / Tomoyo) with a minor module (Yama etc)
-   Goal of stacking is to allow multiple major modules to be used in conjunction (AppArmor with SELinux)
    -   Primary use-case is containers
-   Current stacking patches allow to stack Tomoyo with either SELinux / AppArmor
    -   Eventually should be able to stack SELinux with AppArmor but still WIP
    -   Ubuntu already carries these patches in Bionic etc
-   Likely to be merged in the near future


### Evince AppArmor hardening [LP #1788929](https://bugs.launchpad.net/ubuntu/+source/evince/+bug/1788929) {#evince-apparmor-hardening-lp-1788929}

-   Jann Horn (GPZ) reported gaps in evince AppArmor profile
-   Clever use of GNOME thumbnailer infrastructure to specify a new 'evil' thumbnailer and the use of systemd via DBus to escape AppArmor confinement
-   Policy fixed in Cosmic, in process of updating for Bionic etc


### New Ubuntu Security Manager {#new-ubuntu-security-manager}

-   Joe McManus


### Hiring {#hiring}


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1158266>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)