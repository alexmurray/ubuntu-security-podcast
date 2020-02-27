+++
title = "Episode 40"
description = """
  Big roundup of security updates from the past 2 weeks including Docker,
  ZeroMQ, Squid, Redis and more, plus we talk with Joe McManus about some
  recent big fines for companies breaching their GDPR responsibilities and
  it's EOL for Ubuntu 18.10 Cosmic Cuttlefish.
  """
date = 2019-07-24T09:27:00+09:30
lastmod = 2020-02-27T22:03:35+10:30
draft = false
weight = 1025
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E040.mp3"
podcast_duration = "27:04"
podcast_bytes = 25992581
permalink = "https://ubuntusecuritypodcast.org/episode-40/"
+++

## Overview {#overview}

Big roundup of security updates from the past 2 weeks including Docker,
ZeroMQ, Squid, Redis and more, plus we talk with Joe McManus about some
recent big fines for companies breaching their GDPR responsibilities and
it's EOL for Ubuntu 18.10 Cosmic Cuttlefish.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

62 unique CVEs addressed


### [[USN-4047-1](https://usn.ubuntu.com/4047-1/)] libvirt vulnerabilities {#usn-4047-1-libvirt-vulnerabilities}

-   4 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-10168](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10168)
    -   [CVE-2019-10167](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10167)
    -   [CVE-2019-10166](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10166)
    -   [CVE-2019-10161](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10161)
-   All related - in each case various libvirt APIs were accessible to users
    with read-only permissions and allowed them to perform operations which
    they should not have access to - in one case providing an ability to
    escalate privileges to root on the host - since would allow to execute
    arbitrary binaries with elevated permissions.
-   By default, libvirt is constrained by AppArmor in Ubuntu which provides
    some isolation to help in these cases


### [[USN-4048-1](https://usn.ubuntu.com/4048-1/)] Docker vulnerabilities {#usn-4048-1-docker-vulnerabilities}

-   2 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-5736](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5736)
    -   [CVE-2018-15664](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15664)
-   Directory traversal via crafted symlink exchange (TOCTOU) via docker cp
    command - docker cp can be used to copy files between host and
    container - to do this safely, need to resolve paths as though were in
    the container - so tries to check a path by resolving symlinks, and then
    later use it if validates - but race exists where can then modify a
    component in the path via symlink **after** the check but **before** the
    copy, so can then overwrite arbitrary files on the host -> privilege
    escalation
-   runc component in docker could allow a container to overwrite the runc
    binary on the host -> privilege escalation (and container escape) to the
    runc context on the host
    -   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/runC>


### [[USN-4049-1](https://usn.ubuntu.com/4049-1/), [USN-4049-2](https://usn.ubuntu.com/4049-2/)] GLib vulnerability {#usn-4049-1-usn-4049-2-glib-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Cosmic
    -   [CVE-2019-13012](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13012)
-   Similar to [CVE-2019-12450](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12450) ([Episode 36](https://ubuntusecuritypodcast.org/episode-36/)) - in this case, directories and
    files would get created with default permisssions, not restrictive
    permissions, when using the keyfile gsettings backend - could expose
    settings or allow other users to modify settings etc.


### [[USN-4050-1](https://usn.ubuntu.com/4050-1/)] ZeroMQ vulnerability {#usn-4050-1-zeromq-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-13132](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13132)
-   Stack buffer overflow when using CURVE encryption/authentication -> RCE


### [[USN-4051-1](https://usn.ubuntu.com/4051-1/), USN-4051-2] Apport vulnerability {#usn-4051-1-usn-4051-2-apport-vulnerability}

-   1 CVEs addressed in Trusty ESM, Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-7307](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7307)
-   Reported by Kevin Backhouse of Semmle Security Research Team
-   TOCTOU when processing a users own ignore configuration file
-   Apport runs as root, but would check permission to file via access()
    system call - which uses the real processes' UID / GID - so is safe as a
    permission check - BUT would then go and open the file - so in the
    meantime this could be replaced by a symlink to say a root owned file
    which could then get included in the resulting crash report
-   Fix is to seteuid() as the desired user to set effective UID to then
    actually open the file before restoring euid to root - so this does both
    the equivalent of the access and open in 1 call avoiding to TOCTOU


### [[USN-4052-1](https://usn.ubuntu.com/4052-1/)] Whoopsie vulnerability {#usn-4052-1-whoopsie-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11476](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11476)
-   Reported by Kevin Backhouse of Semmle Security Research Team
-   Integer overflow when processing crash dump - when parsing the crash
    dump, if it contained an artificially large value in the dump file, would
    overflow length calculation, then would result in a heap-buffer OOB write
    -> crash, DoS OR code-execution as whoopsie process.
-   When coupled with previous Apport bug could allow an arbitrary user to
    read any file on the system by first embedding it in a crash dump via
    Apport and then triggering Whoopsie to process it and expose the via
    arbitrary code execution


### [[USN-4053-1](https://usn.ubuntu.com/4053-1/)] GVfs vulnerabilities {#usn-4053-1-gvfs-vulnerabilities}

-   4 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-12795](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12795)
    -   [CVE-2019-12449](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12449)
    -   [CVE-2019-12448](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12448)
    -   [CVE-2019-12447](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12447)
