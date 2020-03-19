+++
title = "Episode 28"
description = "This week we look at updates for vulnerabilities in wpa\\_supplicant, Samba, systemd, wget and more and we talk to Joe about IoT security (or the prevailing lack-thereof)."
date = 2019-04-15
lastmod = 2020-03-19T20:22:57+10:30
draft = false
weight = 1040
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E028.mp3"
podcast_duration = "21:44"
podcast_bytes = 20878863
permalink = "https://ubuntusecuritypodcast.org/episode-28/"
+++

## Overview {#overview}

This week we look at updates for vulnerabilities in wpa\_supplicant, Samba, systemd, wget and more and we talk to Joe about IoT security (or the prevailing lack-thereof).


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

27 unique CVEs addressed


### [[USN-3939-1](https://usn.ubuntu.com/3939-1/), [USN-3939-2](https://usn.ubuntu.com/3939-2/)] Samba vulnerability {#usn-3939-1-usn-3939-2-samba-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-3880](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3880)
-   Symlink path traversal vulnerability in the Windows Registry service emulation RPC API end-point
-   Allows a local user to create a new registry file anywhere they have Unix
    permissions to do so within the Samba share
    -   Bypasses share restrictions such as read-only and share ACLs
    -   Also allows to create the file outside the share itself if there is
        already a symlink pointing outside the shared areas
-   Fixed by removing the ability to save or restore registry keys at all via
    this RPC API end-point


### [[USN-3940-1](https://usn.ubuntu.com/3940-1/), [USN-3940-2](https://usn.ubuntu.com/3940-2/)] ClamAV vulnerabilities {#usn-3940-1-usn-3940-2-clamav-vulnerabilities}

-   3 CVEs addressed in Precise ESM, Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-1789](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1789)
    -   [CVE-2019-1788](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1788)
    -   [CVE-2019-1787](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1787)
-   3 file-handling issues
    -   2 OOB heap read when handling PE (Windows EXE and DLL) and PDF files ->
        crash -> DoS
    -   OOB heap write when scanning OLE2 files (old format Microsoft Office
        documents), crash -> DoS or possible code execution


### [[USN-3941-1](https://usn.ubuntu.com/3941-1/)] Lua vulnerability {#usn-3941-1-lua-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2019-6706](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6706)
-   UAF if calling debug.upvaluejoin() with the same function for both function parameters


### [[USN-3938-1](https://usn.ubuntu.com/3938-1/)] systemd vulnerability {#usn-3938-1-systemd-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-3842](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3842)
-   Failure to properly sanitize environment before using XDG\_SEAT
-   Attacker could set XDG\_SEAT such that they can have actions checked
    against the wrong PolicyKit policy
-   Allows a remotely logged in attacker (SSH) to run commands which should
    be restricted to only physically present users
-   Fixed by using secure\_getenv() rather than just getenv() - so that if
    running via su the existing value is effectively scrubbed from the
    environment and ignored


### [[USN-3942-1](https://usn.ubuntu.com/3942-1/)] OpenJDK 7 vulnerability {#usn-3942-1-openjdk-7-vulnerability}

-   1 CVEs addressed in Trusty
    -   [CVE-2019-2422](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2422)
-   Information leak allows a remote attacker to possibly leverage this to
    bypass the Java sandbox


### [[USN-3943-1](https://usn.ubuntu.com/3943-1/), [USN-3943-2](https://usn.ubuntu.com/3943-2/)] Wget vulnerabilities {#usn-3943-1-usn-3943-2-wget-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic, Cosmic (1 in Precise ESM)
    -   [CVE-2019-5953](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5953)
    -   [CVE-2018-20483](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20483)
-   Heap buffer overflow due to improper memory management - crash -> DoS or possible code execution
-   By default wget would store the origin URL in an extended attribute on the downloaded file
    -   Could include username / password
    -   getfattr -d to dump
    -   changed to NOT store extended attributes by default AND to strip out
        any credentials when doing so
    -   doesn't effect Precise ESM


