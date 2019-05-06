+++
title = "Episode 5"
description = """
  This week we look at some details of the 43 unique CVEs addressed across the
  supported Ubuntu releases and talk about the recently announced Extended
  Security Maintenance support for Ubuntu 14.04 Trusty Tahr.
  """
date = 2018-09-24
lastmod = 2019-05-06T12:21:08+09:30
draft = false
weight = 1026
episode_image = "img/episode/default.png"
explicit = "no"
podcast_file = "USP_E005.mp3"
podcast_duration = "15:45"
podcast_bytes = 15121056
permalink = "https://ubuntusecuritypodcast.org/episode-5/"
+++

## Overview {#overview}

This week we look at some details of the 43 unique CVEs addressed across the
supported Ubuntu releases and talk about the recently announced Extended
Security Maintenance support for Ubuntu 14.04 Trusty Tahr.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

43 unique CVEs addressed across the various supported releases of Ubuntu
(Bionic, Xenial, Trusty and Precise ESM)


### [[USN-3762-1](https://usn.ubuntu.com/3762-1/), USN-3762-2] Linux kernel vulnerabilities {#usn-3762-1-usn-3762-2-linux-kernel-vulnerabilities}

-   2 CVEs addressed in Bionic and corresponding HWE kernel for Xenial
    -   [CVE-2017-13695](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-13695)
    -   [CVE-2018-1118](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1118)
-   Both information disclosure vulnerabilities which could allow exposure of kernel addresses
    -   Not directly an issue but could be used to defeat ASLR when combined with another vulnerability


### [[USN-3763-1](https://usn.ubuntu.com/3763-1/)] Linux kernel vulnerability {#usn-3763-1-linux-kernel-vulnerability}

-   1 CVEs addressed in Precise ESM
    -   [CVE-2018-5390](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5390)
-   SegmentSmack (see episode 0)


### [LSN-0043-1] Linux kernel vulnerability {#lsn-0043-1-linux-kernel-vulnerability}

-   Livepatch to fix multiple vulnerabilities fixed in previous kernel package updates


### [[USN-3764-1](https://usn.ubuntu.com/3764-1/)] Zsh vulnerabilities {#usn-3764-1-zsh-vulnerabilities}

-   3 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-1100](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1100)
    -   [CVE-2018-13259](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13259)
    -   [CVE-2018-0502](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-0502)
-   2 issues in shebang / hashbang handling
    -   shebang lines longer than 64 bytes truncated - could execute wrong interpreter
    -   mishandling of some particular formatted shebang lines which could execute
        interpreter from second line of file
-   Stack based buffer-overflow allowing code execution in the context of a different user


### [[USN-3747-2](https://usn.ubuntu.com/3747-2/)] OpenJDK 10 regression {#usn-3747-2-openjdk-10-regression}

-   4 CVEs addressed in Bionic
    -   [CVE-2018-2972](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-2972)
    -   [CVE-2018-2952](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-2952)
    -   [CVE-2018-2826](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-2826)
    -   [CVE-2018-2825](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-2825)


### [[USN-3761-2](https://usn.ubuntu.com/3761-2/), USN-3761-3] Firefox regressions {#usn-3761-2-usn-3761-3-firefox-regressions}

-   5 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-12383](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12383)
    -   [CVE-2018-12378](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12378)
    -   [CVE-2018-12377](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12377)
    -   [CVE-2018-12376](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12376)
    -   [CVE-2018-12375](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12375)
-   Previous update to latest firefox resulted in issues due to language packs
    missing (and hence missing spellcheck dictionaries) and use of wrong search
    provider


### [[USN-3765-1](https://usn.ubuntu.com/3765-1/), [USN-3765-2](https://usn.ubuntu.com/3765-2/)] curl vulnerability {#usn-3765-1-usn-3765-2-curl-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic and Precise ESM
    -   [CVE-2018-14618](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14618)
-   Similar to previous CVE-2017-8816 - integer overflow in calculations during
    NTLM authentication could allow heap buffer overflow and hence RCE
-   Uses the password length in this calculation (which is supplied by the attacker) so relatively easy to trigger


### [[USN-3722-5](https://usn.ubuntu.com/3722-5/)] ClamAV regression {#usn-3722-5-clamav-regression}

-   2 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-0361](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-0361)
    -   [CVE-2018-0360](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-0360)


### [[USN-3766-1](https://usn.ubuntu.com/3766-1/), USN-3766-2] PHP vulnerabilities {#usn-3766-1-usn-3766-2-php-vulnerabilities}

