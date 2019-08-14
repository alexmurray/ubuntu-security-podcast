+++
title = "Episode 30"
description = "Fixes for 19 different vulnerabilities across MySQL, Dovecot, Memcached and others, plus we talk to Joe McManus about the recent iLnkP2P IoT hack and the compromise of DockerHub's credentials database and more."
date = 2019-05-06
lastmod = 2019-08-14T21:43:05+09:30
draft = false
weight = 1013
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E030.mp3"
podcast_duration = "20:48"
podcast_bytes = 19971473
permalink = "https://ubuntusecuritypodcast.org/episode-30/"
+++

## Overview {#overview}

Fixes for 19 different vulnerabilities across MySQL, Dovecot, Memcached and others, plus we talk to Joe McManus about the recent iLnkP2P IoT hack and the compromise of DockerHub's credentials database and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

19 unique CVEs addressed


### [[USN-3957-1](https://usn.ubuntu.com/3957-1/)] MySQL vulnerabilities {#usn-3957-1-mysql-vulnerabilities}

-   8 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-2683](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2683)
    -   [CVE-2019-2632](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2632)
    -   [CVE-2019-2628](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2628)
    -   [CVE-2019-2627](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2627)
    -   [CVE-2019-2614](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2614)
    -   [CVE-2019-2592](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2592)
    -   [CVE-2019-2581](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2581)
    -   [CVE-2019-2566](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2566)
-   Latest upstream version 5.7.26 includes fixes for 8 different issues including:
    -   Unauthenticated remote attacker could gain complete access to all MySQL server data
    -   Multiple versions of privileged attacker could hang / crash MySQL server


### [[USN-3958-1](https://usn.ubuntu.com/3958-1/)] GStreamer Base Plugins vulnerability {#usn-3958-1-gstreamer-base-plugins-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2019-9928](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9928)
-   Heap based buffer overflow in RTSP connection parser - could allow a
    malicious server to gain remote code execution on the client - session id
    can contain attributes separated by semi-colons - would assume when
    encountering a semi-colon that this delimits the maximum size of the
    session id - however the session id has a maximum size of 512 bytes -
    would overflow by using the user-supplied session id length rather than
    sticking to the maximum structure length - changed to only parse up to
    the maximum size of the structure to ensure we then don't overflow when
    copying


### [[USN-3959-1](https://usn.ubuntu.com/3959-1/)] Evince vulnerability {#usn-3959-1-evince-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11459](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11459)
-   Failed to check return values when calling functions for libTIFF - these
    return the pixel data from an embedded TIFF image - on failure would end
    up rendering uninitialised memory rather than the TIFF image - fixed to
    check return values and bail out on error


### [[USN-3960-1](https://usn.ubuntu.com/3960-1/)] WavPack vulnerability {#usn-3960-1-wavpack-vulnerability}

-   1 CVEs addressed in Bionic, Cosmic, Disco
    -   [CVE-2019-11498](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11498)
-   Fuzzing via valgrind - found if no sample rate was specified then a stack
    declared but uninitialized value would be used - could cause a crash etc
    since could be anything - fixed to initialise it to 0 and to check if
    still zero before proceeding to process


### [[USN-3961-1](https://usn.ubuntu.com/3961-1/)] Dovecot vulnerabilities {#usn-3961-1-dovecot-vulnerabilities}

-   2 CVEs addressed in Cosmic, Disco
    -   [CVE-2019-11499](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11499)
    -   [CVE-2019-11494](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11494)
-   Two issues related to authentication in recent versions of dovecot - if
    client aborts authentication the serer could crash due to a NULL pointer
    dereference, and if using TLS but send an invalid authentication message
    could crash as well


### [[USN-3962-1](https://usn.ubuntu.com/3962-1/)] libpng vulnerability {#usn-3962-1-libpng-vulnerability}

-   1 CVEs addressed in Bionic, Cosmic
    -   [CVE-2019-7317](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7317)
-   Use after free in png image cleanup - originally was called under
    png\_safe\_execute() - this is an internal function which itself calls
    png\_image\_free() - so after freeing the image would free it a second time
    in certain conditions - changed to just call the free function directly
    rather than via png\_safe\_execute()


### [[USN-3963-1](https://usn.ubuntu.com/3963-1/)] Memcached vulnerability {#usn-3963-1-memcached-vulnerability}

-   1 CVEs addressed in Bionic, Cosmic, Disco
    -   [CVE-2019-11596](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11596)
-   Possible NULL pointer dereference via local command interface due to
    insufficient checks when parsing input - commands require 4 input tokens
    but only checked for 3 (off-by-one) - could allow an attacker with access
    to the command interface to crash memcached


### [[USN-3953-2](https://usn.ubuntu.com/3953-2/)] PHP vulnerabilities {#usn-3953-2-php-vulnerabilities}

-   2 CVEs addressed in Precise ESM, Trusty ESM
    -   [CVE-2019-11035](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11035)
    -   [CVE-2019-11034](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11034)
-   [Episode 29](https://ubuntusecuritypodcast.org/episode-29/) covered these for standard supported releases - this update is
    for the ESM releases - two bugs in EXIF tag handling


### [[USN-3964-1](https://usn.ubuntu.com/3964-1/)] python-gnupg vulnerabilities {#usn-3964-1-python-gnupg-vulnerabilities}

-   2 CVEs addressed in Bionic, Cosmic, Disco
    -   [CVE-2019-6690](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6690)
    -   [CVE-2018-12020](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12020)
-   Possible to trick gnupg to decrypt ciphertext other than the intended one
    when an attacker can control the passphrase to gnupg and the ciphertext
    is assumed trusted - this uses the command-interface of gnupg and passes
    the passphrase directly to it - along with the ciphertext - so if
    attacker includes newlines in the supplied passphrase can then inject
    their own ciphertext (or plaintext in the context of encryption) - fixed
    to check passphrase does not contain line-feed or carriage return
    characters
-   Possible to trick by including what looks like the return response from
    gnupg directly in the filename to be decrypted when using verbose output
    mode - fixed by sanitising this filename first


## Discussion with Joe McManus about another IoT compromise and DockerHub {#discussion-with-joe-mcmanus-about-another-iot-compromise-and-dockerhub}

-   <https://krebsonsecurity.com/2019/04/p2p-weakness-exposes-millions-of-iot-devices/>
-   <https://www.zdnet.com/article/over-two-million-iot-devices-vulnerable-because-of-p2p-component-flaws/>
-   <https://www.zdnet.com/article/docker-hub-hack-exposed-data-of-190000-users/>


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Hiring {#hiring}


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)