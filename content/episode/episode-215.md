+++
title = "Episode 215"
description = """
  Mark Esler is our special guest on the podcast this week to discuss the
  OpenSSF's Compiler Options Hardening Guide for C/C++ plus we cover
  vulnerabilities and updates for GIMP, FreeRDP, GStreamer, HAProxy and more.
  """
date = 2023-12-08T16:42:00+10:30
lastmod = 2023-12-08T16:44:35+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E215.mp3"
podcast_duration = 1846
podcast_bytes = 31527781
permalink = "https://ubuntusecuritypodcast.org/episode-215/"
guid = "d1ed0d34ae279ec4d228d795a2fff1b818fcf258f34117ca5ce17e66b17f1e96fa0da194506d0741aefda6f0a6ea00281fbb1dfeca418c2fab8cb62a5f0b99d6"
+++

## Overview {#overview}

Mark Esler is our special guest on the podcast this week to discuss the
OpenSSF's Compiler Options Hardening Guide for C/C++ plus we cover
vulnerabilities and updates for GIMP, FreeRDP, GStreamer, HAProxy and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

65 unique CVEs addressed


### [[USN-6521-1](https://ubuntu.com/security/notices/USN-6521-1)] GIMP vulnerabilities (00:50) {#usn-6521-1-gimp-vulnerabilities--00-50}