-   3 CVEs addressed in Trusty, Xenial, Bionic and Precise ESM
    -   [CVE-2018-14883](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14883)
    -   [CVE-2018-14851](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14851)
    -   [CVE-2015-9253](https://people.canonical.com/~ubuntu-security/cve/CVE-2015-9253)
-   Integer overflows in JPEG and EXIF handlers leading to out-of-bounds reads and hence crash - DoS
-   php-fpm (FastCGI process manager) - alternative FastCGI implementation for
    PHP - could cause DoS since didn't restart child processes correctly - then
    consume CPU and disk space (via logging) - only fixed in Bionic for now


### [[USN-3722-6](https://usn.ubuntu.com/3722-6/)] ClamAV vulnerabilities {#usn-3722-6-clamav-vulnerabilities}

-   2 CVEs addressed in Precise ESM
    -   [CVE-2018-0361](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-0361)
    -   [CVE-2018-0360](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-0360)


### [[USN-3767-1](https://usn.ubuntu.com/3767-1/), [USN-3767-2](https://usn.ubuntu.com/3767-2/)] GLib vulnerabilities {#usn-3767-1-usn-3767-2-glib-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic and Precise ESM
    -   [CVE-2018-16429](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16429)
    -   [CVE-2018-16428](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16428)
-   Issues with markup parsing


### [[USN-3768-1](https://usn.ubuntu.com/3768-1/)] Ghostscript vulnerabilities {#usn-3768-1-ghostscript-vulnerabilities}

-   16 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-16802](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16802)
    -   [CVE-2018-16585](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16585)
    -   [CVE-2018-16543](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16543)
    -   [CVE-2018-16542](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16542)
    -   [CVE-2018-16541](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16541)
    -   [CVE-2018-16540](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16540)
    -   [CVE-2018-16539](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16539)
    -   [CVE-2018-16513](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16513)
    -   [CVE-2018-16511](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16511)
    -   [CVE-2018-16510](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16510)
    -   [CVE-2018-16509](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16509)
    -   [CVE-2018-15911](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15911)
    -   [CVE-2018-15910](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15910)
    -   [CVE-2018-15909](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15909)
    -   [CVE-2018-15908](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15908)
    -   [CVE-2018-11645](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11645)
-   Ghostscript is used to process Postscript (and other formats) - PS is Turing
    Complete so in general is unsafe
-   Hence Ghostscript includes a sandbox (-dSAFER) to try and prevent issues with
    handling of untrusted files
-   Tavis Ormandy previously found a number of issues in the SAFER sandbox which
    allowed escape from it and execution of commands (ie. CVE-2016-7977 etc.)
-   Recently discovered more - including ability to execute arbitrary code.


### [[USN-3769-1](https://usn.ubuntu.com/3769-1/)] Bind vulnerability {#usn-3769-1-bind-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-5740](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5740)
-   Trigger assertion failure from specific input from remote server to cause crash and hence DoS
    -   In deny-answer-aliases feature which is not enabled by default so not so high impact


### [[USN-3770-1](https://usn.ubuntu.com/3770-1/), USN-3770-2] Little CMS vulnerabilities {#usn-3770-1-usn-3770-2-little-cms-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic and Precise ESM
    -   [CVE-2018-16435](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16435)
    -   [CVE-2016-10165](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-10165)
-   1 CVEs addressed in Precise ESM only
    -   [CVE-2013-4276](https://people.canonical.com/~ubuntu-security/cve/CVE-2013-4276)
-   Multiple issues in handling of ICC colour profiles (integer overflow leading
    to stack and heap buffer overflows on reads an writes)
-   Little CMS often used in webapps which do image processing - in this case
    allows remote DoS or possibly remote code execution


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 14.04 ESM Announced {#ubuntu-14-dot-04-esm-announced}

-   Extended Security Maintenance for Trusty 14.04 past the official EOL
-   Security updates for the kernel and the most widely used packages in main
-   <https://blog.ubuntu.com/2018/09/19/extended-security-maintenance-ubuntu-14-04-trusty-tahr>


### Hiring {#hiring}


#### Ubuntu Security Manager {#ubuntu-security-manager}

-   <https://boards.greenhouse.io/canonical/jobs/1278287>


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1158266>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardended on the Freenode IRC network](http://webchat.freenode.net?channels=%23ubuntu-hardened&uio=d4)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)