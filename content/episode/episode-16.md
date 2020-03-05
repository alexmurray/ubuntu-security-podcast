+++
title = "Episode 16"
description = "Last episode for 2018! This week we look at CVEs in lxml, CUPS, pixman, FreeRDP & more, plus we discuss the security of home routers as evaluated by C-ITL."
date = 2018-12-17
lastmod = 2020-03-05T14:40:36+10:30
draft = false
weight = 1050
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E016.mp3"
podcast_duration = "10:41"
podcast_bytes = 10257266
permalink = "https://ubuntusecuritypodcast.org/episode-16/"
+++

## Overview {#overview}

Last episode for 2018! This week we look at CVEs in lxml, CUPS, pixman, FreeRDP & more, plus we discuss the security of home routers as evaluated by C-ITL.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

21 unique CVEs addressed


### [[USN-3841-1](https://usn.ubuntu.com/3841-1/), [USN-3841-2](https://usn.ubuntu.com/3841-2/)] lxml vulnerability {#usn-3841-1-usn-3841-2-lxml-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty, Xenial, Bionic
    -   [CVE-2018-19787](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19787)
-   Popular XML/HTML parser for Python
-   Tries to remove clean input document and remove links (to say embedded
    javascript code) - but doesn't account for links containing escaped
    characters - so link could persist
-   Similar to CVE-2014-3146
    -   In this case tried to account for whitespace in links but didn't include
        all possible whitespace characters


### [[USN-3842-1](https://usn.ubuntu.com/3842-1/)] CUPS vulnerability {#usn-3842-1-cups-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-4700](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4700)
-   Session cookies used for authentication to CUPS web interface used only the
    current time **in seconds** as a seed for the relatively predictable PRNG
    -   Easy to bruteforce / guess
    -   Fix ensures to use current time value including microseconds
    -   Still using relatively predictable PRNG - should use /dev/urandom etc


### [[USN-3837-2](https://usn.ubuntu.com/3837-2/)] poppler regression {#usn-3837-2-poppler-regression}

-   2 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-19149](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19149)
    -   [CVE-2018-16646](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16646)
-   Previous poppler update (Episode 15) - fix missed a previous commit and so
    regressed (crash on opening certain PDF files)


### [[USN-3843-1](https://usn.ubuntu.com/3843-1/), [USN-3843-2](https://usn.ubuntu.com/3843-2/)] pixman vulnerability {#usn-3843-1-usn-3843-2-pixman-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty
    -   [CVE-2015-5297](https://people.canonical.com/~ubuntu-security/cve/CVE-2015-5297)
-   Low level library for pixel manipulation (used by X, Wayland, Qemu etc)
-   Pointer overflow leading to stack-based buffer overflow in computing bounds of pixel buffers
    -   Did include a check to see if was inside bounds, BUT didn't account for
        possible overflow in arithmetic before the check
    -   Need to check for possible overflow before doing arithmetic and comparison


### [[USN-3844-1](https://usn.ubuntu.com/3844-1/)] Firefox vulnerabilities {#usn-3844-1-firefox-vulnerabilities}

-   10 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-18497](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18497)
    -   [CVE-2018-18495](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18495)
    -   [CVE-2018-18498](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18498)
    -   [CVE-2018-18494](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18494)
    -   [CVE-2018-18493](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18493)
    -   [CVE-2018-18492](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18492)
    -   [CVE-2018-17466](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17466)
    -   [CVE-2018-12407](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12407)
    -   [CVE-2018-12406](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12406)
    -   [CVE-2018-12405](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12405)
-   Firefox 64 - multiple security vulnerabilities fixed
    -   Buffer overflows, UAFs, same-origin-policy violation, webextensions able to
        violate restrictions, various memory safety / corruption bugs
    -   <https://www.mozilla.org/en-US/security/advisories/mfsa2018-29/>


### [[USN-3845-1](https://usn.ubuntu.com/3845-1/)] FreeRDP vulnerabilities {#usn-3845-1-freerdp-vulnerabilities}

-   6 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-8789](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-8789)
    -   [CVE-2018-8788](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-8788)
    -   [CVE-2018-8787](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-8787)
    -   [CVE-2018-8786](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-8786)
    -   [CVE-2018-8785](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-8785)
    -   [CVE-2018-8784](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-8784)
-   Eyal Itkin discovered multiple vulnerabilities in FreeRDP - not all affect all releases (some too old to contain affected code)
-   Various heap-based buffer overflows (crash -> DoS / RCE?)
-   Out-of-bounds read (crash -> DoS)


## Goings on in Linux Security Community {#goings-on-in-linux-security-community}


### Linux on MIPS and home routers {#linux-on-mips-and-home-routers}

-   Cyber-ITL (Independent Testing Lab) analysed a number of home routers for basic security hardening features
    -   ASLR, DEP (non-executable stack), RELRO
    -   Mix of MIPS and ARM devices
    -   Compared against Ubuntu 16.04 LTS x86\_64 (general hardening)
    -   Most found to have minimal hardening features enabled
    -   <https://cyber-itl.org/assets/papers/2018/build%5Fsafety%5Fof%5Fsoftware%5Fin%5F28%5Fpopular%5Fhome%5Frouters.pdf>
    -   Also found Linux kernel on MIPS either has executable stack (until 2016)
        due to FP emulation code, or since then has no executable stack but has a
        RWX segment at a fixed location, which can be used to bypass DEP / ASLR
        -   Ubuntu does not support MIPS


### Final episode for 2018 {#final-episode-for-2018}

-   This is the last episode for 2018, on leave for the next 3 weeks
-   Next episode will be from Cape Town in 2019 during week of 14th January with some special guests... :)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)