-   gvfs private server socket did not configure any authorisation - so any
    user could possible connect to it and issue API calls -> possible code
    exection as another user
-   files created / moved by admin backend could end up with wrong file
    ownership - admin backend allows to access root files as normal user (via
    admin authorisation) - so can copy files as a user to root's home which
    then are still owned by the original user


### [[USN-4054-1](https://usn.ubuntu.com/4054-1/)] Firefox vulnerabilities {#usn-4054-1-firefox-vulnerabilities}

-   21 CVEs addressed in Xenial, Bionic, Cosmic, Disco
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
-   Upstream release 68.0


### [[USN-4064-1](https://usn.ubuntu.com/4064-1/)] Thunderbird vulnerabilities {#usn-4064-1-thunderbird-vulnerabilities}

-   10 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11730](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11730)
    -   [CVE-2019-11729](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11729)
    -   [CVE-2019-11719](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11719)
    -   [CVE-2019-11717](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11717)
    -   [CVE-2019-11715](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11715)
    -   [CVE-2019-11713](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11713)
    -   [CVE-2019-11712](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11712)
    -   [CVE-2019-11711](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11711)
    -   [CVE-2019-11709](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11709)
    -   [CVE-2019-9811](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9811)
-   Upstream release 60.8


### [[USN-4055-1](https://usn.ubuntu.com/4055-1/)] flightcrew vulnerabilities {#usn-4055-1-flightcrew-vulnerabilities}

-   3 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-13453](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13453)
    -   [CVE-2019-13241](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13241)
    -   [CVE-2019-13032](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13032)
-   Mike Salvatore discovered and coordinated with upstream on fixing these issues
-   Found 2 through fuzzing, 1 though code-analysis whilst analysing first two vulnerabilites
-   2 fuzzing bugs
    -   1 NULL pointer dereference (crash, DoS)
    -   1 infinite loop (CPU DoS)
-   1 zip slip - write files outside of working directory when handling zip files (EPUB is a ZIP file)
-   Great write-up on his blog:
    -   <https://salvatoresecurity.com/fun-with-fuzzers-or-how-i-discovered-three-vulnerabilities-part-1-of-3/>
    -   <https://salvatoresecurity.com/fun-with-fuzzers-how-i-discovered-three-vulnerabilities-part-2-of-3/>
    -   <https://salvatoresecurity.com/fun-with-fuzzers-how-i-discovered-three-vulnerabilities-part-3-of-3/>


### [[USN-4056-1](https://usn.ubuntu.com/4056-1/)] Exiv2 vulnerabilities {#usn-4056-1-exiv2-vulnerabilities}

-   7 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-13114](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13114)
    -   [CVE-2019-13113](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13113)
    -   [CVE-2019-13110](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13110)
    -   [CVE-2019-13112](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13112)
    -   [CVE-2018-19535](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19535)
    -   [CVE-2018-19108](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19108)
    -   [CVE-2018-19107](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19107)
-   Library and CLI toolks to manage image metadata
-   All DoS - assertion failure / NULL pointer dereference / OOB read /
    uncontrolled memory allocation / infinite loop


### [[USN-4057-1](https://usn.ubuntu.com/4057-1/)] Zipios vulnerability {#usn-4057-1-zipios-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-13453](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13453)
-   Same as the flightcrew infinite loop issue since flightcrew contains an
    embedded copy of zipios


### [[USN-4058-1](https://usn.ubuntu.com/4058-1/)] Bash vulnerability {#usn-4058-1-bash-vulnerability}

-   1 CVEs addressed in Xenial
    -   [CVE-2019-9924](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9924)
