+++
title = "Episode 12"
description = "This week we look at some details of the 33 unique CVEs addressed across the supported Ubuntu releases, including some significant updates for systemd and the kernel, plus we talk about even more Intel side-channel vulnerabilities and more."
date = 2018-11-19
lastmod = 2019-08-05T20:27:19+09:30
draft = false
weight = 1029
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E012.mp3"
podcast_duration = "20:08"
podcast_bytes = 19337429
permalink = "https://ubuntusecuritypodcast.org/episode-12/"
+++

## Overview {#overview}

This week we look at some details of the 33 unique CVEs addressed across the
supported Ubuntu releases, including some significant updates for systemd and
the kernel, plus we talk about even more Intel side-channel vulnerabilities and
more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

33 unique CVEs addressed


### [[USN-3814-1](https://usn.ubuntu.com/3814-1/)] libmspack vulnerabilities {#usn-3814-1-libmspack-vulnerabilities}

-   2 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2018-18585](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18585)
    -   [CVE-2018-18584](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18584)
-   Out of bounds write of 1 byte when a CAB file uses the maximum Quantum block size - buffer overflow, DoS -> crash, possible code execution
-   Failure to validate filenames properly - could accept a filename with embedded NUL bytes - possible DoS -> crash


### [[USN-3815-1](https://usn.ubuntu.com/3815-1/), [USN-3815-2](https://usn.ubuntu.com/3815-2/)] gettext vulnerability {#usn-3815-1-usn-3815-2-gettext-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-18751](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18751)
-   Double free for specially crafted translations file, DoS -> crash, possible code execution via heap corruption etc.
    -   PoC's on github


### [[USN-3816-1](https://usn.ubuntu.com/3816-1/)] systemd vulnerabilities {#usn-3816-1-systemd-vulnerabilities}

-   3 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2018-6954](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-6954)
    -   [CVE-2018-15687](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15687)
    -   [CVE-2018-15686](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15686)
-   Large backport of multiple patch series
-   Jann Horn (GPZ) reported two issues to Ubuntu regarding systemd
    -   possible to inject / alter state across re-execution of systemd itself (since serialized state) - but fails to deserialize it correctly
        -   Insecure use of fgets() when parsing long lines
        -   Possible root privilege escalation
    -   When changing ownership of files in a directory via systemd (useful for executing a systemd unit as a given user for example to ensure files it needs are owned by that user)
        -   Would try and handle symlinks specially BUT this is racy (since could change where pointed to during check of symlink and then actual work of chown() after)
        -   So for instance, could convince systemd to possible change the ownership of a root owned file to that of another user
        -   So could allow to change arbitrary files ownerships or even permissions
-   Third issue - older one, systemd-tmpfiles could be used to obtain ownership of arbitrary files
    -   Would follow symlinks in non-terminal path components, and then operate on the resulting file
    -   Can tell it to set permissions / ownership of given files
    -   So could race it to replace path components with symlinks to root-owned files and get it to change their ownership to that of the user (or whomeever)
    -   Original patch series (March) didn't completely fix this - required much more invasive patching later
    -   We waited to fix it until the complete fix was available and accepted upstream (August) to then start backporting


### [[USN-3814-2](https://usn.ubuntu.com/3814-2/), USN-3814-3] ClamAV vulnerabilities {#usn-3814-2-usn-3814-3-clamav-vulnerabilities}

-   2 CVEs addressed in Precise ESM & Trusty
    -   [CVE-2018-18585](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18585)
    -   [CVE-2018-18584](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18584)
-   Same issues as for libmspack earlier (since clamav in Trusty and Precise ESM embeds libmspack, later releases use the system libmspack package instead)


### [[USN-3811-2](https://usn.ubuntu.com/3811-2/)] SpamAssassin vulnerability {#usn-3811-2-spamassassin-vulnerability}

-   1 CVEs addressed in Precise ESM
    -   [CVE-2017-15705](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-15705)
-   One of the CVEs for SpamAssassin in Episode 7


### [[USN-3817-1](https://usn.ubuntu.com/3817-1/), USN-3817-2] Python vulnerabilities {#usn-3817-1-usn-3817-2-python-vulnerabilities}

-   5 CVEs addressed in Precise ESM, Trusty, Xenial, Bionic
    -   [CVE-2018-14647](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14647)
    -   [CVE-2018-1061](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1061)
    -   [CVE-2018-1060](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1060)
    -   [CVE-2018-1000802](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000802)
    -   [CVE-2018-1000030](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000030)
-   Failure to initialize hash salt for PRNG in hash tables for elementtree (XML parser)
    -   Could relatively easily cause hash-collisions on specially crafted document
    -   High CPU and memory usage -> DoS
-   Possible command injection when using Python to create a ZIP file archive
    -   Used spawn() which is vulnerable to shell command injection -> subprocess()
-   3 lower priority issues
    -   Race condition in when reading from multiple threads on same file - possible heap buffer overflow or UAF
    -   DoS via CPU usage due to regexes in mail server response handling with backtracking - could be triggered by a malicious mail server
    -   Similar but in regexes in difflib (catastrophic backtracking)


### [[USN-3818-1](https://usn.ubuntu.com/3818-1/)] PostgreSQL vulnerability {#usn-3818-1-postgresql-vulnerability}

-   1 CVEs addressed in Bionic, Cosmic
    -   [CVE-2018-16850](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16850)
-   Possible to inject arbitrary SQL with superuser privileges during dump/restore cycle
-   Can be triggered by regular users in default config since they can trigger as have CREATE privilege on the public schema


