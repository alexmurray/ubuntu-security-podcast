+++
title = "Episode 120"
description = """
  In this week's episode we look at how to get media coverage for your shiny
  new vulnerability, plus we cover security updates for ExifTool,
  ImageMagick, BlueZ and more.
  """
date = 2021-06-18T16:21:00+09:30
lastmod = 2021-06-18T16:22:05+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E120.mp3"
podcast_duration = "10:16"
podcast_bytes = 8246704
permalink = "https://ubuntusecuritypodcast.org/episode-120/"
guid = "1580d8948f4c929e33808605579ef600743e0848526106f8cea1ab175aa5cda7d0d52c52a04e3b48fa489743575c268e6100b9d5732f5df1e95abd20385d9ad3"
+++

## Overview {#overview}

In this week's episode we look at how to get media coverage for your shiny
new vulnerability, plus we cover security updates for ExifTool,
ImageMagick, BlueZ and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

49 unique CVEs addressed


### [[USN-4986-2](https://ubuntu.com/security/notices/USN-4986-2)] rpcbind vulnerability [00:44] {#usn-4986-2-rpcbind-vulnerability-00-44}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2017-8779](https://ubuntu.com/security/CVE-2017-8779) <!-- low -->
-   [Episode 119](https://ubuntusecuritypodcast.org/episode-119/) (bionic) - memory leak on crafted requests


### [[USN-4986-3](https://ubuntu.com/security/notices/USN-4986-3), [USN-4986-4](https://ubuntu.com/security/notices/USN-4986-4)] rpcbind regression [01:11] {#usn-4986-3-usn-4986-4-rpcbind-regression-01-11}

-   Affecting Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
-   Original fix missed follow-up patches to correct problems in the upstream
    fix - required multiple other bits to work correctly


### [[USN-4971-2](https://ubuntu.com/security/notices/USN-4971-2)] libwebp vulnerabilities [01:34] {#usn-4971-2-libwebp-vulnerabilities-01-34}

-   10 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2020-36331](https://ubuntu.com/security/CVE-2020-36331) <!-- medium -->
    -   [CVE-2020-36330](https://ubuntu.com/security/CVE-2020-36330) <!-- medium -->
    -   [CVE-2020-36329](https://ubuntu.com/security/CVE-2020-36329) <!-- medium -->
    -   [CVE-2020-36328](https://ubuntu.com/security/CVE-2020-36328) <!-- medium -->
    -   [CVE-2018-25014](https://ubuntu.com/security/CVE-2018-25014) <!-- medium -->
    -   [CVE-2018-25013](https://ubuntu.com/security/CVE-2018-25013) <!-- medium -->
    -   [CVE-2018-25012](https://ubuntu.com/security/CVE-2018-25012) <!-- medium -->
    -   [CVE-2018-25011](https://ubuntu.com/security/CVE-2018-25011) <!-- medium -->
    -   [CVE-2018-25010](https://ubuntu.com/security/CVE-2018-25010) <!-- medium -->
    -   [CVE-2018-25009](https://ubuntu.com/security/CVE-2018-25009) <!-- medium -->
-   [Episode 118](https://ubuntusecuritypodcast.org/episode-118/)


### [[USN-4987-1](https://ubuntu.com/security/notices/USN-4987-1)] ExifTool vulnerability [01:50] {#usn-4987-1-exiftool-vulnerability-01-50}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-22204](https://ubuntu.com/security/CVE-2021-22204) <!-- high -->
-   Was originally reported to gitlab via hackerone as exiftool is used on
    image uploads to redact image metadata etc - they coordinated the fix
    with exiftool upstream. RCE when parsing a malicious DjVu image - uses
    perl to parse DjVu and in doing so it eval's certain constructs without
    properly validating them


### [[USN-4988-1](https://ubuntu.com/security/notices/USN-4988-1)] ImageMagick vulnerabilities [03:17] {#usn-4988-1-imagemagick-vulnerabilities-03-17}

-   34 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-20176](https://ubuntu.com/security/CVE-2021-20176) <!-- low -->
    -   [CVE-2020-27776](https://ubuntu.com/security/CVE-2020-27776) <!-- low -->
    -   [CVE-2020-27775](https://ubuntu.com/security/CVE-2020-27775) <!-- low -->
    -   [CVE-2020-27774](https://ubuntu.com/security/CVE-2020-27774) <!-- low -->
    -   [CVE-2020-27773](https://ubuntu.com/security/CVE-2020-27773) <!-- low -->
    -   [CVE-2020-27772](https://ubuntu.com/security/CVE-2020-27772) <!-- low -->
    -   [CVE-2020-27771](https://ubuntu.com/security/CVE-2020-27771) <!-- low -->
    -   [CVE-2020-27770](https://ubuntu.com/security/CVE-2020-27770) <!-- low -->
    -   [CVE-2020-27769](https://ubuntu.com/security/CVE-2020-27769) <!-- low -->
    -   [CVE-2020-27768](https://ubuntu.com/security/CVE-2020-27768) <!-- low -->
    -   [CVE-2020-27767](https://ubuntu.com/security/CVE-2020-27767) <!-- low -->
    -   [CVE-2020-27766](https://ubuntu.com/security/CVE-2020-27766) <!-- low -->
    -   [CVE-2020-27765](https://ubuntu.com/security/CVE-2020-27765) <!-- low -->
    -   [CVE-2020-27764](https://ubuntu.com/security/CVE-2020-27764) <!-- low -->
    -   [CVE-2020-27763](https://ubuntu.com/security/CVE-2020-27763) <!-- low -->
    -   [CVE-2020-27762](https://ubuntu.com/security/CVE-2020-27762) <!-- low -->
    -   [CVE-2020-27761](https://ubuntu.com/security/CVE-2020-27761) <!-- low -->
    -   [CVE-2020-27760](https://ubuntu.com/security/CVE-2020-27760) <!-- low -->
    -   [CVE-2020-27759](https://ubuntu.com/security/CVE-2020-27759) <!-- low -->
    -   [CVE-2020-27758](https://ubuntu.com/security/CVE-2020-27758) <!-- low -->
    -   [CVE-2020-27757](https://ubuntu.com/security/CVE-2020-27757) <!-- low -->
    -   [CVE-2020-27756](https://ubuntu.com/security/CVE-2020-27756) <!-- low -->
    -   [CVE-2020-27755](https://ubuntu.com/security/CVE-2020-27755) <!-- low -->
    -   [CVE-2020-27754](https://ubuntu.com/security/CVE-2020-27754) <!-- low -->
    -   [CVE-2020-27753](https://ubuntu.com/security/CVE-2020-27753) <!-- low -->
    -   [CVE-2020-27751](https://ubuntu.com/security/CVE-2020-27751) <!-- low -->
    -   [CVE-2020-27750](https://ubuntu.com/security/CVE-2020-27750) <!-- low -->
    -   [CVE-2020-25676](https://ubuntu.com/security/CVE-2020-25676) <!-- low -->
    -   [CVE-2020-25675](https://ubuntu.com/security/CVE-2020-25675) <!-- low -->
    -   [CVE-2020-25674](https://ubuntu.com/security/CVE-2020-25674) <!-- low -->
    -   [CVE-2020-25666](https://ubuntu.com/security/CVE-2020-25666) <!-- low -->
    -   [CVE-2020-25665](https://ubuntu.com/security/CVE-2020-25665) <!-- low -->
    -   [CVE-2020-19667](https://ubuntu.com/security/CVE-2020-19667) <!-- low -->
    -   [CVE-2017-14528](https://ubuntu.com/security/CVE-2017-14528) <!-- negligible -->
-   every ~30 weeks we seem to have another ImageMagick update - so that time again ;)
-   DoS, RCE etc


### [[USN-4989-1](https://ubuntu.com/security/notices/USN-4989-1)] BlueZ vulnerabilities [03:56] {#usn-4989-1-bluez-vulnerabilities-03-56}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-3588](https://ubuntu.com/security/CVE-2021-3588) <!-- medium -->
    -   [CVE-2020-27153](https://ubuntu.com/security/CVE-2020-27153) <!-- low -->
    -   [CVE-2020-26558](https://ubuntu.com/security/CVE-2020-26558) <!-- medium -->
-   1 bluetooth core specification issue - during pairing a nearby attacker
    could interpose on the pairing process and hence complete the pairing
    instead of the intended device
-   2 issues in bluez code itself
    -   double free (UAF) + OOB read


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### How to get media coverage for your Linux vulnerabilities [04:48] {#how-to-get-media-coverage-for-your-linux-vulnerabilities-04-48}

-   In [Episode 119](https://ubuntusecuritypodcast.org/episode-119/) covered an update for polkit - the following day Github
    [published a blog post](https://github.blog/2021-06-10-privilege-escalation-polkit-root-on-linux-with-bug/) with significant details of the vuln - then we saw
    a heap of media coverage
    -   <https://www.theregister.com/2021/06/11/linux%5Fpolkit%5Fpackage%5Fpatched/>
    -   <https://www.zdnet.com/article/nasty-linux-systemd-root-level-security-bug-revealed-and-patched/>
-   Why did this vuln get so much coverage when lots of others don't?
    -   Great technical detail from a reputable and popular source (github)
    -   Very clearly written and easy to understand
        -   Is a simple logic error that can be triggered via a race-condition in
            a privileged daemon
        -   PoC can be implemented as a 1 line bash invocation so is also simple
            to understand
        -   c.f. a complicated memory corruption vuln or similar (ie no need to
            understand memory management, heap grooming etc etc)
-   Or give it a cool name and logo
    -   heartbleed was one of the first to do this and this likely helped it
        get noticed and patched (plus fame/notoriety for the researchers)
    -   Since then we have seen many (shellshock, stagefright, dirty cow,
        spectre, meltdown, boothole etc) but not all vulns that get names/logos
        are created equal - impact / exploitability varies greatly - so a name
        and a logo doesn't necessarily mean a vuln is critical


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
