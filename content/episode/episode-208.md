+++
title = "Episode 208"
description = """
  This week we detail the recently announced and long-awaited feature of
  TPM-backed full-disk encryption for the upcoming Ubuntu 23.10 release, plus we
  cover security updates for elfutils, GitPython, atftp, BusyBox, Docker Registry
  and more.
  """
date = 2023-09-08T23:18:00+09:30
lastmod = 2023-09-08T23:19:19+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E208.mp3"
podcast_duration = 1489
podcast_bytes = 42011278
permalink = "https://ubuntusecuritypodcast.org/episode-208/"
guid = "0bd90d58927dbcaef57df7c9cd3d593aceb0876a1966debff0f8cf0254e59e562db53e2c75acff041dcbf4a2c6b11f9851fac080e5e4c4a120ab18e08f8c1af4"
+++

## Overview {#overview}

This week we detail the recently announced and long-awaited feature of
TPM-backed full-disk encryption for the upcoming Ubuntu 23.10 release, plus we
cover security updates for elfutils, GitPython, atftp, BusyBox, Docker Registry
and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

93 unique CVEs addressed


### [[USN-6322-1](https://ubuntu.com/security/notices/USN-6322-1)] elfutils vulnerabilities (00:38) {#usn-6322-1-elfutils-vulnerabilities--00-38}

