+++
title = "Episode 131"
description = """
  OWASP Top 10 gets updated for 2021 and we look at security vulnerabilities
  in the Linux kernel, Ghostscript, Git, curl and more.
  """
date = 2021-09-17T13:55:00+09:30
lastmod = 2021-09-17T13:58:46+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E131.mp3"
podcast_duration = "14:23"
podcast_bytes = 11565844
permalink = "https://ubuntusecuritypodcast.org/episode-131/"
guid = "e001fb1a9fb95922d8e44e8cd29fa7be2e673cd366fca7e76db4c8657fbd5ac2aa72463b618a8a10495f79567c71e44f1168b70db449f20732a42cdda3e4f482"
+++

## Overview {#overview}

OWASP Top 10 gets updated for 2021 and we look at security vulnerabilities
in the Linux kernel, Ghostscript, Git, curl and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

26 unique CVEs addressed


### [[USN-5069-2](https://ubuntu.com/security/notices/USN-5069-2)] mod-auth-mellon vulnerability [00:43] {#usn-5069-2-mod-auth-mellon-vulnerability-00-43}

-   1 CVEs addressed in Hirsute (21.04)
    -   [CVE-2021-3639](https://ubuntu.com/security/CVE-2021-3639) <!-- medium -->
-   [Episode 130](https://ubuntusecuritypodcast.org/episode-130/) - failed to properly handle crafted redirect links -> open
    redirect


### [[USN-5070-1](https://ubuntu.com/security/notices/USN-5070-1)] Linux kernel vulnerabilities {#usn-5070-1-linux-kernel-vulnerabilities}

-   10 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-38207](https://ubuntu.com/security/CVE-2021-38207) <!-- medium -->
    -   [CVE-2021-38206](https://ubuntu.com/security/CVE-2021-38206) <!-- medium -->
    -   [CVE-2021-38200](https://ubuntu.com/security/CVE-2021-38200) <!-- low -->
    -   [CVE-2021-38198](https://ubuntu.com/security/CVE-2021-38198) <!-- medium -->
    -   [CVE-2021-3612](https://ubuntu.com/security/CVE-2021-3612) <!-- medium -->
    -   [CVE-2021-34693](https://ubuntu.com/security/CVE-2021-34693) <!-- low -->
    -   [CVE-2021-22543](https://ubuntu.com/security/CVE-2021-22543) <!-- medium -->
    -   [CVE-2020-26541](https://ubuntu.com/security/CVE-2020-26541) <!-- medium -->
    -   [CVE-2021-3653](https://ubuntu.com/security/CVE-2021-3653) <!-- high -->
    -   [CVE-2021-3656](https://ubuntu.com/security/CVE-2021-3656) <!-- high -->


### [[USN-5071-1](https://ubuntu.com/security/notices/USN-5071-1)] Linux kernel vulnerabilities {#usn-5071-1-linux-kernel-vulnerabilities}

-   5 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3612](https://ubuntu.com/security/CVE-2021-3612) <!-- medium -->
    -   [CVE-2021-22543](https://ubuntu.com/security/CVE-2021-22543) <!-- medium -->
    -   [CVE-2020-36311](https://ubuntu.com/security/CVE-2020-36311) <!-- medium -->
    -   [CVE-2021-3653](https://ubuntu.com/security/CVE-2021-3653) <!-- high -->
    -   [CVE-2021-3656](https://ubuntu.com/security/CVE-2021-3656) <!-- high -->


### [[USN-5072-1](https://ubuntu.com/security/notices/USN-5072-1)] Linux kernel vulnerabilities {#usn-5072-1-linux-kernel-vulnerabilities}

-   2 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-3653](https://ubuntu.com/security/CVE-2021-3653) <!-- high -->
    -   [CVE-2021-3656](https://ubuntu.com/security/CVE-2021-3656) <!-- high -->


### [[USN-5073-1](https://ubuntu.com/security/notices/USN-5073-1)] Linux kernel vulnerabilities [00:56] {#usn-5073-1-linux-kernel-vulnerabilities-00-56}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-38160](https://ubuntu.com/security/CVE-2021-38160) <!-- medium -->
    -   [CVE-2021-3612](https://ubuntu.com/security/CVE-2021-3612) <!-- medium -->
    -   [CVE-2021-34693](https://ubuntu.com/security/CVE-2021-34693) <!-- low -->
    -   [CVE-2021-3653](https://ubuntu.com/security/CVE-2021-3653) <!-- high -->
    -   [CVE-2021-3656](https://ubuntu.com/security/CVE-2021-3656) <!-- high -->
-   2 different AMD specific issue in KVM subsystem with nested
    virtualisation - 1 mentioned last week in [Episode 130](https://ubuntusecuritypodcast.org/episode-130/) - would fail to
    validate particular operations which could be performed by a guest VM -
    in this case would allow a guest to enable the Advanced Virtual Interrupt
    Controller for a nested VM (ie L2 VM) - this would then allow the L2 VM
    to write to host memory -> code execution on the host
-   The other - L1 guest could disable interception of both VMLOAD/VMSAVE
    calls for a L2 guest - L2 guest could then read/write portions of host
    physical memory - code-exec on host


### [[LSN-0081-1](https://ubuntu.com/security/notices/LSN-0081-1)] Linux kernel vulnerability [01:56] {#lsn-0081-1-linux-kernel-vulnerability-01-56}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-33909](https://ubuntu.com/security/CVE-2021-33909) <!-- high -->
    -   [CVE-2021-22555](https://ubuntu.com/security/CVE-2021-22555) <!-- high -->
    -   [CVE-2021-3656](https://ubuntu.com/security/CVE-2021-3656) <!-- high -->
    -   [CVE-2021-3653](https://ubuntu.com/security/CVE-2021-3653) <!-- high -->
-   ([Episode 124](https://ubuntusecuritypodcast.org/episode-124/)) seq_file vuln - this virt file-system contained an unsigned integer
    conversion error - would result in a local user being able to cause an
    OOB write and hence possible code-exec in the kernel -> privesc
-   ([Episode 127](https://ubuntusecuritypodcast.org/episode-127/)) netfilter setsockopt() - OOB write
-   AMD nested virtualisation issues above


### [[USN-5074-1](https://ubuntu.com/security/notices/USN-5074-1)] Firefox vulnerabilities [02:53] {#usn-5074-1-firefox-vulnerabilities-02-53}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-38494](https://ubuntu.com/security/CVE-2021-38494) <!-- medium -->
    -   [CVE-2021-38493](https://ubuntu.com/security/CVE-2021-38493) <!-- medium -->
    -   [CVE-2021-38491](https://ubuntu.com/security/CVE-2021-38491) <!-- medium -->
-   Memory safety bugs -> possible memory corruption, possible bypass in
    mixed content blocking (ie http content on a https page)


### [[USN-5075-1](https://ubuntu.com/security/notices/USN-5075-1)] Ghostscript vulnerability [03:36] {#usn-5075-1-ghostscript-vulnerability-03-36}

-   1 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-3781](https://ubuntu.com/security/CVE-2021-3781) <!-- high -->
-   Trivial bypass of sandbox - exploit was apparently known about since
    March and publicly available since end of August but only reported to GS
    upstream on 8th August - fix available since 9th, updates for Ubuntu
    published on 10th (rare Friday publication)


### [[USN-5076-1](https://ubuntu.com/security/notices/USN-5076-1)] Git vulnerability [04:55] {#usn-5076-1-git-vulnerability-04-55}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-40330](https://ubuntu.com/security/CVE-2021-40330) <!-- medium -->
-   Possible cross-protocol requests by embedding a newline in the URL when
    cloning


### [[USN-5077-1](https://ubuntu.com/security/notices/USN-5077-1), [USN-5077-2](https://ubuntu.com/security/notices/USN-5077-2)] Apport vulnerabilities [05:34] {#usn-5077-1-usn-5077-2-apport-vulnerabilities-05-34}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-3710](https://ubuntu.com/security/CVE-2021-3710) <!-- medium -->
    -   [CVE-2021-3709](https://ubuntu.com/security/CVE-2021-3709) <!-- medium -->
-   Arbitrary file reads in apport crash handling - reads certain file when
    apps crash, can be tricked to read other files and include these in the
    crash report which can then be seen by the user, uploaded to
    errors.ubuntu.com etc


### [[USN-5078-1](https://ubuntu.com/security/notices/USN-5078-1)] Squashfs-Tools vulnerability [06:46] {#usn-5078-1-squashfs-tools-vulnerability-06-46}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-41072](https://ubuntu.com/security/CVE-2021-41072) <!-- medium -->
-   Similar to [Episode 129](https://ubuntusecuritypodcast.org/episode-129/) - symlink and file of same name - when unsquash,
    write out symlink, then write out file traversing the symlink ->
    arbitrary file overwrite


### [[USN-5079-1](https://ubuntu.com/security/notices/USN-5079-1), [USN-5079-2](https://ubuntu.com/security/notices/USN-5079-2)] curl vulnerabilities [07:48] {#usn-5079-1-usn-5079-2-curl-vulnerabilities-07-48}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-22947](https://ubuntu.com/security/CVE-2021-22947) <!-- medium -->
    -   [CVE-2021-22946](https://ubuntu.com/security/CVE-2021-22946) <!-- medium -->
    -   [CVE-2021-22945](https://ubuntu.com/security/CVE-2021-22945) <!-- medium --> (non-ESM only)
-   MQTT OOB write (malicious MQTT server) (non-ESM)
-   Possible to cause to not upgrade to TLS even when specified -> info leak
-   STARTTLS -> could inject responses / intercept comms etc


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### OWASP Top 10 updated after 4 years [08:55] {#owasp-top-10-updated-after-4-years-08-55}

-   <https://owasp.org/Top10/>
-   Last updated in Nov 2017
-   Increasing complexity of web-apps means vulns are now at the edges -
    ie. when combining two components, misconfigure one of them -> vuln in
    combination due to accidential misuse by the other component


### Hiring [13:11] {#hiring-13-11}


#### Linux Cryptography and Security Engineer {#linux-cryptography-and-security-engineer}

-   <https://canonical.com/careers/2612092/linux-cryptography-and-security-engineer-remote>


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
