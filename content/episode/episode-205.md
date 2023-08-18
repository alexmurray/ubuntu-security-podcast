+++
title = "Episode 205"
description = """
  We're back after unexpectedly going AWOL last week to bring you the latest in
  Ubuntu Security including the recently announced Downfall and GameOver(lay)
  vulnerabilities, plus we look at security updates for OpenSSH and GStreamer **and**
  we detail plans for using AppArmor to restrict the use of unprivileged user
  namespaces as an attack vector in future Ubuntu releases.
  """
date = 2023-08-18T18:29:00+09:30
lastmod = 2023-08-18T18:32:34+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E205.mp3"
podcast_duration = 1214
podcast_bytes = 33708002
permalink = "https://ubuntusecuritypodcast.org/episode-205/"
guid = "e3ec3f4d79d0c96ae9635469aa20e7c0107c0e185f8624c0129b0a00bafd40d18e873cb042e725182616010769e27668cea5317d4120b1d066629757f28868d6"
+++

## Overview {#overview}

We're back after unexpectedly going AWOL last week to bring you the latest in
Ubuntu Security including the recently announced Downfall and GameOver(lay)
vulnerabilities, plus we look at security updates for OpenSSH and GStreamer **and**
we detail plans for using AppArmor to restrict the use of unprivileged user
namespaces as an attack vector in future Ubuntu releases.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

143 unique CVEs addressed