-   6 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-44444](https://ubuntu.com/security/CVE-2023-44444) <!-- medium -->
    -   [CVE-2023-44443](https://ubuntu.com/security/CVE-2023-44443) <!-- medium -->
    -   [CVE-2023-44442](https://ubuntu.com/security/CVE-2023-44442) <!-- medium -->
    -   [CVE-2023-44441](https://ubuntu.com/security/CVE-2023-44441) <!-- medium -->
    -   [CVE-2022-32990](https://ubuntu.com/security/CVE-2022-32990) <!-- low -->
    -   [CVE-2022-30067](https://ubuntu.com/security/CVE-2022-30067) <!-- low -->
-   Includes 4 recent issues disclosed via Trend's ZDI - all found by the same
    researcher - 2 heap buffer overflows in DDS and PSD parsers, ab integer
    overflow and a separate off-by-one error in the PSP parser which could
    apparently lead to remote code execution plus a couple DoS related issues
    (unhandled exception and an excessive memory allocation) - both leading to a
    crash


### [[USN-6522-1](https://ubuntu.com/security/notices/USN-6522-1)] FreeRDP vulnerabilities (01:39) {#usn-6522-1-freerdp-vulnerabilities--01-39}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-39356](https://ubuntu.com/security/CVE-2023-39356) <!-- medium -->
    -   [CVE-2023-39352](https://ubuntu.com/security/CVE-2023-39352) <!-- medium -->
    -   [CVE-2022-41877](https://ubuntu.com/security/CVE-2022-41877) <!-- low -->
-   Windows RDP client
-   Malicious server could send a crafted drive redirect to the client -
    triggering an OOB read, causing the client to disclose memory contents and
    therefore possibly sensitive info to the server
-   Plus an OOB write and an OOB read on crafted image data - both also likely
    leading to a crash


### [[USN-6523-1](https://ubuntu.com/security/notices/USN-6523-1)] u-boot-nezha vulnerability (02:19) {#usn-6523-1-u-boot-nezha-vulnerability--02-19}

-   3 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2022-30790](https://ubuntu.com/security/CVE-2022-30790) <!-- medium -->
    -   [CVE-2022-30552](https://ubuntu.com/security/CVE-2022-30552) <!-- medium -->
    -   [CVE-2022-2347](https://ubuntu.com/security/CVE-2022-2347) <!-- medium -->
-   u-boot for the Allwinner Nezha RISC-V board
-   Missing length checks in DFU parser -&gt; heap buffer overflow
-   2 other buffer overflows when handling fragmented IP packets


### [[USN-6524-1](https://ubuntu.com/security/notices/USN-6524-1)] PyPy vulnerability (03:06) {#usn-6524-1-pypy-vulnerability--03-06}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-37454](https://ubuntu.com/security/CVE-2022-37454) <!-- medium -->
-   Integer overflow leading to a buffer overflow in SHA3 - comes from the
    original reference implementation of SHA3
-   Has affected a range of packages in Ubuntu
    -   PHP, Python itself and now PyPy


### [[USN-6525-1](https://ubuntu.com/security/notices/USN-6525-1)] pysha3 vulnerability (03:06) {#usn-6525-1-pysha3-vulnerability--03-06}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-37454](https://ubuntu.com/security/CVE-2022-37454) <!-- medium -->
-   Same as above


### [[USN-6519-2](https://ubuntu.com/security/notices/USN-6519-2)] EC2 hibagent update {#usn-6519-2-ec2-hibagent-update}

-   Affecting Xenial ESM (16.04 ESM)


### [[USN-6526-1](https://ubuntu.com/security/notices/USN-6526-1)] GStreamer Bad Plugins vulnerabilities (03:16) {#usn-6526-1-gstreamer-bad-plugins-vulnerabilities--03-16}

-   6 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-44446](https://ubuntu.com/security/CVE-2023-44446) <!-- medium -->
    -   [CVE-2023-44429](https://ubuntu.com/security/CVE-2023-44429) <!-- medium -->
    -   [CVE-2023-40476](https://ubuntu.com/security/CVE-2023-40476) <!-- medium -->
    -   [CVE-2023-40475](https://ubuntu.com/security/CVE-2023-40475) <!-- medium -->
    -   [CVE-2023-40474](https://ubuntu.com/security/CVE-2023-40474) <!-- medium -->
    -   [CVE-2023-37329](https://ubuntu.com/security/CVE-2023-37329) <!-- medium -->
-   Heap overflow in PGS subtitle overlay decoder
-   Various integer overflows -&gt; heap buffer overflows in MXF container handler
    (Material Exchange Format) - apparently used for delivering advertisements to
    TV stations and for movies in commercial theatres - specifically in handling
    of files using AES3 audio
-   MXF demuxer UAF
-   AV1 buffer overflow
-   Integer overflow -&gt; stack overflow in H.256 parser


### [[USN-6527-1](https://ubuntu.com/security/notices/USN-6527-1)] OpenJDK vulnerabilities (04:09) {#usn-6527-1-openjdk-vulnerabilities--04-09}

-   2 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-22081](https://ubuntu.com/security/CVE-2023-22081) <!-- medium -->
    -   [CVE-2023-22025](https://ubuntu.com/security/CVE-2023-22025) <!-- medium -->
-   11.0.21 + 17.0.9


### [[USN-6528-1](https://ubuntu.com/security/notices/USN-6528-1)] OpenJDK 8 vulnerabilities (04:25) {#usn-6528-1-openjdk-8-vulnerabilities--04-25}

-   4 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-22081](https://ubuntu.com/security/CVE-2023-22081) <!-- medium -->
    -   [CVE-2023-22067](https://ubuntu.com/security/CVE-2023-22067) <!-- medium -->
    -   [CVE-2023-22025](https://ubuntu.com/security/CVE-2023-22025) <!-- medium -->
    -   [CVE-2022-40433](https://ubuntu.com/security/CVE-2022-40433) <!-- medium -->
-   8u392


### [[USN-6509-2](https://ubuntu.com/security/notices/USN-6509-2)] Firefox regressions (04:34) {#usn-6509-2-firefox-regressions--04-34}

-   10 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-6209](https://ubuntu.com/security/CVE-2023-6209) <!-- medium -->
    -   [CVE-2023-6208](https://ubuntu.com/security/CVE-2023-6208) <!-- medium -->
    -   [CVE-2023-6207](https://ubuntu.com/security/CVE-2023-6207) <!-- medium -->
    -   [CVE-2023-6205](https://ubuntu.com/security/CVE-2023-6205) <!-- medium -->
    -   [CVE-2023-6204](https://ubuntu.com/security/CVE-2023-6204) <!-- medium -->
    -   [CVE-2023-6213](https://ubuntu.com/security/CVE-2023-6213) <!-- medium -->
    -   [CVE-2023-6212](https://ubuntu.com/security/CVE-2023-6212) <!-- medium -->
    -   [CVE-2023-6211](https://ubuntu.com/security/CVE-2023-6211) <!-- medium -->
    -   [CVE-2023-6210](https://ubuntu.com/security/CVE-2023-6210) <!-- medium -->
    -   [CVE-2023-6206](https://ubuntu.com/security/CVE-2023-6206) <!-- medium -->
-   120.0.1 - in particular includes a fix where Firefox would crash immediately
    on startup but only for aarch64 (arm64) on Linux when using page sizes other
    than 4K - ie. as used in Apple silicon etc


### [[USN-6529-1](https://ubuntu.com/security/notices/USN-6529-1)] Request Tracker vulnerabilities (05:25) {#usn-6529-1-request-tracker-vulnerabilities--05-25}

-   4 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-41260](https://ubuntu.com/security/CVE-2023-41260) <!-- medium -->
    -   [CVE-2023-41259](https://ubuntu.com/security/CVE-2023-41259) <!-- medium -->
    -   [CVE-2022-25802](https://ubuntu.com/security/CVE-2022-25802) <!-- medium -->
    -   [CVE-2021-38562](https://ubuntu.com/security/CVE-2021-38562) <!-- low -->
-   Possible timing attack in the authentication module - could allow to enumerate
    user accounts
-   XSS plus some info leaks as well


### [[USN-6530-1](https://ubuntu.com/security/notices/USN-6530-1)] HAProxy vulnerability (06:12) {#usn-6530-1-haproxy-vulnerability--06-12}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-45539](https://ubuntu.com/security/CVE-2023-45539) <!-- medium -->
-   Mishandling of # character in URIs could allow unexpected routing of a URI
    containing say `index.html#.png` to a static server (since usually is configured
    to route `.png` to a static server, but in this case the request is really for
    `index.html`)


### [[USN-6531-1](https://ubuntu.com/security/notices/USN-6531-1)] Redis vulnerabilities (07:06) {#usn-6531-1-redis-vulnerabilities--07-06}

-   6 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-45145](https://ubuntu.com/security/CVE-2023-45145) <!-- medium -->
    -   [CVE-2023-28856](https://ubuntu.com/security/CVE-2023-28856) <!-- medium -->
    -   [CVE-2023-25155](https://ubuntu.com/security/CVE-2023-25155) <!-- medium -->
    -   [CVE-2022-36021](https://ubuntu.com/security/CVE-2022-36021) <!-- medium -->
    -   [CVE-2022-35977](https://ubuntu.com/security/CVE-2022-35977) <!-- medium -->
    -   [CVE-2022-24834](https://ubuntu.com/security/CVE-2022-24834) <!-- medium -->
-   Heap overflow in cjson library able to be triggered by a Lua script -&gt; RCE
-   Race condition on setting permissions on the local unix socket - if using a
    less restrictive umask could allow a local attacker to race redis on startup
-   Also various integer overflows and other issues fixed too


### [[USN-6494-2](https://ubuntu.com/security/notices/USN-6494-2)] Linux kernel vulnerabilities (08:08) {#usn-6494-2-linux-kernel-vulnerabilities--08-08}

-   9 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-5717](https://ubuntu.com/security/CVE-2023-5717) <!-- medium -->
    -   [CVE-2023-45871](https://ubuntu.com/security/CVE-2023-45871) <!-- medium -->
    -   [CVE-2023-45862](https://ubuntu.com/security/CVE-2023-45862) <!-- medium -->
    -   [CVE-2023-42754](https://ubuntu.com/security/CVE-2023-42754) <!-- medium -->
    -   [CVE-2023-39194](https://ubuntu.com/security/CVE-2023-39194) <!-- medium -->
    -   [CVE-2023-39193](https://ubuntu.com/security/CVE-2023-39193) <!-- medium -->
    -   [CVE-2023-39192](https://ubuntu.com/security/CVE-2023-39192) <!-- medium -->
    -   [CVE-2023-39189](https://ubuntu.com/security/CVE-2023-39189) <!-- medium -->
    -   [CVE-2023-31085](https://ubuntu.com/security/CVE-2023-31085) <!-- low -->


### [[USN-6495-2](https://ubuntu.com/security/notices/USN-6495-2)] Linux kernel vulnerabilities {#usn-6495-2-linux-kernel-vulnerabilities}

-   2 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-45871](https://ubuntu.com/security/CVE-2023-45871) <!-- medium -->
    -   [CVE-2023-31085](https://ubuntu.com/security/CVE-2023-31085) <!-- low -->


### [[USN-6496-2](https://ubuntu.com/security/notices/USN-6496-2)] Linux kernel vulnerabilities {#usn-6496-2-linux-kernel-vulnerabilities}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-45871](https://ubuntu.com/security/CVE-2023-45871) <!-- medium -->
    -   [CVE-2023-31085](https://ubuntu.com/security/CVE-2023-31085) <!-- low -->
    -   [CVE-2023-25775](https://ubuntu.com/security/CVE-2023-25775) <!-- medium -->


### [[USN-6502-4](https://ubuntu.com/security/notices/USN-6502-4)] Linux kernel vulnerabilities {#usn-6502-4-linux-kernel-vulnerabilities}

-   5 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-5345](https://ubuntu.com/security/CVE-2023-5345) <!-- high -->
    -   [CVE-2023-5090](https://ubuntu.com/security/CVE-2023-5090) <!-- high -->
    -   [CVE-2023-45871](https://ubuntu.com/security/CVE-2023-45871) <!-- medium -->
    -   [CVE-2023-31085](https://ubuntu.com/security/CVE-2023-31085) <!-- low -->
    -   [CVE-2023-25775](https://ubuntu.com/security/CVE-2023-25775) <!-- medium -->


### [[USN-6532-1](https://ubuntu.com/security/notices/USN-6532-1)] Linux kernel vulnerabilities {#usn-6532-1-linux-kernel-vulnerabilities}

-   10 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2023-5717](https://ubuntu.com/security/CVE-2023-5717) <!-- medium -->
    -   [CVE-2023-45871](https://ubuntu.com/security/CVE-2023-45871) <!-- medium -->
    -   [CVE-2023-45862](https://ubuntu.com/security/CVE-2023-45862) <!-- medium -->
    -   [CVE-2023-42754](https://ubuntu.com/security/CVE-2023-42754) <!-- medium -->
    -   [CVE-2023-39194](https://ubuntu.com/security/CVE-2023-39194) <!-- medium -->
    -   [CVE-2023-39193](https://ubuntu.com/security/CVE-2023-39193) <!-- medium -->
    -   [CVE-2023-39192](https://ubuntu.com/security/CVE-2023-39192) <!-- medium -->
    -   [CVE-2023-39189](https://ubuntu.com/security/CVE-2023-39189) <!-- medium -->
    -   [CVE-2023-31085](https://ubuntu.com/security/CVE-2023-31085) <!-- low -->
    -   [CVE-2023-20593](https://ubuntu.com/security/CVE-2023-20593) <!-- high -->


### [[USN-6533-1](https://ubuntu.com/security/notices/USN-6533-1)] Linux kernel (OEM) vulnerabilities {#usn-6533-1-linux-kernel--oem--vulnerabilities}

-   2 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-46862](https://ubuntu.com/security/CVE-2023-46862) <!-- medium -->
    -   [CVE-2023-46813](https://ubuntu.com/security/CVE-2023-46813) <!-- medium -->


### [[USN-6534-1](https://ubuntu.com/security/notices/USN-6534-1)] Linux kernel vulnerabilities {#usn-6534-1-linux-kernel-vulnerabilities}

-   12 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-6039](https://ubuntu.com/security/CVE-2023-6039) <!-- low -->
    -   [CVE-2023-5717](https://ubuntu.com/security/CVE-2023-5717) <!-- medium -->
    -   [CVE-2023-5178](https://ubuntu.com/security/CVE-2023-5178) <!-- medium -->
    -   [CVE-2023-5158](https://ubuntu.com/security/CVE-2023-5158) <!-- medium -->
    -   [CVE-2023-42754](https://ubuntu.com/security/CVE-2023-42754) <!-- medium -->
    -   [CVE-2023-39198](https://ubuntu.com/security/CVE-2023-39198) <!-- medium -->
    -   [CVE-2023-39194](https://ubuntu.com/security/CVE-2023-39194) <!-- medium -->
    -   [CVE-2023-39193](https://ubuntu.com/security/CVE-2023-39193) <!-- medium -->
    -   [CVE-2023-39192](https://ubuntu.com/security/CVE-2023-39192) <!-- medium -->
    -   [CVE-2023-39189](https://ubuntu.com/security/CVE-2023-39189) <!-- medium -->
    -   [CVE-2023-3773](https://ubuntu.com/security/CVE-2023-3773) <!-- medium -->
    -   [CVE-2023-37453](https://ubuntu.com/security/CVE-2023-37453) <!-- medium -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex discusses the OpenSSF's Compiler Options Hardening Guide for C/C++ with Mark Esler (08:38) {#alex-discusses-the-openssf-s-compiler-options-hardening-guide-for-c-c-plus-plus-with-mark-esler--08-38}

-   <https://openssf.org/blog/2023/11/29/strengthening-the-fort-openssf-releases-compiler-options-hardening-guide-for-c-and-c/>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
