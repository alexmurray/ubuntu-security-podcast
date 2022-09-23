+++
title = "Episode 178"
description = """
  You can't test your way out of security vulnerabilities (at least when writing
  your code in C), plus we cover security updates for Intel Microcode, vim,
  Wayland, the Linux kernel, SQLite and more.
  """
date = 2022-09-23T15:36:00+09:30
lastmod = 2022-09-23T15:41:23+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E178.mp3"
podcast_duration = 655
podcast_bytes = 11247928
permalink = "https://ubuntusecuritypodcast.org/episode-178/"
guid = "a6046f312d6829a2168ac6205bf34b67766bdc72927dc70a31e08fd7b4dd6ed099bdd5650ba586a18cea3e465f6f73549999537a473811ed164a0b1c5bde6b71"
+++

## Overview {#overview}

You can't test your way out of security vulnerabilities (at least when writing
your code in C), plus we cover security updates for Intel Microcode, vim,
Wayland, the Linux kernel, SQLite and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

68 unique CVEs addressed


### [[USN-5606-2](https://ubuntu.com/security/notices/USN-5606-2)] poppler regression [00:45] {#usn-5606-2-poppler-regression-00-45}

-   Affecting Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
-   [[USN-5606-1] poppler vulnerability from Episode 177]({{< relref "episode-177#usn-5606-1-poppler-vulnerability-03-23" >}}) - integer overflow in
    JBIG2 decoder
-   When backporting the series of patches, missed one that updated the
    CMakeLists.txt to ensure a new header file that was added as part of the
    security update is actually installed by the libpoppler-dev package - without
    this if installed the update and then tried to recompile something locally it
    would fail


### [[USN-5612-1](https://ubuntu.com/security/notices/USN-5612-1)] Intel Microcode vulnerability [01:29] {#usn-5612-1-intel-microcode-vulnerability-01-29}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-21233](https://ubuntu.com/security/CVE-2022-21233) <!-- medium -->
-   Latest upstream Intel Microcode release (IPU 2022.2) - only security relevant
    for SGX


### [[USN-5613-1](https://ubuntu.com/security/notices/USN-5613-1), [USN-5613-2](https://ubuntu.com/security/notices/USN-5613-2)] Vim vulnerabilities [01:54] {#usn-5613-1-usn-5613-2-vim-vulnerabilities-01-54}

