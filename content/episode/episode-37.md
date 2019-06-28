+++
title = "Episode 37"
description = "The big new this week is SackPANIC! updates for the Linux kernel, plus we look at vulnerabilities in, and updates for, Samba, SQLite, Bind, Thunderbird and more, and we are hiring!"
date = 2019-06-28
lastmod = 2019-06-28T12:05:32+01:00
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E037.mp3"
podcast_duration = "19:50"
podcast_bytes = 19049025
permalink = "https://ubuntusecuritypodcast.org/episode-37/"
+++

## Overview {#overview}

The big new this week is SackPANIC! updates for the Linux kernel, plus we look at vulnerabilities in, and updates for, Samba, SQLite, Bind, Thunderbird and more, and we are hiring!


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

36 unique CVEs addressed


### [[USN-4017-1](https://usn.ubuntu.com/4017-1/), [USN-4017-2](https://usn.ubuntu.com/4017-2/)] Linux kernel vulnerabilities {#usn-4017-1-usn-4017-2-linux-kernel-vulnerabilities}

-   2 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11477](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11477)
    -   [CVE-2019-11478](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11478)
-   SACK Panic - will be discussed in more detail with Joe later in the show
-   Livepatch (LSN-0052-1) also available for Xenial and Bionic


### [[USN-4018-1](https://usn.ubuntu.com/4018-1/)] Samba vulnerabilities {#usn-4018-1-samba-vulnerabilities}

-   2 CVEs addressed in Disco
    -   [CVE-2019-12436](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12436)
    -   [CVE-2019-12435](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12435)
-   Two DoS issues (both NULL ptr dereferences) only affecting most recent Samba versions
    -   One in AD DC DNS mgmt server RPC process
        -   Only an authenticated user could trigger this
    -   Other in LDAP server - user with read access to the directory could
        trigger NULL ptr dereference via the paged search control


### [[USN-4019-1](https://usn.ubuntu.com/4019-1/), [USN-4019-2](https://usn.ubuntu.com/4019-2/)] SQLite vulnerabilities {#usn-4019-1-usn-4019-2-sqlite-vulnerabilities}

-   12 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2017-2519](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-2519)
    -   [CVE-2017-13685](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-13685)
    -   [CVE-2017-10989](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-10989)
    -   [CVE-2016-6153](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-6153)
    -   [CVE-2019-9937](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9937)
    -   [CVE-2019-9936](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9936)
    -   [CVE-2019-8457](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8457)
    -   [CVE-2018-20506](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20506)
    -   [CVE-2018-20346](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20346)
    -   [CVE-2018-20505](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20505)
    -   [CVE-2017-2520](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-2520)
    -   [CVE-2017-2518](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-2518)
-   7 CVEs addressed in Precise ESM, Trusty ESM
    -   [CVE-2017-13685](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-13685)
    -   [CVE-2017-10989](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-10989)
    -   [CVE-2016-6153](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-6153)
    -   [CVE-2019-8457](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8457)
    -   [CVE-2018-20506](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20506)
    -   [CVE-2018-20346](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20346)
    -   [CVE-2017-2518](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-2518)
-   Mix of various issues, most involving various memory corruption problems
    -   UAFs, DoS (crash), heap-based buffer over-reads (crash -> DoS or
        possible information disclosure), incorrect use of temporary
        directories, race-condition leading to NULL pointer dereference,
        integer overflow -> buffer overflow -> crash / code execution


### [[USN-4021-1](https://usn.ubuntu.com/4021-1/)] libvirt vulnerabilities {#usn-4021-1-libvirt-vulnerabilities}

-   2 CVEs addressed in Cosmic, Disco
    -   [CVE-2019-3886](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3886)
    -   [CVE-2019-10132](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10132)
-   DoS where some APIs in the guest agents could be accessed by read-only
    users - this would cause libvirt to block and cause a DoS
-   Privilege escalation due to insecure permissions on the virt-lockd and
    virt-logd UNIX domain sockets - these are created by systemd unit files
    but were created as world writable - and the daemons don't try and
    authenticate the user - so anyone could use these sockets to potentially
    elevate privileges - so fixed by ensuring the systemd socket definitions
    specify the right mode.


### [[USN-4020-1](https://usn.ubuntu.com/4020-1/)] Firefox vulnerability {#usn-4020-1-firefox-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11707](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11707)
-   Firefox 67.0.3 which fixes a remotely exploitable crash or possible code
    execution problem due to type confusion in the Javascript engine -
    reports this was used to target various cryptocurrency exchanges by
    delivering Windows and Mac malware to them


