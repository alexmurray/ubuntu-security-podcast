+++
title = "Episode 206"
description = """
  This week we talk about HTTP Content-Length handling, intricacies of group
  management in container environments and making sure you check your return codes
  while covering vulns in HAProxy, Podman, Inetutils and more, plus we put a call
  out for input on using open source tools to secure your SDLC.
  """
date = 2023-08-25T18:47:00+09:30
lastmod = 2023-08-25T18:48:16+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E206.mp3"
podcast_duration = 958
podcast_bytes = 26979103
permalink = "https://ubuntusecuritypodcast.org/episode-206/"
guid = "b2134cea38806e6611840eeff7da92e0e42403ea1f6ddec6fbbfd13b8d8907ec1f1dfaf3c6cb8c90cc605807c18cec72d5078101581e3ba9da3b841b62882113"
+++

## Overview {#overview}

This week we talk about HTTP Content-Length handling, intricacies of group
management in container environments and making sure you check your return codes
while covering vulns in HAProxy, Podman, Inetutils and more, plus we put a call
out for input on using open source tools to secure your SDLC.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

69 unique CVEs addressed


### [[USN-6294-1](https://ubuntu.com/security/notices/USN-6294-1), [USN-6294-2](https://ubuntu.com/security/notices/USN-6294-2)] HAProxy vulnerability (01:00) {#usn-6294-1-usn-6294-2-haproxy-vulnerability--01-00}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-40225](https://ubuntu.com/security/CVE-2023-40225) <!-- medium -->
-   Would forward requests with empty `Content-Length` headers even when there was
    content in the request (which violates
    [RFC 9110 - HTTP Semantics](https://www.rfc-editor.org/rfc/rfc9110)) - this
    RFC explicitly says:

> If the message is forwarded by a downstream intermediary, a Content-Length
> field value that is inconsistent with the received message framing might cause
> a security failure due to request smuggling or response splitting. As a result,
> a sender MUST NOT forward a message with a Content-Length header field value
> that is known to be incorrect.

-   As such, downstream HTTP/1 servers behind HAProxy may interpret the payload in
    the request as an extra request and hence this can be used for request
    smuggling as warned by the RFC


### [[USN-6295-1](https://ubuntu.com/security/notices/USN-6295-1)] Podman vulnerability (02:34) {#usn-6295-1-podman-vulnerability--02-34}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-2989](https://ubuntu.com/security/CVE-2022-2989) <!-- medium -->
-   <https://www.benthamsgaze.org/2022/08/22/vulnerability-in-linux-containers-investigation-and-mitigation/>
-   interaction between supplemental groups, negative group permissions and setgid
    binaries
-   supplemental groups - each user generally has a group specific to their user
    (so-called primary group for that user), but can also belong to other
    supplemental groups:

<!--listend-->

```text
ubuntu@ubuntu:~$ groups
ubuntu sudo
```

-   negative group permissions - not used often but allows to say that a certain
    group of users should not be able to access something - ie. denylisting
-   setgid binary - like a setuid binary - no matter what group that executes the
    binary, the binary runs as the primary group of the binary
-   so could a user could create a binary, make it set-group for one of their
    supplemental groups and then drop their primary group, run it and use that to
    access such a resource that has been denied access to their primary group?
    -   no, since on login, primary group gets added to the list of supplemental
        groups which can't be modified by a user themself - this has been the
        standard behaviour in UNIX since 1994 in BSD 4.4 and hence Linux has always
        worked this way too
-   However, podman is a container manager though and it manages groups within the
    container - and it failed to do this duplication of the primary group into the
    supplemental group and so would allow exactly this attack
    -   it wasn't only podman that was affected - also [buildah](https://ubuntu.com/security/CVE-2022-2990), [cri-o](https://ubuntu.com/security/CVE-2022-2995) and [moby](https://ubuntu.com/security/CVE-2022-36109)
        (ie. docker.io in Ubuntu)


### [[USN-6296-1](https://ubuntu.com/security/notices/USN-6296-1)] PostgreSQL vulnerabilities (06:44) {#usn-6296-1-postgresql-vulnerabilities--06-44}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-39418](https://ubuntu.com/security/CVE-2023-39418) <!-- medium -->
    -   [CVE-2023-39417](https://ubuntu.com/security/CVE-2023-39417) <!-- medium -->
-   Latest upstream point releases, so contains both security fixes and other bug
    fixes


### [[USN-6298-1](https://ubuntu.com/security/notices/USN-6298-1)] ZZIPlib vulnerabilities (07:04) {#usn-6298-1-zziplib-vulnerabilities--07-04}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2020-18442](https://ubuntu.com/security/CVE-2020-18442) <!-- low -->
    -   [CVE-2018-7727](https://ubuntu.com/security/CVE-2018-7727) <!-- low -->
-   Provides the ability to read into a zip archive, as well as the ability to
    overlay a zip archive with an existing file system
-   Used by applications like mpd, milkytracker and texlive (LaTeX etc)
-   Two different DoS
    -   infinite loop -&gt; CPU based DoS
    -   memory leak -&gt; resource based DoS
    -   both require to parse an attacker provided ZIP archive


### [[USN-6297-1](https://ubuntu.com/security/notices/USN-6297-1)] Ghostscript vulnerability (07:50) {#usn-6297-1-ghostscript-vulnerability--07-50}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-38559](https://ubuntu.com/security/CVE-2023-38559) <!-- medium -->
-   Buffer overflow when generating a PDF file for a DEVN device - DEVN is an
    abbreviation for DeviceN which is a type of colour space - ie a way of
    specifying different colour levels across a set of channels - ie. encoding
    colour information for a printer etc
-   Needs an attacker to provide a crafted input file though...


### [[USN-6299-1](https://ubuntu.com/security/notices/USN-6299-1)] poppler vulnerabilities (08:40) {#usn-6299-1-poppler-vulnerabilities--08-40}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2020-36024](https://ubuntu.com/security/CVE-2020-36024) <!-- medium -->
    -   [CVE-2020-36023](https://ubuntu.com/security/CVE-2020-36023) <!-- medium -->
-   someone has been fuzzing poppler - in particular the `pdftops` binary
-   stack overflow and NULL ptr deref when handling crafted input PDFs -&gt; crash -&gt; DoS


### [[USN-6300-1](https://ubuntu.com/security/notices/USN-6300-1)] Linux kernel vulnerabilities (09:18) {#usn-6300-1-linux-kernel-vulnerabilities--09-18}

-   24 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-35829](https://ubuntu.com/security/CVE-2023-35829) <!-- low -->
    -   [CVE-2023-35828](https://ubuntu.com/security/CVE-2023-35828) <!-- low -->
    -   [CVE-2023-35824](https://ubuntu.com/security/CVE-2023-35824) <!-- low -->
    -   [CVE-2023-35823](https://ubuntu.com/security/CVE-2023-35823) <!-- low -->
    -   [CVE-2023-33288](https://ubuntu.com/security/CVE-2023-33288) <!-- low -->
    -   [CVE-2023-33203](https://ubuntu.com/security/CVE-2023-33203) <!-- low -->
    -   [CVE-2023-3268](https://ubuntu.com/security/CVE-2023-3268) <!-- medium -->
    -   [CVE-2023-32248](https://ubuntu.com/security/CVE-2023-32248) <!-- medium -->
    -   [CVE-2023-3141](https://ubuntu.com/security/CVE-2023-3141) <!-- low -->
    -   [CVE-2023-30772](https://ubuntu.com/security/CVE-2023-30772) <!-- low -->
    -   [CVE-2023-28466](https://ubuntu.com/security/CVE-2023-28466) <!-- medium -->
    -   [CVE-2023-23004](https://ubuntu.com/security/CVE-2023-23004) <!-- medium -->
    -   [CVE-2023-2269](https://ubuntu.com/security/CVE-2023-2269) <!-- medium -->
    -   [CVE-2023-2235](https://ubuntu.com/security/CVE-2023-2235) <!-- low -->
    -   [CVE-2023-2194](https://ubuntu.com/security/CVE-2023-2194) <!-- medium -->
    -   [CVE-2023-2163](https://ubuntu.com/security/CVE-2023-2163) <!-- medium -->
    -   [CVE-2023-2124](https://ubuntu.com/security/CVE-2023-2124) <!-- low -->
    -   [CVE-2023-2002](https://ubuntu.com/security/CVE-2023-2002) <!-- medium -->
    -   [CVE-2023-1990](https://ubuntu.com/security/CVE-2023-1990) <!-- low -->
    -   [CVE-2023-1855](https://ubuntu.com/security/CVE-2023-1855) <!-- low -->
    -   [CVE-2023-1611](https://ubuntu.com/security/CVE-2023-1611) <!-- low -->
    -   [CVE-2023-0597](https://ubuntu.com/security/CVE-2023-0597) <!-- medium -->
    -   [CVE-2022-48502](https://ubuntu.com/security/CVE-2022-48502) <!-- medium -->
    -   [CVE-2022-4269](https://ubuntu.com/security/CVE-2022-4269) <!-- medium -->
-   5.15 GA, AWS, GCP, IBM, Intel-IoTG, KVM, Low latency, NVIDIA, Raspi etc
-   Have mentioned some of these previously - issues across various drivers and subsystems
    -   Lots of UAFs, a few OOB / NULL ptr deref, memory leak (DoS), OOB read /
        write as well


### [[USN-6301-1](https://ubuntu.com/security/notices/USN-6301-1)] Linux kernel vulnerabilities (10:07) {#usn-6301-1-linux-kernel-vulnerabilities--10-07}

-   16 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-33203](https://ubuntu.com/security/CVE-2023-33203) <!-- low -->
    -   [CVE-2023-3141](https://ubuntu.com/security/CVE-2023-3141) <!-- low -->
    -   [CVE-2023-3111](https://ubuntu.com/security/CVE-2023-3111) <!-- medium -->
    -   [CVE-2023-30772](https://ubuntu.com/security/CVE-2023-30772) <!-- low -->
    -   [CVE-2023-28466](https://ubuntu.com/security/CVE-2023-28466) <!-- medium -->
    -   [CVE-2023-2194](https://ubuntu.com/security/CVE-2023-2194) <!-- medium -->
    -   [CVE-2023-2124](https://ubuntu.com/security/CVE-2023-2124) <!-- low -->
    -   [CVE-2023-1990](https://ubuntu.com/security/CVE-2023-1990) <!-- low -->
    -   [CVE-2023-1855](https://ubuntu.com/security/CVE-2023-1855) <!-- low -->
    -   [CVE-2023-1611](https://ubuntu.com/security/CVE-2023-1611) <!-- low -->
    -   [CVE-2023-0590](https://ubuntu.com/security/CVE-2023-0590) <!-- medium -->
    -   [CVE-2022-4269](https://ubuntu.com/security/CVE-2022-4269) <!-- medium -->
    -   [CVE-2022-27672](https://ubuntu.com/security/CVE-2022-27672) <!-- medium -->
    -   [CVE-2022-1184](https://ubuntu.com/security/CVE-2022-1184) <!-- medium -->
    -   [CVE-2022-0168](https://ubuntu.com/security/CVE-2022-0168) <!-- medium -->
    -   [CVE-2020-36691](https://ubuntu.com/security/CVE-2020-36691) <!-- medium -->
-   5.4 Xilinx ZynqMP on 20.04 (Hi Portia!)
    -   HWE / OEM etc on 18.04 ESM
-   Very similar sorts of issues as above


### [[USN-6267-3](https://ubuntu.com/security/notices/USN-6267-3)] Firefox regressions (10:44) {#usn-6267-3-firefox-regressions--10-44}

-   12 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-4050](https://ubuntu.com/security/CVE-2023-4050) <!-- medium -->
    -   [CVE-2023-4046](https://ubuntu.com/security/CVE-2023-4046) <!-- medium -->
    -   [CVE-2023-4045](https://ubuntu.com/security/CVE-2023-4045) <!-- medium -->
    -   [CVE-2023-4058](https://ubuntu.com/security/CVE-2023-4058) <!-- medium -->
    -   [CVE-2023-4057](https://ubuntu.com/security/CVE-2023-4057) <!-- medium -->
    -   [CVE-2023-4056](https://ubuntu.com/security/CVE-2023-4056) <!-- medium -->
    -   [CVE-2023-4055](https://ubuntu.com/security/CVE-2023-4055) <!-- medium -->
    -   [CVE-2023-4053](https://ubuntu.com/security/CVE-2023-4053) <!-- medium -->
    -   [CVE-2023-4051](https://ubuntu.com/security/CVE-2023-4051) <!-- medium -->
    -   [CVE-2023-4049](https://ubuntu.com/security/CVE-2023-4049) <!-- medium -->
    -   [CVE-2023-4048](https://ubuntu.com/security/CVE-2023-4048) <!-- medium -->
    -   [CVE-2023-4047](https://ubuntu.com/security/CVE-2023-4047) <!-- medium -->
-   Second lot of regressions in the upstream 116 release - now at 116.0.3
    -   often these regressions are for Windows users etc but this time we have one
        for Linux - in particular screensharing on Wayland was broken since would
        fail to properly negotiate framerate in webrtc with Pipewire


### [[USN-6302-1](https://ubuntu.com/security/notices/USN-6302-1)] Vim vulnerabilities (11:22) {#usn-6302-1-vim-vulnerabilities--11-22}

-   15 CVEs addressed in Trusty ESM (14.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-3153](https://ubuntu.com/security/CVE-2022-3153) <!-- low -->
    -   [CVE-2022-3099](https://ubuntu.com/security/CVE-2022-3099) <!-- medium -->
    -   [CVE-2022-3037](https://ubuntu.com/security/CVE-2022-3037) <!-- medium -->
    -   [CVE-2022-3016](https://ubuntu.com/security/CVE-2022-3016) <!-- medium -->
    -   [CVE-2022-2874](https://ubuntu.com/security/CVE-2022-2874) <!-- low -->
    -   [CVE-2022-2816](https://ubuntu.com/security/CVE-2022-2816) <!-- low -->
    -   [CVE-2022-2598](https://ubuntu.com/security/CVE-2022-2598) <!-- low -->
    -   [CVE-2022-3134](https://ubuntu.com/security/CVE-2022-3134) <!-- medium -->
    -   [CVE-2022-2982](https://ubuntu.com/security/CVE-2022-2982) <!-- medium -->
    -   [CVE-2022-2889](https://ubuntu.com/security/CVE-2022-2889) <!-- medium -->
    -   [CVE-2022-2862](https://ubuntu.com/security/CVE-2022-2862) <!-- medium -->
    -   [CVE-2022-2819](https://ubuntu.com/security/CVE-2022-2819) <!-- medium -->
    -   [CVE-2022-2817](https://ubuntu.com/security/CVE-2022-2817) <!-- medium -->
    -   [CVE-2022-2580](https://ubuntu.com/security/CVE-2022-2580) <!-- medium -->
    -   [CVE-2022-2522](https://ubuntu.com/security/CVE-2022-2522) <!-- medium -->
-   More vim - is now the 8th most mentioned package in this podcast (only behind
    Linux kernel, Firefox, Thunderbird, PHP, MySQL, WebkitGTK)


### [[USN-6303-1](https://ubuntu.com/security/notices/USN-6303-1), [USN-6303-2](https://ubuntu.com/security/notices/USN-6303-2)] ClamAV vulnerability (11:50) {#usn-6303-1-usn-6303-2-clamav-vulnerability--11-50}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-20197](https://ubuntu.com/security/CVE-2023-20197) <!-- medium -->
-   Infinite loop in the HFS+ parser -&gt; DoS of entire ClamAV


### [[USN-6304-1](https://ubuntu.com/security/notices/USN-6304-1)] Inetutils vulnerabilities (12:14) {#usn-6304-1-inetutils-vulnerabilities--12-14}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-40303](https://ubuntu.com/security/CVE-2023-40303) <!-- medium -->
    -   [CVE-2022-39028](https://ubuntu.com/security/CVE-2022-39028) <!-- medium -->
-   Provides various utilities for different network services - ie. clients /
    servers for ftp, telnet, and talk
-   NULL ptr deref in telnetd - not super interesting - if running telnetd you
    probably have bigger problems
-   Failed to check return values of the various `setuid()=/=setgid()` system calls
    used in ftpd/rshd/rlogin etc
    -   daemon runs as root and uses these calls to drop privileges to the user who
        is logging in - if these fail, then users session will still be running as
        root - easy privesc (although not really able to be controlled by the remote
        attacker to induce this error to occur)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Brainstorming for a software security workshop (13:53) {#brainstorming-for-a-software-security-workshop--13-53}

-   <https://discourse.ubuntu.com/t/brainstorming-for-a-software-security-workshop/37991/1>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
