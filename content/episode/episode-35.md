+++
title = "Episode 35"
description = "We look at vulnerabilities and updates for Exim, the Linux kernel, Berkeley DB, Qt and more, plus Joe and Alex discuss some recent malware campaigns including Hiddenwasp, and we cover some open positions too."
date = 2019-06-11
lastmod = 2019-06-28T12:05:34+01:00
draft = false
weight = 1003
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E035.mp3"
podcast_duration = "MM:SS"
podcast_bytes = "NUM_BYTES"
permalink = "https://ubuntusecuritypodcast.org/episode-35/"
+++

## Overview {#overview}

We look at vulnerabilities and updates for Exim, the Linux kernel, Berkeley DB, Qt and more, plus Joe and Alex discuss some recent malware campaigns including Hiddenwasp, and we cover some open positions too.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

34 unique CVEs addressed


### [[USN-4002-1](https://usn.ubuntu.com/4002-1/)] Doxygen vulnerability {#usn-4002-1-doxygen-vulnerability}

-   1 CVEs addressed in Xenial
    -   [CVE-2016-10245](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-10245)
-   Generates HTML code documentation from code comments
-   Includes a field to search across the documentation
-   Doesn't treat this as untrusted input and blindly displays the input in resulting pages
    -   Allows possible XSS or iframe injection
-   Fix is simple - whitelist allowed characters to avoid injection etc


### [[USN-4003-1](https://usn.ubuntu.com/4003-1/)] Qt vulnerabilities {#usn-4003-1-qt-vulnerabilities}

-   3 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2018-19873](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19873)
    -   [CVE-2018-19870](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19870)
    -   [CVE-2018-15518](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15518)
-   3 likely DoS issues:
    -   Buffer overflow when handling invalid BMP images - didn't check for valid
        / sensible width or height parameters
    -   NULL pointer dereference on malformed GIF images
    -   Double free when parsing a specially crafted (illegal format) XML
        document


### [[USN-4004-1](https://usn.ubuntu.com/4004-1/), [USN-4004-2](https://usn.ubuntu.com/4004-2/)] Berkeley DB vulnerability {#usn-4004-1-usn-4004-2-berkeley-db-vulnerability}

-   1 CVEs addressed in Trusty ESM, Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-8457](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8457)
-   Contains an embedded copy of sqlite which was vulnerable to a heap-based
    out-of-bounds read when handling invalid rtree tables


### [[USN-4005-1](https://usn.ubuntu.com/4005-1/)] Linux kernel vulnerabilities {#usn-4005-1-linux-kernel-vulnerabilities}

-   2 CVEs addressed in Disco
    -   [CVE-2019-11815](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11815)
    -   [CVE-2019-11810](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11810)
-   Reliable Datagram Sockets (RDS) module was vulnerable to a race-condition
    during network namespace cleanup that could lead to a UAF.
    -   RDS is blacklisted by default in Ubuntu AND this is only able to be
        exploited by a local attacker
-   NULL pointer dereference in LSI Logic MegaRAID driver


### [[USN-4006-1](https://usn.ubuntu.com/4006-1/), [USN-4006-2](https://usn.ubuntu.com/4006-2/)] Linux kernel vulnerability {#usn-4006-1-usn-4006-2-linux-kernel-vulnerability}

-   1 CVEs addressed in Cosmic & Bionic HWE
    -   [CVE-2019-11191](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11191)
-   Old a.out binary format for 32-bit platforms - so only affects i386
    kernel users, and only affects setuid a.out binaries (none in archive)
-   Kernel would not setup permissions early enough and so could allow ASLR
    to be bypassed, weakening system protections to then more easily exploit
    some other existing vulnerablity in the given setuid a.out binary
-   Have also disabled a.out support in general going forward as this is a
    relic of the past


### [[USN-4007-1](https://usn.ubuntu.com/4007-1/), [USN-4007-2](https://usn.ubuntu.com/4007-2/)] Linux kernel vulnerability {#usn-4007-1-usn-4007-2-linux-kernel-vulnerability}

-   1 CVEs addressed in Bionic & Xenial HWE
    -   [CVE-2019-11191](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11191)
-   Same a.out issue


### [[USN-4008-1](https://usn.ubuntu.com/4008-1/), [USN-4008-3](https://usn.ubuntu.com/4008-3/)] Linux kernel vulnerabilities {#usn-4008-1-usn-4008-3-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Xenial, Trusty ESM (HWE)
    -   [CVE-2019-11191](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11191)
    -   [CVE-2019-11815](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11815)
    -   [CVE-2019-11810](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11810)
    -   [CVE-2019-11190](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11190)
-   a.out issue, plus RDS and MegaRAID NULL ptr dereference
-   Similar to a.out issue, in general ASLR could be bypassed on setuid
    binaries due to a similar race-condition
-   This fix also requires some AppArmor profile changes


