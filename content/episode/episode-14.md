+++
title = "Episode 14"
description = "This week we look at some details of the 32 unique CVEs addressed across the supported Ubuntu releases and talk open source software supply chain integrity and how this relates to Ubuntu compared to the recent npm event-stream compromise."
date = 2018-12-03
lastmod = 2019-08-26T20:39:02+09:30
draft = false
weight = 1031
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E014.mp3"
podcast_duration = "21:53"
podcast_bytes = 21013028
permalink = "https://ubuntusecuritypodcast.org/episode-14/"
+++

## Overview {#overview}

This week we look at some details of the 32 unique CVEs addressed across the supported Ubuntu releases and talk open source software supply chain integrity and how this relates to Ubuntu compared to the recent npm event-stream compromise.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

32 unique CVEs addressed


### [[USN-3826-1](https://usn.ubuntu.com/3826-1/)] QEMU vulnerabilities {#usn-3826-1-qemu-vulnerabilities}

-   10 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-19364](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19364)
    -   [CVE-2018-18954](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18954)
    -   [CVE-2018-18849](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18849)
    -   [CVE-2018-17963](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17963)
    -   [CVE-2018-17962](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17962)
    -   [CVE-2018-17958](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17958)
    -   [CVE-2018-16847](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16847)
    -   [CVE-2018-12617](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12617)
    -   [CVE-2018-11806](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11806)
    -   [CVE-2018-10839](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10839)
-   7 medium, 3 low priority
    -   Integer overflow in virtual network interface driver, able to be triggered
        by user process in guest -> crash -> DoS
    -   Heap based buffer overflow in SLiRP, user-based networking stack (default)
        during reassembly of fragmented datagrams
    -   Integer overflow when reading large blocks from files - nice PoC on github
    -   NVMe emulator missing checks on read / write parameters - OOB heap buffer
        r/w - guest user/process could trigger -> DoS (crash) or possible arbitrary
        code execution on host as qemu process
    -   Integer type mismatch in rtl8139 and pcnet drivers - (from size\_t to int) - unsigned
        to signed - INT\_MAX -> -ve -> OOB read - crash / DoS
        -   Copy-pasta?


### [[USN-3827-1](https://usn.ubuntu.com/3827-1/), USN-3827-2] Samba vulnerabilities {#usn-3827-1-usn-3827-2-samba-vulnerabilities}

-   4 CVEs addressed in Precise ESM, Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-16851](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16851)
    -   [CVE-2018-1685](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1685)
    -   [CVE-2018-16841](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16841)
    -   [CVE-2018-14629](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14629)
-   CNAME records could point to themselves - infinite recursion in internal AD DNS server
    -   Users can add CNAME records -> user triggerable
    -   Fix ensures CNAMEs can't refer to themselves
-   If using smartcard authentication for AD, double free could occur due to mismatch in certificate vs authentication request parameters
    -   talloc - robust against heap corruption - assert() fail - exit - DoS
-   Null pointer dereference when reading more than 256MB of LDAP entries - DoS crash


### [[USN-3828-1](https://usn.ubuntu.com/3828-1/)] WebKitGTK+ vulnerabilities {#usn-3828-1-webkitgtk-plus-vulnerabilities}

-   3 CVEs addressed in Bionic, Cosmic
    -   [CVE-2018-4386](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4386)
    -   [CVE-2018-4372](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4372)
    -   [CVE-2018-4345](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4345)
-   Minimal details provided by upstream webkit regarding these advisories:
    -   XSS due to improper URL validation
    -   Multiple memory corruption issues which could lead to arbitrary code execution


### [[USN-3816-3](https://usn.ubuntu.com/3816-3/)] systemd regression {#usn-3816-3-systemd-regression}

-   3 CVEs addressed in Xenial
    -   [CVE-2018-15687](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15687)
    -   [CVE-2018-15686](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15686)
    -   [CVE-2018-6954](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-6954)
-   Episode 12 & 13 - backport of large upstream patches to better handle symlink resolution in systemd-tmpfiles
-   New code uses openat with O\_PATH flag internally
-   O\_PATH was only introduced in Linux kernel 2.6.39
-   Fails on pre-2.6.39 kernels - eg. OpenVZ
-   So if running an Ubuntu Xenial kernel on OpenVZ systemd would fail to work correctly
-   OpenVZ have released updated kernel as well to support O\_PATH


### [[USN-3829-1](https://usn.ubuntu.com/3829-1/)] Git vulnerabilities {#usn-3829-1-git-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-19486](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19486)
    -   [CVE-2017-15298](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-15298)