-   7 CVEs addressed in Trusty ESM (14.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-1621](https://ubuntu.com/security/CVE-2022-1621) <!-- medium -->
    -   [CVE-2022-1620](https://ubuntu.com/security/CVE-2022-1620) <!-- medium -->
    -   [CVE-2022-1619](https://ubuntu.com/security/CVE-2022-1619) <!-- medium -->
    -   [CVE-2022-1616](https://ubuntu.com/security/CVE-2022-1616) <!-- medium -->
    -   [CVE-2022-1420](https://ubuntu.com/security/CVE-2022-1420) <!-- medium -->
    -   [CVE-2022-1154](https://ubuntu.com/security/CVE-2022-1154) <!-- medium -->
    -   [CVE-2022-0943](https://ubuntu.com/security/CVE-2022-0943) <!-- medium -->
-   Various buffer overflows and the like that could be triggered when editing
    crafted files - have said in the past that vim is fast becoming one of the
    most security-patched packages in Ubuntu - all driven by their bug-bounty
    <https://huntr.dev/repos/vim/vim/>


### [[USN-5614-1](https://ubuntu.com/security/notices/USN-5614-1)] Wayland vulnerability [02:17] {#usn-5614-1-wayland-vulnerability-02-17}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2021-3782](https://ubuntu.com/security/CVE-2021-3782) <!-- medium -->
-   Reference count overflow - used a 32-bit int to count the number of
    references - but on a 64-bit machine it is quite possible that a malicious
    client could allocate a huge amount of buffers to overflow and then possibly
    get a UAF - highly unlikely to be able to exploit in practice since would also
    need a large number of connections to the compositor as well - fixed by
    limiting the max number of objects that can be allocated


### [[USN-5615-1](https://ubuntu.com/security/notices/USN-5615-1)] SQLite vulnerabilities [03:01] {#usn-5615-1-sqlite-vulnerabilities-03-01}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-20223](https://ubuntu.com/security/CVE-2021-20223) <!-- medium -->
    -   [CVE-2020-35527](https://ubuntu.com/security/CVE-2020-35527) <!-- medium -->
    -   [CVE-2020-35525](https://ubuntu.com/security/CVE-2020-35525) <!-- medium -->
-   NULL ptr deref, OOB read, unicode parsing issue - disputed by upstream as an
    actual vuln
-   Has such a large amount of tests - <https://www.sqlite.org/testing.html>
    -   for 151 KSLOC has 92,038 KSLOC of tests -&gt; 608 times as much code in tests
        that the actual library itself
    -   4 different test harnesses, 100% branch coverage, OOM tests, I/O error
        tests, fuzz tests, boundary conditions, regression tests, valgrind, UB etc
    -   yet still has new vulns discovered every now and then
    -   you can't test your way out of security issues - at least when you write
        your code in C which has just too many different operations that have UB
    -   you can perhaps do it via formal methods (seL4 etc) but is [very expensive](https://sel4.systems/Info/Docs/GD-NICTA-whitepaper.pdf)..
        -   $200-400/LoC
        -   eg. to formally prove SQLite would then cost ~$18.4M-$36.8M
    -   use rust?
        -   would hopefully help at least for the first 2 issues - can still have
            logic flaws and hence security vulns (eg. failing to properly validate a
            TLS cert or similar)


### [[USN-5616-1](https://ubuntu.com/security/notices/USN-5616-1)] Linux kernel (Intel IoTG) vulnerabilities [06:00] {#usn-5616-1-linux-kernel--intel-iotg--vulnerabilities-06-00}

-   10 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-2959](https://ubuntu.com/security/CVE-2022-2959) <!-- medium -->
    -   [CVE-2022-2873](https://ubuntu.com/security/CVE-2022-2873) <!-- medium -->
    -   [CVE-2022-2503](https://ubuntu.com/security/CVE-2022-2503) <!-- medium -->
    -   [CVE-2022-1973](https://ubuntu.com/security/CVE-2022-1973) <!-- medium -->
    -   [CVE-2022-1943](https://ubuntu.com/security/CVE-2022-1943) <!-- medium -->
    -   [CVE-2022-1852](https://ubuntu.com/security/CVE-2022-1852) <!-- medium -->
    -   [CVE-2022-1729](https://ubuntu.com/security/CVE-2022-1729) <!-- low -->
    -   [CVE-2022-32296](https://ubuntu.com/security/CVE-2022-32296) <!-- medium -->
    -   [CVE-2022-1012](https://ubuntu.com/security/CVE-2022-1012) <!-- medium -->
    -   [CVE-2021-33061](https://ubuntu.com/security/CVE-2021-33061) <!-- medium -->
-   5.15
-   Some of these have covered previously
    -   Intel 10GbE PCI Express driver, IP source port randomisation failure, perf
        UAF, KVM NULL ptr deref, various file-system OOB R/W etc


### [[USN-5621-1](https://ubuntu.com/security/notices/USN-5621-1)] Linux kernel vulnerabilities [06:32] {#usn-5621-1-linux-kernel-vulnerabilities-06-32}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
-   4.15 GA 18.04 LTS, HWE 16.04 ESM
    -   [CVE-2022-36946](https://ubuntu.com/security/CVE-2022-36946) <!-- medium -->
    -   [CVE-2021-33655](https://ubuntu.com/security/CVE-2021-33655) <!-- medium -->
-   console framebuffer and netfilter OOB writes covered in previous episodes


### [[USN-5622-1](https://ubuntu.com/security/notices/USN-5622-1)] Linux kernel vulnerabilities [06:57] {#usn-5622-1-linux-kernel-vulnerabilities-06-57}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-36946](https://ubuntu.com/security/CVE-2022-36946) <!-- medium -->
    -   [CVE-2022-2503](https://ubuntu.com/security/CVE-2022-2503) <!-- medium -->
    -   [CVE-2022-1729](https://ubuntu.com/security/CVE-2022-1729) <!-- low -->
    -   [CVE-2022-32296](https://ubuntu.com/security/CVE-2022-32296) <!-- medium -->
    -   [CVE-2022-1012](https://ubuntu.com/security/CVE-2022-1012) <!-- medium -->
    -   [CVE-2021-33655](https://ubuntu.com/security/CVE-2021-33655) <!-- medium -->
-   5.4 GA 20.04 LTS / HWE 18.04 LTS

x\*\*\* [[USN-5624-1](https://ubuntu.com/security/notices/USN-5624-1)] Linux kernel vulnerabilities [07:05]

-   11 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-36946](https://ubuntu.com/security/CVE-2022-36946) <!-- medium -->
    -   [CVE-2022-34495](https://ubuntu.com/security/CVE-2022-34495) <!-- medium -->
    -   [CVE-2022-34494](https://ubuntu.com/security/CVE-2022-34494) <!-- medium -->
    -   [CVE-2022-33744](https://ubuntu.com/security/CVE-2022-33744) <!-- medium -->
    -   [CVE-2022-33743](https://ubuntu.com/security/CVE-2022-33743) <!-- medium -->
    -   [CVE-2022-33742](https://ubuntu.com/security/CVE-2022-33742) <!-- medium -->
    -   [CVE-2022-33741](https://ubuntu.com/security/CVE-2022-33741) <!-- medium -->
    -   [CVE-2022-33740](https://ubuntu.com/security/CVE-2022-33740) <!-- medium -->
    -   [CVE-2022-26365](https://ubuntu.com/security/CVE-2022-26365) <!-- medium -->
    -   [CVE-2022-2318](https://ubuntu.com/security/CVE-2022-2318) <!-- medium -->
    -   [CVE-2021-33655](https://ubuntu.com/security/CVE-2021-33655) <!-- medium -->
-   5.15 GA 22.04 LTS / Azure 20.04 LTS


### [[USN-5623-1](https://ubuntu.com/security/notices/USN-5623-1)] Linux kernel (HWE) vulnerabilities [07:12] {#usn-5623-1-linux-kernel--hwe--vulnerabilities-07-12}

-   21 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-36946](https://ubuntu.com/security/CVE-2022-36946) <!-- medium -->
    -   [CVE-2022-34495](https://ubuntu.com/security/CVE-2022-34495) <!-- medium -->
    -   [CVE-2022-34494](https://ubuntu.com/security/CVE-2022-34494) <!-- medium -->
    -   [CVE-2022-33744](https://ubuntu.com/security/CVE-2022-33744) <!-- medium -->
    -   [CVE-2022-33743](https://ubuntu.com/security/CVE-2022-33743) <!-- medium -->
    -   [CVE-2022-33742](https://ubuntu.com/security/CVE-2022-33742) <!-- medium -->
    -   [CVE-2022-33741](https://ubuntu.com/security/CVE-2022-33741) <!-- medium -->
    -   [CVE-2022-33740](https://ubuntu.com/security/CVE-2022-33740) <!-- medium -->
    -   [CVE-2022-2959](https://ubuntu.com/security/CVE-2022-2959) <!-- medium -->
    -   [CVE-2022-2873](https://ubuntu.com/security/CVE-2022-2873) <!-- medium -->
    -   [CVE-2022-26365](https://ubuntu.com/security/CVE-2022-26365) <!-- medium -->
    -   [CVE-2022-2503](https://ubuntu.com/security/CVE-2022-2503) <!-- medium -->
    -   [CVE-2022-2318](https://ubuntu.com/security/CVE-2022-2318) <!-- medium -->
    -   [CVE-2022-1973](https://ubuntu.com/security/CVE-2022-1973) <!-- medium -->
    -   [CVE-2022-1943](https://ubuntu.com/security/CVE-2022-1943) <!-- medium -->
    -   [CVE-2022-1852](https://ubuntu.com/security/CVE-2022-1852) <!-- medium -->
    -   [CVE-2022-1729](https://ubuntu.com/security/CVE-2022-1729) <!-- low -->
    -   [CVE-2022-32296](https://ubuntu.com/security/CVE-2022-32296) <!-- medium -->
    -   [CVE-2022-1012](https://ubuntu.com/security/CVE-2022-1012) <!-- medium -->
    -   [CVE-2021-33655](https://ubuntu.com/security/CVE-2021-33655) <!-- medium -->
    -   [CVE-2021-33061](https://ubuntu.com/security/CVE-2021-33061) <!-- medium -->
-   5.15 20.04 HWE
-   all the vulns mentioned earlier plus a bunch in Xen (kernel side) - impact
    ranges from crashing guest and exposing its memory to DoS services on the host


### [[USN-5617-1](https://ubuntu.com/security/notices/USN-5617-1)] Xen vulnerabilities [07:45] {#usn-5617-1-xen-vulnerabilities-07-45}

-   20 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-25604](https://ubuntu.com/security/CVE-2020-25604) <!-- medium -->
    -   [CVE-2020-25603](https://ubuntu.com/security/CVE-2020-25603) <!-- medium -->
    -   [CVE-2020-25602](https://ubuntu.com/security/CVE-2020-25602) <!-- medium -->
    -   [CVE-2020-25601](https://ubuntu.com/security/CVE-2020-25601) <!-- medium -->
    -   [CVE-2020-25600](https://ubuntu.com/security/CVE-2020-25600) <!-- medium -->
    -   [CVE-2020-25599](https://ubuntu.com/security/CVE-2020-25599) <!-- medium -->
    -   [CVE-2020-25597](https://ubuntu.com/security/CVE-2020-25597) <!-- medium -->
    -   [CVE-2020-25596](https://ubuntu.com/security/CVE-2020-25596) <!-- medium -->
    -   [CVE-2020-25595](https://ubuntu.com/security/CVE-2020-25595) <!-- medium -->
    -   [CVE-2020-15567](https://ubuntu.com/security/CVE-2020-15567) <!-- medium -->
    -   [CVE-2020-15566](https://ubuntu.com/security/CVE-2020-15566) <!-- medium -->
    -   [CVE-2020-15565](https://ubuntu.com/security/CVE-2020-15565) <!-- medium -->
    -   [CVE-2020-15564](https://ubuntu.com/security/CVE-2020-15564) <!-- medium -->
    -   [CVE-2020-15563](https://ubuntu.com/security/CVE-2020-15563) <!-- medium -->
    -   [CVE-2020-11743](https://ubuntu.com/security/CVE-2020-11743) <!-- medium -->
    -   [CVE-2020-11742](https://ubuntu.com/security/CVE-2020-11742) <!-- medium -->
    -   [CVE-2020-11741](https://ubuntu.com/security/CVE-2020-11741) <!-- medium -->
    -   [CVE-2020-11740](https://ubuntu.com/security/CVE-2020-11740) <!-- medium -->
    -   [CVE-2020-11739](https://ubuntu.com/security/CVE-2020-11739) <!-- medium -->
    -   [CVE-2020-0543](https://ubuntu.com/security/CVE-2020-0543) <!-- medium -->
-   Community contributed update for xen - almost wins the award for the most CVEs
    patched in a single update for this week
-   Most issues allow a malicious guest to attack the host -&gt; DoS, privesc,
    code-exec etc


### [[USN-5619-1](https://ubuntu.com/security/notices/USN-5619-1)] LibTIFF vulnerabilities [08:17] {#usn-5619-1-libtiff-vulnerabilities-08-17}

-   7 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-2058](https://ubuntu.com/security/CVE-2022-2058) <!-- low -->
    -   [CVE-2022-2057](https://ubuntu.com/security/CVE-2022-2057) <!-- low -->
    -   [CVE-2022-2056](https://ubuntu.com/security/CVE-2022-2056) <!-- low -->
    -   [CVE-2022-1355](https://ubuntu.com/security/CVE-2022-1355) <!-- medium -->
    -   [CVE-2022-1354](https://ubuntu.com/security/CVE-2022-1354) <!-- medium -->
    -   [CVE-2020-19144](https://ubuntu.com/security/CVE-2020-19144) <!-- negligible -->
    -   [CVE-2020-19131](https://ubuntu.com/security/CVE-2020-19131) <!-- negligible -->
-   Another package vying for most security updates recently
-   Usual memory corruption issues when handling crafted files - stack / heap
    buffer overflows etc


### [[USN-5618-1](https://ubuntu.com/security/notices/USN-5618-1)] Ghostscript vulnerability [08:49] {#usn-5618-1-ghostscript-vulnerability-08-49}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2020-27792](https://ubuntu.com/security/CVE-2020-27792) <!-- medium -->
-   Heap buffer overflow when parsing a crafted PDF


### [[USN-5626-1](https://ubuntu.com/security/notices/USN-5626-1)] Bind vulnerabilities [08:58] {#usn-5626-1-bind-vulnerabilities-08-58}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-38178](https://ubuntu.com/security/CVE-2022-38178) <!-- medium -->
    -   [CVE-2022-38177](https://ubuntu.com/security/CVE-2022-38177) <!-- medium -->
    -   [CVE-2022-3080](https://ubuntu.com/security/CVE-2022-3080) <!-- medium -->
    -   [CVE-2022-2906](https://ubuntu.com/security/CVE-2022-2906) <!-- medium -->
    -   [CVE-2022-2881](https://ubuntu.com/security/CVE-2022-2881) <!-- medium -->
    -   [CVE-2022-2795](https://ubuntu.com/security/CVE-2022-2795) <!-- medium -->
-   Memory leaks when handling certain crypto algorithms with DNSSEC,
    resource-based DoS, buffer over-read -&gt; info leak / crash, assertion-based
    crash via crafted query


### [[USN-5625-1](https://ubuntu.com/security/notices/USN-5625-1)] Mako vulnerability [09:22] {#usn-5625-1-mako-vulnerability-09-22}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-40023](https://ubuntu.com/security/CVE-2022-40023) <!-- medium -->
-   ReDoS via crafted content


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Preparing for the release of Ubuntu Pro [09:44] {#preparing-for-the-release-of-ubuntu-pro-09-44}

-   Team has worked on this for the last few years - finally will see the light of
    day in the coming week or two - more details to come


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)