+++
title = "Episode 199"
description = """
  For our 199th episode Andrei looks at Fuzzing Configurations of Program Options
  plus we discuss Google's findings on the `io_uring` kernel subsystem and we look
  at vulnerability fixes for Netatalk, Jupyter Core, Vim, SSSD, GNU binutils, GLib
  and more.
  """
date = 2023-06-16T18:47:00+09:30
lastmod = 2023-06-16T18:52:41+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E199.mp3"
podcast_duration = 1639
podcast_bytes = 28566522
permalink = "https://ubuntusecuritypodcast.org/episode-199/"
guid = "80d53c07cf49e3f9fafba0661c170262d228b0b6f2ea02d3353b846c55e44ffa666c2a4021d31a2c272b95bb5296ee3b84f676a8ffd8ef62b0f7b463942a696e"
+++

## Overview {#overview}

For our 199th episode Andrei looks at Fuzzing Configurations of Program Options
plus we discuss Google's findings on the `io_uring` kernel subsystem and we look
at vulnerability fixes for Netatalk, Jupyter Core, Vim, SSSD, GNU binutils, GLib
and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

53 unique CVEs addressed


### [[USN-6145-1](https://ubuntu.com/security/notices/USN-6145-1)] Sysstat vulnerabilities (00:55) {#usn-6145-1-sysstat-vulnerabilities--00-55}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-33204](https://ubuntu.com/security/CVE-2023-33204) <!-- medium -->
    -   [CVE-2022-39377](https://ubuntu.com/security/CVE-2022-39377) <!-- medium -->
-   system performance tools - integer overflow leading to possible buffer
    overflow - original fix was incomplete so a second CVE was issued


### [[USN-6146-1](https://ubuntu.com/security/notices/USN-6146-1)] Netatalk vulnerabilities (01:22) {#usn-6146-1-netatalk-vulnerabilities--01-22}

-   9 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-45188](https://ubuntu.com/security/CVE-2022-45188) <!-- high -->
    -   [CVE-2022-43634](https://ubuntu.com/security/CVE-2022-43634) <!-- high -->
    -   [CVE-2022-23125](https://ubuntu.com/security/CVE-2022-23125) <!-- high -->
    -   [CVE-2022-23124](https://ubuntu.com/security/CVE-2022-23124) <!-- medium -->
    -   [CVE-2022-23123](https://ubuntu.com/security/CVE-2022-23123) <!-- medium -->
    -   [CVE-2022-23122](https://ubuntu.com/security/CVE-2022-23122) <!-- high -->
    -   [CVE-2022-23121](https://ubuntu.com/security/CVE-2022-23121) <!-- high -->
    -   [CVE-2022-0194](https://ubuntu.com/security/CVE-2022-0194) <!-- high -->
    -   [CVE-2021-31439](https://ubuntu.com/security/CVE-2021-31439) <!-- medium -->
-   Implementation of the Apple Filing Protocol - allows a Ubuntu server to share
    files with macOS clients - similar to Samba for Windows
-   Lots of different buffer overflows - some / most disclosed via ZDI
-   Almost all due to missing length checks on the input data - some OOB write,
    others OOB read - sadly there is no AppArmor profile for netatalk but it would
    be interesting to try and create one


### [[USN-6147-1](https://ubuntu.com/security/notices/USN-6147-1)] SpiderMonkey vulnerability (02:21) {#usn-6147-1-spidermonkey-vulnerability--02-21}

-   1 CVEs addressed in Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-34416](https://ubuntu.com/security/CVE-2023-34416) <!-- medium -->
-   Latest release of mozjs-102.12.0 (Mozilla's SpiderMonkey JS engine)
-   Used by gnome-shell etc
-   Upstream mozilla describes this issue as 'memory safety bugs'


### [[USN-6149-1](https://ubuntu.com/security/notices/USN-6149-1)] Linux kernel vulnerabilities (02:52) {#usn-6149-1-linux-kernel-vulnerabilities--02-52}

-   6 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2023-28328](https://ubuntu.com/security/CVE-2023-28328) <!-- medium -->
    -   [CVE-2023-1073](https://ubuntu.com/security/CVE-2023-1073) <!-- medium -->
    -   [CVE-2023-1380](https://ubuntu.com/security/CVE-2023-1380) <!-- high -->
    -   [CVE-2023-30456](https://ubuntu.com/security/CVE-2023-30456) <!-- high -->
    -   [CVE-2023-31436](https://ubuntu.com/security/CVE-2023-31436) <!-- high -->
    -   [CVE-2023-32233](https://ubuntu.com/security/CVE-2023-32233) <!-- high -->
-   4.4 based kernel (Xenial GA kernel)
-   All interesting CVEs discussed last week - [[USN-6130-1] Linux kernel vulnerabilities in Episode 198]({{< relref "episode-198#usn-6130-1-linux-kernel-vulnerabilities--02-23" >}})
-   OOB read in the USB handling code for Broadcom FullMAC USB WiFi driver
-   KVM mishandling of control registers for nested guest VMs
-   OOB write in network queuing scheduler - able to be triggered though an
    unprivileged user namespace (again)
-   race condition -&gt; UAF -&gt; privesc in netfilter


### [[USN-6150-1](https://ubuntu.com/security/notices/USN-6150-1), [USN-6162-1](https://ubuntu.com/security/notices/USN-6162-1)] Linux kernel vulnerabilities (03:55) {#usn-6150-1-usn-6162-1-linux-kernel-vulnerabilities--03-55}

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-2612](https://ubuntu.com/security/CVE-2023-2612) <!-- medium -->
    -   [CVE-2023-1380](https://ubuntu.com/security/CVE-2023-1380) <!-- high -->
    -   [CVE-2023-30456](https://ubuntu.com/security/CVE-2023-30456) <!-- high -->
    -   [CVE-2023-31436](https://ubuntu.com/security/CVE-2023-31436) <!-- high -->
    -   [CVE-2023-32233](https://ubuntu.com/security/CVE-2023-32233) <!-- high -->
-   5.15 Raspi + Intel-IoTG 22.04 LTS,
-   5.4 Raspi + Intel-IoTG 20.04 LTS


### [[USN-6151-1](https://ubuntu.com/security/notices/USN-6151-1)] Linux kernel (Xilinx ZynqMP) vulnerabilities (04:13) {#usn-6151-1-linux-kernel--xilinx-zynqmp--vulnerabilities--04-13}

-   4 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-23559](https://ubuntu.com/security/CVE-2023-23559) <!-- medium -->
    -   [CVE-2022-4382](https://ubuntu.com/security/CVE-2022-4382) <!-- low -->
    -   [CVE-2022-2196](https://ubuntu.com/security/CVE-2022-2196) <!-- medium -->
    -   [CVE-2021-3669](https://ubuntu.com/security/CVE-2021-3669) <!-- low -->
-   5.4


### [[USN-6152-1](https://ubuntu.com/security/notices/USN-6152-1)] Linux kernel (GKE) regression (04:21) {#usn-6152-1-linux-kernel--gke--regression--04-21}

-   Affecting Focal (20.04 LTS), Jammy (22.04 LTS)
-   5.15 - NFS cache issue causing a severe degradation in performance under
    certain conditions


### [[USN-6153-1](https://ubuntu.com/security/notices/USN-6153-1)] Jupyter Core vulnerability (04:42) {#usn-6153-1-jupyter-core-vulnerability--04-42}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-39286](https://ubuntu.com/security/CVE-2022-39286) <!-- medium -->
-   Executed untrusted files from current working directory - possible RCE - would
    unconditionally prepend the current working dir to the search path


### [[USN-6154-1](https://ubuntu.com/security/notices/USN-6154-1)] Vim vulnerabilities (04:58) {#usn-6154-1-vim-vulnerabilities--04-58}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-2610](https://ubuntu.com/security/CVE-2023-2610) <!-- medium -->
    -   [CVE-2023-2609](https://ubuntu.com/security/CVE-2023-2609) <!-- medium -->
    -   [CVE-2023-2426](https://ubuntu.com/security/CVE-2023-2426) <!-- medium -->
-   Moar vim CVEs
-   Seems we talk about vim every month or so lately
-   Only a few CVEs per year until 2021 - then 20, 113 for 2022, so far only 15
    for 2023 - is this the sign that the rate of vim CVEs are decreasing?

{{< figure src="/img/vim-cves-by-year.png" caption="<span class=\"figure-number\">Figure 1: </span>Vulnerabilities by year in vim from <https://www.cvedetails.com/product/14270/VIM-VIM.html?vendor_id=8218>" >}}


### [[USN-6155-1](https://ubuntu.com/security/notices/USN-6155-1)] Requests vulnerability (05:56) {#usn-6155-1-requests-vulnerability--05-56}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-32681](https://ubuntu.com/security/CVE-2023-32681) <!-- medium -->
-   Python requests library - leaked Proxy-Authorization headers to the
    destination server when redirected by a HTTPS endpoint


### [[USN-6156-1](https://ubuntu.com/security/notices/USN-6156-1)] SSSD vulnerability (06:11) {#usn-6156-1-sssd-vulnerability--06-11}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-4254](https://ubuntu.com/security/CVE-2022-4254) <!-- medium -->
-   Failed to sanitise certificate attributes before issuing an LDAP search -
    ie. a certificate may contain parenthesis in say the `Subject DN` field - this
    would then be used directly in the query and would be interpreted as
    parameters in the LDAP query - could then allow a malicious client to provide
    a crafted certificate which performs arbitrary LDAP queries etc - such that
    when used in conjunction with FreeIPA they could elevate their privileges


### [[USN-6148-1](https://ubuntu.com/security/notices/USN-6148-1)] SNI Proxy vulnerability (06:54) {#usn-6148-1-sni-proxy-vulnerability--06-54}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-25076](https://ubuntu.com/security/CVE-2023-25076) <!-- high -->
-   Buffer overflow when handling a crafted HTTP packet that specifies an IPv6
    address longer than the maximum possible - since parses it into a fixed size
    buffer


### [[USN-6157-1](https://ubuntu.com/security/notices/USN-6157-1)] GlusterFS vulnerability {#usn-6157-1-glusterfs-vulnerability}

-   1 CVEs addressed in Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-26253](https://ubuntu.com/security/CVE-2023-26253) <!-- medium -->
-   Stack buffer overread - generally protected by stack protector on Ubuntu -
    crash -&gt; DoS


### [[USN-6143-2](https://ubuntu.com/security/notices/USN-6143-2)] Firefox regressions (07:25) {#usn-6143-2-firefox-regressions--07-25}

-   4 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-34415](https://ubuntu.com/security/CVE-2023-34415) <!-- medium -->
    -   [CVE-2023-34417](https://ubuntu.com/security/CVE-2023-34417) <!-- medium -->
    -   [CVE-2023-34416](https://ubuntu.com/security/CVE-2023-34416) <!-- medium -->
    -   [CVE-2023-34414](https://ubuntu.com/security/CVE-2023-34414) <!-- medium -->
-   114.0.1 - crash on startup if on disk metadata is corrupted / invalid - fixed
    to just indicate an error occurred and continue without the data


### [[USN-6158-1](https://ubuntu.com/security/notices/USN-6158-1)] Node Fetch vulnerability (07:45) {#usn-6158-1-node-fetch-vulnerability--07-45}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2022-0235](https://ubuntu.com/security/CVE-2022-0235) <!-- medium -->
-   If redirected to another site, would leak the cookie of the originating site
    to the other - violation of same origin policy


### [[USN-6159-1](https://ubuntu.com/security/notices/USN-6159-1)] Tornado vulnerability (07:59) {#usn-6159-1-tornado-vulnerability--07-59}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Lunar (23.04)
    -   [CVE-2023-28370](https://ubuntu.com/security/CVE-2023-28370) <!-- medium -->
-   Open redirect - allows an attacker to craft a URL to a site that when visited
    will redirect the user to a different arbitrary site - can then be used to
    phish the user


### [[USN-6160-1](https://ubuntu.com/security/notices/USN-6160-1)] GNU binutils vulnerability (08:27) {#usn-6160-1-gnu-binutils-vulnerability--08-27}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-45078](https://ubuntu.com/security/CVE-2021-45078) <!-- low -->
-   Heap based buffer overflow when reading certain debugging information - could
    then possibly get code execution - requires the user to run objdump or similar
    on an attacker controlled binary - in general binutils is expected to only be
    run on trusted inputs - so if you are using objdump etc for reverse
    engineering arbitrary binaries, should do this in an isolated environment - VM


### [[USN-6161-1](https://ubuntu.com/security/notices/USN-6161-1)] .NET vulnerabilities (09:02) {#usn-6161-1-dot-net-vulnerabilities--09-02}

-   5 CVEs addressed in Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-33128](https://ubuntu.com/security/CVE-2023-33128) <!-- medium -->
    -   [CVE-2023-32032](https://ubuntu.com/security/CVE-2023-32032) <!-- medium -->
    -   [CVE-2023-29337](https://ubuntu.com/security/CVE-2023-29337) <!-- medium -->
    -   [CVE-2023-29331](https://ubuntu.com/security/CVE-2023-29331) <!-- medium -->
    -   [CVE-2023-24936](https://ubuntu.com/security/CVE-2023-24936) <!-- medium -->
-   Latest .NET point releases from Microsoft for .NET 6 and 7 fixing various
    issues in the language runtime (not a lot of details provided by MS on these)


### [[USN-6164-1](https://ubuntu.com/security/notices/USN-6164-1)] c-ares vulnerabilities (09:24) {#usn-6164-1-c-ares-vulnerabilities--09-24}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-32067](https://ubuntu.com/security/CVE-2023-32067) <!-- medium -->
    -   [CVE-2023-31130](https://ubuntu.com/security/CVE-2023-31130) <!-- medium -->
-   library for async DNS lookups - used by apt-cacher-ng, frr, wireshark, sssd
    and more
-   Buffer underflow when looking up crafted IPv6 addresses - appears to be able
    to be tricked into writing infront of an allocated buffer - memory corruption
    -&gt; DoS / RCE
-   DoS via an attacker forging a zero length UDP packet in response to a query -
    then cause the resolver to shutdown the "connection" as it sees a 0 byte
    read - however that code path assumes the transport protocol is TCP - this is
    not a valid assumption for UDP as UDP is connectionless


### [[USN-6165-1](https://ubuntu.com/security/notices/USN-6165-1)] GLib vulnerabilities (11:07) {#usn-6165-1-glib-vulnerabilities--11-07}

-   7 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-32665](https://ubuntu.com/security/CVE-2023-32665) <!-- medium -->
    -   [CVE-2023-32643](https://ubuntu.com/security/CVE-2023-32643) <!-- medium -->
    -   [CVE-2023-32636](https://ubuntu.com/security/CVE-2023-32636) <!-- medium -->
    -   [CVE-2023-32611](https://ubuntu.com/security/CVE-2023-32611) <!-- medium -->
    -   [CVE-2023-29499](https://ubuntu.com/security/CVE-2023-29499) <!-- medium -->
    -   [CVE-2023-25180](https://ubuntu.com/security/CVE-2023-25180) <!-- low -->
    -   [CVE-2023-24593](https://ubuntu.com/security/CVE-2023-24593) <!-- low -->
-   Various issues in the handling of GVariants - looks like someone has been
    fuzzing glib - GVariant used for on-the-wire encoding of parameters in DBus
    etc - similar to protobuf's etc


### [[USN-6166-1](https://ubuntu.com/security/notices/USN-6166-1)] libcap2 vulnerabilities (11:35) {#usn-6166-1-libcap2-vulnerabilities--11-35}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-2603](https://ubuntu.com/security/CVE-2023-2603) <!-- medium -->
    -   [CVE-2023-2602](https://ubuntu.com/security/CVE-2023-2602) <!-- low -->
-   DoS via a memory leak through thread creation plus an integer overflow when
    handling really large strings


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Google disables `io_uring` in ChromeOS and their production servers (12:00) {#google-disables-io-uring-in-chromeos-and-their-production-servers--12-00}

-   <https://security.googleblog.com/2023/06/learnings-from-kctf-vrps-42-linux.html>
-   Google runs kCTF as part of the vuln rewards program, offering a bug-bounty /
    monetary rewards for researchers who find exploitable bugs in Google
    Kubernetes Engine (GKE) or the underlying Linux kernel
-   Has paid out $1.8m USD - 60% of submissions exploited `io_uring` - with around
    $1m USD rewarded for `io_uring` submissions alone - and `io_uring` was used in all
    submissions which bypassed their mitigations
    -   followed by net and then fs subsystems
    -   clearly is a target rich environment
-   As such, disabled `io_uring` in ChromeOS (was originally enabled back in
    November 2022 to increase performance of their `arcvm` which is used to run
    Android apps on ChromeOS) but then now [disabled](https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/4228112) 4 months later in Feb this
    year
-   Use seccomp-bpf to block access to `io_uring` to Android applications and in the
    future will also use SELinux to restrict access even further to only select
    system processes
-   Will likely disable it also on GKE AutoPilot - where Google manages the config
    of your GKE Kubernetes cluster
-   And have disabled `io_uring` on their production servers
-   Essentially due to the newness of `io_uring` and ongoing development of features
    for it, it presents too much of a risk for use by untrusted applications etc


### Andrei discusses Fuzzing Configurations of Program Options (15:06) {#andrei-discusses-fuzzing-configurations-of-program-options--15-06}

-   <https://doi.org/10.1145/3580597>
-   <https://google.github.io/fuzzbench/>
-   <https://github.com/google/AFL>
-   <https://github.com/AFLplusplus/AFLplusplus>
-   <https://llvm.org/docs/CommandGuide/llvm-cov.html>
-   <https://github.com/google/AFL/tree/master/experimental/argv_fuzzing>
-   <https://github.com/AFLplusplus/AFLplusplus/tree/stable/utils/argv_fuzzing>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