-   Previously would execute commands from CWD, rather than from PATH
    -   Could allow arbitrary code execution if using a malicious repository
-   DoS due to large memory usage (Git Bomb) with specially crafted repository
    -   Small repo with only 12 unique objects inside but that which are duplicated across the repo tree
    -   Git would usually crash due to running out of memory BUT if did manage to
        survive and write to disk could consume a lot of disk space too
    -   Only Trusty and Xenial affected (fixed already in Bionic etc)


### [[USN-3830-1](https://usn.ubuntu.com/3830-1/)] OpenJDK regression {#usn-3830-1-openjdk-regression}

-   Recent OpenJDK update (Episode 10) add stricter checking for JAR files
    -   As a result, failed to find JAR files during build resulting in failed project builds
-   New option should have been disabled by default to give time for other packages to be updated etc to deal wth new behaviour
    -   Is now :)


### [[USN-3831-1](https://usn.ubuntu.com/3831-1/)] Ghostscript vulnerabilities {#usn-3831-1-ghostscript-vulnerabilities}

-   4 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-19477](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19477)
    -   [CVE-2018-19476](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19476)
    -   [CVE-2018-19475](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19475)
    -   [CVE-2018-19409](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19409)
-   Even more gs - (Episode 10, 7, 5)


### [[USN-3795-3](https://usn.ubuntu.com/3795-3/)] libssh regression {#usn-3795-3-libssh-regression}

-   [CVE-2018-10933](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10933) - covered in Episode 8
-   Upstream fix introduced a regression which broke server-side keyboard authentication
-   Server-side, not client-side
    -   Not a common scenario used so unlikely to affect many users as need to use
        multiple interactive keyboard-based prompts to trigger (say password and
        token)
    -   Server would be stuck
-   Backport upstream fix


### [[USN-3832-1](https://usn.ubuntu.com/3832-1/), USN-3833-1] Linux kernel (AWS) vulnerabilities {#usn-3832-1-usn-3833-1-linux-kernel--aws--vulnerabilities}

-   6 CVEs addressed in Cosmic, first 2 in Bionic as well
    -   [CVE-2018-6559](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-6559)
    -   [CVE-2018-18955](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18955)
    -   [CVE-2018-18653](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18653)
    -   [CVE-2018-18445](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18445)
    -   [CVE-2018-18281](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18281)
    -   [CVE-2018-17972](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17972)
-   Philipp Wendler discovered Ubuntu specific flaw in the way user namespaces interact with overlayfs
-   Allows regular users to list contents of directories which they do not have read-access to (ie could list /root)
-   Create a user and a mount namespace and then mount an overlay via overlayfs within it
    -   Within the overlayed mount, if say contained "root" and was mounted at the
        filesystem root (/), overlayfs would get confused about which permissions
        to use when running and would not use the real underlying permissions but
        would instead use the user supplied ones from the overlayed fs
-   Relates to the fix for a previous CVE ([CVE-2015-1328](https://people.canonical.com/~ubuntu-security/cve/2015/CVE-2015-1328.html))
    -   This fix got dropped during Bionic development cycle so reintroduced this similar vulnerability
    -   New test added to Ubuntu kernel test suite to ensure this does not regress again in the future


## Open Source Software Supply Chain Integrity {#open-source-software-supply-chain-integrity}

-   NPM package (event-stream) got hijacked to inject code to target users of copay (Bitcoin wallet)
-   Author of event-stream had lost interest, was emailed by a small contributor to take over maintenance and gave them ownership of the repo
    -   Pushed a small change to add a new dependency to the package
    -   This then contained code to try and bundle itself with target application - copay-dash
    -   Targetted software supply chain at 2 points - event-stream repo / package AND getting into the build-system for copay-dash as a result
        -   So would bundle bitcoin wallet stealing code into copay-dash
-   2 software supply chain attacks
    -   Hard to fix first one since maintainers can lost interest and hand over to anyone
        -   New owner may not have trust the old one did
        -   npm doesn't care - is uncurated
    -   Copay bundled and distributed dependencies so perhaps should have some responsibility to check those etc
-   Ubuntu is based on Debian and both are curated repos
    -   Packages are maintained by trusted developers
    -   Much harder to mount a similar attach on Ubuntu / Debian archives due to
        barrier to entry as a trusted developer
    -   Smaller dependency chains as well compared to npm so harder to hide such an attack as well
-   Snap store is a different story though
-   Bottom line - have to trust your software suppliers
    -   Ubuntu - Canonical / trusted maintainers
    -   Snap store - individual publishers


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)