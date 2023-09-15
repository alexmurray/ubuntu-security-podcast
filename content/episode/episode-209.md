+++
title = "Episode 209"
description = """
  Andrei is back this week with a deep dive into recent research around CVSS
  scoring inconsistencies, plus we look at a recent Ubuntu blog post on the
  internals of package updates and the repositories, and we cover security updates
  in Apache Shiro, GRUB2, CUPS, RedCloth, curl and more.
  """
date = 2023-09-15T22:12:00+09:30
lastmod = 2023-09-15T22:13:56+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E209.mp3"
podcast_duration = 1489
podcast_bytes = 39797603
permalink = "https://ubuntusecuritypodcast.org/episode-209/"
guid = "c3d31ac5077a301d17fc6350fea73d569b91c919ad72b80c6bed467349740d83eb8f97509602d8c337630c3230cd38e1f98761f64e176433c7121ae498ca4ed2"
+++

## Overview {#overview}

Andrei is back this week with a deep dive into recent research around CVSS
scoring inconsistencies, plus we look at a recent Ubuntu blog post on the
internals of package updates and the repositories, and we cover security updates
in Apache Shiro, GRUB2, CUPS, RedCloth, curl and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

77 unique CVEs addressed


### [[USN-6346-1](https://ubuntu.com/security/notices/USN-6346-1)] Linux kernel (Raspberry Pi) vulnerabilities (00:55) {#usn-6346-1-linux-kernel--raspberry-pi--vulnerabilities--00-55}