### [[USN-3819-1](https://usn.ubuntu.com/3819-1/)] Linux kernel vulnerability {#usn-3819-1-linux-kernel-vulnerability}

-   1 CVEs addressed in Cosmic
    -   [CVE-2018-15471](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15471)


### [[USN-3820-1](https://usn.ubuntu.com/3820-1/), USN-3820-2, USN-3820-3] Linux kernel vulnerabilities {#usn-3820-1-usn-3820-2-usn-3820-3-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Bionic, Xenial (Bionic HWE kernel) and Trusty (Azure)
    -   [CVE-2018-9363](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-9363)
    -   [CVE-2018-16658](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16658)
    -   [CVE-2017-13168](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-13168)
    -   [CVE-2018-15471](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15471)
-   Bluetooth HID integer overflow and info leak in CDROM ioctl (covered in Episode 9 for Xenial kernel)
-   Possible privilege escalation via SCSI subsystem
-   Xen virtual network driver didn't check supplied parameters -> integer overflow -> OOB read -> possible OOB write -> privilege escalation, DoS etc


### [[USN-3821-1](https://usn.ubuntu.com/3821-1/)] Linux kernel vulnerabilities {#usn-3821-1-linux-kernel-vulnerabilities}

-   7 CVEs addressed in Xenial and Trusty (Xenial HWE kernel)
    -   [CVE-2018-18021](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18021)
    -   [CVE-2018-17972](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17972)
    -   [CVE-2018-14617](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14617)
    -   [CVE-2018-14609](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14609)
    -   [CVE-2018-13096](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13096)
    -   [CVE-2018-13053](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13053)
    -   [CVE-2018-10880](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10880)
-   Potential host system crash / code execution from malicious guest for KVM on ARM64
-   Stack unwinding in procfs didn't check caller was root - anyone could race stack unwinder to read stack of arbitrary kernel processes
-   NULL pointer dereferences in various file-system drivers -> triggered by mounting malicious fs image
    -   HFS+, btrfs, f2fs
-   OOB stack write in ext4 with malicious image
-   Integer overflow in alarmtimer handling


### [[USN-3822-1](https://usn.ubuntu.com/3822-1/)] Linux kernel vulnerabilities {#usn-3822-1-linux-kernel-vulnerabilities}

-   5 CVEs addressed in Trusty and Precise ESM (Trusty HWE kernel)
    -   [CVE-2018-9363](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-9363)
    -   [CVE-2018-16658](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16658)
    -   [CVE-2017-16649](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-16649)
    -   [CVE-2017-13168](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-13168)
    -   [CVE-2016-9588](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-9588)
-   Same bluetooth HID, CDROM and SCSI vulns as for Bionic earlier
-   Possible divide by zero in CDC USB ethernet driver for specially crafted device
-   KVM guest user could cause guest OS crash due to mismanagement of emulated exception handling


### [[USN-3823-1](https://usn.ubuntu.com/3823-1/)] Linux kernel vulnerabilities {#usn-3823-1-linux-kernel-vulnerabilities}

-   2 CVEs addressed in Precise ESM
    -   [CVE-2018-3620](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3620)
    -   [CVE-2018-3646](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3646)
-   [L1TF](http://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/L1TF) fixes for Precise ESM (see Episode 1 for more details)


### [LSN-0045-1] Linux kernel vulnerability {#lsn-0045-1-linux-kernel-vulnerability}

-   Live patch covering Bionic, Xenial and Trusty
    -   CVE-2017-13168
    -   [CVE-2018-10880](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10880)
    -   [CVE-2018-9363](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-9363)
    -   [CVE-2018-16658](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16658)
-   Same bluetooth HID, CDROM, SCSI and ext4 vulnerabilities mentioned earlier


### [[USN-3824-1](https://usn.ubuntu.com/3824-1/)] OpenJDK 7 vulnerabilities {#usn-3824-1-openjdk-7-vulnerabilities}

-   5 CVEs addressed in Trusty
    -   [CVE-2018-3180](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3180)
    -   [CVE-2018-3169](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3169)
    -   [CVE-2018-3149](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3149)
    -   [CVE-2018-3139](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3139)
    -   [CVE-2018-3136](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3136)
-   All covered in the previous openjdk-8 update in Episode 10 (that included
    more as this is just those fixes which also apply to openjdk-7)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### New Intel Side Channel Attacks (again...) {#new-intel-side-channel-attacks--again-dot-dot-dot}

-   [A Systematic Evaluation of Transient Execution Attacks and Defenses](https://arxiv.org/pdf/1811.05441.pdf)
-   Reclassifies existing Meltdown and Spectre attacks with a new nomenclature
    -   ie. original Meltdown is now Meltdown-US (US = User/Supervisor)
-   Identifies a bunch of other possible variants for both Meltdown and Spectre
    -   Meltdown-PK - bypass restrictions on Intel memory protection keys
    -   Meltdown-BR - Spectre-like attack but using bounds-range exceeded exception to trigger
    -   5 new Spectre variants based on existing ones but targetting different
        microarchitectural elements (ie targetting the Branch Target Buffer when
        doing a Spectre-RSB attack since some processors fallback to BTB when RSB
        is empty)
-   Compares existing mitigations for each existing and newly identified attack
-   Very comprehensive, demonstrates the utility of such a complete analysis compared to existing approach where different researchers have looked at a single aspect
-   Still an active area of research with new vulnerabilities turning up


### Hiring {#hiring}


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1158266>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net?channels=%23ubuntu-hardened&uio=d4)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)