### [[USN-6268-1](https://ubuntu.com/security/notices/USN-6268-1), [USN-6269-1](https://ubuntu.com/security/notices/USN-6269-1)] GStreamer Base and Good Plugins vulnerabilities (01:07) {#usn-6268-1-usn-6269-1-gstreamer-base-and-good-plugins-vulnerabilities--01-07}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-37328](https://ubuntu.com/security/CVE-2023-37328) <!-- medium -->
    -   [CVE-2023-37327](https://ubuntu.com/security/CVE-2023-37327) <!-- medium -->
-   Both CVEs discovered by an independent security researcher and reported via
    ZDI ([ZDI-CAN-20775](https://www.zerodayinitiative.com/advisories/ZDI-23-903/), [ZDI-CAN-20994](https://www.zerodayinitiative.com/advisories/ZDI-23-901/))
-   Used by the built-in Videos app (aka totem) which can play streaming videos
    (even has a default plugin providing integration with Apple Video Trailers and
    others) - so could possibly be used for remote exploitation
-   Integer overflow -&gt; buffer overflow -&gt; RCE in FLAC audio decoder
-   Buffer overflow in PGS subtitle handler - failed to validate length before
    copying -&gt; heap buffer overflow -&gt; RCE


### [[USN-6270-1](https://ubuntu.com/security/notices/USN-6270-1)] Vim vulnerabilities (02:49) {#usn-6270-1-vim-vulnerabilities--02-49}

-   11 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-2287](https://ubuntu.com/security/CVE-2022-2287) <!-- low -->
    -   [CVE-2022-2286](https://ubuntu.com/security/CVE-2022-2286) <!-- low -->
    -   [CVE-2022-2285](https://ubuntu.com/security/CVE-2022-2285) <!-- low -->
    -   [CVE-2022-2289](https://ubuntu.com/security/CVE-2022-2289) <!-- low -->
    -   [CVE-2022-2284](https://ubuntu.com/security/CVE-2022-2284) <!-- low -->
    -   [CVE-2022-2264](https://ubuntu.com/security/CVE-2022-2264) <!-- low -->
    -   [CVE-2022-2257](https://ubuntu.com/security/CVE-2022-2257) <!-- low -->
    -   [CVE-2022-2231](https://ubuntu.com/security/CVE-2022-2231) <!-- low -->
    -   [CVE-2022-2210](https://ubuntu.com/security/CVE-2022-2210) <!-- low -->
    -   [CVE-2022-2208](https://ubuntu.com/security/CVE-2022-2208) <!-- low -->
    -   [CVE-2022-2182](https://ubuntu.com/security/CVE-2022-2182) <!-- medium -->
-   Latest round of vim vulns - all via the bug bounty program and from just 3
    researchers - would be interesting to know what kind of bounties are payed out
    for these "vulns" since most require the user to run vim with a crafted set of
    commands against a crafted input file - if you can get someone to do that, you
    can probably just write arbitrary shell code for them to execute as well...


### [[USN-6271-1](https://ubuntu.com/security/notices/USN-6271-1)] MaraDNS vulnerabilities (03:55) {#usn-6271-1-maradns-vulnerabilities--03-55}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-31137](https://ubuntu.com/security/CVE-2023-31137) <!-- medium -->
    -   [CVE-2022-30256](https://ubuntu.com/security/CVE-2022-30256) <!-- medium -->


### [[USN-6272-1](https://ubuntu.com/security/notices/USN-6272-1)] OpenJDK 20 vulnerabilities {#usn-6272-1-openjdk-20-vulnerabilities}

-   7 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-25193](https://ubuntu.com/security/CVE-2023-25193) <!-- low -->
    -   [CVE-2023-22049](https://ubuntu.com/security/CVE-2023-22049) <!-- medium -->
    -   [CVE-2023-22045](https://ubuntu.com/security/CVE-2023-22045) <!-- medium -->
    -   [CVE-2023-22044](https://ubuntu.com/security/CVE-2023-22044) <!-- medium -->
    -   [CVE-2023-22041](https://ubuntu.com/security/CVE-2023-22041) <!-- medium -->
    -   [CVE-2023-22036](https://ubuntu.com/security/CVE-2023-22036) <!-- medium -->
    -   [CVE-2023-22006](https://ubuntu.com/security/CVE-2023-22006) <!-- medium -->
-   20.0.2


### [[USN-5064-3](https://ubuntu.com/security/notices/USN-5064-3)] GNU cpio vulnerability (04:08) {#usn-5064-3-gnu-cpio-vulnerability--04-08}

-   1 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2021-38185](https://ubuntu.com/security/CVE-2021-38185) <!-- medium -->
-   [[USN-5064-1] GNU cpio vulnerability from Episode 130]({{< relref "episode-130#usn-5064-1-gnu-cpio-vulnerability-04-13" >}}) - integer overflow -&gt;
    heap buffer overflow if using untrusted pattern files


### [[USN-6275-1](https://ubuntu.com/security/notices/USN-6275-1)] Cargo vulnerability {#usn-6275-1-cargo-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-38497](https://ubuntu.com/security/CVE-2023-38497) <!-- medium -->


### [[USN-6273-1](https://ubuntu.com/security/notices/USN-6273-1)] poppler vulnerabilities {#usn-6273-1-poppler-vulnerabilities}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-34872](https://ubuntu.com/security/CVE-2023-34872) <!-- medium -->
    -   [CVE-2022-27337](https://ubuntu.com/security/CVE-2022-27337) <!-- low -->


### [[USN-6274-1](https://ubuntu.com/security/notices/USN-6274-1)] XMLTooling vulnerability {#usn-6274-1-xmltooling-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-36661](https://ubuntu.com/security/CVE-2023-36661) <!-- medium -->


### [[USN-6276-1](https://ubuntu.com/security/notices/USN-6276-1)] unixODBC vulnerability {#usn-6276-1-unixodbc-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2018-7409](https://ubuntu.com/security/CVE-2018-7409) <!-- low -->


### [[USN-6267-2](https://ubuntu.com/security/notices/USN-6267-2)] Firefox regressions {#usn-6267-2-firefox-regressions}

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


### [[USN-6277-1](https://ubuntu.com/security/notices/USN-6277-1), [USN-6277-2](https://ubuntu.com/security/notices/USN-6277-2)] Dompdf vulnerabilities {#usn-6277-1-usn-6277-2-dompdf-vulnerabilities}

-   5 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-2400](https://ubuntu.com/security/CVE-2022-2400) <!-- medium -->
    -   [CVE-2021-3838](https://ubuntu.com/security/CVE-2021-3838) <!-- medium -->
    -   [CVE-2014-5013](https://ubuntu.com/security/CVE-2014-5013) <!-- medium -->
    -   [CVE-2014-5012](https://ubuntu.com/security/CVE-2014-5012) <!-- low -->
    -   [CVE-2014-5011](https://ubuntu.com/security/CVE-2014-5011) <!-- low -->


### [[USN-6278-1](https://ubuntu.com/security/notices/USN-6278-1), [USN-6278-2](https://ubuntu.com/security/notices/USN-6278-2)] .NET vulnerabilities (04:41) {#usn-6278-1-usn-6278-2-dot-net-vulnerabilities--04-41}

-   3 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-38180](https://ubuntu.com/security/CVE-2023-38180) <!-- medium -->
    -   [CVE-2023-38178](https://ubuntu.com/security/CVE-2023-38178) <!-- medium -->
    -   [CVE-2023-35390](https://ubuntu.com/security/CVE-2023-35390) <!-- medium -->


### [[USN-6279-1](https://ubuntu.com/security/notices/USN-6279-1)] OpenSSH update (04:53) {#usn-6279-1-openssh-update--04-53}

-   Affecting Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
-   Possible info leak during algorithm negotiation - related to [CVE-2020-14145](https://ubuntu.com/security/CVE-2020-14145) -
    which is a low priority vulnerability where it is possible for a person in the
    middle to determine if a client already has knowledge of the server's host
    key. This could be used to then attack clients which do not have this
    knowledge (since they then will be prompted to accept and trust the host key
    which is offered on first connection) and offer them an attacker chosen host
    key to cause them to authenticate to a host controlled by the attacker and
    therefore intercept their connection etc
-   There is a partial mitigation in the form of a client change so that if the
    client does already have the server's host key, it will still preserve the
    original algorithm ordering sent to the server and so not leak this
    information.
-   This is not a complete fix for this issue since it only mitigates some of the
    use-cases of the original vuln.


### [[USN-4336-3](https://ubuntu.com/security/notices/USN-4336-3)] GNU binutils vulnerabilities {#usn-4336-3-gnu-binutils-vulnerabilities}

-   6 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2018-6323](https://ubuntu.com/security/CVE-2018-6323) <!-- low -->
    -   [CVE-2017-9756](https://ubuntu.com/security/CVE-2017-9756) <!-- low -->
    -   [CVE-2017-9750](https://ubuntu.com/security/CVE-2017-9750) <!-- low -->
    -   [CVE-2017-9748](https://ubuntu.com/security/CVE-2017-9748) <!-- low -->
    -   [CVE-2017-9747](https://ubuntu.com/security/CVE-2017-9747) <!-- low -->
    -   [CVE-2017-9742](https://ubuntu.com/security/CVE-2017-9742) <!-- low -->


### [[USN-6243-2](https://ubuntu.com/security/notices/USN-6243-2)] Graphite-Web regression {#usn-6243-2-graphite-web-regression}

-   4 CVEs addressed in Bionic ESM (18.04 ESM)
    -   [CVE-2022-4730](https://ubuntu.com/security/CVE-2022-4730) <!-- medium -->
    -   [CVE-2022-4729](https://ubuntu.com/security/CVE-2022-4729) <!-- medium -->
    -   [CVE-2022-4728](https://ubuntu.com/security/CVE-2022-4728) <!-- medium -->
    -   [CVE-2017-18638](https://ubuntu.com/security/CVE-2017-18638) <!-- medium -->


### [[USN-6281-1](https://ubuntu.com/security/notices/USN-6281-1)] Velocity Engine vulnerability {#usn-6281-1-velocity-engine-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2020-13936](https://ubuntu.com/security/CVE-2020-13936) <!-- medium -->


### [[USN-6282-1](https://ubuntu.com/security/notices/USN-6282-1)] Velocity Tools vulnerability {#usn-6282-1-velocity-tools-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2020-13959](https://ubuntu.com/security/CVE-2020-13959) <!-- medium -->


### [[USN-6283-1](https://ubuntu.com/security/notices/USN-6283-1)] Linux kernel vulnerabilities (07:34) {#usn-6283-1-linux-kernel-vulnerabilities--07-34}

-   13 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-35829](https://ubuntu.com/security/CVE-2023-35829) <!-- low -->
    -   [CVE-2023-35828](https://ubuntu.com/security/CVE-2023-35828) <!-- low -->
    -   [CVE-2023-35826](https://ubuntu.com/security/CVE-2023-35826) <!-- low -->
    -   [CVE-2023-35824](https://ubuntu.com/security/CVE-2023-35824) <!-- low -->
    -   [CVE-2023-35823](https://ubuntu.com/security/CVE-2023-35823) <!-- low -->
    -   [CVE-2023-3317](https://ubuntu.com/security/CVE-2023-3317) <!-- medium -->
    -   [CVE-2023-3312](https://ubuntu.com/security/CVE-2023-3312) <!-- low -->
    -   [CVE-2023-3268](https://ubuntu.com/security/CVE-2023-3268) <!-- medium -->
    -   [CVE-2023-32254](https://ubuntu.com/security/CVE-2023-32254) <!-- medium -->
    -   [CVE-2023-32248](https://ubuntu.com/security/CVE-2023-32248) <!-- medium -->
    -   [CVE-2023-3141](https://ubuntu.com/security/CVE-2023-3141) <!-- low -->
    -   [CVE-2023-2269](https://ubuntu.com/security/CVE-2023-2269) <!-- medium -->
    -   [CVE-2023-2002](https://ubuntu.com/security/CVE-2023-2002) <!-- medium -->


### [[USN-6284-1](https://ubuntu.com/security/notices/USN-6284-1)] Linux kernel vulnerabilities {#usn-6284-1-linux-kernel-vulnerabilities}

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


### [[USN-6285-1](https://ubuntu.com/security/notices/USN-6285-1)] Linux kernel (OEM) vulnerabilities (07:50) {#usn-6285-1-linux-kernel--oem--vulnerabilities--07-50}

-   14 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-3863](https://ubuntu.com/security/CVE-2023-3863) <!-- medium -->
    -   [CVE-2023-38432](https://ubuntu.com/security/CVE-2023-38432) <!-- medium -->
    -   [CVE-2023-38430](https://ubuntu.com/security/CVE-2023-38430) <!-- medium -->
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-3610](https://ubuntu.com/security/CVE-2023-3610) <!-- high -->
    -   [CVE-2023-3609](https://ubuntu.com/security/CVE-2023-3609) <!-- high -->
    -   [CVE-2023-35001](https://ubuntu.com/security/CVE-2023-35001) <!-- high -->
    -   [CVE-2023-3390](https://ubuntu.com/security/CVE-2023-3390) <!-- high -->
    -   [CVE-2023-32629](https://ubuntu.com/security/CVE-2023-32629) <!-- high -->
    -   [CVE-2023-31248](https://ubuntu.com/security/CVE-2023-31248) <!-- high -->
    -   [CVE-2023-2898](https://ubuntu.com/security/CVE-2023-2898) <!-- low -->
    -   [CVE-2023-2640](https://ubuntu.com/security/CVE-2023-2640) <!-- high -->
    -   [CVE-2022-48502](https://ubuntu.com/security/CVE-2022-48502) <!-- medium -->
-   6.1 kernel
-   8 different high priority vulns - most mentioned previously - does include
    "[GameOver(lay)](https://www.wiz.io/blog/ubuntu-overlayfs-vulnerability)" which we haven't covered yet - reported by WizResearch and is
    specific to Ubuntu kernels
-   OverlayFS is a union filesystem which allows multiple filesystems to be
    mounted at the same time, and presents a single unified view of the
    filesystems. In 2018 we introduced some changes to OverlayFS as SAUCE patches
    to handle extended attributes in overlayfs. Then in 2020 we backported commits
    to fix [CVE-2021-3493](https://ubuntu.com/security/CVE-2021-3493) - in the process this also added support for extended
    attributes in OverlayFS so now there were two code paths, each using different
    implementations for extended attributes. One was protected against the vuln in
    [CVE-2021-3493](https://ubuntu.com/security/CVE-2021-3493) whilst the other was not.
-   This vulnerability is exploiting that same vulnerability in the unprotected
    implementation.
-   In this case, the vulnerability is in the handling of extended attributes in
    OverlayFS - the vulnerability is that it is possible to create a file with
    extended attributes which are not visible to the user, and then mount that
    file in a way which allows the extended attributes to be visible to the user

    -   this is done by mounting the file with the `nosuid` option, and then

    remounting it with `suid` option. This allows the user to then execute arbitrary
    code as root. NOTE: requires the user to have the ability to have
    `CAP_SYS_ADMIN` but this is easy with unprivileged user namespaces.
-   Even more reason to keep pursuing the effort to restrict the use of
    unprivileged user namespaces in upcoming Ubuntu 23.10


### [[USN-6286-1](https://ubuntu.com/security/notices/USN-6286-1)] Intel Microcode vulnerabilities (10:59) {#usn-6286-1-intel-microcode-vulnerabilities--10-59}

-   3 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-23908](https://ubuntu.com/security/CVE-2023-23908) <!-- medium -->
    -   [CVE-2022-41804](https://ubuntu.com/security/CVE-2022-41804) <!-- medium -->
    -   [CVE-2022-40982](https://ubuntu.com/security/CVE-2022-40982) <!-- medium -->
-   Gather data sampling (aka "[Downfall](https://downfall.page/)") - another microarchitectural CPU
    vulnerability - the last one we saw was [Zenbleed from Episode 103]({{< relref "episode-204#usn-6244-1-amd-microcode-vulnerability-05-57" >}}) in AMD Zen2 CPUs
-   This time in Intel hardware (6th to 11th generation) CPUs
-   Presented at BlackHat just over 1 week ago -
    <https://www.blackhat.com/us-23/briefings/schedule/#single-instruction-multiple-data-leaks-in-cutting-edge-cpus-aka-downfall-31490>
-   Similar to Zenbleed in a way, since both are related to the SIMD instruction
    set (single instruction, multiple data) - these instructions are used to
    perform the same operation on multiple data elements simultaneously
    (e.g. adding two vectors of 4 32-bit integers together) which is very useful
    for things like video encoding/decoding, image processing, etc.
-   As the name, **Gather data sampling** suggests, the fault in this case is in the
    SIMD Gather instruction which is used to load data into a vector register from
    a memory location specified by an index vector register. Essentially this
    allows the efficient loading of data which is scattered across memory into a
    single register to then perform further operations on, and is useful in many
    applications. The vulnerability is that under speculative execution, the data
    which is loaded could be stale and come from an address which is not
    accessible to the current process, and the data could be used in further
    operations which could then leak the contents of that inaccessible memory -
    e.g. stealing cryptographic keys from another process.
-   The fix in this case was a microcode update, which stops the CPU from
    speculatively executing the Gather instruction, and instead waits for the data
    to be available before executing the instruction. This results in a
    performance hit, which was measured at up to 50% in a small number of
    use-cases (whilst in others it is negligible).
-   Perhaps the most interesting part of this vulnerability is the timeline - it
    was reported to Intel on 24th August 2022 yet only fixed publicly on 8th
    August 2023 - basically meaning it took a year for Intel to fix this
    issue.
-   Associated with the microcode update is a kernel patch - this allows the
    microcode fix to be reverted at boot by a new kernel command line option:
    `gather_data_sampling=off` - this is useful for those who want to avoid the
    performance hit, and are willing to accept the risk of the vulnerability.
-   Ubuntu kernels have not yet been updated with this fix but that should arrive
    within the next week (ie. week of 21st August)


### [[USN-6280-1](https://ubuntu.com/security/notices/USN-6280-1)] PyPDF2 vulnerability {#usn-6280-1-pypdf2-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-36810](https://ubuntu.com/security/CVE-2023-36810) <!-- medium -->


### [[USN-6287-1](https://ubuntu.com/security/notices/USN-6287-1)] Go yaml vulnerabilities {#usn-6287-1-go-yaml-vulnerabilities}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2022-3064](https://ubuntu.com/security/CVE-2022-3064) <!-- medium -->
    -   [CVE-2021-4235](https://ubuntu.com/security/CVE-2021-4235) <!-- medium -->


### [[USN-4897-2](https://ubuntu.com/security/notices/USN-4897-2)] Pygments vulnerabilities {#usn-4897-2-pygments-vulnerabilities}

-   2 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2021-20270](https://ubuntu.com/security/CVE-2021-20270) <!-- medium -->
    -   [CVE-2021-27291](https://ubuntu.com/security/CVE-2021-27291) <!-- medium -->
-   [[USN-4897-1] Pygments vulnerability from Episode 110]({{< relref "episode-110#usn-4897-1-pygments-vulnerability-06-03" >}}) - ReDoS


### [[USN-6288-1](https://ubuntu.com/security/notices/USN-6288-1)] MySQL vulnerabilities {#usn-6288-1-mysql-vulnerabilities}

-   11 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-22058](https://ubuntu.com/security/CVE-2023-22058) <!-- medium -->
    -   [CVE-2023-22057](https://ubuntu.com/security/CVE-2023-22057) <!-- medium -->
    -   [CVE-2023-22056](https://ubuntu.com/security/CVE-2023-22056) <!-- medium -->
    -   [CVE-2023-22054](https://ubuntu.com/security/CVE-2023-22054) <!-- medium -->
    -   [CVE-2023-22053](https://ubuntu.com/security/CVE-2023-22053) <!-- medium -->
    -   [CVE-2023-22048](https://ubuntu.com/security/CVE-2023-22048) <!-- medium -->
    -   [CVE-2023-22046](https://ubuntu.com/security/CVE-2023-22046) <!-- medium -->
    -   [CVE-2023-22038](https://ubuntu.com/security/CVE-2023-22038) <!-- medium -->
    -   [CVE-2023-22033](https://ubuntu.com/security/CVE-2023-22033) <!-- medium -->
    -   [CVE-2023-22008](https://ubuntu.com/security/CVE-2023-22008) <!-- medium -->
    -   [CVE-2023-22005](https://ubuntu.com/security/CVE-2023-22005) <!-- medium -->


### [[USN-6289-1](https://ubuntu.com/security/notices/USN-6289-1)] WebKitGTK vulnerabilities {#usn-6289-1-webkitgtk-vulnerabilities}

-   9 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-38611](https://ubuntu.com/security/CVE-2023-38611) <!-- medium -->
    -   [CVE-2023-38600](https://ubuntu.com/security/CVE-2023-38600) <!-- medium -->
    -   [CVE-2023-38599](https://ubuntu.com/security/CVE-2023-38599) <!-- medium -->
    -   [CVE-2023-38597](https://ubuntu.com/security/CVE-2023-38597) <!-- medium -->
    -   [CVE-2023-38595](https://ubuntu.com/security/CVE-2023-38595) <!-- medium -->
    -   [CVE-2023-38594](https://ubuntu.com/security/CVE-2023-38594) <!-- medium -->
    -   [CVE-2023-38592](https://ubuntu.com/security/CVE-2023-38592) <!-- medium -->
    -   [CVE-2023-38572](https://ubuntu.com/security/CVE-2023-38572) <!-- medium -->
    -   [CVE-2023-38133](https://ubuntu.com/security/CVE-2023-38133) <!-- medium -->


### [[USN-6290-1](https://ubuntu.com/security/notices/USN-6290-1)] LibTIFF vulnerabilities {#usn-6290-1-libtiff-vulnerabilities}

-   10 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-38289](https://ubuntu.com/security/CVE-2023-38289) <!-- medium -->
    -   [CVE-2023-38288](https://ubuntu.com/security/CVE-2023-38288) <!-- medium -->
    -   [CVE-2023-26965](https://ubuntu.com/security/CVE-2023-26965) <!-- low -->
    -   [CVE-2023-26966](https://ubuntu.com/security/CVE-2023-26966) <!-- medium -->
    -   [CVE-2023-25433](https://ubuntu.com/security/CVE-2023-25433) <!-- medium -->
    -   [CVE-2023-3618](https://ubuntu.com/security/CVE-2023-3618) <!-- medium -->
    -   [CVE-2023-3316](https://ubuntu.com/security/CVE-2023-3316) <!-- low -->
    -   [CVE-2023-2908](https://ubuntu.com/security/CVE-2023-2908) <!-- medium -->
    -   [CVE-2023-2731](https://ubuntu.com/security/CVE-2023-2731) <!-- low -->
    -   [CVE-2022-48281](https://ubuntu.com/security/CVE-2022-48281) <!-- medium -->


### [[USN-6291-1](https://ubuntu.com/security/notices/USN-6291-1)] GStreamer vulnerability {#usn-6291-1-gstreamer-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2017-5838](https://ubuntu.com/security/CVE-2017-5838) <!-- low -->


### [[USN-6292-1](https://ubuntu.com/security/notices/USN-6292-1)] Ceph vulnerability {#usn-6292-1-ceph-vulnerability}

-   1 CVEs addressed in Lunar (23.04)
    -   [CVE-2022-3650](https://ubuntu.com/security/CVE-2022-3650) <!-- medium -->


### [[USN-6293-1](https://ubuntu.com/security/notices/USN-6293-1)] OpenStack Heat vulnerability {#usn-6293-1-openstack-heat-vulnerability}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-1625](https://ubuntu.com/security/CVE-2023-1625) <!-- medium -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 22.04.3 LTS Released (15:47) {#ubuntu-22-dot-04-dot-3-lts-released--15-47}

-   <https://lists.ubuntu.com/archives/ubuntu-announce/2023-August/000294.html>


### Ubuntu 22.10 (Kinetic Kudu) End of Life (16:32) {#ubuntu-22-dot-10--kinetic-kudu--end-of-life--16-32}

-   <https://lists.ubuntu.com/archives/ubuntu-announce/2023-July/000293.html>


### Unprivileged user namespace restrictions via AppArmor in Ubuntu (17:00) {#unprivileged-user-namespace-restrictions-via-apparmor-in-ubuntu--17-00}

-   <https://discourse.ubuntu.com/t/spec-unprivileged-user-namespace-restrictions-via-apparmor-in-ubuntu-23-10/37626>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
