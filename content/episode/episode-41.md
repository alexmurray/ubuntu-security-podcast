+++
title = "Episode 41"
description = "With Alex and Joe having been away at a Canonical sprint last week, we look back at the past fortnight's security updates including new Linux kernel releases, MySQL, VLC, Django and more plus we discuss a recent Citrix password spraying attack."
date = 2019-08-05T20:15:00+09:30
lastmod = 2019-08-21T20:59:30+09:30
draft = false
weight = 1003
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E041.mp3"
podcast_duration = "26:23"
podcast_bytes = 25334296
permalink = "https://ubuntusecuritypodcast.org/episode-41/"
guid = "93da5c5539f3f81eac1a3b8ed45073abf86bc2e0b571557bbe3f86ba69d0444b12c536661c741547f3bfd212c198e83734b002caea5ee420146fbde697398a9a"
+++

## Overview {#overview}

With Alex and Joe having been away at a Canonical sprint last week, we look back at the past fortnight's security updates including new Linux kernel releases, MySQL, VLC, Django and more plus we discuss a recent Citrix password spraying attack.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

90 unique CVEs addressed


### [[USN-4066-2](https://usn.ubuntu.com/4066-2/)] ClamAV vulnerability {#usn-4066-2-clamav-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty ESM
    -   [CVE-2019-1010305](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1010305)