-   10 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2021-33294](https://ubuntu.com/security/CVE-2021-33294) <!-- low -->
    -   [CVE-2020-21047](https://ubuntu.com/security/CVE-2020-21047) <!-- medium -->
    -   [CVE-2019-7665](https://ubuntu.com/security/CVE-2019-7665) <!-- low -->
    -   [CVE-2019-7150](https://ubuntu.com/security/CVE-2019-7150) <!-- low -->
    -   [CVE-2019-7149](https://ubuntu.com/security/CVE-2019-7149) <!-- low -->
    -   [CVE-2018-18521](https://ubuntu.com/security/CVE-2018-18521) <!-- low -->
    -   [CVE-2018-18520](https://ubuntu.com/security/CVE-2018-18520) <!-- low -->
    -   [CVE-2018-18310](https://ubuntu.com/security/CVE-2018-18310) <!-- low -->
    -   [CVE-2018-16403](https://ubuntu.com/security/CVE-2018-16403) <!-- low -->
    -   [CVE-2018-16062](https://ubuntu.com/security/CVE-2018-16062) <!-- low -->
-   All the older CVEs (2018-2019) for Ubuntu 14.04 only - and all of these are
    just DoS through OOB read / NULL ptr deref etc
-   OOB write / off-by-one + CPU-based DoS as well for more recent releases -&gt;
    code execution / crash | DoS


### [[USN-6323-1](https://ubuntu.com/security/notices/USN-6323-1)] FRR vulnerability (01:40) {#usn-6323-1-frr-vulnerability--01-40}

-   1 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-31490](https://ubuntu.com/security/CVE-2023-31490) <!-- medium -->
-   Missing length check when handling particular options - would cause an OOB
    read and hence a crash of bgpd within frr - similar to recent issues like
    [[USN-6136-1] FRR vulnerabilities from Episode 198]({{< relref "episode-198#usn-6136-1-frr-vulnerabilities--06-19" >}})


### [[USN-6326-1](https://ubuntu.com/security/notices/USN-6326-1)] GitPython vulnerability (02:11) {#usn-6326-1-gitpython-vulnerability--02-11}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-40267](https://ubuntu.com/security/CVE-2023-40267) <!-- medium -->
-   Incomplete fix for historical [CVE-2022-24439](https://ubuntu.com/security/CVE-2022-24439) ([[USN-5968-1] GitPython vulnerability from Episode 192]({{< relref "episode-192#usn-5968-1-gitpython-vulnerability-00-46" >}}))
-   Essentially allows to get RCE since calls `git clone` and doesn't completely
    validate the options and so leads to shell-command injection - thanks to
    Sylvain Beucler from Debian LTS team for noticing this and pointing it out to
    the upstream project


### [[USN-6333-1](https://ubuntu.com/security/notices/USN-6333-1)] Thunderbird vulnerabilities (03:00) {#usn-6333-1-thunderbird-vulnerabilities--03-00}

-   9 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-4056](https://ubuntu.com/security/CVE-2023-4056) <!-- medium -->
    -   [CVE-2023-4055](https://ubuntu.com/security/CVE-2023-4055) <!-- medium -->
    -   [CVE-2023-4049](https://ubuntu.com/security/CVE-2023-4049) <!-- medium -->
    -   [CVE-2023-4048](https://ubuntu.com/security/CVE-2023-4048) <!-- medium -->
    -   [CVE-2023-4047](https://ubuntu.com/security/CVE-2023-4047) <!-- medium -->
    -   [CVE-2023-4050](https://ubuntu.com/security/CVE-2023-4050) <!-- medium -->
    -   [CVE-2023-4046](https://ubuntu.com/security/CVE-2023-4046) <!-- medium -->
    -   [CVE-2023-4045](https://ubuntu.com/security/CVE-2023-4045) <!-- medium -->
    -   [CVE-2023-3417](https://ubuntu.com/security/CVE-2023-3417) <!-- medium -->
-   102.15.0


### [[USN-6334-1](https://ubuntu.com/security/notices/USN-6334-1)] atftp vulnerabilities (03:10) {#usn-6334-1-atftp-vulnerabilities--03-10}

-   3 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2021-46671](https://ubuntu.com/security/CVE-2021-46671) <!-- medium -->
    -   [CVE-2021-41054](https://ubuntu.com/security/CVE-2021-41054) <!-- medium -->
    -   [CVE-2020-6097](https://ubuntu.com/security/CVE-2020-6097) <!-- medium -->
-   TFTP server and client packages
-   All 3 issues in the atftpd server
    -   assertion failure when handling crafted Multicast Read Request
    -   buffer overflow when handling crafted request with multiple options
    -   buffer overread when handling crafted options data - would read past the
        array of options and into adjacent memory - according to the CVE this would
        then be the data from `/etc/group` on the server but likely this is not
        deterministic and would be whatever else was on the heap


### [[USN-6335-1](https://ubuntu.com/security/notices/USN-6335-1)] BusyBox vulnerabilities (05:20) {#usn-6335-1-busybox-vulnerabilities--05-20}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2022-48174](https://ubuntu.com/security/CVE-2022-48174) <!-- medium -->
    -   [CVE-2021-28831](https://ubuntu.com/security/CVE-2021-28831) <!-- low -->
-   Invalid `free()` on malformed gzip data - on error, sets bit 1 of a pointer to
    indicate that an error occurred - would then go and pass this pointer to
    `free()` but now the pointer is 1-byte past where it should be - so need to
    unset this bit first
-   In shell handling of crafted input could trigger a stack overflow when parsing
    certain arithmetic expressions -&gt; crash / RCE - BUT since this is in parsing
    of shell expressions anyway could just easily pass actual shell code to
    evaluate surely?


### [[USN-6336-1](https://ubuntu.com/security/notices/USN-6336-1)] Docker Registry vulnerabilities (07:52) {#usn-6336-1-docker-registry-vulnerabilities--07-52}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-2253](https://ubuntu.com/security/CVE-2023-2253) <!-- medium -->
    -   [CVE-2017-11468](https://ubuntu.com/security/CVE-2017-11468) <!-- low -->
-   Tools to pack and server docker images - ie. to stand up your own docker
    registry for serving OCI images
-   Two different DoS since didn't place any bounds on the size of various
    parameters in requests - so when handling a crafted request with a very large
    value, would try and allocate enough memory for that and then potentially run
    out of memory and crash
-   Even in languages like Go which are memory safe, we still run into real world
    limits like this - whilst in computing we like to have abstractions like
    unlimited memory, and can generally program assuming this to be true, need to
    be careful still when handling untrusted input


### [[USN-6321-1](https://ubuntu.com/security/notices/USN-6321-1)] Linux kernel vulnerabilities (09:21) {#usn-6321-1-linux-kernel-vulnerabilities--09-21}

-   10 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-4015](https://ubuntu.com/security/CVE-2023-4015) <!-- high -->
    -   [CVE-2023-4004](https://ubuntu.com/security/CVE-2023-4004) <!-- high -->
    -   [CVE-2023-3995](https://ubuntu.com/security/CVE-2023-3995) <!-- high -->
    -   [CVE-2023-3777](https://ubuntu.com/security/CVE-2023-3777) <!-- high -->
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-3610](https://ubuntu.com/security/CVE-2023-3610) <!-- high -->
    -   [CVE-2023-3609](https://ubuntu.com/security/CVE-2023-3609) <!-- high -->
    -   [CVE-2023-20593](https://ubuntu.com/security/CVE-2023-20593) <!-- high -->
    -   [CVE-2022-40982](https://ubuntu.com/security/CVE-2022-40982) <!-- medium -->
-   6.2 for [StarFive](https://ubuntu.com/blog/canonical-enables-ubuntu-on-starfives-visionfive-risc-v-boards) and GCP
-   Covered previously in [[USN-6315-1] Linux kernel vulnerabilities from Episode 207]({{< relref "episode-207#usn-6315-1-linux-kernel-vulnerabilities--06-58" >}})


### [[USN-6325-1](https://ubuntu.com/security/notices/USN-6325-1)] Linux kernel vulnerabilities {#usn-6325-1-linux-kernel-vulnerabilities}

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
-   5.15 GKEOP, Intel IoTG


### [[USN-6324-1](https://ubuntu.com/security/notices/USN-6324-1)] Linux kernel (GKE) vulnerabilities {#usn-6324-1-linux-kernel--gke--vulnerabilities}

-   5 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-3609](https://ubuntu.com/security/CVE-2023-3609) <!-- high -->
    -   [CVE-2023-20593](https://ubuntu.com/security/CVE-2023-20593) <!-- high -->
    -   [CVE-2022-40982](https://ubuntu.com/security/CVE-2022-40982) <!-- medium -->
-   5.4 for GKE


### [[USN-6327-1](https://ubuntu.com/security/notices/USN-6327-1)] Linux kernel (KVM) vulnerabilities {#usn-6327-1-linux-kernel--kvm--vulnerabilities}

-   6 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-3567](https://ubuntu.com/security/CVE-2023-3567) <!-- high -->
    -   [CVE-2023-31084](https://ubuntu.com/security/CVE-2023-31084) <!-- low -->
    -   [CVE-2023-2985](https://ubuntu.com/security/CVE-2023-2985) <!-- medium -->
    -   [CVE-2023-2269](https://ubuntu.com/security/CVE-2023-2269) <!-- medium -->


### [[USN-6328-1](https://ubuntu.com/security/notices/USN-6328-1)] Linux kernel (Oracle) vulnerabilities {#usn-6328-1-linux-kernel--oracle--vulnerabilities}

-   10 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-4015](https://ubuntu.com/security/CVE-2023-4015) <!-- high -->
    -   [CVE-2023-4004](https://ubuntu.com/security/CVE-2023-4004) <!-- high -->
    -   [CVE-2023-3995](https://ubuntu.com/security/CVE-2023-3995) <!-- high -->
    -   [CVE-2023-3777](https://ubuntu.com/security/CVE-2023-3777) <!-- high -->
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-3610](https://ubuntu.com/security/CVE-2023-3610) <!-- high -->
    -   [CVE-2023-3609](https://ubuntu.com/security/CVE-2023-3609) <!-- high -->
    -   [CVE-2023-20593](https://ubuntu.com/security/CVE-2023-20593) <!-- high -->
    -   [CVE-2022-40982](https://ubuntu.com/security/CVE-2022-40982) <!-- medium -->


### [[USN-6329-1](https://ubuntu.com/security/notices/USN-6329-1)] Linux kernel vulnerabilities {#usn-6329-1-linux-kernel-vulnerabilities}

-   5 CVEs addressed in Bionic ESM (18.04 ESM)
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-3609](https://ubuntu.com/security/CVE-2023-3609) <!-- high -->
    -   [CVE-2023-20593](https://ubuntu.com/security/CVE-2023-20593) <!-- high -->
    -   [CVE-2022-40982](https://ubuntu.com/security/CVE-2022-40982) <!-- medium -->


### [[USN-6330-1](https://ubuntu.com/security/notices/USN-6330-1)] Linux kernel (GCP) vulnerabilities {#usn-6330-1-linux-kernel--gcp--vulnerabilities}

-   11 CVEs addressed in Focal (20.04 LTS)
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


### [[USN-6331-1](https://ubuntu.com/security/notices/USN-6331-1)] Linux kernel (Azure) vulnerabilities {#usn-6331-1-linux-kernel--azure--vulnerabilities}

-   21 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-3609](https://ubuntu.com/security/CVE-2023-3609) <!-- high -->
    -   [CVE-2023-33203](https://ubuntu.com/security/CVE-2023-33203) <!-- low -->
    -   [CVE-2023-3141](https://ubuntu.com/security/CVE-2023-3141) <!-- low -->
    -   [CVE-2023-3111](https://ubuntu.com/security/CVE-2023-3111) <!-- medium -->
    -   [CVE-2023-30772](https://ubuntu.com/security/CVE-2023-30772) <!-- low -->
    -   [CVE-2023-28466](https://ubuntu.com/security/CVE-2023-28466) <!-- medium -->
    -   [CVE-2023-2194](https://ubuntu.com/security/CVE-2023-2194) <!-- medium -->
    -   [CVE-2023-2124](https://ubuntu.com/security/CVE-2023-2124) <!-- low -->
    -   [CVE-2023-20593](https://ubuntu.com/security/CVE-2023-20593) <!-- high -->
    -   [CVE-2023-1990](https://ubuntu.com/security/CVE-2023-1990) <!-- low -->
    -   [CVE-2023-1855](https://ubuntu.com/security/CVE-2023-1855) <!-- low -->
    -   [CVE-2023-1611](https://ubuntu.com/security/CVE-2023-1611) <!-- low -->
    -   [CVE-2023-0590](https://ubuntu.com/security/CVE-2023-0590) <!-- medium -->
    -   [CVE-2022-4269](https://ubuntu.com/security/CVE-2022-4269) <!-- medium -->
    -   [CVE-2022-40982](https://ubuntu.com/security/CVE-2022-40982) <!-- medium -->
    -   [CVE-2022-27672](https://ubuntu.com/security/CVE-2022-27672) <!-- medium -->
    -   [CVE-2022-1184](https://ubuntu.com/security/CVE-2022-1184) <!-- medium -->
    -   [CVE-2022-0168](https://ubuntu.com/security/CVE-2022-0168) <!-- medium -->
    -   [CVE-2020-36691](https://ubuntu.com/security/CVE-2020-36691) <!-- medium -->


### [[USN-6332-1](https://ubuntu.com/security/notices/USN-6332-1)] Linux kernel (Azure) vulnerabilities {#usn-6332-1-linux-kernel--azure--vulnerabilities}

-   35 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-4015](https://ubuntu.com/security/CVE-2023-4015) <!-- high -->
    -   [CVE-2023-4004](https://ubuntu.com/security/CVE-2023-4004) <!-- high -->
    -   [CVE-2023-3995](https://ubuntu.com/security/CVE-2023-3995) <!-- high -->
    -   [CVE-2023-3777](https://ubuntu.com/security/CVE-2023-3777) <!-- high -->
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-3610](https://ubuntu.com/security/CVE-2023-3610) <!-- high -->
    -   [CVE-2023-3609](https://ubuntu.com/security/CVE-2023-3609) <!-- high -->
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
    -   [CVE-2023-21400](https://ubuntu.com/security/CVE-2023-21400) <!-- high -->
    -   [CVE-2023-2124](https://ubuntu.com/security/CVE-2023-2124) <!-- low -->
    -   [CVE-2023-20593](https://ubuntu.com/security/CVE-2023-20593) <!-- high -->
    -   [CVE-2023-2002](https://ubuntu.com/security/CVE-2023-2002) <!-- medium -->
    -   [CVE-2023-1990](https://ubuntu.com/security/CVE-2023-1990) <!-- low -->
    -   [CVE-2023-1855](https://ubuntu.com/security/CVE-2023-1855) <!-- low -->
    -   [CVE-2023-1611](https://ubuntu.com/security/CVE-2023-1611) <!-- low -->
    -   [CVE-2023-0597](https://ubuntu.com/security/CVE-2023-0597) <!-- medium -->
    -   [CVE-2022-48502](https://ubuntu.com/security/CVE-2022-48502) <!-- medium -->
    -   [CVE-2022-4269](https://ubuntu.com/security/CVE-2022-4269) <!-- medium -->
    -   [CVE-2022-40982](https://ubuntu.com/security/CVE-2022-40982) <!-- medium -->


### [[USN-6337-1](https://ubuntu.com/security/notices/USN-6337-1)] Linux kernel (Azure) vulnerabilities {#usn-6337-1-linux-kernel--azure--vulnerabilities}

-   16 CVEs addressed in Bionic ESM (18.04 ESM)
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


### [[USN-6338-1](https://ubuntu.com/security/notices/USN-6338-1)] Linux kernel vulnerabilities {#usn-6338-1-linux-kernel-vulnerabilities}

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


### [[USN-6339-1](https://ubuntu.com/security/notices/USN-6339-1)] Linux kernel vulnerabilities {#usn-6339-1-linux-kernel-vulnerabilities}

-   8 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-38429](https://ubuntu.com/security/CVE-2023-38429) <!-- medium -->
    -   [CVE-2023-38428](https://ubuntu.com/security/CVE-2023-38428) <!-- medium -->
    -   [CVE-2023-38426](https://ubuntu.com/security/CVE-2023-38426) <!-- medium -->
    -   [CVE-2023-3212](https://ubuntu.com/security/CVE-2023-3212) <!-- low -->
    -   [CVE-2023-31084](https://ubuntu.com/security/CVE-2023-31084) <!-- low -->
    -   [CVE-2023-2898](https://ubuntu.com/security/CVE-2023-2898) <!-- low -->
    -   [CVE-2023-21255](https://ubuntu.com/security/CVE-2023-21255) <!-- medium -->
    -   [CVE-2022-48425](https://ubuntu.com/security/CVE-2022-48425) <!-- medium -->


### [[USN-6340-1](https://ubuntu.com/security/notices/USN-6340-1)] Linux kernel vulnerabilities {#usn-6340-1-linux-kernel-vulnerabilities}

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


### [[USN-6341-1](https://ubuntu.com/security/notices/USN-6341-1)] Linux kernel vulnerabilities {#usn-6341-1-linux-kernel-vulnerabilities}

-   5 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-3567](https://ubuntu.com/security/CVE-2023-3567) <!-- high -->
    -   [CVE-2023-3159](https://ubuntu.com/security/CVE-2023-3159) <!-- low -->
    -   [CVE-2023-0458](https://ubuntu.com/security/CVE-2023-0458) <!-- medium -->


### [[USN-6342-1](https://ubuntu.com/security/notices/USN-6342-1)] Linux kernel vulnerabilities {#usn-6342-1-linux-kernel-vulnerabilities}

-   6 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-31084](https://ubuntu.com/security/CVE-2023-31084) <!-- low -->
    -   [CVE-2023-2985](https://ubuntu.com/security/CVE-2023-2985) <!-- medium -->
    -   [CVE-2023-2269](https://ubuntu.com/security/CVE-2023-2269) <!-- medium -->
    -   [CVE-2023-20593](https://ubuntu.com/security/CVE-2023-20593) <!-- high -->


### [[USN-6343-1](https://ubuntu.com/security/notices/USN-6343-1)] Linux kernel (OEM) vulnerabilities {#usn-6343-1-linux-kernel--oem--vulnerabilities}

-   7 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-4273](https://ubuntu.com/security/CVE-2023-4273) <!-- medium -->
    -   [CVE-2023-4194](https://ubuntu.com/security/CVE-2023-4194) <!-- medium -->
    -   [CVE-2023-4155](https://ubuntu.com/security/CVE-2023-4155) <!-- medium -->
    -   [CVE-2023-4128](https://ubuntu.com/security/CVE-2023-4128) <!-- high -->
    -   [CVE-2023-40283](https://ubuntu.com/security/CVE-2023-40283) <!-- high -->
    -   [CVE-2023-34319](https://ubuntu.com/security/CVE-2023-34319) <!-- medium -->
    -   [CVE-2023-1206](https://ubuntu.com/security/CVE-2023-1206) <!-- medium -->


### [[USN-6344-1](https://ubuntu.com/security/notices/USN-6344-1)] Linux kernel (Azure) vulnerabilities {#usn-6344-1-linux-kernel--azure--vulnerabilities}

-   11 CVEs addressed in Lunar (23.04)
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


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### TPM-backed Full Disk Encryption is coming to Ubuntu (10:48) {#tpm-backed-full-disk-encryption-is-coming-to-ubuntu--10-48}

-   <https://ubuntu.com/blog/tpm-backed-full-disk-encryption-is-coming-to-ubuntu>
-   Ijlal Loutfi (Product Manager for Security Technologies)
-   Technical work has been led by Chris Coulson from our team - from early
    research, design and implementation
-   Ubuntu has traditionally offered FDE via LUKS on-top of LVM since 6.06 - back
    then it was via an alternate install image but in 12.10 got integrated into
    the main install image
-   Uses a passphrase which is manually typed in at boot to unlock the disk
-   Not very useful in environments which don't have a user to do this -
    ie. servers or IoT etc
-   Demand for an ability to have FDE without having to enter a passphrase -
    particularly for IoT - so that if a device is stolen and the disk is removed
    it cannot be compromised
-   Windows has long supported this via [BitLocker](https://learn.microsoft.com/en-us/windows/security/operating-system-security/data-protection/bitlocker/) - uses a hardware component
    called the Trusted Platform Module (TPM) to essentially store an encryption
    key which is only made available if the machine is booting the expected
    operating system under the expected BIOS etc
-   As I said earlier, this is a feature that has high demand in the IoT space, so
    back in 2019 work was started to design and implement a similar solution for
    Ubuntu Core
-   Debuted in [Ubuntu Core 20 and has seen ongoing development through Ubuntu Core
    22](https://ubuntu.com/core/docs/uc20/full-disk-encryption) and more since
-   To ensure that the expected + trusted BIOS and OS is running, use the TPM to
    essentially store a chain of hashes of each component in the boot chain -
    ie. BIOS, bootloader (shim + grub), kernel (including the kernel command-line)
    and initrd etc
-   When the TPM is asked to unlock the encryption key, it will check that the
    system is in the expected state by looking at the chain of hashes to make sure
    they match the one that was used when the key was locked into the TPM in the
    first place. If this is as expected, it will unlock the key, but if not
    (ie. the system is booting some other OS or the disk is running on some other
    machine etc) then the state won't match the disk won't be able to be unlocked
-   This has traditionally been quite hard to do on traditional Ubuntu and general
    Linux systems since things like the initrd are composed on the local machine
    (see [update-initramfs](https://manpages.ubuntu.com/manpages/focal/en/man8/update-initramfs.8.html)) - and so they can't easily be signed and verified by
    such a system.
-   But Ubuntu Core is a different beast, not subject to these same constraints -
    built on snaps for more specialised use-cases - so for Ubuntu Core 20 the
    kernel snap was updated to use [unified kernel images](https://github.com/uapi-group/specifications/blob/main/specs/unified_kernel_image.md) which contain both the
    kernel and initrd (plus some other components) into a single UEFI binary -
    this allows them to be signed like existing kernel EFI binaries and hence
    verified during the boot process and measured by the TPM to support this
    use-case. Similarly, the gadget snap contains the bootloader and UEFI
    configuration etc - so this can also be measured and verified at boot to
    ensure the system is in the required state (ie. UEFI Secure Boot is enabled
    etc).
-   Unlike Ubuntu Core, traditional or classic Ubuntu however uses debs for the
    kernel and shim etc, and so is not easily amenable to this same solution -
    also as mentioned above, components like the initrd and bootloader
    configuration are generated locally and so can't easily be signed and hence
    verified at boot
-   As such, to support this same use-case on traditional Ubuntu, the snap-based
    approach was reused - in this model, instead of deb packages providing kernel
    and shim + grub etc, snaps are used. As such, snapd is then also used to
    manage the TPM as described above - ie. calculate the expected hashes when a
    new kernel / bootloader is installed and re-seal the encryption key based on
    this
-   This is then all provided via a new experimental option in the installer:

{{< figure src="/img/ubuntu-23.10-tpm-backed-fde-installer-1.png" >}}

-   Can list the recovery key once booted via:

<!--listend-->

```shell
snap recovery --show-keys
```

-   Otherwise is intended to function like a regular Ubuntu install - but like
    BitLocker on Windows, you won't have to enter a passphrase on boot but you
    still get full disk encryption - and the kernel and bootloader are delivered
    as snaps:

![](/img/ubuntu-23.10-tpm-backed-fde-installer-2.png)
![](/img/ubuntu-23.10-tpm-backed-fde-installer-3.png)

-   Now you may ask, how is this different than existing solutions like Clevis?
    -   Clevis only verifies the bootloader and kernel and hence can be bypassed
        reasonably easily - in fact there was a recent blog from Pulse Security
        describing this kind of thing
        <https://pulsesecurity.co.nz/advisories/tpm-luks-bypass>
    -   In this case, the systemd `emergency.service` unit is still enabled which
        allows the usual boot checks to be bypassed
    -   Chris considered this in the original design for Ubuntu Core and so this is
        disabled
    -   Crucially, when using something like Clevis, the initrd is not verified, so
        an attacker can just replace the initrd with one of their own choosing to
        subvert the usual trusted boot process as well
    -   Interestingly the folks from [Linux Matters](https://linuxmatters.sh/11) were recently talking about
        TPM-backed FDE - mentioned systemd-cryptenroll - this can provide a more
        comprehensive solution since you can choose to have it verify more of the
        boot components BUT it still requires a lot of manual work to get running
        and won't be as comprehensive in the end - also won't necessarily
        auto-update when new kernels are installed etc
-   Intended to be a holistic solution the provides robust protection against
    various online and offline attacks, whilst providing strong guarantees that
    things like Secure Boot is not bypassed **and** that the key from the TPM can't be
    easily sniffed from the bus etc.
-   Thanks again to Chris for leading this work
-   Try it out, provide feedback


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
