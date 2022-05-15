+++
title = "Episode 8"
description = "This week we look at some details of the 15 unique CVEs addressed across the supported Ubuntu releases and discuss some of the security relevant changes in Ubuntu 18.10, plus a refresh of the Ubuntu CVE tracker and more."
date = 2018-10-22
lastmod = 2022-05-15T18:07:31+09:30
draft = false
weight = 1152
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E008.mp3"
podcast_duration = "9:10"
podcast_bytes = 8806111
permalink = "https://ubuntusecuritypodcast.org/episode-8/"
+++

## Overview {#overview}

This week we look at some details of the 15 unique CVEs addressed across the supported Ubuntu releases and discuss some of the security relevant changes in Ubuntu 18.10, plus a refresh of the Ubuntu CVE tracker and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

15 unique CVEs addressed


### [[USN-3790-1](https://usn.ubuntu.com/3790-1/)] Requests vulnerability {#usn-3790-1-requests-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-18074](https://ubuntu.com/security/CVE-2018-18074)
-   Requests library could end up sending credentials in clear text if server is configured with a https -&gt; http redirect


### [[USN-3792-1](https://usn.ubuntu.com/3792-1/), [USN-3792-2](https://usn.ubuntu.com/3792-2/)] Net-SNMP vulnerability {#usn-3792-1-usn-3792-2-net-snmp-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic &amp; Precise ESM
    -   [CVE-2018-18065](https://ubuntu.com/security/CVE-2018-18065)
-   Remote DoS via a NULL pointer dereference from an **authenticated** attacker


### [[USN-3793-1](https://usn.ubuntu.com/3793-1/)] Thunderbird vulnerabilities {#usn-3793-1-thunderbird-vulnerabilities}

-   5 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-12385](https://ubuntu.com/security/CVE-2018-12385)
    -   [CVE-2018-12383](https://ubuntu.com/security/CVE-2018-12383)
    -   [CVE-2018-12378](https://ubuntu.com/security/CVE-2018-12378)
    -   [CVE-2018-12377](https://ubuntu.com/security/CVE-2018-12377)
    -   [CVE-2018-12376](https://ubuntu.com/security/CVE-2018-12376)
-   New Thunderbird version (60) containing 5 fixes
-   Interestingly **all** of these were also vulnerabilities in Firefox - in
    particular CVE-2018-12383 was discussed in Episode 4 for Firefox


### [[USN-3794-1](https://usn.ubuntu.com/3794-1/)] MoinMoin vulnerability {#usn-3794-1-moinmoin-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2017-5934](https://ubuntu.com/security/CVE-2017-5934)
-   XSS in link editor dialog allow injection of arbitrary web content (HTML, scripts etc)


### [[USN-3789-2](https://usn.ubuntu.com/3789-2/)] ClamAV vulnerabilities {#usn-3789-2-clamav-vulnerabilities}

-   5 CVEs addressed in Precise ESM
    -   [CVE-2018-15378](https://ubuntu.com/security/CVE-2018-15378)
    -   [CVE-2018-14682](https://ubuntu.com/security/CVE-2018-14682)
    -   [CVE-2018-14681](https://ubuntu.com/security/CVE-2018-14681)
    -   [CVE-2018-14680](https://ubuntu.com/security/CVE-2018-14680)
    -   [CVE-2018-14679](https://ubuntu.com/security/CVE-2018-14679)
-   Corresponding fix for Precise ESM from ClamAV which we discussed in Episode 7
-   Also rolls in fixes for 4 other vulnerabilities in the embedded mspack library
    -   In trusty and precise we used the embedded libmspack, newer releases use
        the system package so weren't affected


### [[USN-3795-1](https://usn.ubuntu.com/3795-1/)] libssh vulnerability {#usn-3795-1-libssh-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-10933](https://ubuntu.com/security/CVE-2018-10933)
-   Embedded SSH server and client implementation
-   Allows bypass of authentication by remote attackers if they send a SSH2_MSG_USERAUTH_SUCCESS message instead of the SSH2_MSG_USERAUTH_REQUEST message to initiate the authentication process
-   This message is meant to be sent from the server to the client but in this case are sending it **to the server**
-   State machine on server-side then jumps straight to 'Authenticated'
-   Only affects applications which use libssh as a server


### [[USN-3796-1](https://usn.ubuntu.com/3796-1/), USN-3796-2] Paramiko vulnerability {#usn-3796-1-usn-3796-2-paramiko-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic &amp; Precise ESM
    -   [CVE-2018-1000805](https://ubuntu.com/security/CVE-2018-1000805)
-   Python SSH library for both servers and clients
-   Very similar to CVE-2018-10933 for libssh - remote authentication bypass by presenting SSH2_MSG_USERAUTH_SUCCESS in place of SSH2_MSG_USERAUTH_REQUEST
-   Due to code-reuse between client and server implementations
-   On server side, runs the normal client side code to be used when receiving this authentication success from the server, and flips the 'authenticated' flag - which is shared by both the server and client code


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 18.10 Cosmic Cuttlefish Released {#ubuntu-18-dot-10-cosmic-cuttlefish-released}

-   Includes OpenSSL 1.1.1 for TLS 1.3 support
-   Support for using fingerprint readers to unlock screen etc
    -   Ubuntu Security Team consider fingerprints to be akin to usernames only - so we don't enable fingerprint authentication by default - need to opt-in
    -   libfprint and fprintd promoted to main to allow this


### Ubuntu CVE Tracker facelift {#ubuntu-cve-tracker-facelift}

-   Refreshed look and feel via bootstrap
-   <https://ubuntu.com/security/>


### Hiring {#hiring}


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1158266>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)