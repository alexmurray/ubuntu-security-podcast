+++
title = "Episode 111"
description = """
  This week we look at how Ubuntu is faring at Pwn2Own 2021 (which still has
  1 day and 2 more attempts at pwning Ubuntu 20.10 to go) plus we look at
  security updates for SpamAssassin, the Linux kernel, Rack and Django, and
  we cover some open positions on the Ubuntu Security team too.
  """
date = 2021-04-08T12:04:00+09:30
lastmod = 2022-05-15T18:06:11+09:30
draft = false
weight = 1049
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E111.mp3"
podcast_duration = "12:10"
podcast_bytes = 9591856
permalink = "https://ubuntusecuritypodcast.org/episode-111/"
guid = "d75611feb62b2de72f46adf7cb4f0854e210eb12cbc111b02a152e304d8038ff80936690f27a5ca76ec5673988fd1ca6526640820163fc1adff782ed9af454e0"
+++

## Overview {#overview}

This week we look at how Ubuntu is faring at Pwn2Own 2021 (which still has
1 day and 2 more attempts at pwning Ubuntu 20.10 to go) plus we look at
security updates for SpamAssassin, the Linux kernel, Rack and Django, and
we cover some open positions on the Ubuntu Security team too.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

14 unique CVEs addressed


### [[USN-4899-1](https://ubuntu.com/security/notices/USN-4899-1)] SpamAssassin vulnerability [00:46] {#usn-4899-1-spamassassin-vulnerability-00-46}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-1946](https://ubuntu.com/security/CVE-2020-1946) <!-- - -->
-   Damian Lukowski - remote code execution in configuration file parser for
    SpamAssassin - failed to properly sanitise certain elements of config
    files so could allow an attacker to specify commands to be executed by
    SpamAssassin - if not using configs from untrusted sources should be fine


### [[USN-4900-1](https://ubuntu.com/security/notices/USN-4900-1)] OpenEXR vulnerabilities [01:40] {#usn-4900-1-openexr-vulnerabilities-01-40}

-   6 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-3479](https://ubuntu.com/security/CVE-2021-3479) <!-- medium -->
    -   [CVE-2021-3478](https://ubuntu.com/security/CVE-2021-3478) <!-- medium -->
    -   [CVE-2021-3477](https://ubuntu.com/security/CVE-2021-3477) <!-- low -->
    -   [CVE-2021-3476](https://ubuntu.com/security/CVE-2021-3476) <!-- medium -->
    -   [CVE-2021-3475](https://ubuntu.com/security/CVE-2021-3475) <!-- medium -->
    -   [CVE-2021-3474](https://ubuntu.com/security/CVE-2021-3474) <!-- medium -->
-   Usual mix of memory corruption vulns in this image processing library -
    DoS via memory consumption, integer overflow -&gt; buffer overflow -&gt; RCE
    etc from crafted image files


### [[USN-4901-1](https://ubuntu.com/security/notices/USN-4901-1)] Linux kernel (Trusty HWE) vulnerabilities [02:24] {#usn-4901-1-linux-kernel--trusty-hwe--vulnerabilities-02-24}

-   4 CVEs addressed in Precise ESM (12.04 ESM)
    -   [CVE-2021-27364](https://ubuntu.com/security/CVE-2021-27364) <!-- medium -->
    -   [CVE-2021-27363](https://ubuntu.com/security/CVE-2021-27363) <!-- medium -->
    -   [CVE-2020-28374](https://ubuntu.com/security/CVE-2020-28374) <!-- high -->
    -   [CVE-2021-27365](https://ubuntu.com/security/CVE-2021-27365) <!-- high -->
-   3.13 kernel used as the HWE kernel from 14.04 backported to 12.04 ESM
-   iSCSI issues from [Episode 109](https://ubuntusecuritypodcast.org/episode-109/) plus LIO SCSI XCOPY issue from [Episode 102](https://ubuntusecuritypodcast.org/episode-102/)


### [[USN-4561-2](https://ubuntu.com/security/notices/USN-4561-2)] Rack vulnerabilities [03:27] {#usn-4561-2-rack-vulnerabilities-03-27}

-   2 CVEs addressed in Xenial (16.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-8184](https://ubuntu.com/security/CVE-2020-8184) <!-- medium -->
    -   [CVE-2020-8161](https://ubuntu.com/security/CVE-2020-8161) <!-- low -->
-   Modular Ruby webserver interface
-   [Episode 93](https://ubuntusecuritypodcast.org/episode-93/) - 18.04 LTS - now provided for remaining releases


### [[USN-4902-1](https://ubuntu.com/security/notices/USN-4902-1)] Django vulnerability [03:53] {#usn-4902-1-django-vulnerability-03-53}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-28658](https://ubuntu.com/security/CVE-2021-28658) <!-- low -->
-   Potential directory traversal via uploaded files - if using a custom
    upload handler with the MultiPartParser from the django parsers
    framework, could have been vulnerable - didn't affect any of the built-in
    upload parsers within django hence the low priority rating for this CVE


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu at Pwn2Own 2021 [04:47] {#ubuntu-at-pwn2own-2021-04-47}

-   <https://www.zerodayinitiative.com/blog/2021/4/2/pwn2own-2021-schedule-and-live-results>
-   6th, 7th &amp; 8th April - 23 separate entries targeting 10 different
    products in the categories of Web Browsers, Virtualization, Servers,
    Local Escalation of Privilege, and Enterprise
    Communications (aka Zoom, MS Teams etc)
-   14 years - grows each year to include new targets / platforms - this year
    included categories for both automotive (Tesla Model 3) and Enterprise
    applications (MS Office, Adobe Reader) - but neither had any entrants
-   4 different teams targeted Ubuntu Desktop in local privilege escalation
    category - go from a standard user to root - and pwn2own rules say this
    must be via a kernel vulnerability - in this case it is an up-to-date
    Ubuntu 20.10 install running inside a virtual machine
-   Attempts on day 1 and 2 were both successful - [Ryota Shiga](https://twitter.com/thezdi/status/1379543504590938114) of Flatt
    Security and [Manfred Paul](https://twitter.com/thezdi/status/1379902313062600705) both used separate OOB access bugs to escalate
    from a standard user to root
    -   each earned $30,000 and 3 points in the competitions Master of Pwn
        award
-   Tomorrow (8th) will see two more attempts by Billy from STAR Labs and
    Vincent Dehors of Synacktiv - this will be live-streamed too on [YouTube](https://youtu.be/dA3aIMgRFY8),
    [Twitch](https://www.twitch.tv/trendmicro_events), and the [conference site](https://www.pscp.tv/w/1lDxLpXEqeQxm).
-   Also not just Ubuntu was exploited - so far all teams who have attempted
    to exploit have been successful - Safari, MS Exchange, MS Teams, Windows
    10, Parallels Desktop, Chrome, Microsoft Edge, Zoom
    -   only exception so far is for STAR Labs who have not managed to get
        their exploits working in the allotted time
-   More details to follow once the vulns and their fixes become public -
    competition has a 90 day policy for fixes to be public but I suspect we
    will see these sooner than that - regardless will look at remaining results of
    other 2 teams next week as well


### Hiring [10:03] {#hiring-10-03}


#### AppArmor Security Engineer {#apparmor-security-engineer}

-   <https://canonical.com/careers/2114847/apparmor-security-engineer-remote>
    <!-- americas, emea -->


#### Linux Cryptography and Security Engineer {#linux-cryptography-and-security-engineer}

-   <https://canonical.com/careers/2612092/linux-cryptography-and-security-engineer-remote>
    <!-- americas -->


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>
    <!-- worldwide -->


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)