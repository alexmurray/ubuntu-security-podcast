+++
title = "Episode 34"
description = "This week we look at security updates for Keepalived, Corosync, GnuTLS, libseccomp and more, plus we talk insider threats with Joe McManus."
date = 2019-06-03
lastmod = 2019-10-10T20:26:32+10:30
draft = false
weight = 1015
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E034.mp3"
podcast_duration = "23:37"
podcast_bytes = 22679837
permalink = "https://ubuntusecuritypodcast.org/episode-34/"
+++

## Overview {#overview}

This week we look at security updates for Keepalived, Corosync, GnuTLS, libseccomp and more, plus we talk insider threats with Joe McManus.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

32 unique CVEs addressed


### [[USN-3976-3](https://usn.ubuntu.com/3976-3/), [USN-3976-4](https://usn.ubuntu.com/3976-4/)] Samba regression {#usn-3976-3-usn-3976-4-samba-regression}

-   Affecting Trusty ESM, Xenial, Bionic
-   [Episode 32](https://ubuntusecuritypodcast.org/episode-32/) - discussed privilege escalation vuln and fix for Samba
-   Original update caused a regression where Samba might crash - fixed


### [[USN-3994-1](https://usn.ubuntu.com/3994-1/)] gnome-desktop vulnerability {#usn-3994-1-gnome-desktop-vulnerability}

-   1 CVEs addressed in Bionic, Cosmic, Disco
    -   [CVE-2019-11460](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11460)
-   Thumbnailers could possibly escape bubblewrap sandbox by using TIOCSTI
    ioctl to send characters to the controlling terminals input buffer and
    hence escape the sandbox
    -   Requires to compromise a thumbnailer in the first place so less impact
    -   Similar to [CVE-2019-10063](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10063) for flatpak and [CVE-2019-7303](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7303) for snapd


### [[USN-3995-1](https://usn.ubuntu.com/3995-1/), [USN-3995-2](https://usn.ubuntu.com/3995-2/)] Keepalived vulnerability {#usn-3995-1-usn-3995-2-keepalived-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Cosmic
    -   [CVE-2018-19115](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19115)
-   Heap based buffer overflow when parsing HTTP response code - would
    potentially write an unlimited amount of attacker controlled data to the
    heap for a 10-byte long buffer
-   Crash -> DoS, RCE
-   Fixed to properly parse and expect at most a 3 digit long response code


### [[USN-3845-2](https://usn.ubuntu.com/3845-2/)] FreeRDP vulnerabilities {#usn-3845-2-freerdp-vulnerabilities}

-   6 CVEs addressed in Bionic, Cosmic
    -   [CVE-2018-8789](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-8789)
    -   [CVE-2018-8788](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-8788)
    -   [CVE-2018-8787](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-8787)
    -   [CVE-2018-8786](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-8786)
    -   [CVE-2018-8785](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-8785)
    -   [CVE-2018-8784](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-8784)
-   Back in December published update for FreeRDP (USN-3845-1 - [Episode 16](https://ubuntusecuritypodcast.org/episode-16/))
    -   In Bionic and Cosmic freerdp2 is in main, so that update was for freerdp2
    -   This update is for freerdp (v1), which is in universe in bionic + cosmic
    -   Corresponding update


### [[USN-3997-1](https://usn.ubuntu.com/3997-1/)] Thunderbird vulnerabilities {#usn-3997-1-thunderbird-vulnerabilities}

-   14 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2018-18511](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18511)
    -   [CVE-2019-11698](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11698)
    -   [CVE-2019-9816](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9816)
    -   [CVE-2019-7317](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7317)
    -   [CVE-2019-5798](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5798)
    -   [CVE-2019-9820](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9820)
    -   [CVE-2019-9819](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9819)
    -   [CVE-2019-9817](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9817)
    -   [CVE-2019-9800](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9800)
    -   [CVE-2019-9797](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9797)
    -   [CVE-2019-11693](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11693)
    -   [CVE-2019-11692](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11692)
    -   [CVE-2019-11691](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11691)
    -   [CVE-2019-18511](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18511)
-   Thunderbird 60.7.0 - latest upstream release includes a heap of security fixes
-   Most all come from Firefox (DoS, bypass same-origin restrictions or RCE)


### [[USN-3996-1](https://usn.ubuntu.com/3996-1/)] GNU Screen vulnerability {#usn-3996-1-gnu-screen-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty ESM
    -   [CVE-2015-6806](https://people.canonical.com/~ubuntu-security/cve/CVE-2015-6806)
-   Old low priority issue fixed for ESM releases (fixed back in 2015
    upstream so screen in Xenial, Bionic etc not affected)
-   Attacker could cause a crash due to stack overrun via recursion due to
    large number of repeated ANSI escape sequences in output


### [[USN-3968-2](https://usn.ubuntu.com/3968-2/)] Sudo vulnerability {#usn-3968-2-sudo-vulnerability}

-   1 CVEs addressed in Trusty ESM
    -   [CVE-2017-1000368](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-1000368)
-   [Episode 31](https://ubuntusecuritypodcast.org/episode-31/) - updated sudo in xenial - corresponding update for Trusty ESM


### [[USN-3998-1](https://usn.ubuntu.com/3998-1/)] Evolution Data Server vulnerability {#usn-3998-1-evolution-data-server-vulnerability}

-   1 CVEs addressed in Xenial, Bionic
    -   [CVE-2018-15587](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15587)
-   Research from Marcus Brinkmann showed it was possible to create an
    encrypted email with a zero-length encrypted section along with
    unencrypted contents which Evolution (and other email clients) would show
    as being encrypted.
-   Mail clients call out to gpg (gnupg) to decrypt the email but are lax in
    parsing GPGs output and so confuse the whole email as being encrypted
-   Due to SW arch of evolution, part of this fix is done in Evolution itself
    (to better highlight to the user that the email contains unencrypted
    portions) and part is done in the backend (Evolution Data Server) to
    properly parse output of gnupg


### [[USN-3999-1](https://usn.ubuntu.com/3999-1/)] GnuTLS vulnerabilities {#usn-3999-1-gnutls-vulnerabilities}

-   5 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-3836](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3836)
    -   [CVE-2019-3829](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3829)
    -   [CVE-2018-10846](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10846)
    -   [CVE-2018-10845](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10845)
    -   [CVE-2018-10844](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10844)
-   3 CVEs related to "Lucky Thirteen" attack (originally published in 2013)
    -   Timing attack against TLS implementations that use CBC
    -   One countermeasure was to use "psuedo constant time"
    -   New research showed this is not sufficient (incidentally one of the
        researchers was Adi Shamir, co-inventor of the RSA algorithm - the "S"
        in RSA)
-   1 CVE from Tavis Ormandy (double-free when handling X.509 certificates) -
    crash -> DoS, code execution
-   Last CVE - uninitialized pointer could be dereferenced when handling
    certain post-handshake messages - likely crash -> DoS


### [[USN-4000-1](https://usn.ubuntu.com/4000-1/)] Corosync vulnerability {#usn-4000-1-corosync-vulnerability}

-   1 CVEs addressed in Xenial, Bionic
    -   [CVE-2018-1084](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1084)
-   Integer overflow leading to a buffer overflow (read), able to be
    triggered by an unauthenticated user - crash -> DoS


### [[USN-4001-1](https://usn.ubuntu.com/4001-1/), [USN-4001-2](https://usn.ubuntu.com/4001-2/)] libseccomp vulnerability {#usn-4001-1-usn-4001-2-libseccomp-vulnerability}

-   1 CVEs addressed in Trusty ESM, Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-9893](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9893)
-   Seccomp allows to write policies to act on system calls arguments via
    BPF - includes comparison operators like less than (LT) etc - Jann Horn
    discovered that on 64-bit platforms it did not generate correct BPF to
    perform comparisons correctly
-   In this case, the updates from upstream relied on other upstream changes
    so we chose to upgrade seccomp entirely rather than try and backport the
    fixes as they were too involved and so less risk overall in upgrading the
    version than in backporting


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe talk about insider threats {#alex-and-joe-talk-about-insider-threats}

-   <https://threatpost.com/snapchat-privacy-blunder-piques-concerns-about-insider-threats/145074/>
-   <https://resources.sei.cmu.edu/library/asset-view.cfm?assetid=484738>


### Hiring {#hiring}


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


#### Security Certifications Engineer {#security-certifications-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1660658>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)