-   [Episode 40](https://ubuntusecuritypodcast.org/episode-40/) - libmspack buffer overflow - ClamAV contains own copy of
    libmspack in older releases so is affected


### [[USN-4065-2](https://usn.ubuntu.com/4065-2/)] Squid vulnerabilities {#usn-4065-2-squid-vulnerabilities}

-   2 CVEs addressed in Precise ESM
    -   [CVE-2019-12529](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12529)
    -   [CVE-2019-12525](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12525)

[Episode 40](https://ubuntusecuritypodcast.org/episode-40/) (memory corruption issues)


### [[USN-4067-1](https://usn.ubuntu.com/4067-1/)] Evince vulnerability {#usn-4067-1-evince-vulnerability}

-   1 CVEs addressed in Xenial
    -   [CVE-2019-1010006](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1010006)
-   Integer overflow -> buffer overflow when handling embedded tiff content in PDF documents
-   DoS -> possible RCE


### [[USN-4068-1](https://usn.ubuntu.com/4068-1/), [USN-4068-2](https://usn.ubuntu.com/4068-2/)] Linux kernel vulnerabilities {#usn-4068-1-usn-4068-2-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Bionic and Xenial (HWE)
    -   [CVE-2019-11884](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11884)
    -   [CVE-2019-11833](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11833)
    -   [CVE-2019-11815](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11815)
    -   [CVE-2019-11085](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11085)
-   2 information disclosure vulnerabilities:
    -   Exposes kernel memory to user-space which could expose sensitive
        information (keys, pointers to help defeat ASLR etc)
    -   Bluetooth Human Interface Device Protocol (HIDP) socket ioctl() failed
        to NUL terminate the name field
    -   Ext4 file-system did not zero out unused regions in extents tree blocks
        which are returned to user-space
-   Use-after-free due to a race-condition in the reliable datagram socket
    (RDS) protocol module -> crash / code exec
    -   Blacklisted by default in Ubuntu and contrary to the original CVE
        description, this is not likely to be remotely exploitable since the
        use-after-free only occurs on namespace cleanup
-   Intel i915 graphics driver failed to validate ranges for mmap() in some places
    -   Local attacker who already has access to the device could use this to
        crash / code execution -> privilege escalation


### [[USN-4076-1](https://usn.ubuntu.com/4076-1/)] Linux kernel vulnerabilities {#usn-4076-1-linux-kernel-vulnerabilities}

-   6 CVEs addressed in Xenial
    -   [CVE-2019-10142](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10142)
    -   [CVE-2019-9503](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9503)
    -   [CVE-2019-2054](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2054)
    -   [CVE-2019-11884](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11884)
    -   [CVE-2019-11833](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11833)
    -   [CVE-2018-20836](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20836)
-   Freescale Hypervisor Manager (HVM) for PowerPC - used invalid size
    parameter from ioctl() for page size calculations - local attacker could
    use this to cause various memory corruption issues possibly resulting in
    privilege escalation or code execution (only enabled in Xenial 4.4
    kernel)
-   Broadcom wifi driver would possibly pass through firmware events received
    on-the-air to the local USB wifi device - allows a remote attacker to
    send firmware events to the device having unspecified impact
-   Possible seccomp bypass for policies that use ptrace on ARM - a tracing
    process could modify a syscall parameter after the seccomp decision for
    that syscall had been made - so could violate the policy
-   Bluetooth HIDP + Ext4 extents information disclosure vulns covered earlier
-   Race condition in Serial Attached SCSI (SAS) could possibly result in a
    UAF -> crash, or code execution


### [LSN-0053-1] Linux kernel vulnerability {#lsn-0053-1-linux-kernel-vulnerability}

-   5 CVEs addressed in Xenial, Bionic
    -   [CVE-2019-11884](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11884)
    -   [CVE-2019-11833](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11833)
    -   [CVE-2019-11815](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11815)
    -   [CVE-2019-2054](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2054)
    -   [CVE-2011-1079](https://people.canonical.com/~ubuntu-security/cve/CVE-2011-1079)
-   RDS UAF, Bluetooth HIDP + Ext4 extents information disclosure vulns covered earlier
-   Seccomp bypass on ARM
-   Separate bluetooth info disclosure via ioctl() for a similar non-NUL
    terminated string


### [[USN-4069-1](https://usn.ubuntu.com/4069-1/), [USN-4069-2](https://usn.ubuntu.com/4069-2/)] Linux kernel vulnerabilities {#usn-4069-1-usn-4069-2-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Disco and Bionic (HWE)
    -   [CVE-2019-11884](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11884)
    -   [CVE-2019-11833](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11833)
    -   [CVE-2019-11599](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11599)
    -   [CVE-2019-11487](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11487)
-   2 information disclosure issues mentioned for the Bionic/Xenial HWE above
    (4.15 kernel) - Bluetooth HIDP + Ext4 extents information disclosure
    vulns covered earlier
-   Race condition in coredump generation - local user can trigger coredump
    for a process which can race with other memory managment handling and so
    could result in access to invalid memory regions - crash -> DoS or
    information disclosure
-   Integer overflow for page reference counts -> UAF
    -   Requires at least 140GB of RAM to be affected


### [[USN-4070-1](https://usn.ubuntu.com/4070-1/)] MySQL vulnerabilities {#usn-4070-1-mysql-vulnerabilities}

-   13 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-2819](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2819)
    -   [CVE-2019-2805](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2805)
    -   [CVE-2019-2797](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2797)
    -   [CVE-2019-2791](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2791)
    -   [CVE-2019-2778](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2778)
    -   [CVE-2019-2774](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2774)
    -   [CVE-2019-2758](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2758)
    -   [CVE-2019-2757](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2757)
    -   [CVE-2019-2741](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2741)
    -   [CVE-2019-2740](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2740)
    -   [CVE-2019-2739](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2739)
    -   [CVE-2019-2738](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2738)
    -   [CVE-2019-2737](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2737)
-   Latest upstream version 5.7.27 - various vulnerabilities including:
    -   Multiple variants of low privileged remote attacker could gain complete
        access to all MySQL server data (modify / access etc)
    -   Multiple versions of privileged AND unprivileged attacker could hang /
        crash MySQL server


### [[USN-4071-1](https://usn.ubuntu.com/4071-1/), [USN-4071-2](https://usn.ubuntu.com/4071-2/)] Patch vulnerabilities {#usn-4071-1-usn-4071-2-patch-vulnerabilities}

-   2 CVEs addressed in Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-13638](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13638)
    -   [CVE-2019-13636](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13636)
-   OS shell command injection via a crafted patch file - uses shell meta
    characters to take control of patch
-   Mishandles symlinks which allows a crafted patch file to overwrite
    arbitrary files


### [[USN-4072-1](https://usn.ubuntu.com/4072-1/)] Ansible vulnerabilities {#usn-4072-1-ansible-vulnerabilities}

-   8 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-3828](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3828)
    -   [CVE-2018-10875](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10875)
    -   [CVE-2018-10874](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10874)
    -   [CVE-2019-10156](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10156)
    -   [CVE-2018-16876](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16876)
    -   [CVE-2018-16837](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16837)
    -   [CVE-2018-10855](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10855)
    -   [CVE-2017-7481](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-7481)
