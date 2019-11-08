+++
title = "Episode 51"
description = """
  In this Halloween Special, Joe and Alex talk about what scares them in
  security, plus we look at security updates for Firefox, PHP, Samba,
  Whoopsie, Apport and more.
  """
date = 2019-10-31T18:00:00+10:30
lastmod = 2019-11-08T21:49:30+10:30
draft = false
weight = 1002
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E051.mp3"
podcast_duration = "29:56"
podcast_bytes = 39938765
permalink = "https://ubuntusecuritypodcast.org/episode-51/"
guid = "b4b70514b6fc0095396ed3af2215ac25ed8c1c5f3aeec38a2e93b800831fc26e997456bb3bee80dd083570aed5b4bc12cc1e96fbd11999a6621945f7b6130794"
+++

## Overview {#overview}

In this Halloween Special, Joe and Alex talk about what scares them in
security, plus we look at security updates for Firefox, PHP, Samba,
Whoopsie, Apport and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

26 unique CVEs addressed


### [[USN-4165-1](https://usn.ubuntu.com/4165-1/)] Firefox vulnerabilities [00:46] {#usn-4165-1-firefox-vulnerabilities-00-46}

-   13 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-17002](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17002) <!--- low --->
    -   [CVE-2019-17001](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17001) <!--- medium --->
    -   [CVE-2019-17000](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17000) <!--- medium --->
    -   [CVE-2019-15903](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15903) <!--- medium --->
    -   [CVE-2019-11765](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11765) <!--- medium --->
    -   [CVE-2019-11764](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11764) <!--- medium --->
    -   [CVE-2019-11763](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11763) <!--- medium --->
    -   [CVE-2019-11762](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11762) <!--- medium --->
    -   [CVE-2019-11761](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11761) <!--- medium --->
    -   [CVE-2019-11760](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11760) <!--- medium --->
    -   [CVE-2019-11759](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11759) <!--- medium --->
    -   [CVE-2019-11757](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11757) <!--- medium --->
    -   [CVE-2018-6156](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-6156) <!--- high --->
-   1 high priority, 11 medium and 1 low
    -   Heap buffer overflow via a crafted WebRTC video - originally for
        Chromium and was fixed for that last year - Firefox suffered similarly
        but disables the feature by default - has finally been fixed for
        Firefox as well by integrating the original fix from Chromium
    -   Usual suspects of stack-based buffer overflows, UAFs, a heap buffer
        overflow in bundled expat ([Episode 47](https://ubuntusecuritypodcast.org/episode-47/)),


### [[USN-4166-1](https://usn.ubuntu.com/4166-1/), [USN-4166-2](https://usn.ubuntu.com/4166-2/)] PHP vulnerability [02:10] {#usn-4166-1-usn-4166-2-php-vulnerability-02-10}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-11043](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11043) <!--- medium --->
-   RCE in PHP (FPM - FastCGI Process Manager) - possible to cause the FPM
    module to write past allocated buffers - and so ends up also writing into the FCGI
    protocol data buffers - which can then create a chance for RCE
-   Exploit on github targetting vulnerable PHP-FPM servers which use nginx
    in a particular configuration


### [[USN-4167-1](https://usn.ubuntu.com/4167-1/), [USN-4167-2](https://usn.ubuntu.com/4167-2/)] Samba vulnerabilities [03:11] {#usn-4167-1-usn-4167-2-samba-vulnerabilities-03-11}

-   3 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-14847](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14847) <!--- medium --->
    -   [CVE-2019-14833](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14833) <!--- medium --->
    -   [CVE-2019-10218](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10218) <!--- medium --->
-   DoS from a user with "get changes" permissions - could crash an AD DC
    LDAP server due to a NULL pointer deref when using dirsync with ranged results
-   Can configure AD DC to call out to a custom command to verify password
    complexity - is handed a copy of the cleartext password - but if this
    contained any multi-byte characters, would not get the full password -
    since it would pass the password as bytes but only copy the number of
    characters - and since multi-byte characters take more than 1 byte would
    miss the last few bytes of the password - so could circumvent password
    complexity requirements
-   Malicious server could craft filenames which contain relative path
    characters (../ etc) which would then cause an SMB client to access local
    files for reading / writing rather than remote files - so a remote server
    could cause a client to create files outside the working directory on the
    local machine


### [[USN-4168-1](https://usn.ubuntu.com/4168-1/)] Libidn2 vulnerabilities [05:15] {#usn-4168-1-libidn2-vulnerabilities-05-15}

-   2 CVEs addressed in Bionic, Disco
    -   [CVE-2019-18224](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18224) <!--- medium --->
    -   [CVE-2019-12290](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12290) <!--- medium --->
-   Library for handling internationalised domain names
-   Heap based buffer overflow via a too-long domain name (greater than 63
    characters - in library, caller passes a buffer that is specified to be a
    minimum of 64 bytes - but libidn strcpy()'s into it so could easily overflow.
-   Possible domain name impersonation since doesn't bother to check unicode
    conversions - so could use punycode (ascii representation of certain
    unicode characters) to impersonate a unicode domain


### [[USN-4169-1](https://usn.ubuntu.com/4169-1/)] libarchive vulnerability [06:32] {#usn-4169-1-libarchive-vulnerability-06-32}

-   1 CVEs addressed in Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-18408](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18408) <!--- medium --->
-   UAF in certain failure conditions when handling RAR archives


### [[USN-4170-1](https://usn.ubuntu.com/4170-1/)] Whoopsie vulnerability [06:52] {#usn-4170-1-whoopsie-vulnerability-06-52}

-   1 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-11484](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11484) <!--- medium --->
-   Kevin Backhouse from Semmle Security Research Team - integer oveflow ->
    heap based buffer overflow -> code executions a whoopsie user