### [[USN-4008-2](https://usn.ubuntu.com/4008-2/)] AppArmor update {#usn-4008-2-apparmor-update}

-   4 CVEs addressed in Xenial
    -   [CVE-2019-11191](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11191)
    -   [CVE-2019-11815](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11815)
    -   [CVE-2019-11810](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11810)
    -   [CVE-2019-11190](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11190)
-   Updated AppArmor profiles to handle new kernel behavoiur as a result of
    the fix for CVE-2019-11190 (ASLR bypass on setuid executables).
-   When executing a binary, will then appear to require mmap privileges of
    the resulting binary, so ensure all current profiles are updated to add
    this permission on the appropriate rules


### [[USN-4009-1](https://usn.ubuntu.com/4009-1/), [USN-4009-2](https://usn.ubuntu.com/4009-2/)] PHP vulnerabilities {#usn-4009-1-usn-4009-2-php-vulnerabilities}

-   2 CVEs addressed in Precise ESM, Trusty ESM
-   3 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11040](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11040)
    -   [CVE-2019-11039](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11039)
    -   [CVE-2019-11036](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11036)
-   Heap buffer overflow in handling crafted JPEG files
-   Integer overflow, leading to possible OOB read when handling crafted mime
    encoded data
-   (Xenial, Bionic, Cosmic and Disco only) - OOB read when handling crafted
    EXIF data -> crash, DoS or possible information disclosure form other
    memory


### [[USN-4010-1](https://usn.ubuntu.com/4010-1/)] Exim vulnerability {#usn-4010-1-exim-vulnerability}

-   1 CVEs addressed in Bionic, Cosmic
    -   [CVE-2019-10149](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10149)
-   Possible remote exploit of popular MTA
-   Embargo broke early - was expected to be public 11th June - as a
    consequence, we released our update once the details were publicly known
    -   It was possible to include shell directives in the recipients email
        address which would be evaluated by the exim process (and hence as
        root) - but would require the attacker to keep a connection open to the
        server for 7 days by transmitting 1 byte every few minutes.


### [[USN-3957-3](https://usn.ubuntu.com/3957-3/)] MariaDB vulnerabilities {#usn-3957-3-mariadb-vulnerabilities}

-   2 CVEs addressed in Bionic
    -   [CVE-2019-2627](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2627)
    -   [CVE-2019-2614](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2614)
-   Corresponding fixes for flaws originally reported in MySQL - fixed in
    MariaDB (community maintained fork of MySQL) - [Episode 30](https://ubuntusecuritypodcast.org/episode-30/)


### [[USN-4011-1](https://usn.ubuntu.com/4011-1/), [USN-4011-2](https://usn.ubuntu.com/4011-2/)] Jinja2 vulnerabilities {#usn-4011-1-usn-4011-2-jinja2-vulnerabilities}

-   2 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-10906](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10906)
    -   [CVE-2016-10745](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-10745)
-   Sandbox is used when rendering user-provided templates (ie untrusted)
-   Possible to escape the sandbox by reading arbitrary python objects via
    Python's internal string format method (by referencing the <span class="underline"><span class="underline">globals</span></span>
    array)
-   Was originally fixed in 2016 for the str.format method - but at the time
    missed the similar str.format\_map method - so both fixed in this update


### [[USN-3991-2](https://usn.ubuntu.com/3991-2/)] Firefox regression {#usn-3991-2-firefox-regression}

-   17 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-9816](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9816)
    -   [CVE-2019-11698](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11698)
    -   [CVE-2019-11697](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11697)
    -   [CVE-2019-9821](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9821)
    -   [CVE-2019-9820](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9820)
    -   [CVE-2019-9819](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9819)
    -   [CVE-2019-9817](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9817)
    -   [CVE-2019-9814](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9814)
    -   [CVE-2019-9800](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9800)
    -   [CVE-2019-7317](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7317)
    -   [CVE-2019-11701](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11701)
    -   [CVE-2019-11699](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11699)
    -   [CVE-2019-11696](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11696)
    -   [CVE-2019-11695](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11695)
    -   [CVE-2019-11693](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11693)
    -   [CVE-2019-11692](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11692)
    -   [CVE-2019-11691](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11691)
-   Previous FF 67.0 had broken code for checking versions on upgrades, and
    could potentially think you had downgraded the browser when it was in
    fact upgraded and therefore think the old profile data was invalid


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe talk about recent malware campaigns {#alex-and-joe-talk-about-recent-malware-campaigns}

-   <https://www.intezer.com/blog-hiddenwasp-malware-targeting-linux-systems/>
-   <https://thehackernews.com/2019/05/hacking-mysql-phpmyadmin.html>


### Hiring {#hiring}


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


#### Security Certifications Engineer {#security-certifications-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1660658>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net?channels=%23ubuntu-hardened&uio=d4)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)