-   Path traversal vulnerability in fetch module - allows an attacker to
    overwrite files outside of the specified destination
-   Configuration or inventory variables read from CWD - local attacker could
    point to an arbitrary module / plugin under their control and so gain
    code-execution as the ansible daemon
-   Various issues with variable substitution which could result in any
    variable being substituted and thus an information disclosure


### [[USN-4073-1](https://usn.ubuntu.com/4073-1/)] libEBML vulnerability {#usn-4073-1-libebml-vulnerability}

-   1 CVEs addressed in Xenial, Bionic
    -   [CVE-2019-13615](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13615)
-   VLC related issue - lots of media attention - "uninstall VLC now" etc - overblown
-   Heap-based buffer over-read in the Matroska decoder - crash -> DoS - not
    code-execution
-   However, VLC itself had a number of outstanding vulnerabilities


### [[USN-4074-1](https://usn.ubuntu.com/4074-1/)] VLC vulnerabilities {#usn-4074-1-vlc-vulnerabilities}

-   4 CVEs addressed in Bionic, Disco
    -   [CVE-2019-5439](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5439)
    -   [CVE-2019-13602](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13602)
    -   [CVE-2019-12874](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12874)
    -   [CVE-2018-19857](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19857)
-   2 different heap-based buffer overflow - possible RCE but likely mitigated with ASLR (according to upstream)
-   Double free -> crash -> DoS (glibc heap-protector ensures can't cause heap corruption -> abort)
-   Invalid pointer dereference (uninitialized) -> crash or infoleak


### [[USN-4075-1](https://usn.ubuntu.com/4075-1/)] Exim vulnerability {#usn-4075-1-exim-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-13917](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13917)
-   Possible RCE as root if configuration used the ${sort } expansion on
    items that can be controlled by an attacker - ie. $domain etc


### [[USN-4054-2](https://usn.ubuntu.com/4054-2/)] Firefox regressions {#usn-4054-2-firefox-regressions}

-   21 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-11730](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11730)
    -   [CVE-2019-11729](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11729)
    -   [CVE-2019-11728](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11728)
    -   [CVE-2019-11727](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11727)
    -   [CVE-2019-11725](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11725)
    -   [CVE-2019-11724](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11724)
    -   [CVE-2019-11723](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11723)
    -   [CVE-2019-11721](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11721)
    -   [CVE-2019-11720](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11720)
    -   [CVE-2019-11719](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11719)
    -   [CVE-2019-11718](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11718)
    -   [CVE-2019-11717](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11717)
    -   [CVE-2019-11716](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11716)
    -   [CVE-2019-11715](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11715)
    -   [CVE-2019-11714](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11714)
    -   [CVE-2019-11713](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11713)
    -   [CVE-2019-11712](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11712)
    -   [CVE-2019-11711](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11711)
    -   [CVE-2019-11710](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11710)
    -   [CVE-2019-11709](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11709)
    -   [CVE-2019-9811](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9811)