### [[USN-4171-1](https://usn.ubuntu.com/4171-1/)] Apport vulnerabilities [07:51] {#usn-4171-1-apport-vulnerabilities-07-51}

-   5 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-15790](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15790) <!--- medium --->
    -   [CVE-2019-11485](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11485) <!--- medium --->
    -   [CVE-2019-11483](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11483) <!--- medium --->
    -   [CVE-2019-11482](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11482) <!--- medium --->
    -   [CVE-2019-11481](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11481) <!--- low --->
-   Kevin Backhouse from Semmle Security Research Team
    -   reads /proc/PID files as root - so if can race on process ID reuse
        could cause Apport to generate a crash dump of a privileged process
        that is readable by a normal user (so starts dumping an unprivileged
        process, then PID race, new PID as privileged user -> this crashes ->
        Apport starts writing out the crash report for the first process but
        using the details of the new privileged process - since this was
        originally an unprivileged process, the crash dump is then unprivileged
        too). Fixed by making sure Apport drops privileges to the original
        unprivileged user before reading /proc/PID info so if this happens to
        then be a different user's process will not be able to generate the
        crash dump
    -   Apport would read a per-user configuration file - but would do so as
        root - and so this could be a symlink to a root owned file and Apport
        would happily read it (but might error out if it looked invalid) - so
        drop privileges to read it so it doesn't include anything which it
        shouldn't in the final crash report

-   Sander Bos
    -   Apport had a lock file in a world-writable directory - so anyone could
        create it to either stop Apport running or to control the execution of
        Apport over time - fixed to place in a non-world writable location
        instead
    -   When using containers, Apport uses a socket file to allow it to forward
        crash dumps that it captured on the host to an Apport instance running
        within a container containers - it finds the socket file from the host
        using the /proc/PID/root magic link - but this could allow an
        unprivileged user who (using unprivileged usernamespaces) is root in a
        container to chroot() for a process in a container to a different
        location so it can then intercept the crash dump of a privileged
        process within the container - so could run a setuid process in the
        container, and when it crashes be able to read it's crash dump
    -   TOCCTOU race on PID (like above) but this is in a different code path -
        reads the cwd of the crashed process to write out the core dump to this
        location - but on process ID reuse this could then be in a different
        location - so if a user can race against a privileged process dumping
        the crash dump could end up in a location of their choosing


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe and Alex discuss what scares them for Halloween [12:38] {#joe-and-alex-discuss-what-scares-them-for-halloween-12-38}


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)