-   rbash did not prevent modifying BASH\_CMDS so user could execute any
    commands as the shell, defeating the purpose of rbash


### [[USN-4059-1](https://usn.ubuntu.com/4059-1/), [USN-4059-2](https://usn.ubuntu.com/4059-2/)] Squid vulnerabilities {#usn-4059-1-usn-4059-2-squid-vulnerabilities}

-   2 CVEs addressed in Precise ESM, Xenial, Bionic, Disco
    -   [CVE-2019-13345](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13345)
    -   [CVE-2018-19132](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19132)
-   XSS in cachemgr CGI web module, and memory leak in SNMP module


### [[USN-4060-1](https://usn.ubuntu.com/4060-1/), [USN-4060-2](https://usn.ubuntu.com/4060-2/)] NSS vulnerabilities {#usn-4060-1-usn-4060-2-nss-vulnerabilities}

-   3 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-11729](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11729)
    -   [CVE-2019-11727](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11727)
    -   [CVE-2019-11719](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11719)
-   3 of the CVEs from the Firefox update (since Firefox contains libnss)
    -   Empty public keys could trigger a segfault
    -   Possible to force to sign with wrong signature type with TLS 1.3
    -   OOB read when importing a private key with leading NUL bytes -> info
        disclosure / crash


### [[USN-4061-1](https://usn.ubuntu.com/4061-1/)] Redis vulnerabilities {#usn-4061-1-redis-vulnerabilities}

-   2 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-10193](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10193)
    -   [CVE-2019-10192](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10192)
-   1 stack, and 1 heap based buffer overflows when handling purposely
    corrupted hyperloglog data structure


### [[USN-4062-1](https://usn.ubuntu.com/4062-1/)] WavPack vulnerabilities {#usn-4062-1-wavpack-vulnerabilities}

-   4 CVEs addressed in Bionic, Disco
    -   [CVE-2019-1010319](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1010319)
    -   [CVE-2019-1010318](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1010318)
    -   [CVE-2019-1010317](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1010317)
    -   [CVE-2019-1010315](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1010315)
-   3 different DoS issues (1 CVE was found to be the same as the other)
    -   2 \* use of uninitialised variable
    -   Divide by zero


### [[USN-4063-1](https://usn.ubuntu.com/4063-1/)] LibreOffice vulnerabilities {#usn-4063-1-libreoffice-vulnerabilities}

-   2 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-9849](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9849)
    -   [CVE-2019-9848](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9848)
-   RCE via a malicious document - docs can contain python - and this can be
    used with the built-in LibreLogo turtle graphics script to execute
    bundled python code - so can get RCE via a mouse-over event using
    LibreLogo and embedded python
-   Stealth mode - documents can only fetch resources from 'trusted'
    locations
    -   Allows to disable the normal remote resource handling in documents to
        be a more private mode
    -   BUT bullet graphics not included - so could specify a remote bullet
        graphic from a non-trusted location and would still be fetched


### [[USN-4065-1](https://usn.ubuntu.com/4065-1/)] Squid vulnerabilities {#usn-4065-1-squid-vulnerabilities}

-   3 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-12529](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12529)
    -   [CVE-2019-12527](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12527)
    -   [CVE-2019-12525](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12525)
-   3 different possible crash bugs via memory corruption -> DoS, but also
    maybe RCE...
    -   1 when using digest auth and 2 for basic auth


### [[USN-4066-1](https://usn.ubuntu.com/4066-1/)] libmspack vulnerability {#usn-4066-1-libmspack-vulnerability}

-   1 CVEs addressed in Xenial, Bionic
    -   [CVE-2019-1010305](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1010305)
-   Buffer over-read with malicious chm file -> crash, DoS


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Discussion with Joe McManus on recent large GDPR fines for Marriot and British Airways {#discussion-with-joe-mcmanus-on-recent-large-gdpr-fines-for-marriot-and-british-airways}

-   <https://thehackernews.com/2019/07/british-airways-breach-gdpr-fine.html>
-   <https://threatpost.com/marriott-123m-fine-data-breach/146320/>


### Ubuntu 18.10 (Cosmic Cuttlefish) End-of-Life {#ubuntu-18-dot-10--cosmic-cuttlefish--end-of-life}

-   Ubuntu 18.10 Cosmic Cuttlefish EOL was on 18th July, 2019
-   <https://lists.ubuntu.com/archives/ubuntu-security-announce/2019-July/005021.html>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)