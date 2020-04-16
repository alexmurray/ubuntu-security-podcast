+++
title = "Episode 44"
description = "This week Joe and Alex discuss a recently disclosed backdoor in Webmin, plus we cover security updates from the past week, including for Nova, KDE, LibreOffice, Docker, CUPS and more."
date = 2019-08-26T20:35:00+09:30
lastmod = 2020-04-16T12:59:14+09:30
draft = false
weight = 1028
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E044.mp3"
podcast_duration = "22:27"
podcast_bytes = 21558870
permalink = "https://ubuntusecuritypodcast.org/episode-44/"
guid = "b063c8dc343daa4078e95f9f481e32335d9acfce6b4aa70e39b53c044e987477a3e4e9e7a7a70b704240207adb256105eab6f6cd98339f76d818885c695cf7e0"
+++

## Overview {#overview}

This week Joe and Alex discuss a recently disclosed backdoor in Webmin, plus we cover security updates from the past week, including for Nova, KDE, LibreOffice, Docker, CUPS and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

21 unique CVEs addressed


### [[USN-4100-1](https://usn.ubuntu.com/4100-1/)] KConfig and KDE libraries vulnerabilities [00:46] {#usn-4100-1-kconfig-and-kde-libraries-vulnerabilities-00-46}

-   2 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2016-6232](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-6232)
    -   [CVE-2019-14744](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14744)
-   Directory traversal in KArchive via ../
-   RCE via malicious .desktop file - contianed extra functionality outside
    of XDG spec, where could contain shell commands that would get expanded -
    so if you view a .desktop file in Dolphin, and the Icon property
    contained shell commands, this would get evaluated - so wouldn't need to
    interact at all - upstream now removed this 'feature'


### [[USN-4102-1](https://usn.ubuntu.com/4102-1/)] LibreOffice vulnerabilities [02:45] {#usn-4102-1-libreoffice-vulnerabilities-02-45}

-   3 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-9852](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9852)
    -   [CVE-2019-9851](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9851)
    -   [CVE-2019-9850](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9850)
-   Docs can have macros & scripts on action - document-open, mouse-over
    -   Should only be for scripts shipped in libreoffice itself
    -   Path bypass in CVE-2018-16858 - so added more protections
    -   Could be bypassed again with URL encoding - so fix again
-   Second LibreLogo issue ([Episode 40](https://ubuntusecuritypodcast.org/episode-40/)) - could bypass previous protections
    again - was fixed upstream but found to still be inadequate - hence 2
    CVEs for this (incomplete fix the first time around)


### [[USN-4078-2](https://usn.ubuntu.com/4078-2/)] OpenLDAP vulnerabilities [04:26] {#usn-4078-2-openldap-vulnerabilities-04-26}

-   2 CVEs addressed in Precise ESM, Trusty ESM
    -   [CVE-2019-13565](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13565)
    -   [CVE-2019-13057](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13057)
-   [Episode 41](https://ubuntusecuritypodcast.org/episode-41/) for regular releases - now ESM as well


### [[USN-4103-1](https://usn.ubuntu.com/4103-1/), [USN-4103-2](https://usn.ubuntu.com/4103-2/)] docker-credential-helpers and Docker vulnerabilities [04:52] {#usn-4103-1-usn-4103-2-docker-credential-helpers-and-docker-vulnerabilities-04-52}

-   1 CVEs addressed in Disco (docker-credential-helpers)
-   1 CVEs addressed in Xenial, Bionic, Disco (docker)
    -   [CVE-2019-1020014](//people.canonical.com/~ubuntu-security/cve/CVE-2019-1020014)
-   golang-docker-credentials package had a double-free which could be
    triggered via a local user -> crash, DoS
-   Bundled with docker.io package so update both


### [[USN-4104-1](https://usn.ubuntu.com/4104-1/)] Nova vulnerability [05:28] {#usn-4104-1-nova-vulnerability-05-28}

-   1 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-14433](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14433)
-   API requests which end in fault conditions from authenticated users could
    result in keys or other details being leaked / returned in responses to
    further API requests (not just any error / fault but say if tried to
    hard-reboot and this fails) - fixed to sanitize any possible details out
    of faults


### [[USN-4105-1](https://usn.ubuntu.com/4105-1/)] CUPS vulnerabilities [06:30] {#usn-4105-1-cups-vulnerabilities-06-30}

-   2 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-8675](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8675)
    -   [CVE-2019-8696](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8696)
-   SNMP backend - parses ASN.1 encoded data - can be used to automatically
    get status from printers etc - would not do bounds checking on actual
    encoded ASN.1 data vs the description of it - so could easily get a stack
    buffer overflow - fixed to add bounds checking
-   Also includes some other upstream fixes for potential security issues
    (without CVEs), including a CPU based DoS if a cups client unexpectedly
    disconnected


### [[USN-4106-1](https://usn.ubuntu.com/4106-1/)] NLTK vulnerability [07:37] {#usn-4106-1-nltk-vulnerability-07-37}

-   1 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-14751](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14751)
-   Python Natural Language Toolkit - downloads datasets as ZIP compressed
-   Mike Salvatore - ZipSlip
-   <https://salvatoresecurity.com/zip-slip-in-nltk-cve-2019-14751/>
-   Fixed to use inbuilt python zipfile handling to unzip rather than custom
    implementation


### [[USN-4107-1](https://usn.ubuntu.com/4107-1/)] GIFLIB vulnerabilities [08:35] {#usn-4107-1-giflib-vulnerabilities-08-35}

-   3 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-15133](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15133)
    -   [CVE-2018-11490](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11490)
    -   [CVE-2016-3977](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-3977)
-   Common library used for handling GIF images (openjdk, ffmpeg, gstreamer, kde)
-   Divide-by-zero
-   2 different heap based buffer overflows - one was originally fixed in
    Debian but the patch for it got dropped in a later release - so we have
    repatched that


### [[USN-4108-1](https://usn.ubuntu.com/4108-1/)] Zstandard vulnerability [09:20] {#usn-4108-1-zstandard-vulnerability-09-20}

-   1 CVEs addressed in Bionic
    -   [CVE-2019-11922](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11922)
-   Common library (maintained by Facebook) for handling the zstd compression algorithm
-   Race condition when using single-pass compression, might allow attacker
    to get OOB write IF the caller had provided a smaller output buffer than
    the recommended size
-   So likely won't affect all packages which use zstd (there are many) -
    should always follow best practice


### [[USN-4109-1](https://usn.ubuntu.com/4109-1/)] OpenJPEG vulnerabilities [10:11] {#usn-4109-1-openjpeg-vulnerabilities-10-11}

-   5 CVEs addressed in Bionic
    -   [CVE-2018-6616](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-6616)
    -   [CVE-2018-5785](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5785)
    -   [CVE-2018-18088](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18088)
    -   [CVE-2018-14423](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14423)
    -   [CVE-2017-17480](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-17480)
-   4 different DoS issues:
    -   2 in BMP handling:
        -   CPU based DoS due to inefficient algorithm implementation
        -   Integer overflow -> OOB read -> DoS
    -   NULL pointer dereference when converting to PNM
    -   Divide by zero
-   Stack based buffer overflow when handling JP3D encoded data - OOB write -
    DoS / RCE


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe and Alex discuss webmin backdoor [11:21] {#joe-and-alex-discuss-webmin-backdoor-11-21}

-   <http://www.webmin.com/exploit.html>


## Get in contact [21:45] {#get-in-contact-21-45}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)