-   [Episode 40](https://ubuntusecuritypodcast.org/episode-40/) - Firefox update for 68.0 contained some minor regressions
-   Upstream released 68.0.1 to fix these


### [[USN-3990-2](https://usn.ubuntu.com/3990-2/)] urllib3 vulnerability {#usn-3990-2-urllib3-vulnerability}

-   1 CVEs addressed in Trusty ESM
    -   [CVE-2019-11236](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11236)
-   [Episode 33](https://ubuntusecuritypodcast.org/episode-33/) covered for standard support releases


### [[USN-4077-1](https://usn.ubuntu.com/4077-1/)] tmpreaper vulnerability {#usn-4077-1-tmpreaper-vulnerability}

-   1 CVEs addressed in Xenial, Bionic
    -   [CVE-2019-3461](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3461)
-   Race condition when performing a bind-mount via rename() - local
    privilege escalation since can result in a file being placed elsewhere on
    the fs hierarchy - so could drop a file in _etc/cron.d_ for example to
    get root code execution


### [[USN-4078-1](https://usn.ubuntu.com/4078-1/)] OpenLDAP vulnerabilities {#usn-4078-1-openldap-vulnerabilities}

-   2 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-13565](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13565)
    -   [CVE-2019-13057](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13057)
-   Would confuse authorisation for one user with another - so other user
    could then perform operations which they were not entitled to - in SASL
    authentication code paths


### [[USN-4079-1](https://usn.ubuntu.com/4079-1/), [USN-4079-2](https://usn.ubuntu.com/4079-2/)] SoX vulnerabilities {#usn-4079-1-usn-4079-2-sox-vulnerabilities}

-   4 CVEs addressed in Xenial, Bionic and Disco
    -   [CVE-2019-8357](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8357)
    -   [CVE-2019-8356](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8356)
    -   [CVE-2019-8355](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8355)
    -   [CVE-2019-8354](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8354)
-   CLI audio converter etc - usual sorts of issues for a C based application handling complex input file formats:
    -   NULL ptr dereference
    -   Stack-based buffer overflow
    -   2 separate integer overflows -> heap overflow


### [[USN-4080-1](https://usn.ubuntu.com/4080-1/)] OpenJDK 8 vulnerabilities {#usn-4080-1-openjdk-8-vulnerabilities}

-   7 CVEs addressed in Xenial
    -   [CVE-2019-7317](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7317)
    -   [CVE-2019-2842](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2842)
    -   [CVE-2019-2816](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2816)
    -   [CVE-2019-2786](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2786)
    -   [CVE-2019-2769](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2769)
    -   [CVE-2019-2762](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2762)
    -   [CVE-2019-2745](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2745)
-   New upstream Java release 8u2222-b10


### [[USN-4083-1](https://usn.ubuntu.com/4083-1/)] OpenJDK 11 vulnerabilities {#usn-4083-1-openjdk-11-vulnerabilities}

-   7 CVEs addressed in Bionic, Disco
    -   [CVE-2019-7317](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7317)
    -   [CVE-2019-2821](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2821)
    -   [CVE-2019-2818](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2818)
    -   [CVE-2019-2816](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2816)
    -   [CVE-2019-2786](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2786)
    -   [CVE-2019-2769](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2769)
    -   [CVE-2019-2762](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2762)
-   New upstream Java release 11.0.4


### [[USN-4081-1](https://usn.ubuntu.com/4081-1/)] Pango vulnerability {#usn-4081-1-pango-vulnerability}

-   1 CVEs addressed in Disco
    -   [CVE-2019-1010238](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1010238)
-   Heap-based buffer overflow -> code execution for applications which pass
    invalid utf8 to Pango APIs like pango\_itemize()


### [[USN-4082-1](https://usn.ubuntu.com/4082-1/)] Subversion vulnerabilities {#usn-4082-1-subversion-vulnerabilities}

-   2 CVEs addressed in Xenial
    -   [CVE-2019-0203](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0203)
    -   [CVE-2018-11782](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11782)
-   2 remote DoS issues against svnserve


### [[USN-4084-1](https://usn.ubuntu.com/4084-1/)] Django vulnerabilities {#usn-4084-1-django-vulnerabilities}

-   4 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-14235](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14235)
    -   [CVE-2019-14234](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14234)
    -   [CVE-2019-14233](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14233)
    -   [CVE-2019-14232](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14232)
-   DoS via memory exhaustion when encoding an attacker controlled URI
-   SQL injection in key and index lookups in JSON handling
-   2 different CPU based DoS - 1 in strip\_tags() function if input contained
    large sequence of nested, incomplete HTML entities, other in truncating
    due to use of regex with backtracking


### [[USN-4085-1](https://usn.ubuntu.com/4085-1/)] Sigil vulnerability {#usn-4085-1-sigil-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-14452](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14452)
-   Zip slip vulnerability discovered by Mike Salvatore ([Episode 40](https://ubuntusecuritypodcast.org/episode-40/))


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe discuss the recent Citrix password spraying attack {#alex-and-joe-discuss-the-recent-citrix-password-spraying-attack}

-   <https://threatpost.com/citrix-confirms-password-spraying-heist/146641/>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)