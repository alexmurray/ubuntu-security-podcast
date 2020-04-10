+++
title = "Episode 25"
description = "Ghostscript is back to haunt us for another week, plus we look at vulnerabilities in ntfs-3g, snapd, firefox and more."
date = 2019-03-25
lastmod = 2020-04-10T14:14:22+09:30
draft = false
weight = 1046
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E025.mp3"
podcast_duration = "14:44"
podcast_bytes = 14157243
permalink = "https://ubuntusecuritypodcast.org/episode-25/"
+++

## Overview {#overview}

Ghostscript is back to haunt us for another week, plus we look at vulnerabilities in ntfs-3g, snapd, firefox and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

39 unique CVEs addressed


### [[USN-3911-1](https://usn.ubuntu.com/3911-1/)] file vulnerabilities {#usn-3911-1-file-vulnerabilities}

-   4 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2019-8907](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8907)
    -   [CVE-2019-8906](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8906)
    -   [CVE-2019-8905](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8905)
    -   [CVE-2019-8904](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8904)
-   4 DoS (crash) found via fuzzing:
    -   Stack overflow in readelf
    -   2 different OOB read due to failure to NULL terminate a string before processing it
    -   Read past end of stack due to failing to properly keep track of buffer sizes


### [[USN-3906-2](https://usn.ubuntu.com/3906-2/)] LibTIFF vulnerabilities {#usn-3906-2-libtiff-vulnerabilities}

-   8 CVEs addressed in Precise ESM
    -   [CVE-2019-7663](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7663)
    -   [CVE-2019-6128](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6128)
    -   [CVE-2018-18557](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18557)
    -   [CVE-2018-17101](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17101)
    -   [CVE-2018-17100](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17100)
    -   [CVE-2018-1710](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1710)
    -   [CVE-2018-12900](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12900)
    -   [CVE-2018-10779](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10779)
-   Covered in [Episode 18](https://ubuntusecuritypodcast.org/episode-18/) and [Episode 24](https://ubuntusecuritypodcast.org/episode-24/) for standard Ubuntu releases (not
    all CVEs covered in those updates applicable to Precise ESM)


### [[USN-3912-1](https://usn.ubuntu.com/3912-1/)] GDK-PixBuf vulnerability {#usn-3912-1-gdk-pixbuf-vulnerability}

-   1 CVEs addressed in Xenial
    -   [CVE-2017-12447](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-12447)
-   Failure to properly validate BMP image palette parameters - leading to
    OOB when decoding colormap later on


### [[USN-3914-1](https://usn.ubuntu.com/3914-1/)] NTFS-3G vulnerability {#usn-3914-1-ntfs-3g-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2019-9755](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9755)
-   Discovered recently by Chris Coulson during code-audit of ntfs-3g -
    actually had been fixed upstream late last year but no CVE assigned
-   Heap buffer overflow able to be triggered when mounting a filesystem
    onto a mount point with path name greater than PATH\_MAX, and from a
    current working directory which has a path name also greater than
    PATH\_MAX
-   Contents of buffers is attacker controlled so heap can be overflown
    with attacker controlled input - likely to leverage into arbitrary
    code execution
-   Contrived example BUT in Debian and Ubuntu ntfs-3g is setuid root -
    which then leads to root privilege escalation with arbitrary code
    execution
-   Update was released within hours of the bug being made public to fix
    the heap buffer overflow
-   Currently testing ntfs-3g as not-setuid root to release in a future
    update to avoid any other possible privilege escalation bugs in the
    future


### [[USN-3915-1](https://usn.ubuntu.com/3915-1/)] Ghostscript vulnerabilities {#usn-3915-1-ghostscript-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-3838](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3838)
    -   [CVE-2019-3835](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3835)
-   Similar to previous CVE, forceput operator could be extracted from the
    DefineResource method to allow access to the file-system outside of
    the -dSAFER sandbox
-   superexec operator was available in the internal dictionary - also
    able to be extracted and hence used to access files outside the
    sandbox