-   5 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-3609](https://ubuntu.com/security/CVE-2023-3609) <!-- high -->
    -   [CVE-2023-20593](https://ubuntu.com/security/CVE-2023-20593) <!-- high -->
    -   [CVE-2022-40982](https://ubuntu.com/security/CVE-2022-40982) <!-- medium -->
-   5.4 raspi + HWE on 18.04
-   Covered previously in [[USN-6315-1] Linux kernel vulnerabilities from Episode 207]({{< relref "episode-207#usn-6315-1-linux-kernel-vulnerabilities--06-58" >}})


### [[USN-6347-1](https://ubuntu.com/security/notices/USN-6347-1)] Linux kernel (Azure CVM) vulnerabilities {#usn-6347-1-linux-kernel--azure-cvm--vulnerabilities}

-   24 CVEs addressed in Focal (20.04 LTS)
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
-   Microsoft Azure CVM cloud systems - 5.15


### [[USN-6348-1](https://ubuntu.com/security/notices/USN-6348-1)] Linux kernel vulnerabilities {#usn-6348-1-linux-kernel-vulnerabilities}

-   11 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-4015](https://ubuntu.com/security/CVE-2023-4015) <!-- high -->
    -   [CVE-2023-4004](https://ubuntu.com/security/CVE-2023-4004) <!-- high -->
    -   [CVE-2023-3995](https://ubuntu.com/security/CVE-2023-3995) <!-- high -->
    -   [CVE-2023-3777](https://ubuntu.com/security/CVE-2023-3777) <!-- high -->
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-3610](https://ubuntu.com/security/CVE-2023-3610) <!-- high -->
    -   [CVE-2023-3609](https://ubuntu.com/security/CVE-2023-3609) <!-- high -->
    -   [CVE-2023-21400](https://ubuntu.com/security/CVE-2023-21400) <!-- high -->
    -   [CVE-2023-20593](https://ubuntu.com/security/CVE-2023-20593) <!-- high -->
    -   [CVE-2022-40982](https://ubuntu.com/security/CVE-2022-40982) <!-- medium -->
-   5.15 Raspi on 22.04 / Intel-IoTG on 20.04


### [[USN-6349-1](https://ubuntu.com/security/notices/USN-6349-1)] Linux kernel (Azure) vulnerabilities {#usn-6349-1-linux-kernel--azure--vulnerabilities}

-   9 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-35828](https://ubuntu.com/security/CVE-2023-35828) <!-- low -->
    -   [CVE-2023-35824](https://ubuntu.com/security/CVE-2023-35824) <!-- low -->
    -   [CVE-2023-35823](https://ubuntu.com/security/CVE-2023-35823) <!-- low -->
    -   [CVE-2023-3268](https://ubuntu.com/security/CVE-2023-3268) <!-- medium -->
    -   [CVE-2023-31084](https://ubuntu.com/security/CVE-2023-31084) <!-- low -->
    -   [CVE-2023-2269](https://ubuntu.com/security/CVE-2023-2269) <!-- medium -->
    -   [CVE-2023-2163](https://ubuntu.com/security/CVE-2023-2163) <!-- medium -->
    -   [CVE-2023-21255](https://ubuntu.com/security/CVE-2023-21255) <!-- medium -->
    -   [CVE-2023-2002](https://ubuntu.com/security/CVE-2023-2002) <!-- medium -->
-   5.4 Azure


### [[USN-6350-1](https://ubuntu.com/security/notices/USN-6350-1), [USN-6351-1](https://ubuntu.com/security/notices/USN-6351-1), [USN-6339-2](https://ubuntu.com/security/notices/USN-6339-2), [USN-6339-3](https://ubuntu.com/security/notices/USN-6339-3)] Linux kernel vulnerabilities {#usn-6350-1-usn-6351-1-usn-6339-2-usn-6339-3-linux-kernel-vulnerabilities}

-   8 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-38429](https://ubuntu.com/security/CVE-2023-38429) <!-- medium -->
    -   [CVE-2023-38428](https://ubuntu.com/security/CVE-2023-38428) <!-- medium -->
    -   [CVE-2023-38426](https://ubuntu.com/security/CVE-2023-38426) <!-- medium -->
    -   [CVE-2023-3212](https://ubuntu.com/security/CVE-2023-3212) <!-- low -->
    -   [CVE-2023-31084](https://ubuntu.com/security/CVE-2023-31084) <!-- low -->
    -   [CVE-2023-2898](https://ubuntu.com/security/CVE-2023-2898) <!-- low -->
    -   [CVE-2023-21255](https://ubuntu.com/security/CVE-2023-21255) <!-- medium -->
    -   [CVE-2022-48425](https://ubuntu.com/security/CVE-2022-48425) <!-- medium -->
-   5.15
    -   Oracle, AWS, GKE, Raspi, Azure on 22.04
    -   IBM, Oracle, AWS, GKE, Azure on 20.04


### [[USN-6340-2](https://ubuntu.com/security/notices/USN-6340-2)] Linux kernel vulnerabilities {#usn-6340-2-linux-kernel-vulnerabilities}

-   9 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-35828](https://ubuntu.com/security/CVE-2023-35828) <!-- low -->
    -   [CVE-2023-35824](https://ubuntu.com/security/CVE-2023-35824) <!-- low -->
    -   [CVE-2023-35823](https://ubuntu.com/security/CVE-2023-35823) <!-- low -->
    -   [CVE-2023-3268](https://ubuntu.com/security/CVE-2023-3268) <!-- medium -->
    -   [CVE-2023-31084](https://ubuntu.com/security/CVE-2023-31084) <!-- low -->
    -   [CVE-2023-2269](https://ubuntu.com/security/CVE-2023-2269) <!-- medium -->
    -   [CVE-2023-2163](https://ubuntu.com/security/CVE-2023-2163) <!-- medium -->
    -   [CVE-2023-21255](https://ubuntu.com/security/CVE-2023-21255) <!-- medium -->
    -   [CVE-2023-2002](https://ubuntu.com/security/CVE-2023-2002) <!-- medium -->
-   5.4 Xilinx ZyncMP, GKEOP, Raspi on 20.04; Raspi, GCP, Azure on 18.04 (Ubuntu Pro)


### [[USN-6342-2](https://ubuntu.com/security/notices/USN-6342-2)] Linux kernel (Azure) vulnerabilities {#usn-6342-2-linux-kernel--azure--vulnerabilities}

-   6 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-31084](https://ubuntu.com/security/CVE-2023-31084) <!-- low -->
    -   [CVE-2023-2985](https://ubuntu.com/security/CVE-2023-2985) <!-- medium -->
    -   [CVE-2023-2269](https://ubuntu.com/security/CVE-2023-2269) <!-- medium -->
    -   [CVE-2023-20593](https://ubuntu.com/security/CVE-2023-20593) <!-- high -->
-   4.15 Azure on all


### [[USN-6338-2](https://ubuntu.com/security/notices/USN-6338-2)] Linux kernel vulnerabilities {#usn-6338-2-linux-kernel-vulnerabilities}

-   11 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-38429](https://ubuntu.com/security/CVE-2023-38429) <!-- medium -->
    -   [CVE-2023-38428](https://ubuntu.com/security/CVE-2023-38428) <!-- medium -->
    -   [CVE-2023-38426](https://ubuntu.com/security/CVE-2023-38426) <!-- medium -->
    -   [CVE-2023-32258](https://ubuntu.com/security/CVE-2023-32258) <!-- medium -->
    -   [CVE-2023-32257](https://ubuntu.com/security/CVE-2023-32257) <!-- medium -->
    -   [CVE-2023-32252](https://ubuntu.com/security/CVE-2023-32252) <!-- medium -->
    -   [CVE-2023-32250](https://ubuntu.com/security/CVE-2023-32250) <!-- medium -->
    -   [CVE-2023-32247](https://ubuntu.com/security/CVE-2023-32247) <!-- medium -->
    -   [CVE-2023-31084](https://ubuntu.com/security/CVE-2023-31084) <!-- low -->
    -   [CVE-2023-2898](https://ubuntu.com/security/CVE-2023-2898) <!-- low -->
    -   [CVE-2023-21255](https://ubuntu.com/security/CVE-2023-21255) <!-- medium -->
-   6.2
    -   Starfive, IBM, Oracle, GCP on 23.04
    -   GCP on 22.04


### [[USN-6357-1](https://ubuntu.com/security/notices/USN-6357-1)] Linux kernel (IBM) vulnerabilities {#usn-6357-1-linux-kernel--ibm--vulnerabilities}

-   14 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-3609](https://ubuntu.com/security/CVE-2023-3609) <!-- high -->
    -   [CVE-2023-35828](https://ubuntu.com/security/CVE-2023-35828) <!-- low -->
    -   [CVE-2023-35824](https://ubuntu.com/security/CVE-2023-35824) <!-- low -->
    -   [CVE-2023-35823](https://ubuntu.com/security/CVE-2023-35823) <!-- low -->
    -   [CVE-2023-3268](https://ubuntu.com/security/CVE-2023-3268) <!-- medium -->
    -   [CVE-2023-31084](https://ubuntu.com/security/CVE-2023-31084) <!-- low -->
    -   [CVE-2023-2269](https://ubuntu.com/security/CVE-2023-2269) <!-- medium -->
    -   [CVE-2023-2163](https://ubuntu.com/security/CVE-2023-2163) <!-- medium -->
    -   [CVE-2023-21255](https://ubuntu.com/security/CVE-2023-21255) <!-- medium -->
    -   [CVE-2023-20593](https://ubuntu.com/security/CVE-2023-20593) <!-- high -->
    -   [CVE-2023-2002](https://ubuntu.com/security/CVE-2023-2002) <!-- medium -->
    -   [CVE-2022-40982](https://ubuntu.com/security/CVE-2022-40982) <!-- medium -->
-   5.4 IBM on 20.04 / 18.04


### [[USN-6345-1](https://ubuntu.com/security/notices/USN-6345-1)] SoX vulnerability (02:42) {#usn-6345-1-sox-vulnerability--02-42}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-32627](https://ubuntu.com/security/CVE-2023-32627) <!-- medium -->
-   Floating point exception via crafted content -&gt; crash -&gt; DoS


### [[USN-6352-1](https://ubuntu.com/security/notices/USN-6352-1)] Apache Shiro vulnerabilities (03:03) {#usn-6352-1-apache-shiro-vulnerabilities--03-03}

-   2 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2020-17510](https://ubuntu.com/security/CVE-2020-17510) <!-- medium -->
    -   [CVE-2020-13933](https://ubuntu.com/security/CVE-2020-13933) <!-- medium -->
-   Two different authentication bypasses for crafted HTTP requests - not great to
    have in a component whose purpose is to to authentication, authorisation,
    cryptopraphy and session management


### [[USN-6353-1](https://ubuntu.com/security/notices/USN-6353-1)] PLIB vulnerability (03:25) {#usn-6353-1-plib-vulnerability--03-25}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2021-38714](https://ubuntu.com/security/CVE-2021-38714) <!-- medium -->
-   Portable games library - aims to work across a range of HW and OSes - used by
    torcs and flightgear
-   Integer overflow -&gt; buffer overflow on crafted TGA file


### [[USN-6354-1](https://ubuntu.com/security/notices/USN-6354-1)] Python vulnerability (03:54) {#usn-6354-1-python-vulnerability--03-54}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2022-48565](https://ubuntu.com/security/CVE-2022-48565) <!-- medium -->
-   XML eXternal Entity when parsing XML plist files - fix was to reject entity
    declarations in plist files - this is consistent with the behaviour in Apple's
    plutil tool as well


### [[USN-6355-1](https://ubuntu.com/security/notices/USN-6355-1)] GRUB2 vulnerabilities (04:14) {#usn-6355-1-grub2-vulnerabilities--04-14}

-   10 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-3775](https://ubuntu.com/security/CVE-2022-3775) <!-- medium -->
    -   [CVE-2022-28737](https://ubuntu.com/security/CVE-2022-28737) <!-- medium -->
    -   [CVE-2022-28736](https://ubuntu.com/security/CVE-2022-28736) <!-- medium -->
    -   [CVE-2022-28735](https://ubuntu.com/security/CVE-2022-28735) <!-- medium -->
    -   [CVE-2022-28734](https://ubuntu.com/security/CVE-2022-28734) <!-- medium -->
    -   [CVE-2022-28733](https://ubuntu.com/security/CVE-2022-28733) <!-- medium -->
    -   [CVE-2021-3981](https://ubuntu.com/security/CVE-2021-3981) <!-- low -->
    -   [CVE-2021-3697](https://ubuntu.com/security/CVE-2021-3697) <!-- medium -->
    -   [CVE-2021-3696](https://ubuntu.com/security/CVE-2021-3696) <!-- medium -->
    -   [CVE-2021-3695](https://ubuntu.com/security/CVE-2021-3695) <!-- medium -->
-   Various grub vulns - see [[USN-4992-1] GRUB 2 vulnerabilities from Episode 121]({{< relref "episode-121#usn-4992-1-grub-2-vulnerabilities-03-33" >}})
    for the previous lot - these updates were published back in February to the
    -updates pocket and have now been synced to -security
-   various OOB R/W via crafted images (Daniel Axtens), integer overflow when
    parsing crafted IP packets -&gt; buffer overflow, OOB write via crafted HTTP
    header, UAF in chainloader and more


### [[USN-6356-1](https://ubuntu.com/security/notices/USN-6356-1)] OpenDMARC vulnerabilities (05:08) {#usn-6356-1-opendmarc-vulnerabilities--05-08}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2020-12460](https://ubuntu.com/security/CVE-2020-12460) <!-- medium -->
    -   [CVE-2020-12272](https://ubuntu.com/security/CVE-2020-12272) <!-- low -->
-   Open Source implementation of the DMARC specification
-   Possible to inject authentication results via a crafted domain
-   1-byte heap buffer overflow of a NUL-byte - likely just crash -&gt; DoS


### [[USN-6164-2](https://ubuntu.com/security/notices/USN-6164-2)] c-ares vulnerabilities (05:39) {#usn-6164-2-c-ares-vulnerabilities--05-39}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-32067](https://ubuntu.com/security/CVE-2023-32067) <!-- medium -->
    -   [CVE-2023-31130](https://ubuntu.com/security/CVE-2023-31130) <!-- medium -->
-   [[USN-6164-1] c-ares vulnerabilities from Episode 199]({{< relref "episode-199#usn-6164-1-c-ares-vulnerabilities--09-24" >}})


### [[USN-6237-3](https://ubuntu.com/security/notices/USN-6237-3)] curl vulnerabilities (05:50) {#usn-6237-3-curl-vulnerabilities--05-50}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-32001](https://ubuntu.com/security/CVE-2023-32001) <!-- medium -->
    -   [CVE-2023-28322](https://ubuntu.com/security/CVE-2023-28322) <!-- low -->
    -   [CVE-2023-28321](https://ubuntu.com/security/CVE-2023-28321) <!-- low -->
-   [[USN-6237-1] curl vulnerabilities from Episode 203]({{< relref "episode-203#usn-6237-1-curl-vulnerabilities--08-45" >}})


### [[USN-6359-1](https://ubuntu.com/security/notices/USN-6359-1)] file vulnerability (06:01) {#usn-6359-1-file-vulnerability--06-01}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-48554](https://ubuntu.com/security/CVE-2022-48554) <!-- medium -->
-   stack-based buffer over-read -&gt; crash, DoS


### [[USN-6360-1](https://ubuntu.com/security/notices/USN-6360-1)] FLAC vulnerability (06:18) {#usn-6360-1-flac-vulnerability--06-18}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2020-22219](https://ubuntu.com/security/CVE-2020-22219) <!-- medium -->
-   buffer overflow -&gt; RCE / crash


### [[USN-6361-1](https://ubuntu.com/security/notices/USN-6361-1)] CUPS vulnerability (06:27) {#usn-6361-1-cups-vulnerability--06-27}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-32360](https://ubuntu.com/security/CVE-2023-32360) <!-- medium -->
-   Default configuration failed to require authentication for the
    `CUPS-Get-Document` operation - could allow other users to fetch print documents
    without authentication


### [[USN-6362-1](https://ubuntu.com/security/notices/USN-6362-1)] .NET vulnerability (06:46) {#usn-6362-1-dot-net-vulnerability--06-46}

-   1 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-36799](https://ubuntu.com/security/CVE-2023-36799) <!-- medium -->
-   DoS in X509 certs handling


### [[USN-6358-1](https://ubuntu.com/security/notices/USN-6358-1)] RedCloth vulnerability (06:52) {#usn-6358-1-redcloth-vulnerability--06-52}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-31606](https://ubuntu.com/security/CVE-2023-31606) <!-- medium -->
-   ReDoS via crafted HTML payload - upstream maintainer hasn't responded to the
    original report or to the PR with the proposed fix - one of the rare occasions
    where we deploy a fix that is not blessed by upstream - also demonstrates
    though that we try and maintain the software in Ubuntu even when upstream
    stops supporting it (whether officially or not)


### [[USN-6363-1](https://ubuntu.com/security/notices/USN-6363-1)] curl vulnerability (08:03) {#usn-6363-1-curl-vulnerability--08-03}

-   1 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-38039](https://ubuntu.com/security/CVE-2023-38039) <!-- medium -->
-   Provides an API to access headers from past HTTP responses - so stores headers
    in memory, but failed to limit how large this could be - so if a malicious
    server provided a response with a very large header then could DoS the
    application using libcurl - limited to 300KB total per response - which is
    similar to how Chrome behaves


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Part 4 of Andrei's deep dive into cybersecurity research () {#part-4-of-andrei-s-deep-dive-into-cybersecurity-research}

“Shedding Light on CVSS Scoring Inconsistencies: A User-Centric Study on
Evaluating Widespread Security Vulnerabilities” - to appear in IEEE Symposium on
Security &amp; Privacy (aka S&amp;P) in 2024

-   Tries to answer the questions "Are CVSS evaluations consistent?" and "Which
    factors influence CVSS assessments?"
-   <https://arxiv.org/abs/2308.15259>
-   <https://www.first.org/cvss/specification-document>
-   <https://www.first.org/cvss/user-guide>
-   <https://www.first.org/cvss/examples>
-   <https://www.first.org/cvss/examples#OpenSSL-Heartbleed-Vulnerability-CVE-2014-0160>
-   <https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator>
-   <https://ubuntu.com/blog/securing-open-source-through-cve-prioritisation>


### Ubuntu updates, releases and repositories explained (22:18) {#ubuntu-updates-releases-and-repositories-explained--22-18}

-   <https://ubuntu.com/blog/ubuntu-updates-releases-and-repositories-explained>
-   by Aaron Whitehouse - Senior Public Cloud Enablement Director at Canonical,
    leads the team that drives Canonical's joint initiatives with the major
    public clouds


## Get in contact {#get-in-contact}

-   Come find us in person at [LSS EU 2023 in Bilbao, Spain](https://events.linuxfoundation.org/linux-security-summit-europe/)
-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
