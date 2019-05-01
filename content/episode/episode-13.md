+++
title = "Episode 13"
description = "This week we look at some details of the 16 unique CVEs addressed across the supported Ubuntu releases and more."
date = 2018-11-26
lastmod = 2019-05-01T16:45:38+09:30
draft = false
weight = 1017
episode_image = "img/episode/default.png"
explicit = "no"
podcast_file = "USP_E013.mp3"
podcast_duration = "08:30"
podcast_bytes = 8162872
permalink = "https://ubuntusecuritypodcast.org/episode-13/"
+++

## Overview {#overview}

This week we look at some details of the 16 unique CVEs addressed across the supported Ubuntu releases and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

16 unique CVEs addressed


### [[USN-3816-2](https://usn.ubuntu.com/3816-2/)] systemd vulnerability {#usn-3816-2-systemd-vulnerability}

-   3 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2018-15687](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15687)
    -   [CVE-2018-15686](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15686)
    -   [CVE-2018-6954](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-6954)
-   Episode 12 - original fix for CVE-2018-6954 was incomplete - this includes the complete fix
-   Also includes an update to avoid a possible hang on shutdown in unattended-upgrades - [LP #1803391](https://bugs.launchpad.net/bugs/1803391)
    -   During shutdown, systemd is already in the process of shutting down
    -   Then unattended-upgrades runs and it goes and tries to update systemd - which then tries to reexec it - which blocks waiting for it to finish shutting down
    -   Creates a deadlock since systemd is waiting on unattended-upgrades to finish but u-u is waiting on systemd reexec
    -   Fix is to not do reexec if systemd is already in the process of stopping


### [[USN-3825-1](https://usn.ubuntu.com/3825-1/), USN-3825-2] mod\_perl vulnerability {#usn-3825-1-usn-3825-2-mod-perl-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2011-2767](https://people.canonical.com/~ubuntu-security/cve/CVE-2011-2767)
-   Old CVE - reported to Debian in 2011, who assigned a CVE internally but didn't go any further with it
-   Recently the original reporter of the vulnerability submitted a patch to Debian to fix it - so vuln was reported to Mitre
-   Now fixed in Ubuntu as well


### [[USN-3801-2](https://usn.ubuntu.com/3801-2/)] Firefox regressions {#usn-3801-2-firefox-regressions}

-   12 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-12397](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12397)
    -   [CVE-2018-12396](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12396)
    -   [CVE-2018-12395](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12395)
    -   [CVE-2018-12403](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12403)
    -   [CVE-2018-12402](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12402)
    -   [CVE-2018-12401](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12401)
    -   [CVE-2018-12399](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12399)
    -   [CVE-2018-12398](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12398)
    -   [CVE-2018-12393](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12393)
    -   [CVE-2018-12392](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12392)
    -   [CVE-2018-12390](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12390)
    -   [CVE-2018-12388](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12388)
-   Firefox update (v63) (Episode 9) had some minor regressions
    -   These were present in the upstream firefox release itself
-   This provides [63.0.3](https://www.mozilla.org/en-US/firefox/63.0.3/releasenotes/) which contains these fixes from upstream to address the regressions
    -   WebGL hangs, slow page loading if using specific proxy settings etc.


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Linux Cryptocoin Malware {#linux-cryptocoin-malware}

-   <https://www.zdnet.com/article/new-linux-crypto-miner-steals-your-root-password-and-disables-your-antivirus/>
-   Apparently reports of users affected
-   Requires SSH to login - bruteforce passwords
    -   Use strong passwords / public key auth
-   Elevates privileges via two very old CVEs
    -   [CVE-2016-5195](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-5195) - Dirty Cow - fixed for Ubuntu in October 2016
    -   [CVE-2013-2094](https://people.canonical.com/~ubuntu-security/cve/CVE-2013-2094) - perf root privilege escalation - fixed for Ubuntu in May 2013
-   All Ubuntu users are fine unless you are running a old release AND have not been applying security patches
-   Please use strong passwords if enabling openssh server


### Preview of next episode {#preview-of-next-episode}


#### Upcoming fixes {#upcoming-fixes}

-   qemu, webkitgtk


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardended on the Freenode IRC network](http://webchat.freenode.net?channels=%23ubuntu-hardened&uio=d4)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)