### [[USN-3937-2](https://usn.ubuntu.com/3937-2/)] Apache vulnerabilities {#usn-3937-2-apache-vulnerabilities}

-   4 CVEs addressed in Precise ESM
    -   [CVE-2018-1312](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1312)
    -   [CVE-2018-1301](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1301)
    -   [CVE-2017-15710](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-15710)
    -   [CVE-2019-0217](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0217)
-   [Episode 27](https://ubuntusecuritypodcast.org/episode-27/) covered mod\_auth\_digest bypass for other supported releases
-   Also includes 3 other issues:
    -   Nonce generated to prevent reply attacks for HTTP digest authentication
        challenenge wasn't sufficiently random
        -   Could allow and attacker to reply across a cluster of servers with
            the same common digest authentication configuration
        -   changed to actually use a proper random source
    -   Possible OOB read -> crash -> DoS
    -   Possible one-byte memory corruption if specify a character encoding of
        only 1 byte (since assumes is at least 2 bytes and so writes a NULL at
        index +2 which could be past the end of the header) - crash, DoS


### [[USN-3944-1](https://usn.ubuntu.com/3944-1/)] wpa\_supplicant and hostapd vulnerabilities {#usn-3944-1-wpa-supplicant-and-hostapd-vulnerabilities}

-   5 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2016-10743](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-10743)
    -   [CVE-2019-9499](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9499)
    -   [CVE-2019-9498](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9498)
    -   [CVE-2019-9497](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9497)
    -   [CVE-2019-9495](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9495)
-   Fix fallback to low-quality PRNG if failed to get an actual random value for a WPS pin
-   Multiple vulnerabilities discovered in the implementation of WPA3 in
    hostapd and wpa\_supplicant (aka Dragonblood)
    -   2 apply to SAE (Simultaneous Authentication of Equals , also known as
        Dragonfly Key Exchange) not relevant since we don't enable SAE support
        in our builds (this is used for initial key exchange instead of PSK)
    -   4 apply to the use of EAP-PWD - Extensible Authentication Protocol
        Password
        -   cache side channel attack
        -   reflection attack
            -   may allow an attacker to authenticate without the password but
                likely not derive session key or complete the key exchange so no
                loss of confidentiality
        -   2 failure to validate crypto components
            -   could allow attacker to authenticate AND gain access to session key
                and get network access


### [[USN-3945-1](https://usn.ubuntu.com/3945-1/)] Ruby vulnerabilities {#usn-3945-1-ruby-vulnerabilities}

-   6 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-8325](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8325)
    -   [CVE-2019-8324](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8324)
    -   [CVE-2019-8323](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8323)
    -   [CVE-2019-8322](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8322)
    -   [CVE-2019-8321](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8321)
    -   [CVE-2019-8320](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8320)
-   Symlink directory traversal issue - gem would delete the target
    destination before creating any new directories or files when extracting
    a Gem - as this is often run via sudo could allow to delete anything on
    target system
    -   Fixed to check target paths are symlinks
-   5 different code-injection attacks:
    -   4 via injection of terminal escape sequences in debug code paths to stdout
    -   one via eval() of the stub line in a gemspec file


### [[USN-3946-1](https://usn.ubuntu.com/3946-1/)] rssh vulnerabilities {#usn-3946-1-rssh-vulnerabilities}

-   3 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-3464](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3464)
    -   [CVE-2019-3463](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3463)
    -   [CVE-2019-1000018](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1000018)
-   Possible to execute arbitrary shell commands since failed to properly
    sanitize environment variables and command-line arguments when executing
    rsync or scp
-   Removed from archive in disco since dead upstream


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### IoT Security discussion with Joe McManus {#iot-security-discussion-with-joe-mcmanus}

-   <https://arstechnica.com/information-technology/2019/04/new-variants-of-mirai-botnet-detected-targeting-more-iot-devices/>
-   <https://www.ubuntu.com/core>


### Hiring {#hiring}


#### Ubuntu Security Generalist {#ubuntu-security-generalist}

-   <https://boards.greenhouse.io/canonical/jobs/1548812>


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)