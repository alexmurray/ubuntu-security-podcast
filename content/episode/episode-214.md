+++
title = "Episode 214"
description = """
  This week we take a deep dive into the Reptar vuln in Intel processors plus we
  look into some relic vulnerabilities in Squid and OpenZFS and finally we detail
  new hardening measures in tracker-miners to keep your desktop safer.
  """
date = 2023-12-01T18:51:00+10:30
lastmod = 2023-12-01T18:53:51+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E214.mp3"
podcast_duration = 1210
podcast_bytes = 21614725
permalink = "https://ubuntusecuritypodcast.org/episode-214/"
guid = "4effd15d4f90a51a11e55adf3479ed0254faa0066589b98d1a42231979809ed9430f94b200b3a7a27e75a175ce6f7874186b35ab0c89097d4534029ca131ea3c"
+++

## Overview {#overview}

This week we take a deep dive into the Reptar vuln in Intel processors plus we
look into some relic vulnerabilities in Squid and OpenZFS and finally we detail
new hardening measures in tracker-miners to keep your desktop safer.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

115 unique CVEs addressed


### [[USN-6481-1](https://ubuntu.com/security/notices/USN-6481-1)] FRR vulnerabilities (01:21) {#usn-6481-1-frr-vulnerabilities--01-21}

-   2 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-46753](https://ubuntu.com/security/CVE-2023-46753) <!-- medium -->
    -   [CVE-2023-46752](https://ubuntu.com/security/CVE-2023-46752) <!-- medium -->
-   Two different crashes reported by network pentester from Amazon - appears to
    be fuzzing frr -&gt; DoS


### [[USN-6482-1](https://ubuntu.com/security/notices/USN-6482-1)] Quagga vulnerabilities (01:42) {#usn-6482-1-quagga-vulnerabilities--01-42}

-   2 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-46753](https://ubuntu.com/security/CVE-2023-46753) <!-- medium -->
    -   [CVE-2022-37032](https://ubuntu.com/security/CVE-2022-37032) <!-- medium -->
-   Speaking of BGP daemons - Quagga was the precursor to FRR - also suffers from
    one of these CVEs, plus and older one that was previously fixed in FRR
    ([[USN-5685-1] FRR vulnerabilities from Episode 181]({{< relref "episode-181#usn-5685-1-frr-vulnerabilities" >}})) that
    would lead to an OOB read


### [[USN-6483-1](https://ubuntu.com/security/notices/USN-6483-1)] HTML Tidy vulnerability (02:05) {#usn-6483-1-html-tidy-vulnerability--02-05}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2021-33391](https://ubuntu.com/security/CVE-2021-33391) <!-- medium -->
-   Implemented parser as a recursive algorithm - so on deeply nested documents,
    could end up exhausting the stack and causing memory corruption etc.
-   Fixed by reimplementing the parser as an iterative loop with a heap-based
    stack


### [[USN-6480-1](https://ubuntu.com/security/notices/USN-6480-1)] .NET vulnerabilities (02:42) {#usn-6480-1-dot-net-vulnerabilities--02-42}

-   2 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-36049](https://ubuntu.com/security/CVE-2023-36049) <!-- medium -->
    -   [CVE-2023-36558](https://ubuntu.com/security/CVE-2023-36558) <!-- medium -->


### [[USN-6484-1](https://ubuntu.com/security/notices/USN-6484-1)] OpenVPN vulnerabilities (02:51) {#usn-6484-1-openvpn-vulnerabilities--02-51}

-   2 CVEs addressed in Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-46850](https://ubuntu.com/security/CVE-2023-46850) <!-- medium -->
    -   [CVE-2023-46849](https://ubuntu.com/security/CVE-2023-46849) <!-- medium -->
-   Two issues which only affected more recent versions of OpenVPN (&gt;= =2.6.0) -
    one UAF and the other a possible divide by zero -&gt; DoS


### [[USN-6485-1](https://ubuntu.com/security/notices/USN-6485-1)] Intel Microcode vulnerability (03:13) {#usn-6485-1-intel-microcode-vulnerability--03-13}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-23583](https://ubuntu.com/security/CVE-2023-23583) <!-- high -->
-   Tavis Ormandy's latest processor bug - "[Reptar](https://lock.cmpxchg8b.com/reptar.html)" - found again using the same
    technique as he used to find Zenbleed (AMD) but this time in Intel
    processors - essentially can be thought of as akin to fuzzing but instead of
    generating random input to find unexpected behaviour, generate some random
    input in the form of a set of processor instructions, and then also generate
    an equivalent version of this by adding random alignment, serialization and
    memory fence instructions etc. These extra instructions shouldn't change the
    behaviour of the program being executed, so if a difference is observed then
    can likely assume the hardware has behaved incorrectly - perhaps some
    underlying microarchitectural behaviour has been triggered - but either way
    could indicate the presence of a hardware bug which could in turn be exploited
    as a vulnerability to cause undesired affects
-   In this case, found a sequence of instructions that in general should be
    ignored but which could instead cause the processor to hit a machine check
    exception and halt - even from an unprivileged guest VM - this is the kind of
    things that cloud providers worry about
-   Theorised that since they can cause MCEs by corrupting various internal state
    of the processor, they could potentially get privilege escalation if they
    could control that corruption with enough precision but since it is not really
    possible to debug the microarchitectural state of the processor it is not easy
    to develop such a PoC
-   Reported the issue to Intel who released a microcode update to fix this, and
    Tavis released a PoC tool to test for and reproduce the basic issue


### [[USN-6486-1](https://ubuntu.com/security/notices/USN-6486-1)] iniParser vulnerability (06:25) {#usn-6486-1-iniparser-vulnerability--06-25}

-   1 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-33461](https://ubuntu.com/security/CVE-2023-33461) <!-- medium -->
-   Possible NULL ptr deref on crafted input


### [[USN-6487-1](https://ubuntu.com/security/notices/USN-6487-1)] Avahi vulnerabilities (06:36) {#usn-6487-1-avahi-vulnerabilities--06-36}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-38473](https://ubuntu.com/security/CVE-2023-38473) <!-- medium -->
    -   [CVE-2023-38472](https://ubuntu.com/security/CVE-2023-38472) <!-- medium -->
    -   [CVE-2023-38471](https://ubuntu.com/security/CVE-2023-38471) <!-- medium -->
    -   [CVE-2023-38470](https://ubuntu.com/security/CVE-2023-38470) <!-- medium -->
    -   [CVE-2023-38469](https://ubuntu.com/security/CVE-2023-38469) <!-- medium -->
-   Various assertions were able to be triggered through crafted input - so a
    local attacker on your network could cause your local avahi daemon to crash


### [[USN-6489-1](https://ubuntu.com/security/notices/USN-6489-1)] Tang vulnerability (07:09) {#usn-6489-1-tang-vulnerability--07-09}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-1672](https://ubuntu.com/security/CVE-2023-1672) <!-- medium -->
-   Race condition when generating keys - would write to a file and then set
    permissions so only root could read them - small time window then where
    another process could possibly read the key before the more restrictive
    permissions are set - fixed by setting a restrictive umask before creating the
    file such that it gets created with the restrictive permissions from the start


### [[USN-6488-1](https://ubuntu.com/security/notices/USN-6488-1)] strongSwan vulnerability (07:59) {#usn-6488-1-strongswan-vulnerability--07-59}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-41913](https://ubuntu.com/security/CVE-2023-41913) <!-- medium -->


### [[USN-6490-1](https://ubuntu.com/security/notices/USN-6490-1)] WebKitGTK vulnerabilities {#usn-6490-1-webkitgtk-vulnerabilities}

-   2 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-42852](https://ubuntu.com/security/CVE-2023-42852) <!-- medium -->
    -   [CVE-2023-41983](https://ubuntu.com/security/CVE-2023-41983) <!-- medium -->


### [[USN-6491-1](https://ubuntu.com/security/notices/USN-6491-1)] Node.js vulnerabilities {#usn-6491-1-node-dot-js-vulnerabilities}

-   6 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-43548](https://ubuntu.com/security/CVE-2022-43548) <!-- medium -->
    -   [CVE-2022-35256](https://ubuntu.com/security/CVE-2022-35256) <!-- medium -->
    -   [CVE-2022-32215](https://ubuntu.com/security/CVE-2022-32215) <!-- medium -->
    -   [CVE-2022-32214](https://ubuntu.com/security/CVE-2022-32214) <!-- medium -->
    -   [CVE-2022-32213](https://ubuntu.com/security/CVE-2022-32213) <!-- medium -->
    -   [CVE-2022-32212](https://ubuntu.com/security/CVE-2022-32212) <!-- medium -->


### [[USN-6493-1](https://ubuntu.com/security/notices/USN-6493-1), [USN-6493-2](https://ubuntu.com/security/notices/USN-6493-2)] hibagent update {#usn-6493-1-usn-6493-2-hibagent-update}

-   Affecting Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)


### [[USN-6492-1](https://ubuntu.com/security/notices/USN-6492-1)] Mosquitto vulnerabilities (08:06) {#usn-6492-1-mosquitto-vulnerabilities--08-06}

-   6 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-28366](https://ubuntu.com/security/CVE-2023-28366) <!-- medium -->
    -   [CVE-2023-3592](https://ubuntu.com/security/CVE-2023-3592) <!-- medium -->
    -   [CVE-2023-0809](https://ubuntu.com/security/CVE-2023-0809) <!-- medium -->
    -   [CVE-2021-41039](https://ubuntu.com/security/CVE-2021-41039) <!-- medium -->
    -   [CVE-2021-34434](https://ubuntu.com/security/CVE-2021-34434) <!-- medium -->
    -   [CVE-2021-34431](https://ubuntu.com/security/CVE-2021-34431) <!-- medium -->
-   Multiple memory leaks which can be triggered through crafted packets -&gt; DoS
-   Excessive CPU usage when parsing a connect request from a client with a large number of user-properties -&gt; DoS
-   Logic bug - failed to revoke existing subscriptions when a topic subscription
    is revoked in some cases - would still get notified after the fact - info / privacy leak


### [[USN-6498-1](https://ubuntu.com/security/notices/USN-6498-1)] FRR vulnerabilities (08:55) {#usn-6498-1-frr-vulnerabilities--08-55}

-   4 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-47235](https://ubuntu.com/security/CVE-2023-47235) <!-- medium -->
    -   [CVE-2023-47234](https://ubuntu.com/security/CVE-2023-47234) <!-- medium -->
    -   [CVE-2023-38407](https://ubuntu.com/security/CVE-2023-38407) <!-- medium -->
    -   [CVE-2023-38406](https://ubuntu.com/security/CVE-2023-38406) <!-- medium -->
-   More issues discovered by Iggy Frankovic at Amazon - seemingly through fuzzing
    of frr - UAF, OOB read etc.


### [[USN-6499-1](https://ubuntu.com/security/notices/USN-6499-1)] GnuTLS vulnerability (09:13) {#usn-6499-1-gnutls-vulnerability--09-13}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-5981](https://ubuntu.com/security/CVE-2023-5981) <!-- medium -->
-   Timing side-channel during RSA-PSK ClientKeyExchange - response time would
    vary if given malformed ciphertext compared to when using correct PKCS#1 v1.5
    padding - very similar to historical CVE-2023-0361 ([[USN-5901-1] GnuTLS
    vulnerability from Episode 189]({{< relref "episode-189#usn-5901-1-gnutls-vulnerability" >}})) - in that case the same issue was fixed for
    regular RSA - but no-one noticed that the same problematic code existed for
    this other case as well
-   Old adage - if you want to find a vuln, look near other previous vulns - and
    by the same token, if a project has a vuln reported, go looking to see if
    perhaps there are other instances of the same vuln in the code base
-   Lots of projects have lots of copy-pasted or duplicated code within themselves


### [[USN-6500-1](https://ubuntu.com/security/notices/USN-6500-1)] Squid vulnerabilities (10:20) {#usn-6500-1-squid-vulnerabilities--10-20}

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-46848](https://ubuntu.com/security/CVE-2023-46848) <!-- medium -->
    -   [CVE-2023-46847](https://ubuntu.com/security/CVE-2023-46847) <!-- medium -->
    -   [CVE-2023-46846](https://ubuntu.com/security/CVE-2023-46846) <!-- medium -->
    -   [CVE-2023-46728](https://ubuntu.com/security/CVE-2023-46728) <!-- medium -->
    -   [CVE-2023-46724](https://ubuntu.com/security/CVE-2023-46724) <!-- medium -->
-   Back in early 2021 a security audit was performed on Squid which found 55
    vulnerabilities - these were reported to the upstream project and some CVEs
    were assigned but a lot went without any fix
-   Unfortunately the Squid project is understaffed and hasn't had the resources to fix all the issues
-   Researchers eventually got tired of waiting (approx 900 days so not
    surprising) - so released details publicly of all their findings
-   <https://megamansec.github.io/Squid-Security-Audit/>
-   A mix of CVEs and GHSAs have been assigned for some, but not all issues, so
    some are still unfixed
-   This update contains fixes for all the CVEs which have been assigned so far -
    expect more updates in the future


### [[USN-6494-1](https://ubuntu.com/security/notices/USN-6494-1)] Linux kernel vulnerabilities {#usn-6494-1-linux-kernel-vulnerabilities}

-   9 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-5717](https://ubuntu.com/security/CVE-2023-5717) <!-- medium -->
    -   [CVE-2023-45871](https://ubuntu.com/security/CVE-2023-45871) <!-- medium -->
    -   [CVE-2023-45862](https://ubuntu.com/security/CVE-2023-45862) <!-- medium -->
    -   [CVE-2023-42754](https://ubuntu.com/security/CVE-2023-42754) <!-- medium -->
    -   [CVE-2023-39194](https://ubuntu.com/security/CVE-2023-39194) <!-- medium -->
    -   [CVE-2023-39193](https://ubuntu.com/security/CVE-2023-39193) <!-- medium -->
    -   [CVE-2023-39192](https://ubuntu.com/security/CVE-2023-39192) <!-- medium -->
    -   [CVE-2023-39189](https://ubuntu.com/security/CVE-2023-39189) <!-- medium -->
    -   [CVE-2023-31085](https://ubuntu.com/security/CVE-2023-31085) <!-- low -->


### [[USN-6495-1](https://ubuntu.com/security/notices/USN-6495-1)] Linux kernel vulnerabilities {#usn-6495-1-linux-kernel-vulnerabilities}

-   2 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-45871](https://ubuntu.com/security/CVE-2023-45871) <!-- medium -->
    -   [CVE-2023-31085](https://ubuntu.com/security/CVE-2023-31085) <!-- low -->


### [[USN-6496-1](https://ubuntu.com/security/notices/USN-6496-1)] Linux kernel vulnerabilities {#usn-6496-1-linux-kernel-vulnerabilities}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-45871](https://ubuntu.com/security/CVE-2023-45871) <!-- medium -->
    -   [CVE-2023-31085](https://ubuntu.com/security/CVE-2023-31085) <!-- low -->
    -   [CVE-2023-25775](https://ubuntu.com/security/CVE-2023-25775) <!-- medium -->


### [[USN-6497-1](https://ubuntu.com/security/notices/USN-6497-1)] Linux kernel (OEM) vulnerabilities (11:50) {#usn-6497-1-linux-kernel--oem--vulnerabilities--11-50}

-   3 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-5717](https://ubuntu.com/security/CVE-2023-5717) <!-- medium -->
    -   [CVE-2023-5178](https://ubuntu.com/security/CVE-2023-5178) <!-- medium -->
    -   [CVE-2023-5090](https://ubuntu.com/security/CVE-2023-5090) <!-- high -->
-   Logic issue in handling of x2AVIC MSR in KVM nested virtualisation on AMD
    processors - could allow an attacker in a guest VM to cause a crash on the
    host kernel and hence a DoS against the whole host


### [[USN-6502-1](https://ubuntu.com/security/notices/USN-6502-1)] Linux kernel vulnerabilities {#usn-6502-1-linux-kernel-vulnerabilities}

-   5 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-5345](https://ubuntu.com/security/CVE-2023-5345) <!-- high -->
    -   [CVE-2023-5090](https://ubuntu.com/security/CVE-2023-5090) <!-- high -->
    -   [CVE-2023-45871](https://ubuntu.com/security/CVE-2023-45871) <!-- medium -->
    -   [CVE-2023-31085](https://ubuntu.com/security/CVE-2023-31085) <!-- low -->
    -   [CVE-2023-25775](https://ubuntu.com/security/CVE-2023-25775) <!-- medium -->
-   UAF in the error handling code for SMB file system - local attacker could use
    this to escalate privileges


### [[USN-6502-2](https://ubuntu.com/security/notices/USN-6502-2)] Linux kernel (Oracle) vulnerabilities {#usn-6502-2-linux-kernel--oracle--vulnerabilities}

-   5 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-5345](https://ubuntu.com/security/CVE-2023-5345) <!-- high -->
    -   [CVE-2023-5090](https://ubuntu.com/security/CVE-2023-5090) <!-- high -->
    -   [CVE-2023-45871](https://ubuntu.com/security/CVE-2023-45871) <!-- medium -->
    -   [CVE-2023-31085](https://ubuntu.com/security/CVE-2023-31085) <!-- low -->
    -   [CVE-2023-25775](https://ubuntu.com/security/CVE-2023-25775) <!-- medium -->


### [[USN-6502-3](https://ubuntu.com/security/notices/USN-6502-3)] Linux kernel (NVIDIA) vulnerabilities {#usn-6502-3-linux-kernel--nvidia--vulnerabilities}

-   5 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-5345](https://ubuntu.com/security/CVE-2023-5345) <!-- high -->
    -   [CVE-2023-5090](https://ubuntu.com/security/CVE-2023-5090) <!-- high -->
    -   [CVE-2023-45871](https://ubuntu.com/security/CVE-2023-45871) <!-- medium -->
    -   [CVE-2023-31085](https://ubuntu.com/security/CVE-2023-31085) <!-- low -->
    -   [CVE-2023-25775](https://ubuntu.com/security/CVE-2023-25775) <!-- medium -->


### [[USN-6503-1](https://ubuntu.com/security/notices/USN-6503-1)] Linux kernel vulnerabilities {#usn-6503-1-linux-kernel-vulnerabilities}

-   5 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-5633](https://ubuntu.com/security/CVE-2023-5633) <!-- high -->
    -   [CVE-2023-5345](https://ubuntu.com/security/CVE-2023-5345) <!-- high -->
    -   [CVE-2023-5090](https://ubuntu.com/security/CVE-2023-5090) <!-- high -->
    -   [CVE-2023-4244](https://ubuntu.com/security/CVE-2023-4244) <!-- high -->
    -   [CVE-2023-31085](https://ubuntu.com/security/CVE-2023-31085) <!-- low -->


### [[USN-6516-1](https://ubuntu.com/security/notices/USN-6516-1)] Linux kernel (Intel IoTG) vulnerabilities {#usn-6516-1-linux-kernel--intel-iotg--vulnerabilities}

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-45871](https://ubuntu.com/security/CVE-2023-45871) <!-- medium -->
    -   [CVE-2023-3772](https://ubuntu.com/security/CVE-2023-3772) <!-- medium -->
    -   [CVE-2023-31085](https://ubuntu.com/security/CVE-2023-31085) <!-- low -->
    -   [CVE-2023-31083](https://ubuntu.com/security/CVE-2023-31083) <!-- low -->
    -   [CVE-2023-25775](https://ubuntu.com/security/CVE-2023-25775) <!-- medium -->


### [[USN-6520-1](https://ubuntu.com/security/notices/USN-6520-1)] Linux kernel (StarFive) vulnerabilities {#usn-6520-1-linux-kernel--starfive--vulnerabilities}

-   16 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-5345](https://ubuntu.com/security/CVE-2023-5345) <!-- high -->
    -   [CVE-2023-5090](https://ubuntu.com/security/CVE-2023-5090) <!-- high -->
    -   [CVE-2023-45871](https://ubuntu.com/security/CVE-2023-45871) <!-- medium -->
    -   [CVE-2023-44466](https://ubuntu.com/security/CVE-2023-44466) <!-- medium -->
    -   [CVE-2023-4134](https://ubuntu.com/security/CVE-2023-4134) <!-- low -->
    -   [CVE-2023-4132](https://ubuntu.com/security/CVE-2023-4132) <!-- low -->
    -   [CVE-2023-3867](https://ubuntu.com/security/CVE-2023-3867) <!-- medium -->
    -   [CVE-2023-3866](https://ubuntu.com/security/CVE-2023-3866) <!-- medium -->
    -   [CVE-2023-3865](https://ubuntu.com/security/CVE-2023-3865) <!-- medium -->
    -   [CVE-2023-3863](https://ubuntu.com/security/CVE-2023-3863) <!-- medium -->
    -   [CVE-2023-38432](https://ubuntu.com/security/CVE-2023-38432) <!-- medium -->
    -   [CVE-2023-38430](https://ubuntu.com/security/CVE-2023-38430) <!-- medium -->
    -   [CVE-2023-3772](https://ubuntu.com/security/CVE-2023-3772) <!-- medium -->
    -   [CVE-2023-31085](https://ubuntu.com/security/CVE-2023-31085) <!-- low -->
    -   [CVE-2023-31083](https://ubuntu.com/security/CVE-2023-31083) <!-- low -->
    -   [CVE-2023-25775](https://ubuntu.com/security/CVE-2023-25775) <!-- medium -->


### [[LSN-0099-1](https://ubuntu.com/security/notices/LSN-0099-1)] Linux kernel vulnerability (12:49) {#lsn-0099-1-linux-kernel-vulnerability--12-49}

-   16 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-42753](https://ubuntu.com/security/CVE-2023-42753) <!-- high -->
    -   [CVE-2023-42752](https://ubuntu.com/security/CVE-2023-42752) <!-- high -->
    -   [CVE-2023-40283](https://ubuntu.com/security/CVE-2023-40283) <!-- high -->
    -   [CVE-2023-34319](https://ubuntu.com/security/CVE-2023-34319) <!-- medium -->
    -   [CVE-2023-31436](https://ubuntu.com/security/CVE-2023-31436) <!-- high -->
    -   [CVE-2023-5197](https://ubuntu.com/security/CVE-2023-5197) <!-- medium -->
    -   [CVE-2023-4881](https://ubuntu.com/security/CVE-2023-4881) <!-- high -->
    -   [CVE-2023-4623](https://ubuntu.com/security/CVE-2023-4623) <!-- high -->
    -   [CVE-2023-4622](https://ubuntu.com/security/CVE-2023-4622) <!-- high -->
    -   [CVE-2023-4004](https://ubuntu.com/security/CVE-2023-4004) <!-- high -->
    -   [CVE-2023-3995](https://ubuntu.com/security/CVE-2023-3995) <!-- high -->
    -   [CVE-2023-3777](https://ubuntu.com/security/CVE-2023-3777) <!-- high -->
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3609](https://ubuntu.com/security/CVE-2023-3609) <!-- high -->
    -   [CVE-2023-3567](https://ubuntu.com/security/CVE-2023-3567) <!-- high -->
    -   [CVE-2022-3643](https://ubuntu.com/security/CVE-2022-3643) <!-- medium -->

| Kernel type     | 22.04 | 20.04 | 18.04 | 16.04 | 14.04 |
|-----------------|-------|-------|-------|-------|-------|
| aws             | 99.2  | 99.1  | 99.1  | 99.1  | —     |
| aws-5.15        | —     | 99.2  | —     | —     | —     |
| aws-5.4         | —     | —     | 99.1  | —     | —     |
| aws-6.2         | 99.2  | —     | —     | —     | —     |
| aws-hwe         | —     | —     | —     | 99.1  | —     |
| azure           | 99.2  | 99.1  | —     | 99.1  | —     |
| azure-4.15      | —     | —     | 99.1  | —     | —     |
| azure-5.4       | —     | —     | 99.1  | —     | —     |
| azure-6.2       | 99.2  | —     | —     | —     | —     |
| gcp             | 99.2  | 99.1  | —     | 99.1  | —     |
| gcp-4.15        | —     | —     | 99.1  | —     | —     |
| gcp-5.15        | —     | 99.2  | —     | —     | —     |
| gcp-5.4         | —     | —     | 99.1  | —     | —     |
| gcp-6.2         | 99.2  | —     | —     | —     | —     |
| generic-4.15    | —     | —     | 99.1  | 99.1  | —     |
| generic-4.4     | —     | —     | —     | 99.1  | 99.1  |
| generic-5.15    | —     | 99.2  | —     | —     | —     |
| generic-5.4     | —     | 99.1  | 99.1  | —     | —     |
| gke             | 99.2  | 99.1  | —     | —     | —     |
| gke-5.15        | —     | 99.2  | —     | —     | —     |
| gkeop           | —     | 99.1  | —     | —     | —     |
| hwe-6.2         | 99.2  | —     | —     | —     | —     |
| ibm             | 99.2  | 99.1  | —     | —     | —     |
| ibm-5.15        | —     | 99.2  | —     | —     | —     |
| ibm-5.4         | —     | —     | 99.1  | —     | —     |
| linux           | 99.2  | —     | —     | —     | —     |
| lowlatency-4.15 | —     | —     | 99.1  | 99.1  | —     |
| lowlatency-4.4  | —     | —     | —     | 99.1  | 99.1  |
| lowlatency-5.15 | —     | 99.2  | —     | —     | —     |
| lowlatency-5.4  | —     | 99.1  | 99.1  | —     | —     |

```shell
canonical-livepatch status
```


### [[USN-6501-1](https://ubuntu.com/security/notices/USN-6501-1)] RabbitMQ vulnerability {#usn-6501-1-rabbitmq-vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-46118](https://ubuntu.com/security/CVE-2023-46118) <!-- medium -->


### [[USN-6504-1](https://ubuntu.com/security/notices/USN-6504-1)] tracker-miners vulnerability (13:30) {#usn-6504-1-tracker-miners-vulnerability--13-30}

-   1 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-5557](https://ubuntu.com/security/CVE-2023-5557) <!-- medium -->
-   Hardening of the seccomp sandbox in tracker
-   [[USN-6423-2] CUE vulnerability (07:04) from Episode 211]({{< relref "episode-211#usn-6423-2-cue-vulnerability--07-04" >}}) - libcue vuln from
    Kevin Backhouse at Github exploited this weakness in the existing seccomp
    sandbox to be able to mount their attack for that vulnerability
-   At the time I discussed how the tracker developers were deploying additional
    hardening to ensure all threads used by tracker-miners were sandboxed - this
    is that fix


### [[USN-6505-1](https://ubuntu.com/security/notices/USN-6505-1)] nghttp2 vulnerability (15:20) {#usn-6505-1-nghttp2-vulnerability--15-20}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-44487](https://ubuntu.com/security/CVE-2023-44487) <!-- medium -->
-   [[USN-6438-1, USN-6438-2, USN-6427-2] .NET vulnerabilities from Episode 212]({{< relref "episode-212#usn-6438-1-usn-6438-2-usn-6427-2-dot-net-vulnerabilities--05-15" >}})
-   HTTP/2 Rapid Reset - affects multiple HTTP/2 implementations


### [[USN-6506-1](https://ubuntu.com/security/notices/USN-6506-1)] Apache HTTP Server vulnerabilities (15:27) {#usn-6506-1-apache-http-server-vulnerabilities--15-27}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-45802](https://ubuntu.com/security/CVE-2023-45802) <!-- medium -->
    -   [CVE-2023-43622](https://ubuntu.com/security/CVE-2023-43622) <!-- low -->
    -   [CVE-2023-31122](https://ubuntu.com/security/CVE-2023-31122) <!-- low -->
-   DoS against HTTP/2 implemtation - very similar to historical Slow Loris
    attack - fixing required backporting the entire version of the http/2 module
    from 2.0.10 back to earlier releases - thanks to Marc for this herculean
    effort


### [[USN-6507-1](https://ubuntu.com/security/notices/USN-6507-1)] GlusterFS vulnerability {#usn-6507-1-glusterfs-vulnerability}

-   1 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2022-48340](https://ubuntu.com/security/CVE-2022-48340) <!-- medium -->


### [[USN-6509-1](https://ubuntu.com/security/notices/USN-6509-1)] Firefox vulnerabilities (16:17) {#usn-6509-1-firefox-vulnerabilities--16-17}

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
-   120.0
-   One issue specific to Linux when running under X11 (and I assume XWayland) -
    when copying text using the Selection API, this would also be copied into the
    primary selection (aka where stuff goes when you highlight it and then paste
    it with middle mouse button)


### [[USN-6508-1](https://ubuntu.com/security/notices/USN-6508-1), [USN-6508-2](https://ubuntu.com/security/notices/USN-6508-2)] poppler vulnerabilities {#usn-6508-1-usn-6508-2-poppler-vulnerabilities}

-   5 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-38349](https://ubuntu.com/security/CVE-2022-38349) <!-- medium -->
    -   [CVE-2022-37052](https://ubuntu.com/security/CVE-2022-37052) <!-- medium -->
    -   [CVE-2022-37051](https://ubuntu.com/security/CVE-2022-37051) <!-- medium -->
    -   [CVE-2022-37050](https://ubuntu.com/security/CVE-2022-37050) <!-- medium -->
    -   [CVE-2020-23804](https://ubuntu.com/security/CVE-2020-23804) <!-- medium -->


### [[USN-6511-1](https://ubuntu.com/security/notices/USN-6511-1)] OpenZFS vulnerability (17:21) {#usn-6511-1-openzfs-vulnerability--17-21}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2013-20001](https://ubuntu.com/security/CVE-2013-20001) <!-- medium -->
-   Oldest CVE patched in a while - was originally reported to openzfs project
    back in November 2013 - over 10 years ago
-   When sharing over IPv6 would expose to everyone, not just the intended IPv6
    address but to everyone
-   Issue languished, eventually a CVE was assigned in Feb 2021 and then fixed in
    October 2021


### [[USN-6510-1](https://ubuntu.com/security/notices/USN-6510-1)] Apache HTTP Server vulnerability {#usn-6510-1-apache-http-server-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-31122](https://ubuntu.com/security/CVE-2023-31122) <!-- low -->


### [[USN-6512-1](https://ubuntu.com/security/notices/USN-6512-1)] LibTIFF vulnerabilities {#usn-6512-1-libtiff-vulnerabilities}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-3576](https://ubuntu.com/security/CVE-2023-3576) <!-- negligible -->
    -   [CVE-2022-40090](https://ubuntu.com/security/CVE-2022-40090) <!-- medium -->


### [[USN-6513-1](https://ubuntu.com/security/notices/USN-6513-1)] Python vulnerabilities {#usn-6513-1-python-vulnerabilities}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-40217](https://ubuntu.com/security/CVE-2023-40217) <!-- medium -->
    -   [CVE-2022-48564](https://ubuntu.com/security/CVE-2022-48564) <!-- medium -->


### [[USN-6514-1](https://ubuntu.com/security/notices/USN-6514-1)] Open vSwitch vulnerability (18:18) {#usn-6514-1-open-vswitch-vulnerability--18-18}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-5366](https://ubuntu.com/security/CVE-2023-5366) <!-- medium -->
-   Failed to properly handle OpenFlow rules for ICMPv6 Neighbour Advertisements -
    in some circumstances would match against the wrong rules and so could allow
    an attacker who could load certain rules to then cause other traffic to be
    redirected contrary to expectations - this would then result in an info leak


### [[USN-6515-1](https://ubuntu.com/security/notices/USN-6515-1)] Thunderbird vulnerabilities (18:46) {#usn-6515-1-thunderbird-vulnerabilities--18-46}

-   7 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-6209](https://ubuntu.com/security/CVE-2023-6209) <!-- medium -->
    -   [CVE-2023-6208](https://ubuntu.com/security/CVE-2023-6208) <!-- medium -->
    -   [CVE-2023-6207](https://ubuntu.com/security/CVE-2023-6207) <!-- medium -->
    -   [CVE-2023-6205](https://ubuntu.com/security/CVE-2023-6205) <!-- medium -->
    -   [CVE-2023-6204](https://ubuntu.com/security/CVE-2023-6204) <!-- medium -->
    -   [CVE-2023-6212](https://ubuntu.com/security/CVE-2023-6212) <!-- medium -->
    -   [CVE-2023-6206](https://ubuntu.com/security/CVE-2023-6206) <!-- medium -->
-   115.5.0


### [[USN-6517-1](https://ubuntu.com/security/notices/USN-6517-1)] Perl vulnerabilities {#usn-6517-1-perl-vulnerabilities}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-47038](https://ubuntu.com/security/CVE-2023-47038) <!-- medium -->
    -   [CVE-2022-48522](https://ubuntu.com/security/CVE-2022-48522) <!-- low -->


### [[USN-6402-2](https://ubuntu.com/security/notices/USN-6402-2)] LibTomMath vulnerability {#usn-6402-2-libtommath-vulnerability}

-   1 CVEs addressed in Mantic (23.10)
    -   [CVE-2023-36328](https://ubuntu.com/security/CVE-2023-36328) <!-- medium -->


### [[USN-6513-2](https://ubuntu.com/security/notices/USN-6513-2)] Python vulnerability {#usn-6513-2-python-vulnerability}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-40217](https://ubuntu.com/security/CVE-2023-40217) <!-- medium -->
    -   [CVE-2022-48564](https://ubuntu.com/security/CVE-2022-48564) <!-- medium -->


### [[USN-6518-1](https://ubuntu.com/security/notices/USN-6518-1)] AFFLIB vulnerability {#usn-6518-1-afflib-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2018-8050](https://ubuntu.com/security/CVE-2018-8050) <!-- medium -->


### [[USN-6519-1](https://ubuntu.com/security/notices/USN-6519-1)] EC2 hibagent update {#usn-6519-1-ec2-hibagent-update}

-   Affecting Bionic ESM (18.04 ESM)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
