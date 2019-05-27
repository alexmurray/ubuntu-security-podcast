+++
title = "Episode 22"
description = "This week we cover security updates including Firefox, Thunderbird, OpenSSL and another Ghostscript regression, plus we look at a recent report from Capsule8 comparing Linux hardening features across various distributions and we answer some listener questions."
date = 2019-03-04
lastmod = 2019-05-27T20:02:38+09:30
draft = false
weight = 1012
episode_image = "img/episode/default.png"
explicit = "no"
podcast_file = "USP_E022.mp3"
podcast_duration = "15:57"
podcast_bytes = 15316244
permalink = "https://ubuntusecuritypodcast.org/episode-22/"
+++

## Overview {#overview}

This week we cover security updates including Firefox, Thunderbird, OpenSSL and another Ghostscript regression, plus we look at a recent report from Capsule8 comparing Linux hardening features across various distributions and we answer some listener questions.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

16 unique CVEs addressed


### [[USN-3893-2](https://usn.ubuntu.com/3893-2/)] Bind vulnerabilities {#usn-3893-2-bind-vulnerabilities}

-   2 CVEs addressed in Precise ESM
    -   [CVE-2019-6465](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6465)
    -   [CVE-2018-5745](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5745)
-   Covered last week in [Episode 21](https://ubuntusecuritypodcast.org/episode-21/) for regular Ubuntu releases


### [[USN-3866-3](https://usn.ubuntu.com/3866-3/)] Ghostscript regression {#usn-3866-3-ghostscript-regression}

-   Affecting Trusty, Xenial, Bionic, Cosmic
-   Mentioned last week briefly
-   Previous update to Ghostscript introduced a regression (blue background)
    -   See later for information


### [[USN-3894-1](https://usn.ubuntu.com/3894-1/)] GNOME Keyring vulnerability {#usn-3894-1-gnome-keyring-vulnerability}

-   1 CVEs addressed in Trusty, Xenial
    -   [CVE-2018-20781](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20781)
-   Already fixed upstream (hence doesn't apply to Bionic / Cosmic etc)
-   User's login password kept in memory of child process after pam session is opened
-   Could be dumped by root user or captured in crash dump etc and possibly exposed
    -   Other tools exist to try and extract from memory as well ([minipenguin](https://github.com/huntergregal/mimipenguin) etc)
-   Fix is to simply reset this after pam session is opened


### [[USN-3895-1](https://usn.ubuntu.com/3895-1/)] LDB vulnerability {#usn-3895-1-ldb-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-3824](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3824)
-   LDAP-like embedded database (used by Samba and others)
-   Authenticated user can cause OOB read when searching LDAP backend of AD DC with a search string containing multiple wildcards - crash -> DoS


### [[USN-3896-1](https://usn.ubuntu.com/3896-1/)] Firefox vulnerabilities {#usn-3896-1-firefox-vulnerabilities}

-   3 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-5785](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5785)
    -   [CVE-2018-18511](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18511)
    -   [CVE-2018-18356](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18356)
-   Firefox 65
-   Use-after-free and integer overflow in Skia library (vector graphics library, similar to cairo)
-   Cross-origin image theft - able to read from canvas element in violation of same-origin policy using transferFromImageBitmap() method


### [[USN-3897-1](https://usn.ubuntu.com/3897-1/)] Thunderbird vulnerabilities {#usn-3897-1-thunderbird-vulnerabilities}

-   7 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-18509](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18509)
    -   [CVE-2018-18505](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18505)
    -   [CVE-2018-18501](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18501)
    -   [CVE-2019-5785](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5785)
    -   [CVE-2018-18500](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18500)
    -   [CVE-2018-18356](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18356)
    -   [CVE-2016-5824](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-5824)
-   Thunderbird 60.5.1
-   Use-after-free and integer overflow in Skia library (vector graphics library, similar to cairo)
-   Show messages with an invalid (reused) S/MIME signature as being verified
-   UAF parsing HTML5 stream with custom HTML elements
-   UAF in embedded libical via a crafted ICS file


### [[USN-3898-1](https://usn.ubuntu.com/3898-1/), USN-3898-2] NSS vulnerability {#usn-3898-1-usn-3898-2-nss-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-18508](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18508)
-   Several NULL pointer dereferences -> crash -> DoS


### [[USN-3899-1](https://usn.ubuntu.com/3899-1/)] OpenSSL vulnerability {#usn-3899-1-openssl-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2019-1559](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1559)
-   Possible padding oracle (an application which uses OpenSSL could behave differently based on whether a record contained valid padding or not)
    -   Attacker can learn plaintext by modifying ciphertext and observing different behaviour


### [[USN-3900-1](https://usn.ubuntu.com/3900-1/)] GD vulnerabilities {#usn-3900-1-gd-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-6978](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6978)
    -   [CVE-2019-6977](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6977)
-   Double free if failed to properly extract image file - crash -> DoS
-   Heap-based buffer overflow in color matching (able to be triggered by a specially crafted image) - crash -> DoS, possible code execution


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Comparison of Linux Hardening across distributions {#comparison-of-linux-hardening-across-distributions}

-   <https://capsule8.com/blog/millions-of-binaries-later-a-look-into-linux-hardening-in-the-wild/>
-   Analyses binaries from various Linux distributions looking for hardening features (OpenSUSE, Debian, CentOS, RHEL & Ubuntu)
-   Compare kernel configuration vs KSPP recommendations
-   Ubuntu 18.04 ranks highest, due to proactive hardening features baked into toolchain and newer kernel taking advantage of KSPP upstream features
    -   gcc is patched so anyone building on Ubuntu gets these features
    -   build.snapcraft.io too
    -   however is missing stack clash mitigation
-   Plan to add more hardening features for 19.10 (stack clash and control-flow integrity support via gcc) and review kernel options cf. KSPP


### Q&A {#q-and-a}


#### Does numerous bugs and regressions in Ghostscript indicate it is reaching it's EOL? {#does-numerous-bugs-and-regressions-in-ghostscript-indicate-it-is-reaching-it-s-eol}

-   [doc-E-brown via twitter](https://twitter.com/docEbrown1/status/1101452172196163585)
-   Lots of recent focus -> finds bugs
-   ghostscript codebase is old and gnarly and some fixes have been quite invasive
-   Any new code could introduce new bugs - particularly complicated fixes -> creates more bugs (regressions)
    -   (as doc-E-brown suggests, regressions indicate old code-base)
-   Tavis (and others) seem to be looking elsewhere but likely still more bugs to be found
-   Would be great if GS could either be made safer or a safer alternative but no-one is stepping up
-   Sadly No good viable alternative currently


### Hiring {#hiring}


#### Ubuntu Security Generalist {#ubuntu-security-generalist}

-   <https://boards.greenhouse.io/canonical/jobs/1548812>


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


#### Security Automation Engineer {#security-automation-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1548632>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardended on the Freenode IRC network](http://webchat.freenode.net?channels=%23ubuntu-hardened&uio=d4)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)