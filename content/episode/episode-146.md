+++
title = "Episode 146"
description = "Ubuntu 21.04 goes EOL soon, plus we cover security updates for Django, the Linux kernel, Apache httpd2 + Log4j2, Ghostscript and more."
date = 2022-01-14T17:54:00+10:30
lastmod = 2022-05-15T18:05:45+09:30
draft = false
weight = 1014
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E146.mp3"
podcast_duration = "16:12"
podcast_bytes = 12242139
permalink = "https://ubuntusecuritypodcast.org/episode-146/"
guid = "06b1cc38e3413a738dde4b25d88180e0c49fba5c2507c4c5afc7b11d7735134636123caa31a76eeb3eeacfd9b43846fb01d560fe7a667d171928b95f41cf027d"
+++

## Overview {#overview}

Ubuntu 21.04 goes EOL soon, plus we cover security updates for Django, the Linux kernel, Apache httpd2 + Log4j2, Ghostscript and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

28 unique CVEs addressed


### [[USN-5204-1](https://ubuntu.com/security/notices/USN-5204-1)] Django vulnerabilities [00:45] {#usn-5204-1-django-vulnerabilities-00-45}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-45452](https://ubuntu.com/security/CVE-2021-45452) <!-- low -->
    -   [CVE-2021-45116](https://ubuntu.com/security/CVE-2021-45116) <!-- low -->
    -   [CVE-2021-45115](https://ubuntu.com/security/CVE-2021-45115) <!-- medium -->
-   Possible to write to arbitrary locations **if** a plugin etc would call
    `Storage.save()` with crafted file names
-   Also possible to use the `dictsort` template filter to disclose info or
    make method calls when passing in a crafted key - Django upstream remind
    that should always validate user input before use
-   Possible DoS attack since the password comparison logic would compare
    entire submitted password for similarity which (when passed a very long
    password) would use a lot of CPU - fixed to discard anything with a
    length that was significantly different than the supplied password


### [[USN-5206-1](https://ubuntu.com/security/notices/USN-5206-1)] Linux kernel (OEM) vulnerability [02:08] {#usn-5206-1-linux-kernel--oem--vulnerability-02-08}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-4002](https://ubuntu.com/security/CVE-2021-4002) <!-- high -->
-   5.14 OEM kernel for Ubuntu 20.04 LTS
-   hugetlb would not always flush TLBs under certain conditions - since
    don't get flushed, a local attacker could then possibly read or alter
    stale data from other processes which are using huge pages
    -   In general most processes don't use huge pages - have to specifically
        opt in by using `mmap()` or SYSV shmem syscalls with the `SHM_HUGETLB` flag
    -   But this is often used by applications which have large memory
        requirements as they can preallocate memory using much larger page
        sizes which gives performance benefits since many less TLB entries for
        the same amount of memory compared to using standard size 4K pages


### [[USN-5207-1](https://ubuntu.com/security/notices/USN-5207-1)] Linux kernel (OEM) vulnerabilities [04:26] {#usn-5207-1-linux-kernel--oem--vulnerabilities-04-26}

-   4 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-43267](https://ubuntu.com/security/CVE-2021-43267) <!-- medium -->
    -   [CVE-2021-42739](https://ubuntu.com/security/CVE-2021-42739) <!-- medium -->
    -   [CVE-2021-4001](https://ubuntu.com/security/CVE-2021-4001) <!-- medium -->
    -   [CVE-2021-4002](https://ubuntu.com/security/CVE-2021-4002) <!-- high -->
-   5.10 OEM kernel for Ubuntu 20.04 LTS
-   huge pages tlb flushing issue above
-   Race-condition in handling of read-only maps in eBPF - could allow a
    privileged attacker to modify maps that were meant to be read-only
-   2 vulns previously discussed in [Episode 140](https://ubuntusecuritypodcast.org/episode-140/)
    -   `TIPC` + `MSG_CRYPTO` OOB write, and Firewire OOB write - both can be used
        by local unprivileged users to cause DoS / possible code execution


### [[USN-5208-1](https://ubuntu.com/security/notices/USN-5208-1)] Linux kernel vulnerabilities [06:01] {#usn-5208-1-linux-kernel-vulnerabilities-06-01}

-   7 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-43389](https://ubuntu.com/security/CVE-2021-43389) <!-- low -->
    -   [CVE-2021-43267](https://ubuntu.com/security/CVE-2021-43267) <!-- medium -->
    -   [CVE-2021-43056](https://ubuntu.com/security/CVE-2021-43056) <!-- medium -->
    -   [CVE-2021-41864](https://ubuntu.com/security/CVE-2021-41864) <!-- low -->
    -   [CVE-2021-3760](https://ubuntu.com/security/CVE-2021-3760) <!-- medium -->
    -   [CVE-2021-20321](https://ubuntu.com/security/CVE-2021-20321) <!-- medium -->
    -   [CVE-2021-4002](https://ubuntu.com/security/CVE-2021-4002) <!-- high -->
-   5.13 kernel series for Ubuntu 21.10, 5.11 kernel series for Ubuntu 21.04,
    5.11 HWE kernel series for Ubuntu 20.04 LTS
-   As above plus
    -   overlayfs race-condition -&gt; DoS
    -   NFS UAF -&gt; crash -&gt; DoS / code-exec
    -   eBPF integer overflow -&gt; OOB write -&gt; crash -&gt; DoS / code-exec


### [[USN-5209-1](https://ubuntu.com/security/notices/USN-5209-1)] Linux kernel vulnerabilities [06:38] {#usn-5209-1-linux-kernel-vulnerabilities-06-38}

-   6 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-43389](https://ubuntu.com/security/CVE-2021-43389) <!-- low -->
    -   [CVE-2021-41864](https://ubuntu.com/security/CVE-2021-41864) <!-- low -->
    -   [CVE-2021-3760](https://ubuntu.com/security/CVE-2021-3760) <!-- medium -->
    -   [CVE-2021-20321](https://ubuntu.com/security/CVE-2021-20321) <!-- medium -->
    -   [CVE-2021-20317](https://ubuntu.com/security/CVE-2021-20317) <!-- low -->
    -   [CVE-2021-4002](https://ubuntu.com/security/CVE-2021-4002) <!-- high -->
-   4.15 kernel series for Ubuntu 20.04 LTS, 4.15 HWE kernel series for
    Ubuntu 16.04 ESM, 4.15 kernel for Ubuntu 14.04 ESM on Azure
-   A bunch of the previously mentioned CVEs, plus:
    -   race condition in timer impl -&gt; DoS from a privileged local users


### [[USN-5210-1](https://ubuntu.com/security/notices/USN-5210-1)] Linux kernel vulnerabilities {#usn-5210-1-linux-kernel-vulnerabilities}

-   7 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-43389](https://ubuntu.com/security/CVE-2021-43389) <!-- low -->
    -   [CVE-2021-43056](https://ubuntu.com/security/CVE-2021-43056) <!-- medium -->
    -   [CVE-2021-41864](https://ubuntu.com/security/CVE-2021-41864) <!-- low -->
    -   [CVE-2021-3760](https://ubuntu.com/security/CVE-2021-3760) <!-- medium -->
    -   [CVE-2021-20321](https://ubuntu.com/security/CVE-2021-20321) <!-- medium -->
    -   [CVE-2020-26541](https://ubuntu.com/security/CVE-2020-26541) <!-- medium -->
    -   [CVE-2021-4002](https://ubuntu.com/security/CVE-2021-4002) <!-- high -->
-   5.4 kernel series for Ubuntu 20.04 LTS, 5.4 HWE kernel series for Ubuntu
    18.04 LTS
-   As above


### [[USN-5211-1](https://ubuntu.com/security/notices/USN-5211-1)] Linux kernel vulnerability {#usn-5211-1-linux-kernel-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2021-4002](https://ubuntu.com/security/CVE-2021-4002) <!-- high -->
-   4.4 kernel series for Ubuntu 16.04 ESM, 3.13 kernel series for Ubuntu
    14.04 ESM


### [[USN-5219-1](https://ubuntu.com/security/notices/USN-5219-1)] Linux kernel vulnerability {#usn-5219-1-linux-kernel-vulnerability}

-   Affecting Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
-   5.13 kernel series for Ubuntu 21.10, 5.11 kernel series for Ubuntu 21.04,
    5.11 HWE kernel series for Ubuntu 20.04 LTS
-   eBPF ringbuf OOB write -&gt; local attacker -&gt; DoS / RCE


### [[USN-5217-1](https://ubuntu.com/security/notices/USN-5217-1)] Linux kernel (OEM) vulnerabilities {#usn-5217-1-linux-kernel--oem--vulnerabilities}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-4090](https://ubuntu.com/security/CVE-2021-4090) <!-- medium -->
-   NFS OOB write -&gt; local attacker -&gt; DoS / RCE
-   eBPF ringbuf OOB write
    -   same impact


### [[USN-5218-1](https://ubuntu.com/security/notices/USN-5218-1)] Linux kernel (OEM) vulnerabilities {#usn-5218-1-linux-kernel--oem--vulnerabilities}

-   7 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-43389](https://ubuntu.com/security/CVE-2021-43389) <!-- low -->
    -   [CVE-2021-43267](https://ubuntu.com/security/CVE-2021-43267) <!-- medium -->
    -   [CVE-2021-43056](https://ubuntu.com/security/CVE-2021-43056) <!-- medium -->
    -   [CVE-2021-41864](https://ubuntu.com/security/CVE-2021-41864) <!-- low -->
    -   [CVE-2021-3760](https://ubuntu.com/security/CVE-2021-3760) <!-- medium -->
    -   [CVE-2021-20321](https://ubuntu.com/security/CVE-2021-20321) <!-- medium -->
    -   [CVE-2021-4002](https://ubuntu.com/security/CVE-2021-4002) <!-- high -->
-   5.13 OEM kernel series for Ubuntu 20.04 LTS


### [[LSN-0083-1](https://ubuntu.com/security/notices/LSN-0083-1)] Linux kernel vulnerability [07:33] {#lsn-0083-1-linux-kernel-vulnerability-07-33}

-   5 CVEs addressed in Ubuntu 20.04 LTS, 18.04 LTS and 16.04 ESM
    -   [CVE-2021-33909](https://ubuntu.com/security/CVE-2021-33909) <!-- high -->
    -   [CVE-2021-22555](https://ubuntu.com/security/CVE-2021-22555) <!-- high -->
    -   [CVE-2021-4002](https://ubuntu.com/security/CVE-2021-4002) <!-- high -->
    -   [CVE-2021-3653](https://ubuntu.com/security/CVE-2021-3653) <!-- high -->
    -   [CVE-2018-25020](https://ubuntu.com/security/CVE-2018-25020) <!-- medium -->
-   Various recent high priority CVEs now available as a livepatch
    -   Including hugepages issue above as well as
    -   eBPF verifier issue
    -   AMD specific issue with KVM -&gt; guest to host memory write
    -   OOB write in netfilter
    -   VFS OOB write
-   All could lead to code execution by a relatively unprivileged user into
    the kernel


### [[USN-5212-1](https://ubuntu.com/security/notices/USN-5212-1), [USN-5212-2](https://ubuntu.com/security/notices/USN-5212-2)] Apache HTTP Server vulnerabilities [08:54] {#usn-5212-1-usn-5212-2-apache-http-server-vulnerabilities-08-54}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-44790](https://ubuntu.com/security/CVE-2021-44790) <!-- medium -->
    -   [CVE-2021-44224](https://ubuntu.com/security/CVE-2021-44224) <!-- medium -->
-   Possible NULL ptr deref when configured as a forward proxy (`ProxyRequests on`)
-   Possible SSRF when configured as both a forward and reverse proxy


### [[USN-5213-1](https://ubuntu.com/security/notices/USN-5213-1)] WebKitGTK vulnerabilities [09:37] {#usn-5213-1-webkitgtk-vulnerabilities-09-37}

-   2 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-30890](https://ubuntu.com/security/CVE-2021-30890) <!-- medium -->
    -   [CVE-2021-30887](https://ubuntu.com/security/CVE-2021-30887) <!-- medium -->
-   "Universal" XSS and Content Security Policy bypass
    -   both come from upstream webkit


### [[USN-5043-2](https://ubuntu.com/security/notices/USN-5043-2)] Exiv2 regression [10:10] {#usn-5043-2-exiv2-regression-10-10}

-   1 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-37620](https://ubuntu.com/security/CVE-2021-37620) <!-- medium -->
-   Gwenview crash when opening images exported by darktable
    -   gwenview uses exiv2 for metadata handling
    -   recent security update for exiv2 introduced a regression
-   Thanks Simon Schmeißer from the Ubuntu community for contributing the
    debdiff to fix this issue


### [[USN-5222-1](https://ubuntu.com/security/notices/USN-5222-1)] Apache Log4j 2 vulnerabilities [11:06] {#usn-5222-1-apache-log4j-2-vulnerabilities-11-06}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-45105](https://ubuntu.com/security/CVE-2021-45105) <!-- medium -->
    -   [CVE-2021-44832](https://ubuntu.com/security/CVE-2021-44832) <!-- medium -->
-   Moar log4j2
    -   Another instance of JNDI RCE but this time needed to have configured to
        use a JDBC appender - ie configured to write event logs to a relational
        database table via standard JDBC
    -   Uncontrolled recursion via self-referential lookups - but requires an
        attacker to be able to control Thread Context Map data as well as be
        able to supply crafted strings to get logged


### [[USN-5224-1](https://ubuntu.com/security/notices/USN-5224-1)] Ghostscript vulnerabilities [12:21] {#usn-5224-1-ghostscript-vulnerabilities-12-21}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-45949](https://ubuntu.com/security/CVE-2021-45949) <!-- medium -->
    -   [CVE-2021-45944](https://ubuntu.com/security/CVE-2021-45944) <!-- medium -->
-   Hello Ghostscript my old friend!
-   2 issues discovered by oss-fuzz (used to be all Tavis Ormandy, but those
    were more logic bugs in the sandbox etc) - in this case a UAF and a heap
    buffer overflow -&gt; crash / RCE


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 21.04 EOL [13:31] {#ubuntu-21-dot-04-eol-13-31}

-   Next week on 20th January Ubuntu 21.04 goes EOL
-   No more bug fix or security updates from then onwards
-   Now is the perfect time to upgrade to Ubuntu 21.10 which is supported for
    another 6 months more until July 2022


### Ubuntu Security Podcast back on break for 2 weeks [14:37] {#ubuntu-security-podcast-back-on-break-for-2-weeks-14-37}

-   22.04 mid-cycle sprint week
-   holiday
-   back in 3 weeks time (end of first week of February)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)