### [[USN-3913-1](https://usn.ubuntu.com/3913-1/)] P7ZIP vulnerabilities {#usn-3913-1-p7zip-vulnerabilities}

-   2 CVEs addressed in Xenial
    -   [CVE-2017-17969](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-17969)
    -   [CVE-2016-2335](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-2335)
-   Heap based OOB write when decompressing a crafted ZIP file (crash -> DoS, possible code execution)
-   Heap based OOB read when decompressing a UDF file (universal disk format - used for DVD images) - crash, DoS


### [[USN-3918-1](https://usn.ubuntu.com/3918-1/)] Firefox vulnerabilities {#usn-3918-1-firefox-vulnerabilities}

-   17 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2019-9803](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9803)
    -   [CVE-2019-9793](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9793)
    -   [CVE-2019-9809](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9809)
    -   [CVE-2019-9808](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9808)
    -   [CVE-2019-9807](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9807)
    -   [CVE-2019-9806](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9806)
    -   [CVE-2019-9805](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9805)
    -   [CVE-2019-9802](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9802)
    -   [CVE-2019-9799](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9799)
    -   [CVE-2019-9797](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9797)
    -   [CVE-2019-9796](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9796)
    -   [CVE-2019-9795](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9795)
    -   [CVE-2019-9792](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9792)
    -   [CVE-2019-9791](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9791)
    -   [CVE-2019-9790](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9790)
    -   [CVE-2019-9789](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9789)
    -   [CVE-2019-9788](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9788)
-   Almost latest Firefox release (this is 66, 66.0.1 was released Friday after Pwn2Own
    last week so expect another Firefox update today or tomorrow)
    -   Multiple memory safety issues fixed, possible code execution as a result
    -   3 issues in FTP modal dialogs allow to either DoS user via
        successive dialogs, or conduct social engineering attacks against
        the user
    -   Possible information leak from parent to child process via IPC channels
    -   Various UAFs, type-confusion etc -> memory corruption -> possible code execution
    -   Incorrect bounds checking on JS objects IF Spectre mitigations
        disabled (these are enabled by default so user would have to
        explicitly disable them)
    -   and more...


### [[USN-3917-1](https://usn.ubuntu.com/3917-1/)] snapd vulnerability {#usn-3917-1-snapd-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-7303](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7303)
-   Jann Horn reported the seccomp blacklist for TIOCSTI can be bypassed
-   snapd creates a seccomp filter for each snap which is designed to
    block TIOCSTI (as this can be used to fake input to other processes
    outside of the sandbox)
-   This is a 32-bit value to the ioctl system call, but on 64-bit
    architectures the kernel does this comparison as a 64-bit integer - so
    can be circumvented by using a 64-bit value to ioctl systemcall which
    has other bits set in the upper 32 bits - since when seccomp does
    comparison it uses the full 64 bits - so it won't match the 32-bit
    value of TIOCSTI and so will be allowed - but then when used as the
    ioctl() argument it will correctly be truncated to 32-bits and the
    ioctl will proceed
-   Fixed in snapd to add a second seccomp filter to disallow anything in
    the upper 32-bits
-   Initially seemed like a kernel or libseccomp issue but both currently
    document this as a limitation already so treated in the end as a
    vulnerability in snapd


### [[USN-3916-1](https://usn.ubuntu.com/3916-1/)] libsolv vulnerabilities {#usn-3916-1-libsolv-vulnerabilities}

-   3 CVEs addressed in Cosmic
    -   [CVE-2018-20534](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20534)
    -   [CVE-2018-20533](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20533)
    -   [CVE-2018-20532](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20532)
-   Dependency solver used by packaging systems to resolve dependencies
    between packages etc
-   2 NULL pointer dereferences and 1 invalid memory read due to
    mishandling of variable length function arguments - all crash -> DoS


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Hiring {#hiring}


#### Ubuntu Security Generalist {#ubuntu-security-generalist}

-   <https://boards.greenhouse.io/canonical/jobs/1548812>


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)