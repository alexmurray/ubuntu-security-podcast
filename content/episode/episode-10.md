+++
title = "Episode 10"
description = "This week we look at some details of the 17 unique CVEs addressed across the supported Ubuntu releases, have a brief look at some Canonical presentations from LSS-EU and more."
date = 2018-11-05
lastmod = 2019-05-20T20:34:34+09:30
draft = false
weight = 1023
episode_image = "img/episode/default.png"
explicit = "no"
podcast_file = "USP_E010.mp3"
podcast_duration = "09:25"
podcast_bytes = 9041423
permalink = "https://ubuntusecuritypodcast.org/episode-10/"
+++

## Overview {#overview}

This week we look at some details of the 17 unique CVEs addressed across the supported Ubuntu releases, have a brief look at some Canonical presentations from LSS-EU and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

17 unique CVEs addressed


### [[USN-3799-2](https://usn.ubuntu.com/3799-2/)] MySQL vulnerabilities {#usn-3799-2-mysql-vulnerabilities}

-   3 CVEs addressed in Precise ESM
    -   [CVE-2018-3282](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3282)
    -   [CVE-2018-3174](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3174)
    -   [CVE-2018-3133](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3133)
-   Ubuntu 12.04 Precise ESM update for 3 CVEs fixed in usual supported releases (covered in Episode 9)


### [[USN-3803-1](https://usn.ubuntu.com/3803-1/)] Ghostscript vulnerabilities {#usn-3803-1-ghostscript-vulnerabilities}

-   3 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-18284](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18284)
    -   [CVE-2018-18073](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18073)
    -   [CVE-2018-17961](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17961)
-   More ghostscript vulnerabilities! (others recent ones covered in Episodes 5 and 7)
-   2 brand new sandbox (-dSAFER) bypasses by Tavis Ormandy
-   Third one is due to an incomplete fix for [CVE-2018-17183](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17183)


### [[USN-3804-1](https://usn.ubuntu.com/3804-1/)] OpenJDK vulnerabilities {#usn-3804-1-openjdk-vulnerabilities}

-   8 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2018-3214](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3214)
    -   [CVE-2018-3183](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3183)
    -   [CVE-2018-3180](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3180)
    -   [CVE-2018-3169](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3169)
    -   [CVE-2018-3150](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3150)
    -   [CVE-2018-3149](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3149)
    -   [CVE-2018-3139](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3139)
    -   [CVE-2018-3136](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3136)
-   New OpenJDK release covering multiple vulnerabilities including:
    -   Insufficient checking of signatures in manifest elements could allow untrusted Java application to escape sandbox
    -   Insufficient checking of all JAR attributes could allow untrusted Java application to escape sandbox
    -   Failure to clear HTTP header elements could result in exposure of sensitive info when follow redirect to another host
    -   Possible arbitrary code execution due to failure to enforce system security properties


### [[USN-3805-1](https://usn.ubuntu.com/3805-1/), USN-3805-2] curl vulnerabilities {#usn-3805-1-usn-3805-2-curl-vulnerabilities}

-   3 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-16842](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16842)
    -   [CVE-2018-16840](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16840)
    -   [CVE-2018-16839](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16839)
-   1 CVE addressed in Precise ESM
    -   [CVE-2018-16839](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16839)
-   Buffer overflow in SASL authentication (very similar to [CVE-2018-14618](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14618) from Episode 5)
-   UAF when closing handle (DoS / crash)
-   Out-of-bounds read when using curl to print show error messages via command-line
    -   This is fixed for Precise ESM too


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Linux Security Summit Europe (LSS-EU) {#linux-security-summit-europe--lss-eu}

-   2 presentations by Canonical engineers
-   <https://events.linuxfoundation.org/events/linux-security-summit-europe-2018/>


#### Overview and Recent Developments: Namespaces and Capabilities {#overview-and-recent-developments-namespaces-and-capabilities}

-   Christian Brauner (Kernel engineer focussing on lxd at Canonical)
-   Namespaces and Capabilities are building blocks for containers
-   Summarises recent enhancements to various namespaces etc
-   Future highlights: seccomp trap to userspace, LSM stacking, CAP\_SYS\_ADMIN split?
-   Slides: <https://events.linuxfoundation.org/wp-content/uploads/2017/12/2018-LSS-Europe-Edinburgh-Namespaces-and-Capabilities%5FChristian-Brauner.pdf>
-   Video: <https://www.youtube.com/watch?v=-PZNF8XDNn8&list=PLbzoR-pLrL6oa4x78bHssxmGAw%5Fns1Tm2&index=8>


#### Overview and Recent Developments: AppArmor {#overview-and-recent-developments-apparmor}

-   John Johansen (Ubuntu Security team, AppArmor (kernel) maintainer)
-   Summarises some of the history, use of and the latest developments in AppArmor
-   Future highlights: Allow user / apps to load policy, delegation, pam\_apparmor
-   Slides: <https://events.linuxfoundation.org/wp-content/uploads/2017/12/lss-eu-apparmor-overview-2018.pdf>
-   Video: <https://www.youtube.com/watch?v=3MkU%5FZ-fClE&list=PLbzoR-pLrL6oa4x78bHssxmGAw%5Fns1Tm2&index=15>


### Blog posts {#blog-posts}


#### A guide to snap permissions and interfaces {#a-guide-to-snap-permissions-and-interfaces}

-   <https://blog.ubuntu.com/2018/11/01/a-guide-to-snap-permissions-and-interfaces>


### Hiring {#hiring}


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1158266>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardended on the Freenode IRC network](http://webchat.freenode.net?channels=%23ubuntu-hardened&uio=d4)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)