+++
title = "Episode 91"
description = "This week we look at security updates for GUPnP, OpenJPEG, bsdiff and more."
date = 2020-09-18T16:51:00+09:30
lastmod = 2022-05-15T18:06:27+09:30
draft = false
weight = 1069
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E091.mp3"
podcast_duration = "08:07"
podcast_bytes = 7799236
permalink = "https://ubuntusecuritypodcast.org/episode-91/"
guid = "c003dcca038c1bcb46cecbc475409cbd6cf023facdeb870cd2c4df0db1b3d43d28b040b2a4061fe027bd49a5e4157ac89f980cc9e82afb24eaad191d9c509b86"
+++

## Overview {#overview}

This week we look at security updates for GUPnP, OpenJPEG, bsdiff and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

24 unique CVEs addressed


### [[USN-4488-2](https://usn.ubuntu.com/4488-2/)] X.Org X Server vulnerabilities [00:31] {#usn-4488-2-x-dot-org-x-server-vulnerabilities-00-31}

-   5 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2020-14345](https://ubuntu.com/security/CVE-2020-14345) <!-- medium -->
    -   [CVE-2020-14362](https://ubuntu.com/security/CVE-2020-14362) <!-- medium -->
    -   [CVE-2020-14361](https://ubuntu.com/security/CVE-2020-14361) <!-- medium -->
    -   [CVE-2020-14347](https://ubuntu.com/security/CVE-2020-14347) <!-- low -->
    -   [CVE-2020-14346](https://ubuntu.com/security/CVE-2020-14346) <!-- medium -->
-   [Episode 90](https://ubuntusecuritypodcast.org/episode-90/)


### [[LSN-0071-1](https://usn.ubuntu.com/lsn/0071-1/)] Linux kernel vulnerability [00:50] {#lsn-0071-1-linux-kernel-vulnerability-00-50}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-14386](https://ubuntu.com/security/CVE-2020-14386) <!-- high -->
-   [Episode 90](https://ubuntusecuritypodcast.org/episode-90/) (AF_PACKET OOB write - crash / code exec)
-   Also affects Focal (20.04 LTS) but livepatch is still being prepared


### [[USN-4494-1](https://usn.ubuntu.com/4494-1/)] GUPnP vulnerability [01:29] {#usn-4494-1-gupnp-vulnerability-01-29}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-12695](https://ubuntu.com/security/CVE-2020-12695) <!-- medium -->
-   GNOME UPnP impl, used by Rygel for media sharing on GNOME (standard
    Ubuntu) desktop and many other applications
-   [Callstranger Vulnerability](https://callstranger.com/) - vuln in UPnP protocol - callback header in
    UPnP SUBSCRIBE can contain arbitrary delivery URL - so this could be on a
    different network segment than the event subscription URL - so you can
    SUBSCRIBE to events and supply one or more URLs for delivery of the
    messages. Can then make this point anywhere and so can get the device to
    send HTTP traffic to any arbitrary destination - and so can be used for
    data exfil or DDoS attacks etc. Fixed to check the destination host is
    either a link-local address or the address mask matches - either way,
    check is on the same network segment.


### [[USN-4495-1](https://usn.ubuntu.com/4495-1/)] Apache Log4j vulnerability [03:21] {#usn-4495-1-apache-log4j-vulnerability-03-21}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-17571](https://ubuntu.com/security/CVE-2019-17571) <!-- medium -->
-   Failed to properly deserialise data - so if is listening to untrusted log
    data from the network could be exploited to run arbitrary code


### [[USN-4496-1](https://usn.ubuntu.com/4496-1/)] Apache XML-RPC vulnerability [03:42] {#usn-4496-1-apache-xml-rpc-vulnerability-03-42}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2019-17570](https://ubuntu.com/security/CVE-2019-17570) <!-- medium -->
-   Similarly failed to properly deserialize data - a malicious XML-RPC
    server could cause code execution on the client as a result


### [[USN-4497-1](https://usn.ubuntu.com/4497-1/)] OpenJPEG vulnerabilities [03:58] {#usn-4497-1-openjpeg-vulnerabilities-03-58}

-   7 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2019-12973](https://ubuntu.com/security/CVE-2019-12973) <!-- low -->
    -   [CVE-2020-15389](https://ubuntu.com/security/CVE-2020-15389) <!-- low -->
    -   [CVE-2020-8112](https://ubuntu.com/security/CVE-2020-8112) <!-- medium -->
    -   [CVE-2020-6851](https://ubuntu.com/security/CVE-2020-6851) <!-- medium -->
    -   [CVE-2018-21010](https://ubuntu.com/security/CVE-2018-21010) <!-- medium -->
    -   [CVE-2018-20847](https://ubuntu.com/security/CVE-2018-20847) <!-- medium -->
    -   [CVE-2016-9112](https://ubuntu.com/security/CVE-2016-9112) <!-- low -->
-   Usual mix of memory safety issues in image handling libraries written in
    C - DoS, RCE etc via crafted image data


### [[USN-4499-1](https://usn.ubuntu.com/4499-1/)] MilkyTracker vulnerabilities [04:27] {#usn-4499-1-milkytracker-vulnerabilities-04-27}

-   3 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2019-14497](https://ubuntu.com/security/CVE-2019-14497) <!-- medium -->
    -   [CVE-2019-14496](https://ubuntu.com/security/CVE-2019-14496) <!-- medium -->
    -   [CVE-2019-14464](https://ubuntu.com/security/CVE-2019-14464) <!-- medium -->
-   Failed to properly validate files - 2 different heap and 1 stack based
    buffer overflows - RCE if loading untrusted files


### [[USN-4498-1](https://usn.ubuntu.com/4498-1/)] Loofah vulnerability [04:52] {#usn-4498-1-loofah-vulnerability-04-52}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2019-15587](https://ubuntu.com/security/CVE-2019-15587) <!-- medium -->
-   ruby module for manipulation and transformation of HTML/XML etc
-   Possible XSS - failed to sanitize JS when handling crafted SVG


### [[USN-4500-1](https://usn.ubuntu.com/4500-1/)] bsdiff vulnerabilities [05:16] {#usn-4500-1-bsdiff-vulnerabilities-05-16}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2014-9862](https://ubuntu.com/security/CVE-2014-9862) <!-- medium -->
-   (Oldest CVE of the week!)
-   Failed to properly validate input patch file -&gt; integer overflow -&gt; heap
    based buffer overflow -&gt; code exec / DoS


### [[USN-4501-1](https://usn.ubuntu.com/4501-1/)] LuaJIT vulnerability [05:40] {#usn-4501-1-luajit-vulnerability-05-40}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2020-15890](https://ubuntu.com/security/CVE-2020-15890) <!-- low -->
-   OOB read -&gt; crash / info leak


### [[USN-4502-1](https://usn.ubuntu.com/4502-1/)] websocket-extensions vulnerability [05:49] {#usn-4502-1-websocket-extensions-vulnerability-05-49}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-7663](https://ubuntu.com/security/CVE-2020-7663) <!-- medium -->
-   ruby websockets extension - used regex with backtracking to properly
    parse headers, could be sent crafted input which is very computationally
    intensive to parse as a result -&gt; CPU based DoS


### [[USN-4503-1](https://usn.ubuntu.com/4503-1/)] Perl DBI module vulnerability [06:21] {#usn-4503-1-perl-dbi-module-vulnerability-06-21}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-14392](https://ubuntu.com/security/CVE-2020-14392) <!-- medium -->
-   Perl DB interface - underlying code would potentially allocate the stack
    and hence result in invalid pointers to object that were previously on
    the stack - could be manipulated by a remote user to result in memory
    corruption etc -&gt; crash


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)