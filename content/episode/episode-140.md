+++
title = "Episode 140"
description = """
  A gnarly old bug in NSS is unearthed, plus we cover security updates for
  ICU, the Linux kernel and ImageMagick as well.
  """
date = 2021-12-03T11:57:00+10:30
lastmod = 2022-05-15T18:05:49+09:30
draft = false
weight = 1020
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E140.mp3"
podcast_duration = "12:39"
podcast_bytes = 9584653
permalink = "https://ubuntusecuritypodcast.org/episode-140/"
guid = "8ce5e011b926a8b10debe94350abf749386684f2e5127892da2f37fc236e87b53c162f2a6c4c26905d23ca25698a012f9a615f96b06f8741998ad614e453b642"
+++

## Overview {#overview}

A gnarly old bug in NSS is unearthed, plus we cover security updates for
ICU, the Linux kernel and ImageMagick as well.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

20 unique CVEs addressed


### [[USN-5156-1](https://ubuntu.com/security/notices/USN-5156-1)] ICU vulnerability [00:40] {#usn-5156-1-icu-vulnerability-00-40}

-   1 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-30535](https://ubuntu.com/security/CVE-2021-30535) <!-- medium -->
-   Double free - originally reported in chromium but is actually in embedded
    copy of icu - able to be triggered on crafted content to icu, in the case
    of chromium this could be via a crafted webpage or similar so not too
    dissimilar to usual web handling issues - memory corruption -&gt; code
    execution (but within chromium sandbox in that case)


### [[USN-5158-1](https://ubuntu.com/security/notices/USN-5158-1)] ImageMagick vulnerabilities [01:25] {#usn-5158-1-imagemagick-vulnerabilities-01-25}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-20313](https://ubuntu.com/security/CVE-2021-20313) <!-- low -->
    -   [CVE-2021-20312](https://ubuntu.com/security/CVE-2021-20312) <!-- low -->
    -   [CVE-2021-20309](https://ubuntu.com/security/CVE-2021-20309) <!-- low -->
    -   [CVE-2021-20246](https://ubuntu.com/security/CVE-2021-20246) <!-- low -->
    -   [CVE-2021-20244](https://ubuntu.com/security/CVE-2021-20244) <!-- low -->
-   DoS vulns from untrusted inputs -&gt; most all result in a divide by zero -&gt;
    exception -&gt; application crash


### [[USN-5161-1](https://ubuntu.com/security/notices/USN-5161-1)] Linux kernel vulnerabilities [01:55] {#usn-5161-1-linux-kernel-vulnerabilities-01-55}

-   4 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-42252](https://ubuntu.com/security/CVE-2021-42252) <!-- medium -->
    -   [CVE-2021-3764](https://ubuntu.com/security/CVE-2021-3764) <!-- medium -->
    -   [CVE-2021-3744](https://ubuntu.com/security/CVE-2021-3744) <!-- low -->
    -   [CVE-2021-3655](https://ubuntu.com/security/CVE-2021-3655) <!-- medium -->
-   5.11 kernel (generic hirsute + clouds, raspi, focal hwe etc)
-   armhf specific issue (Aspeed LPC bus controller) - local user OOB write
    -&gt; crash / code-exec
-   AMD cryptographic coprocessor driver memory leaks -&gt; DoS ([Episode 138](https://ubuntusecuritypodcast.org/episode-138/))
-   SCTP OOB read - incoming packets


### [[USN-5162-1](https://ubuntu.com/security/notices/USN-5162-1)] Linux kernel vulnerabilities [03:13] {#usn-5162-1-linux-kernel-vulnerabilities-03-13}

-   5 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-43057](https://ubuntu.com/security/CVE-2021-43057) <!-- low -->
    -   [CVE-2021-42252](https://ubuntu.com/security/CVE-2021-42252) <!-- medium -->
    -   [CVE-2021-3764](https://ubuntu.com/security/CVE-2021-3764) <!-- medium -->
    -   [CVE-2021-3744](https://ubuntu.com/security/CVE-2021-3744) <!-- low -->
    -   [CVE-2021-3655](https://ubuntu.com/security/CVE-2021-3655) <!-- medium -->
-   5.13 (impish, focal OEM)
-   same as above plus SELinux specific issue around handling of task
    credentials -&gt; UAF -&gt; memory corruption -&gt; crash / code execution (Jann
    Horn @ GPZ)


### [[USN-5163-1](https://ubuntu.com/security/notices/USN-5163-1)] Linux kernel vulnerabilities [03:59] {#usn-5163-1-linux-kernel-vulnerabilities-03-59}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3764](https://ubuntu.com/security/CVE-2021-3764) <!-- medium -->
    -   [CVE-2021-3744](https://ubuntu.com/security/CVE-2021-3744) <!-- low -->
    -   [CVE-2021-37159](https://ubuntu.com/security/CVE-2021-37159) <!-- low -->
    -   [CVE-2021-3655](https://ubuntu.com/security/CVE-2021-3655) <!-- medium -->
-   5.4 (focal, bionic HWE)
-   AMD cryptographic coprocessor driver memory leaks -&gt; DoS ([Episode 138](https://ubuntusecuritypodcast.org/episode-138/))
-   SCTP OOB read - incoming packets
-   USB Option High Speed Mobile driver -&gt; UAF if unplug device before fully
    registered - local attacker could trigger - crash / code-exec


### [[USN-5164-1](https://ubuntu.com/security/notices/USN-5164-1)] Linux kernel vulnerabilities [04:50] {#usn-5164-1-linux-kernel-vulnerabilities-04-50}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-3764](https://ubuntu.com/security/CVE-2021-3764) <!-- medium -->
    -   [CVE-2021-3744](https://ubuntu.com/security/CVE-2021-3744) <!-- low -->
    -   [CVE-2021-37159](https://ubuntu.com/security/CVE-2021-37159) <!-- low -->
-   4.15 (bionic, xenial ESM, trusty ESM - azure)
-   AMD cryptographic coprocessor driver memory leaks -&gt; DoS ([Episode 138](https://ubuntusecuritypodcast.org/episode-138/))
-   SCTP OOB read - incoming packets


### [[USN-5165-1](https://ubuntu.com/security/notices/USN-5165-1)] Linux kernel (OEM) vulnerabilities [05:13] {#usn-5165-1-linux-kernel--oem--vulnerabilities-05-13}

-   7 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-43389](https://ubuntu.com/security/CVE-2021-43389) <!-- low -->
    -   [CVE-2021-43267](https://ubuntu.com/security/CVE-2021-43267) <!-- medium -->
    -   [CVE-2021-43056](https://ubuntu.com/security/CVE-2021-43056) <!-- medium -->
    -   [CVE-2021-42739](https://ubuntu.com/security/CVE-2021-42739) <!-- medium -->
    -   [CVE-2021-42327](https://ubuntu.com/security/CVE-2021-42327) <!-- low -->
    -   [CVE-2021-3772](https://ubuntu.com/security/CVE-2021-3772) <!-- low -->
    -   [CVE-2021-3760](https://ubuntu.com/security/CVE-2021-3760) <!-- medium -->
-   Mix of vulns in various drivers
    -   UAF in NFC, DoS due to SCTP logic error, OOB in AMD GPU debugfs (need
        root), FireDTV Firewire OOB write, POWER8 specific KVM issue (guest -&gt;
        host crash), Transparent Inter-Process Communication (TIPC) OOB write,
        ISDN CAPI subsystem OOB write


### [[USN-5168-1](https://ubuntu.com/security/notices/USN-5168-1), [USN-5168-2](https://ubuntu.com/security/notices/USN-5168-2), [USN-5168-3](https://ubuntu.com/security/notices/USN-5168-3)] NSS and Thunderbird vulnerability [06:08] {#usn-5168-1-usn-5168-2-usn-5168-3-nss-and-thunderbird-vulnerability-06-08}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-43527](https://ubuntu.com/security/CVE-2021-43527) <!-- high -->


## New NSS vulnerability ([CVE-2021-43527](https://ubuntu.com/security/CVE-2021-43527)) discussion [06:17] {#new-nss-vulnerability--cve-2021-43527--discussion-06-17}

-   Discovered by Tavis Ormandy at GPZ
-   NSS is a very old project, code in question has existed since 2003 and
    been exploitable since at least 2012 when it was refactored
-   Does a direct memcpy of an attacker controlled amount of data into a
    fixed size buffer without specifically checking whether the data is too
    large - classic heap-based buffer overflow
-   Object on the heap also contains function pointer which then get called
    so relatively easy to get control flow and code execution as a result
-   NSS was one of the first projects added to oss-fuzz (Google), Mozilla do
    own fuzzing as well, extensive testsuite and uses ASAN for internal
    builds
-   Uses [Coverity](https://scan.coverity.com/projects/nss) but this didn't detect it either
-   Existing fuzzing and unit tests had test cases which could reach this
    code but failed to find it for a number of reasons:
    -   Fuzz input is limited to 10k - but to overflow need at least 16,384
        bytes so fuzzing couldn't have caught this
    -   Individual code paths fuzzed but not so much end-to-end systematic
        testing - so nothing which would try generating say large inputs in
        this case - does occur for other code-paths though
    -   Existing metrics almalgate results from all fuzzers - so hard to tell
        how well a piece of code has been fuzzed as it may have been using a
        fuzzed which may never trigger relevant input to find bugs like this
-   Seemingly well tested, well fuzzed code is not enough - need to look
    systematically and quantify how complete the coverage is not just in
    terms of LOC or inputs used, but also boundary conditions etc
-   <https://googleprojectzero.blogspot.com/2021/12/this-shouldnt-have-happened.html>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)