### [[USN-4024-1](https://usn.ubuntu.com/4024-1/)] Evince update {#usn-4024-1-evince-update}

-   Affecting Xenial, Bionic
-   Updated the AppArmor profile for evince to ensure it restricts access to
    various private file directories, and to address various issues raised by
    Jann Horn of GPZ - in particular limiting access to various DBus services


### [[USN-4026-1](https://usn.ubuntu.com/4026-1/)] Bind vulnerability {#usn-4026-1-bind-vulnerability}

-   1 CVEs addressed in Bionic, Cosmic, Disco
    -   [CVE-2019-6471](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6471)
-   DoS (crash due to assertion failure) caused by a race condition when
    handling malformed packets


### [[USN-4028-1](https://usn.ubuntu.com/4028-1/)] Thunderbird vulnerabilities {#usn-4028-1-thunderbird-vulnerabilities}

-   4 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11706](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11706)
    -   [CVE-2019-11705](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11705)
    -   [CVE-2019-11704](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11704)
    -   [CVE-2019-11703](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11703)
-   Various issues in handling of iCal data - all remotely triggerable by crafted emails:
    -   Crash due to type-confusion
    -   Both a stack and 2 separate heap buffer overflows - either could
        potentially be exploitable to execute arbitrary code


### [[USN-4027-1](https://usn.ubuntu.com/4027-1/)] PostgreSQL vulnerability {#usn-4027-1-postgresql-vulnerability}

-   1 CVEs addressed in Bionic, Cosmic, Disco
    -   [CVE-2019-10164](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10164)
-   "Stack buffer overflow by setting a password" - authenticated user could
    set their password to a specially constructed value which when processed
    by PostgreSQL would cause it to crash, or possible execute arbitrary code
    in the context of the PostgreSQL server


### [[USN-4023-1](https://usn.ubuntu.com/4023-1/)] Mosquitto vulnerabilities {#usn-4023-1-mosquitto-vulnerabilities}

-   2 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2017-7654](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-7654)
    -   [CVE-2017-7653](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-7653)
-   Remotely triggerable memory leak (by unauthenticated users) could be used
    to crash the Mosquitto Broker -> DoS
-   Different DoS where one client could cause others to be disconnected by
    sending invalid an UTF-8 topic string - which would cause other clients
    which do reject invalid UTF-8 to disconnect themselves


### [[USN-3977-3](https://usn.ubuntu.com/3977-3/)] Intel Microcode update {#usn-3977-3-intel-microcode-update}

-   4 CVEs addressed in Trusty ESM, Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11091](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11091)
    -   [CVE-2018-12126](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12126)
    -   [CVE-2018-12127](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12127)
    -   [CVE-2018-12130](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12130)
-   [Episode 32](https://ubuntusecuritypodcast.org/episode-32/) covered most recent Intel CPU vulnerabilities (MDS) -
    mitigated by a combination of microcode and kernel updates - this
    provides microcode updates for the Sandy Bridge family of Intel
    processors


### [[USN-4030-1](https://usn.ubuntu.com/4030-1/)] web2py vulnerabilities {#usn-4030-1-web2py-vulnerabilities}

-   5 CVEs addressed in Xenial
    -   [CVE-2016-3957](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-3957)
    -   [CVE-2016-3954](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-3954)
    -   [CVE-2016-3953](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-3953)
    -   [CVE-2016-3952](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-3952)
    -   [CVE-2016-10321](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-10321)
-   Various issues including:
    -   Possible RCE (was serializing encryption key info into a session
        cookie) which could then be read by an attacker since it also made
        session cookie accessible via an API endpoint
    -   Sample web application used a hard-coded encryption key which could
        also allow attackers to do RCE as they could easily interpose on the
        session
    -   Environment variables were exposed by an example API endpoint which
        exposed host info and so remote attackers could then possibly gain
        admin access
    -   Lacked brute-force password protection as wouldn't reject already
        denied hosts from repeatedly trying


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe talk about the SACK Panic issues discovered by Netflix {#alex-and-joe-talk-about-the-sack-panic-issues-discovered-by-netflix}

-   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/SACKPanic>
-   <https://github.com/Netflix/security-bulletins/blob/master/advisories/third-party/2019-001.md>


### Hiring {#hiring}


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1723997>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net?channels=%23ubuntu-hardened&uio=d4)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)