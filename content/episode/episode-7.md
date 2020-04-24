+++
title = "Episode 7"
description = "This week we look at some details of the 78 unique CVEs addressed across the supported Ubuntu releases including more GhostScript, ImageMagick, WebKitGTK, Linux kernel and more."
date = 2018-10-16
lastmod = 2020-04-24T10:51:02+09:30
draft = false
weight = 1066
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E007.mp3"
podcast_duration = "11:15"
podcast_bytes = 10803956
permalink = "https://ubuntusecuritypodcast.org/episode-7/"
+++

## Overview {#overview}

This week we look at some details of the 78 unique CVEs addressed across the supported Ubuntu releases including more GhostScript, ImageMagick, WebKitGTK, Linux kernel and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

78 unique CVEs addressed


### [[USN-3773-1](https://usn.ubuntu.com/3773-1/)] Ghostscript vulnerabilities {#usn-3773-1-ghostscript-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-17183](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17183)
    -   [CVE-2018-16510](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16510)
-   Similar to [[USN-3768-1](https://usn.ubuntu.com/3768-1/)] from Episode 5


### [[USN-3769-2](https://usn.ubuntu.com/3769-2/)] Bind vulnerability {#usn-3769-2-bind-vulnerability}

-   1 CVEs addressed in Precise ESM
    -   [CVE-2018-5740](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5740)
-   Extended Security Maintenance version of [[USN-3769-1](https://usn.ubuntu.com/3769-1/)]


### [[USN-3774-1](https://usn.ubuntu.com/3774-1/)] strongSwan vulnerability {#usn-3774-1-strongswan-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-17540](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17540)
-   [[USN-3771-1](https://usn.ubuntu.com/3771-1/)] incorporated fixes for multiple CVEs - but these fixes themselves introduced this new vulnerability
-   Heap buffer overflow found by Google's OSS-Fuzz leading to DoS for gmp plugin


### [[USN-3775-1](https://usn.ubuntu.com/3775-1/), [USN-3775-2](https://usn.ubuntu.com/3775-2/), [USN-3776-1](https://usn.ubuntu.com/3776-1/), [USN-3776-2](https://usn.ubuntu.com/3776-2/), USN-3777-1, [USN-3777-2](https://usn.ubuntu.com/3777-2/)] Linux kernel vulnerabilities {#usn-3775-1-usn-3775-2-usn-3776-1-usn-3776-2-usn-3777-1-usn-3777-2-linux-kernel-vulnerabilities}

-   11 CVEs addressed across Precise ESM, Trusty, Xenial and Bionic including HWE kernels
    -   [CVE-2018-6555](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-6555)
    -   [CVE-2018-6554](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-6554)
    -   [CVE-2018-14633](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14633)
    -   [CVE-2018-14634](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14634)
    -   [CVE-2018-15572](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15572)
    -   [CVE-2018-15594](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15594)
    -   [CVE-2018-16276](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16276)
    -   [CVE-2018-10902](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10902)
    -   [CVE-2018-10853](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10853)
    -   [CVE-2017-18216](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-18216)
    -   [CVE-2018-17182](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17182)
-   Not all CVEs affect all releases
-   Includes:
    -   UAF and memory leak -> DoS in IRDA
    -   Stack buffer overwrite in iSCSI - low chance of privilege escalation
    -   Integer overflow leading to possible privilege escalation but only on machines with >32GB RAM
    -   Insufficiencies discovered in various Spectre variant mitigations previously deployed
    -   Incorrect bounds checking in yurex USB driver from userspace -> crash / privilege escalation for local user
    -   Race condition in midi driver - double free -> privilege escalation
    -   KVM hypervisor instruction emulation fail to check privileges - privilege escalation inside guest
    -   OCFS2 file-system driver NULL pointer dereference -> BUG (mutex logic bug)
    -   Memory management sequence number overflow leading to UAF -> possible privilege escalation - Jann Horn (GPZ)


### [[USN-3780-1](https://usn.ubuntu.com/3780-1/)] HAProxy vulnerability {#usn-3780-1-haproxy-vulnerability}

-   1 CVEs addressed in Bionic
    -   [CVE-2018-14645](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14645)
-   Out of bounds read leading to remote crash -> DoS


### [[USN-3781-1](https://usn.ubuntu.com/3781-1/)] WebKitGTK+ vulnerabilities {#usn-3781-1-webkitgtk-plus-vulnerabilities}

-   24 CVEs addressed in Bionic
    -   [CVE-2018-4361](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4361)
    -   [CVE-2018-4359](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4359)
    -   [CVE-2018-4358](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4358)
    -   [CVE-2018-4328](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4328)
    -   [CVE-2018-4323](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4323)
    -   [CVE-2018-4319](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4319)
    -   [CVE-2018-4318](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4318)
    -   [CVE-2018-4317](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4317)
    -   [CVE-2018-4316](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4316)
    -   [CVE-2018-4315](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4315)
    -   [CVE-2018-4314](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4314)
    -   [CVE-2018-4312](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4312)
    -   [CVE-2018-4311](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4311)
    -   [CVE-2018-4309](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4309)
    -   [CVE-2018-4306](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4306)
    -   [CVE-2018-4299](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4299)
    -   [CVE-2018-4213](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4213)
    -   [CVE-2018-4212](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4212)
    -   [CVE-2018-4210](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4210)
    -   [CVE-2018-4209](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4209)
    -   [CVE-2018-4208](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4208)
    -   [CVE-2018-4207](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4207)
    -   [CVE-2018-4197](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4197)
    -   [CVE-2018-4191](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4191)
-   Used by many GNOME applications to render web content (Epiphany, Evolution, Boxes, GThumb, Buidler, Empathy, etc)
-   Many issues fixed in this release including, XSS, DoS, RCE etc


### [[USN-3782-1](https://usn.ubuntu.com/3782-1/)] Liblouis vulnerabilities {#usn-3782-1-liblouis-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-17294](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17294)
    -   [CVE-2018-12085](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12085)


### [[USN-3778-1](https://usn.ubuntu.com/3778-1/)] Firefox vulnerabilities {#usn-3778-1-firefox-vulnerabilities}

-   3 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-12387](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12387)
    -   [CVE-2018-12386](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12386)
    -   [CVE-2018-12385](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12385)
-   Firefox 62 release - includes fixes for RCE, local cache poisoning and information disclosures


### [[USN-3783-1](https://usn.ubuntu.com/3783-1/)] Apache HTTP Server vulnerabilities {#usn-3783-1-apache-http-server-vulnerabilities}

-   3 CVEs addressed in Bionic
    -   [CVE-2018-11763](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11763)
    -   [CVE-2018-1333](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1333)
    -   [CVE-2018-1302](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1302)
-   DoS (crash) via incorrect stream destruction and DoS (resources) from incorrect frame handling


### [[USN-3785-1](https://usn.ubuntu.com/3785-1/)] ImageMagick vulnerabilities {#usn-3785-1-imagemagick-vulnerabilities}

-   14 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2017-13144](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-13144)
    -   [CVE-2018-16749](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16749)
    -   [CVE-2018-16645](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16645)
    -   [CVE-2018-16644](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16644)
    -   [CVE-2018-16643](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16643)
    -   [CVE-2018-16642](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16642)
    -   [CVE-2018-16323](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16323)
    -   [CVE-2018-14551](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14551)
    -   [CVE-2018-16750](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16750)
    -   [CVE-2018-16640](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16640)
    -   [CVE-2018-14437](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14437)
    -   [CVE-2018-14436](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14436)
    -   [CVE-2018-14435](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14435)
    -   [CVE-2018-14434](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14434)
-   Disables support for using PS and PDF from Ghostscript in ImageMagick due to
    large number of GS vulns (see Episode 5)
-   Also multiple fixes for ImageMagick itself, including memory leaks (DoS), information disclosure, RCE etc


### [[USN-3784-1](https://usn.ubuntu.com/3784-1/)] AppArmor update {#usn-3784-1-apparmor-update}

-   Hardening of various AppArmor profiles (mentioned in Episode 5)


### [LSN-0044-1] Linux kernel vulnerability {#lsn-0044-1-linux-kernel-vulnerability}

-   Livepatch incorporating L1TF, Spectrev2 and other fixes as well


### [[USN-3786-1](https://usn.ubuntu.com/3786-1/)] libxkbcommon vulnerabilities {#usn-3786-1-libxkbcommon-vulnerabilities}

-   11 CVEs addressed in Trusty, Xenial
    -   [CVE-2018-15864](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15864)
    -   [CVE-2018-15863](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15863)
    -   [CVE-2018-15862](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15862)
    -   [CVE-2018-15861](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15861)
    -   [CVE-2018-15859](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15859)
    -   [CVE-2018-15858](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15858)
    -   [CVE-2018-15857](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15857)
    -   [CVE-2018-15856](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15856)
    -   [CVE-2018-15855](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15855)
    -   [CVE-2018-15854](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15854)
    -   [CVE-2018-15853](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15853)
-   Loads keyboard descriptions from disk - multiple vulnerabilities in file
    format handling leading to DoS etc


### [[USN-3787-1](https://usn.ubuntu.com/3787-1/)] Tomcat vulnerability {#usn-3787-1-tomcat-vulnerability}

-   1 CVEs addressed in Trusty, Xenial
    -   [CVE-2018-11784](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11784)
-   Redirect handling allowed attacker to redirect to any URI of their choice
-   Can be avoided if had manually enabled both mapperDirectoryRedirectEnabled and mapperContextRootRedirectEnabled


### [[USN-3789-1](https://usn.ubuntu.com/3789-1/)] ClamAV vulnerability {#usn-3789-1-clamav-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-15378](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15378)
-   Crash in handling of unpacked MEW executable files


### [[USN-3788-1](https://usn.ubuntu.com/3788-1/)] Tex Live vulnerabilities {#usn-3788-1-tex-live-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-17407](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17407)
    -   [CVE-2015-5700](https://people.canonical.com/~ubuntu-security/cve/CVE-2015-5700)
-   File overwrite via insecure symlink handling
-   Code execution via buffer overflow in Type1 font handler


### [[USN-3791-1](https://usn.ubuntu.com/3791-1/)] Git vulnerability {#usn-3791-1-git-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-17456](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17456)
-   RCE when cloning a malicious repository - due to insufficient validation of git submodule URLs and paths.


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Hiring {#hiring}


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1158266>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)