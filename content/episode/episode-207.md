+++
title = "Episode 207"
description = """
  This week we cover reports of "fake" CVEs and their impact on the FOSS security
  ecosystem, plus we look at security updates for PHP, Fast DDS, JOSE for C/C++,
  the Linux kernel, AMD Microcode and more.
  """
date = 2023-09-01T23:16:00+09:30
lastmod = 2023-09-01T23:17:26+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E207.mp3"
podcast_duration = 1338
podcast_bytes = 37982419
permalink = "https://ubuntusecuritypodcast.org/episode-207/"
guid = "fa7c259909d4aedaafb352324c11acd7e5ae859d0e9d5e50aeb0dce495f028b5adb009250d972ec95f904eaf2d67ca800172fb1a9166872bc7dde38e2a07e4df"
+++

## Overview {#overview}

This week we cover reports of "fake" CVEs and their impact on the FOSS security
ecosystem, plus we look at security updates for PHP, Fast DDS, JOSE for C/C++,
the Linux kernel, AMD Microcode and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

83 unique CVEs addressed


### [[USN-6305-1](https://ubuntu.com/security/notices/USN-6305-1)] PHP vulnerabilities (00:53) {#usn-6305-1-php-vulnerabilities--00-53}

-   2 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-3824](https://ubuntu.com/security/CVE-2023-3824) <!-- medium -->
    -   [CVE-2023-3823](https://ubuntu.com/security/CVE-2023-3823) <!-- medium -->
-   One interesting issue in the handling of XML - PHP uses the libxml library for
    XML handling which maintains global state for things like whether XML external
    entities should be loaded. However PHP also uses ImageMagick for image
    handling, which also uses libxml (for say SVG parsing etc). As such,
    ImageMagick may end up configuring XML EE to be enabled, which then in turn
    enables it for all of PHP and so allows XML EE attacks - which can then be
    used to read and disclose the contents of local files.
    -   Fixed by making PHPs use of libxml set a local context which explicitly
        turns off XML EE handling rather than relying on the global context
-   Stack buffer overflow when reading dirents from PHAR archives


### [[USN-6306-1](https://ubuntu.com/security/notices/USN-6306-1)] Fast DDS vulnerabilities (02:28) {#usn-6306-1-fast-dds-vulnerabilities--02-28}

-   7 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-39949](https://ubuntu.com/security/CVE-2023-39949) <!-- medium -->
    -   [CVE-2023-39948](https://ubuntu.com/security/CVE-2023-39948) <!-- medium -->
    -   [CVE-2023-39947](https://ubuntu.com/security/CVE-2023-39947) <!-- medium -->
    -   [CVE-2023-39946](https://ubuntu.com/security/CVE-2023-39946) <!-- medium -->
    -   [CVE-2023-39945](https://ubuntu.com/security/CVE-2023-39945) <!-- medium -->
    -   [CVE-2023-39534](https://ubuntu.com/security/CVE-2023-39534) <!-- medium -->
    -   [CVE-2021-38425](https://ubuntu.com/security/CVE-2021-38425) <!-- medium -->
-   C++ implementation of DDS standard - pub-sub model for connecting software
    components, used in various contexts like Adaptive AUTOSAR in the automotive
    industry and others
-   DoS via traffic flood - fixed by implementing an exponential backoff for
    authentication requests
-   various other DoS through different assertion failures, unhandled exceptions
    and a couple heap buffer overflows for good measure too


### [[USN-6307-1](https://ubuntu.com/security/notices/USN-6307-1)] JOSE for C/C++ vulnerability (03:33) {#usn-6307-1-jose-for-c-c-plus-plus-vulnerability--03-33}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-37464](https://ubuntu.com/security/CVE-2023-37464) <!-- medium -->
-   C library implementation of Javascript Object Signing and Encryption (JOSE)
    standard
-   AES/GCM decryption would used the tag length value from the Authentication Tag
    provided in the JWE header rather than the fixed length of 16 as
    specified. Attacker could then provide a crafted JWE header with a shorter
    authentication tag to trigger a buffer overflow on the receiver -&gt; crash -&gt;
    DoS / info leak


### [[USN-6308-1](https://ubuntu.com/security/notices/USN-6308-1)] Libqb vulnerability (04:25) {#usn-6308-1-libqb-vulnerability--04-25}

-   1 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-39976](https://ubuntu.com/security/CVE-2023-39976) <!-- medium -->
-   tooling for generating man pages from Doxygen XML files
-   heap buffer overflow via an overly long input line when outputting certain log
    messages


### [[USN-6309-1](https://ubuntu.com/security/notices/USN-6309-1)] Linux kernel vulnerabilities (04:48) {#usn-6309-1-linux-kernel-vulnerabilities--04-48}

-   6 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-3567](https://ubuntu.com/security/CVE-2023-3567) <!-- high -->
    -   [CVE-2023-31084](https://ubuntu.com/security/CVE-2023-31084) <!-- low -->
    -   [CVE-2023-2985](https://ubuntu.com/security/CVE-2023-2985) <!-- medium -->
    -   [CVE-2023-2269](https://ubuntu.com/security/CVE-2023-2269) <!-- medium -->
-   4.4 GA in 16.04, HWE in 14.04
-   Mentioned some of these last week in [[USN-6285-1] Linux kernel (OEM) vulnerabilities]({{< relref "episode-205#usn-6285-1-linux-kernel--oem--vulnerabilities--07-50" >}})
-   deadlocks in device mapper and DVB Core drivers; UAFs in HFS+ file-system
    impl, virtual terminal drivers and netfilter network packet classifier; OOB
    write in QFS network scheduler
    -   DoS via CPU deadlock or crash; possible code execution for the UAFs / OOB
        write


### [[USN-6311-1](https://ubuntu.com/security/notices/USN-6311-1)] Linux kernel vulnerabilities (06:07) {#usn-6311-1-linux-kernel-vulnerabilities--06-07}

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
-   5.15 kernel variants for GCP and GKE


### [[USN-6312-1](https://ubuntu.com/security/notices/USN-6312-1)] Linux kernel vulnerabilities (06:22) {#usn-6312-1-linux-kernel-vulnerabilities--06-22}

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
-   5.4 for GKE on 20.04 and IBM on 18.04


### [[USN-6314-1](https://ubuntu.com/security/notices/USN-6314-1)] Linux kernel vulnerabilities (06:33) {#usn-6314-1-linux-kernel-vulnerabilities--06-33}

-   16 CVEs addressed in Focal (20.04 LTS)
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
-   5.4 for IBM and BlueField (NVIDIA DPU family using ARM CPU cores from Mellanox
    (now owned by NVIDIA))


### [[USN-6315-1](https://ubuntu.com/security/notices/USN-6315-1)] Linux kernel vulnerabilities (06:58) {#usn-6315-1-linux-kernel-vulnerabilities--06-58}

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
-   5.15 GA (GKE, NVIDIA, IBM, GCP, KVM, Oracle, AWS, LowLatency) for 22.04 and
    HWE for 20.04 + some OEM specific kernels too
-   Zenbleed ([[USN-6244-1] AMD Microcode vulnerability from Episode 204]({{< relref "episode-204#usn-6244-1-amd-microcode-vulnerability-05-57" >}})) and
    Gather Data Sampling ([[USN-6286-1] Intel Microcode vulnerabilities from
    Episode 205]({{< relref "episode-205#usn-6286-1-intel-microcode-vulnerabilities--10-59" >}}))
    -   Previously released microcode updates, now also shipping associated kernel
        fixes - for Zenbleed this enables a workaround if the microcode is not
        available (since for some CPUs this is only available as a BIOS update, not
        via microcode in Ubuntu), whilst for GDS this simply provides kernel support
        to help identify if the mitigation is in place or not - if no microcode is
        available, can disable AVX entirely by setting `clearcpuid=avx` on the kernel
        command-line (but this will have a decent performance impact)


### [[USN-6316-1](https://ubuntu.com/security/notices/USN-6316-1)] Linux kernel (OEM) vulnerabilities (09:02) {#usn-6316-1-linux-kernel--oem--vulnerabilities--09-02}

-   6 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-4015](https://ubuntu.com/security/CVE-2023-4015) <!-- high -->
    -   [CVE-2023-4004](https://ubuntu.com/security/CVE-2023-4004) <!-- high -->
    -   [CVE-2023-3995](https://ubuntu.com/security/CVE-2023-3995) <!-- high -->
    -   [CVE-2023-3777](https://ubuntu.com/security/CVE-2023-3777) <!-- high -->
    -   [CVE-2023-20593](https://ubuntu.com/security/CVE-2023-20593) <!-- high -->
    -   [CVE-2022-40982](https://ubuntu.com/security/CVE-2022-40982) <!-- medium -->
-   6.1 OEM on 22.04


### [[USN-6317-1](https://ubuntu.com/security/notices/USN-6317-1)] Linux kernel vulnerabilities (09:10) {#usn-6317-1-linux-kernel-vulnerabilities--09-10}

-   5 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-3609](https://ubuntu.com/security/CVE-2023-3609) <!-- high -->
    -   [CVE-2023-20593](https://ubuntu.com/security/CVE-2023-20593) <!-- high -->
    -   [CVE-2022-40982](https://ubuntu.com/security/CVE-2022-40982) <!-- medium -->
-   5.4 GA for 20.04 / HWE for 18.04


### [[USN-6318-1](https://ubuntu.com/security/notices/USN-6318-1)] Linux kernel vulnerabilities (09:20) {#usn-6318-1-linux-kernel-vulnerabilities--09-20}

-   10 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
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
-   6.2 23.04 GA, HWE for 22.04


### [[USN-6310-1](https://ubuntu.com/security/notices/USN-6310-1)] json-c vulnerability (09:41) {#usn-6310-1-json-c-vulnerability--09-41}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2021-32292](https://ubuntu.com/security/CVE-2021-32292) <!-- medium -->
-   stack buffer overread on crafted input - interestingly the CVE says that it
    can allow code execution but that is the first time I have heard an OOB read
    can allow code execution


### [[USN-6313-1](https://ubuntu.com/security/notices/USN-6313-1)] FAAD2 vulnerabilities (10:08) {#usn-6313-1-faad2-vulnerabilities--10-08}

-   8 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2021-32276](https://ubuntu.com/security/CVE-2021-32276) <!-- medium -->
    -   [CVE-2023-38858](https://ubuntu.com/security/CVE-2023-38858) <!-- medium -->
    -   [CVE-2023-38857](https://ubuntu.com/security/CVE-2023-38857) <!-- medium -->
    -   [CVE-2021-32278](https://ubuntu.com/security/CVE-2021-32278) <!-- medium -->
    -   [CVE-2021-32277](https://ubuntu.com/security/CVE-2021-32277) <!-- medium -->
    -   [CVE-2021-32274](https://ubuntu.com/security/CVE-2021-32274) <!-- medium -->
    -   [CVE-2021-32273](https://ubuntu.com/security/CVE-2021-32273) <!-- medium -->
    -   [CVE-2021-32272](https://ubuntu.com/security/CVE-2021-32272) <!-- medium -->
-   audio decoding library
-   various heap and stack buffer overflows plus a NULL ptr deref for good measure


### [[USN-6319-1](https://ubuntu.com/security/notices/USN-6319-1)] AMD Microcode vulnerability (10:33) {#usn-6319-1-amd-microcode-vulnerability--10-33}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-20569](https://ubuntu.com/security/CVE-2023-20569) <!-- medium -->
-   "INCEPTION" / "RAS Poisoning" - similar to the original SpectreV2 vulns -
    another variant of a speculative execution attack using the branch prediction
    buffer to cause an incorrectly speculated return to be executed which can then
    be inferred from a cache timing attack to read kernel memory


### [[USN-6320-1](https://ubuntu.com/security/notices/USN-6320-1)] Firefox vulnerabilities (11:13) {#usn-6320-1-firefox-vulnerabilities--11-13}

-   11 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-4580](https://ubuntu.com/security/CVE-2023-4580) <!-- medium -->
    -   [CVE-2023-4579](https://ubuntu.com/security/CVE-2023-4579) <!-- medium -->
    -   [CVE-2023-4577](https://ubuntu.com/security/CVE-2023-4577) <!-- medium -->
    -   [CVE-2023-4585](https://ubuntu.com/security/CVE-2023-4585) <!-- medium -->
    -   [CVE-2023-4584](https://ubuntu.com/security/CVE-2023-4584) <!-- medium -->
    -   [CVE-2023-4583](https://ubuntu.com/security/CVE-2023-4583) <!-- medium -->
    -   [CVE-2023-4581](https://ubuntu.com/security/CVE-2023-4581) <!-- medium -->
    -   [CVE-2023-4578](https://ubuntu.com/security/CVE-2023-4578) <!-- medium -->
    -   [CVE-2023-4575](https://ubuntu.com/security/CVE-2023-4575) <!-- medium -->
    -   [CVE-2023-4574](https://ubuntu.com/security/CVE-2023-4574) <!-- medium -->
    -   [CVE-2023-4573](https://ubuntu.com/security/CVE-2023-4573) <!-- medium -->
-   117.0


### [[USN-6263-2](https://ubuntu.com/security/notices/USN-6263-2)] OpenJDK regression (11:24) {#usn-6263-2-openjdk-regression--11-24}

-   7 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-25193](https://ubuntu.com/security/CVE-2023-25193) <!-- low -->
    -   [CVE-2023-22049](https://ubuntu.com/security/CVE-2023-22049) <!-- medium -->
    -   [CVE-2023-22045](https://ubuntu.com/security/CVE-2023-22045) <!-- medium -->
    -   [CVE-2023-22044](https://ubuntu.com/security/CVE-2023-22044) <!-- medium -->
    -   [CVE-2023-22041](https://ubuntu.com/security/CVE-2023-22041) <!-- medium -->
    -   [CVE-2023-22036](https://ubuntu.com/security/CVE-2023-22036) <!-- medium -->
    -   [CVE-2023-22006](https://ubuntu.com/security/CVE-2023-22006) <!-- medium -->
-   [[USN-6263-1] OpenJDK vulnerabilities from Episode 204]({{< relref "episode-204#usn-6263-1-openjdk-vulnerabilities" >}})
-   Upstream regression in handling of JAR files made with older versions of Ant
    etc - would fail to be decompressed


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Reports of "Fake" CVEs being assigned by MITRE (12:07) {#reports-of-fake-cves-being-assigned-by-mitre--12-07}

-   <https://riskybiznews.substack.com/p/open-source-projects-plagued-by-fake-cves>
-   Dan Lorenc from Chainguard posted about a heap of CVEs assigned just over 1
    week ago (22nd August 2023) against a heap of open source projects - cURL,
    PostgreSQL, Python, nasm, ImageMagick and a heap more
-   Each refers to either a bug report or patch sent to the upstream project that
    mentions a fix for seemingly real vulnerability ("buffer overflow", "use after
    free" etc)
-   But for most of these, the upstream project never agreed that these were valid
    vulnerabilities, and some have come out to expressly disavow them - [PostgreSQL
    on CVE-2020-21469](https://www.postgresql.org/about/news/cve-2020-21469-is-not-a-security-vulnerability-2701/) and [cURL on CVE-2020-19909](https://daniel.haxx.se/blog/2023/08/26/cve-2020-19909-is-everything-that-is-wrong-with-cves/)
    -   PostgreSQL issue is a DoS via sending a repeated SIGHUP to the server
        -   BUT you need to have local access with priviliges to send SIGHUP - ie be
            root - and have access to the PostgreSQL superuser etc
        -   which if you do, you can do a lot more damage - ie. this is not a
            vulnerability - there is no privilege boundary being crossed etc
    -   cURL is an integer overflow in the `--retry-delay` command-line option - where
        if you specify a really large value of seconds, cURL will multiply this by
        1000 to convert it to ms and hence overflow
        -   BUT this is not used for memory calculations etc - is just used for a
            retry delay - ie. it will only wait for say a few seconds rather than the
            billion odd seconds originally specified - again, there is no security
            impact here
-   Dan posited that these were likely just scraped automatically and CVEs filed
-   But who filed the CVEs?
    -   all show as assigned by MITRE - and anyone can request a CVE from MITRE as
        they are the CNA of last resort - <https://cveform.mitre.org/>
    -   BUT like all CNAs, they should be checking validating the information before
        assigning a CVE
    -   MITRE even rejected the request by Daniel Bagder (cURL maintainer) to reject
        the CVE
    -   clearly something is breaking down here
-   Not only does this create a heap of work for the upstream projects (as
    mentioned by Risky Biz) but for all the downstreams like Ubuntu and other
    distros
    -   We have to triage these CVEs against the packages in Ubuntu and determine
        whether the require immediate fixing etc - this takes time for everyone
        involved
-   RiskyBiz calls these "Fake" CVEs - but they are not fake in the traditional
    sense - ie. they are not fradualent, they have been issued by the official
    custodians of CVEs - MITRE - but it is just that they are not actual
    vulnerabilities
-   Is this just taking the Linux kernel mantra of [security problems are just bugs](https://lkml.iu.edu/hypermail/linux/kernel/1711.2/01701.html)
    (and hence to get kernel security fixes you need to get all kernel bug fixes
    as you won't know which are the real vulns) to the opposite extreme - all bugs
    are security bugs and hence should get CVEs?
-   Will have to wait and see how this plays out but if consumers can't trust CVEs
    that will likely put the whole system in jeopardy since whilst CVEs have many
    shortcomings, they are the global defacto for vulnerability tracking


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
