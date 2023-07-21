+++
title = "Episode 203"
description = """
  This week we talk about the dual use purposes of eBPF - both for security and
  for exploitation, and how you can keep your systems safe, plus we cover security
  updates for the Linux kernel, Ruby, SciPy, YAJL, ConnMan, curl and more.
  """
date = 2023-07-21T21:00:00+09:30
lastmod = 2023-07-21T21:00:57+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E203.mp3"
podcast_duration = 1041
podcast_bytes = 17897341
permalink = "https://ubuntusecuritypodcast.org/episode-203/"
guid = "7a671e54618a1dd997f5b93728f9da08b745ec498376028a83fb6c0e7443b528d9ad1c756610cfd6cb23c638fbc2dd6ebd9ba238b7f3466c2d88001ce9f12b44"
+++

## Overview {#overview}

This week we talk about the dual use purposes of eBPF - both for security and
for exploitation, and how you can keep your systems safe, plus we cover security
updates for the Linux kernel, Ruby, SciPy, YAJL, ConnMan, curl and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

80 unique CVEs addressed


### [[USN-6220-1](https://ubuntu.com/security/notices/USN-6220-1)] Linux kernel vulnerabilities (00:50) {#usn-6220-1-linux-kernel-vulnerabilities--00-50}

-   1 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-35788](https://ubuntu.com/security/CVE-2023-35788) <!-- high -->
-   6.2 gcp, ibm, azure, oracle
-   [[USN-6192-1] Linux kernel vulnerabilities for Episode 202]({{< relref "episode-202#usn-6192-1-linux-kernel-vulnerabilities--03-10" >}})
    -   Off-by-one in the flower network traffic classifier
    -   info leak via stale page table entries (INVLPG)


### [[USN-6234-1](https://ubuntu.com/security/notices/USN-6234-1)] Linux kernel (Xilinx ZynqMP) vulnerability (01:20) {#usn-6234-1-linux-kernel--xilinx-zynqmp--vulnerability--01-20}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-35788](https://ubuntu.com/security/CVE-2023-35788) <!-- high -->
-   5.4 Xilinux ZynqMP platform


### [[USN-6221-1](https://ubuntu.com/security/notices/USN-6221-1)] Linux kernel vulnerabilities (01:32) {#usn-6221-1-linux-kernel-vulnerabilities--01-32}

-   7 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2023-3111](https://ubuntu.com/security/CVE-2023-3111) <!-- medium -->
    -   [CVE-2023-1990](https://ubuntu.com/security/CVE-2023-1990) <!-- low -->
    -   [CVE-2022-29901](https://ubuntu.com/security/CVE-2022-29901) <!-- medium -->
    -   [CVE-2022-26373](https://ubuntu.com/security/CVE-2022-26373) <!-- medium -->
    -   [CVE-2022-1184](https://ubuntu.com/security/CVE-2022-1184) <!-- medium -->
    -   [CVE-2021-3753](https://ubuntu.com/security/CVE-2021-3753) <!-- medium -->
    -   [CVE-2021-20321](https://ubuntu.com/security/CVE-2021-20321) <!-- medium -->
-   4.4 Xenial ESM, Trusty ESM LTS Xenial
    -   AWS, KVM, Generic, Low latency


### [[USN-6222-1](https://ubuntu.com/security/notices/USN-6222-1)] Linux kernel (Xilinx ZynqMP) vulnerabilities (02:13) {#usn-6222-1-linux-kernel--xilinx-zynqmp--vulnerabilities--02-13}

-   31 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-32233](https://ubuntu.com/security/CVE-2023-32233) <!-- high -->
    -   [CVE-2023-3161](https://ubuntu.com/security/CVE-2023-3161) <!-- medium -->
    -   [CVE-2023-31436](https://ubuntu.com/security/CVE-2023-31436) <!-- high -->
    -   [CVE-2023-30456](https://ubuntu.com/security/CVE-2023-30456) <!-- high -->
    -   [CVE-2023-2985](https://ubuntu.com/security/CVE-2023-2985) <!-- medium -->
    -   [CVE-2023-26545](https://ubuntu.com/security/CVE-2023-26545) <!-- medium -->
    -   [CVE-2023-2612](https://ubuntu.com/security/CVE-2023-2612) <!-- medium -->
    -   [CVE-2023-25012](https://ubuntu.com/security/CVE-2023-25012) <!-- low -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-1998](https://ubuntu.com/security/CVE-2023-1998) <!-- medium -->
    -   [CVE-2023-1859](https://ubuntu.com/security/CVE-2023-1859) <!-- medium -->
    -   [CVE-2023-1829](https://ubuntu.com/security/CVE-2023-1829) <!-- high -->
    -   [CVE-2023-1670](https://ubuntu.com/security/CVE-2023-1670) <!-- low -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-1380](https://ubuntu.com/security/CVE-2023-1380) <!-- high -->
    -   [CVE-2023-1281](https://ubuntu.com/security/CVE-2023-1281) <!-- high -->
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-1079](https://ubuntu.com/security/CVE-2023-1079) <!-- low -->
    -   [CVE-2023-1078](https://ubuntu.com/security/CVE-2023-1078) <!-- medium -->
    -   [CVE-2023-1077](https://ubuntu.com/security/CVE-2023-1077) <!-- medium -->
    -   [CVE-2023-1076](https://ubuntu.com/security/CVE-2023-1076) <!-- medium -->
    -   [CVE-2023-1075](https://ubuntu.com/security/CVE-2023-1075) <!-- medium -->
    -   [CVE-2023-1074](https://ubuntu.com/security/CVE-2023-1074) <!-- medium -->
    -   [CVE-2023-1073](https://ubuntu.com/security/CVE-2023-1073) <!-- medium -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
    -   [CVE-2023-0458](https://ubuntu.com/security/CVE-2023-0458) <!-- medium -->
    -   [CVE-2022-4129](https://ubuntu.com/security/CVE-2022-4129) <!-- medium -->
    -   [CVE-2022-3903](https://ubuntu.com/security/CVE-2022-3903) <!-- low -->
    -   [CVE-2022-3707](https://ubuntu.com/security/CVE-2022-3707) <!-- medium -->
    -   [CVE-2022-3108](https://ubuntu.com/security/CVE-2022-3108) <!-- medium -->


### [[USN-6223-1](https://ubuntu.com/security/notices/USN-6223-1)] Linux kernel (Azure CVM) vulnerabilities (02:25) {#usn-6223-1-linux-kernel--azure-cvm--vulnerabilities--02-25}

-   9 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-35788](https://ubuntu.com/security/CVE-2023-35788) <!-- high -->
    -   [CVE-2023-2985](https://ubuntu.com/security/CVE-2023-2985) <!-- medium -->
    -   [CVE-2023-25012](https://ubuntu.com/security/CVE-2023-25012) <!-- low -->
    -   [CVE-2023-1998](https://ubuntu.com/security/CVE-2023-1998) <!-- medium -->
    -   [CVE-2023-1859](https://ubuntu.com/security/CVE-2023-1859) <!-- medium -->
    -   [CVE-2023-1670](https://ubuntu.com/security/CVE-2023-1670) <!-- low -->
    -   [CVE-2023-1079](https://ubuntu.com/security/CVE-2023-1079) <!-- low -->
    -   [CVE-2023-1077](https://ubuntu.com/security/CVE-2023-1077) <!-- medium -->
    -   [CVE-2023-1076](https://ubuntu.com/security/CVE-2023-1076) <!-- medium -->


### [[USN-6224-1](https://ubuntu.com/security/notices/USN-6224-1), [USN-6228-1](https://ubuntu.com/security/notices/USN-6228-1)] Linux kernel vulnerabilities (02:36) {#usn-6224-1-usn-6228-1-linux-kernel-vulnerabilities--02-36}

-   2 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-2176](https://ubuntu.com/security/CVE-2023-2176) <!-- medium -->
    -   [CVE-2023-2124](https://ubuntu.com/security/CVE-2023-2124) <!-- low -->
-   6.2 Oracle, Azure, GCP, IBM, Raspi, AWS, KVM, Low latency


### [[USN-6231-1](https://ubuntu.com/security/notices/USN-6231-1)] Linux kernel (OEM) vulnerabilities (02:53) {#usn-6231-1-linux-kernel--oem--vulnerabilities--02-53}

-   5 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-3212](https://ubuntu.com/security/CVE-2023-3212) <!-- low -->
    -   [CVE-2023-3141](https://ubuntu.com/security/CVE-2023-3141) <!-- low -->
    -   [CVE-2023-31084](https://ubuntu.com/security/CVE-2023-31084) <!-- low -->
    -   [CVE-2023-3090](https://ubuntu.com/security/CVE-2023-3090) <!-- high -->
    -   [CVE-2023-2124](https://ubuntu.com/security/CVE-2023-2124) <!-- low -->
-   6.1 OEM
-   OOB write due to uninitialized memory in packet control buffer for IP-VLAN
    network driver


### [[USN-6235-1](https://ubuntu.com/security/notices/USN-6235-1)] Linux kernel (OEM) vulnerabilities (03:17) {#usn-6235-1-linux-kernel--oem--vulnerabilities--03-17}

-   8 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-35788](https://ubuntu.com/security/CVE-2023-35788) <!-- high -->
    -   [CVE-2023-2430](https://ubuntu.com/security/CVE-2023-2430) <!-- high -->
    -   [CVE-2023-2176](https://ubuntu.com/security/CVE-2023-2176) <!-- medium -->
    -   [CVE-2023-2124](https://ubuntu.com/security/CVE-2023-2124) <!-- low -->
    -   [CVE-2023-1073](https://ubuntu.com/security/CVE-2023-1073) <!-- medium -->
    -   [CVE-2023-0597](https://ubuntu.com/security/CVE-2023-0597) <!-- medium -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
    -   [CVE-2022-4842](https://ubuntu.com/security/CVE-2022-4842) <!-- medium -->
-   6.0 OEM
-   Flower, missing lock in `io_uring`
    -   [[USN-6192-1] Linux kernel vulnerabilities from Episode 202]({{< relref "episode-202#usn-6192-1-linux-kernel-vulnerabilities--03-10" >}})


### [[USN-6219-1](https://ubuntu.com/security/notices/USN-6219-1)] Ruby vulnerabilities (03:32) {#usn-6219-1-ruby-vulnerabilities--03-32}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-36617](https://ubuntu.com/security/CVE-2023-36617) <!-- medium -->
    -   [CVE-2023-28755](https://ubuntu.com/security/CVE-2023-28755) <!-- medium -->
-   ReDoS in URI parser - only one issue really but fix for first was incomplete


### [[USN-6216-1](https://ubuntu.com/security/notices/USN-6216-1)] lib3mf vulnerability (04:09) {#usn-6216-1-lib3mf-vulnerability--04-09}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-21772](https://ubuntu.com/security/CVE-2021-21772) <!-- medium -->
-   UAF


### [[USN-6225-1](https://ubuntu.com/security/notices/USN-6225-1)] Knot Resolver vulnerability (04:14) {#usn-6225-1-knot-resolver-vulnerability--04-14}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-40188](https://ubuntu.com/security/CVE-2022-40188) <!-- medium -->
-   CPU-based DoS due to high algorithmic complexity - requires an authoritative
    server to return large address sets - fixed by adding a limit to various lookups etc


### [[USN-6226-1](https://ubuntu.com/security/notices/USN-6226-1)] SciPy vulnerabilities (04:45) {#usn-6226-1-scipy-vulnerabilities--04-45}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-29824](https://ubuntu.com/security/CVE-2023-29824) <!-- medium -->
    -   [CVE-2023-25399](https://ubuntu.com/security/CVE-2023-25399) <!-- medium -->
-   2 issues in reference count handling - both appear to be disputed by
    upstream - first, as it would only be able to triggered by first
    deterministicly exhausting memory, the other since the only way to trigger it
    would be to first be able to execute arbitrary Python code. Both were reported
    by the same user who discovered them via static analysis


### [[USN-6227-1](https://ubuntu.com/security/notices/USN-6227-1)] SpiderMonkey vulnerabilities (05:47) {#usn-6227-1-spidermonkey-vulnerabilities--05-47}

-   2 CVEs addressed in Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-37211](https://ubuntu.com/security/CVE-2023-37211) <!-- medium -->
    -   [CVE-2023-37202](https://ubuntu.com/security/CVE-2023-37202) <!-- medium -->
-   mozjs102 (102.13.0) - memory mishandling in JS engine


### [[USN-6229-1](https://ubuntu.com/security/notices/USN-6229-1)] LibTIFF vulnerabilities (06:00) {#usn-6229-1-libtiff-vulnerabilities--06-00}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-3316](https://ubuntu.com/security/CVE-2023-3316) <!-- low -->
    -   [CVE-2023-26966](https://ubuntu.com/security/CVE-2023-26966) <!-- medium -->
    -   [CVE-2023-26965](https://ubuntu.com/security/CVE-2023-26965) <!-- low -->
    -   [CVE-2023-25433](https://ubuntu.com/security/CVE-2023-25433) <!-- medium -->
-   2 heap buffer overflows, one OOB read, one NULL ptr deref


### [[USN-6230-1](https://ubuntu.com/security/notices/USN-6230-1)] PostgreSQL vulnerability (06:24) {#usn-6230-1-postgresql-vulnerability--06-24}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-2454](https://ubuntu.com/security/CVE-2023-2454) <!-- medium -->
-   [[USN-6104-1] PostgreSQL vulnerabilities from Episode 197]({{< relref "episode-197#usn-6104-1-postgresql-vulnerabilities--00-55" >}})


### [[USN-6184-2](https://ubuntu.com/security/notices/USN-6184-2)] CUPS vulnerability (06:34) {#usn-6184-2-cups-vulnerability--06-34}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-34241](https://ubuntu.com/security/CVE-2023-34241) <!-- medium -->
-   [[USN-6184-1] CUPS vulnerability from Episode 201]({{< relref "episode-201#usn-6184-1-cups-vulnerability--03-55" >}})


### [[USN-6078-2](https://ubuntu.com/security/notices/USN-6078-2)] libwebp vulnerability (06:43) {#usn-6078-2-libwebp-vulnerability--06-43}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-1999](https://ubuntu.com/security/CVE-2023-1999) <!-- medium -->
-   [[USN-6078-1] libwebp vulnerability from Episode 195]({{< relref "episode-195#usn-6078-1-libwebp-vulnerability--06-38" >}})


### [[USN-6183-2](https://ubuntu.com/security/notices/USN-6183-2)] Bind vulnerability (06:46) {#usn-6183-2-bind-vulnerability--06-46}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-2911](https://ubuntu.com/security/CVE-2023-2911) <!-- medium -->
    -   [CVE-2023-2828](https://ubuntu.com/security/CVE-2023-2828) <!-- medium -->
-   [[USN-6183-1] Bind vulnerabilities from Episode 201]({{< relref "episode-201#usn-6183-1-bind-vulnerabilities--00-53" >}})


### [[USN-6233-1](https://ubuntu.com/security/notices/USN-6233-1)] YAJL vulnerabilities (06:56) {#usn-6233-1-yajl-vulnerabilities--06-56}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-33460](https://ubuntu.com/security/CVE-2023-33460) <!-- low -->
    -   [CVE-2022-24795](https://ubuntu.com/security/CVE-2022-24795) <!-- medium -->
    -   [CVE-2017-16516](https://ubuntu.com/security/CVE-2017-16516) <!-- low -->
-   Yet Another JSON library - used by i3, mpd, uwsgi, modsecurity, libvirt and others
-   Memory leak, buffer overflow on unicode parsing, integer overflow -&gt; heap
    buffer overflow when handling inputs larger than 2GB


### [[USN-6236-1](https://ubuntu.com/security/notices/USN-6236-1)] ConnMan vulnerabilities (07:33) {#usn-6236-1-connman-vulnerabilities--07-33}

-   9 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-28488](https://ubuntu.com/security/CVE-2023-28488) <!-- medium -->
    -   [CVE-2022-32293](https://ubuntu.com/security/CVE-2022-32293) <!-- medium -->
    -   [CVE-2022-32292](https://ubuntu.com/security/CVE-2022-32292) <!-- medium -->
    -   [CVE-2022-23098](https://ubuntu.com/security/CVE-2022-23098) <!-- medium -->
    -   [CVE-2022-23097](https://ubuntu.com/security/CVE-2022-23097) <!-- medium -->
    -   [CVE-2022-23096](https://ubuntu.com/security/CVE-2022-23096) <!-- medium -->
    -   [CVE-2021-26676](https://ubuntu.com/security/CVE-2021-26676) <!-- medium -->
    -   [CVE-2021-33833](https://ubuntu.com/security/CVE-2021-33833) <!-- medium -->
    -   [CVE-2021-26675](https://ubuntu.com/security/CVE-2021-26675) <!-- medium -->
-   a number of issues in internal gdhcp client - stack buffer overflow, OOB read
    (info leak) - requires an attacker to run a malicious DHCP server - think
    public wifi etc
-   UAF in WISPR HTTP handling (MiTM)
-   Heap buffer overflow gweb component - RCE
-   2 different OOB read in DNS proxy component - crash / info leak
-   Also an infinite loop in DNS proxy


### [[USN-6237-1](https://ubuntu.com/security/notices/USN-6237-1)] curl vulnerabilities (08:45) {#usn-6237-1-curl-vulnerabilities--08-45}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-32001](https://ubuntu.com/security/CVE-2023-32001) <!-- medium -->
    -   [CVE-2023-28322](https://ubuntu.com/security/CVE-2023-28322) <!-- low -->
    -   [CVE-2023-28321](https://ubuntu.com/security/CVE-2023-28321) <!-- low -->
-   Improperly matched wildcard patterns when doing certificate validation - in
    particular could match a punycode-encoded IDN against an ascii wildcard of `x*`
    as punycode names always start with `xn--`
-   Logic error where would use the read callback to ask a remote client to ask
    for data to send even if the same handle had been used previously for a PUT
    request - unexpected behaviour for applications using curl, so could result in
    potentially sending the wrong data (info leak) or a UAF etc.
-   Race condition on fopen() - used to save cookies etc to files - would first
    check that file is a real file before opening - local attacker could race to
    say replace it with a symlink instead to then get cookies written to a
    different file etc.


## The dual use of eBPF as both a tool for malware and a tool for detecting malware (10:34) {#the-dual-use-of-ebpf-as-both-a-tool-for-malware-and-a-tool-for-detecting-malware--10-34}

-   Interesting write-up on the use of eBPF by malware authors for hooking into
    libpam to steal credentials
    -   <https://blog.aquasec.com/detecting-ebpf-malware-with-tracee>
-   [pamspy](https://github.com/citronneur/pamspy) - uses eBPF uprobes - way of hooking into userspace functions from the
    kernel using user-level return probe
-   requires to be root in the first place to be able to create a uretprobe
    through `/sys/kernel/debug/tracing/uprobe_events` but once done, allows to then
    have a BPF program executed every time the specified function within a
    specified library / binary is executed - so by hooking libpam can then log the
    credentials used by any user when logging in / authenticating for sudo etc.
-   More traditional approach would have been to use say `LD_PRELOAD` to hook into
    the functions - but this requires that binaries get executed with this
    environment set so is harder to achieve
-   But uretprobes have their own problems - implementation is based on
    breakpoints so potentially be detected by the program which is being traced by
    examining its own code (`.text` section) to look for breakpoint opcode (`0xCC`) or
    it could look for the special memory mapping `[uprobes]` in `/proc/self/maps`
    -   <https://blog.quarkslab.com/defeating-ebpf-uprobe-monitoring.html>
-   Potentially more easy to find that they are being used on a system as well by
    just looking at the contents of `/sys/kernel/debug/tracing/uprobe_events` -
    which lists all the uretprobes currently in use on the system
-   Interesting to see that (not surprisingly) each new technology can be used in
    multiple ways - BPF+uprobes is a great way to do tracing of userspace code for
    developers / sysadmins etc when debugging - but is also a great way for
    malware authors to do the same
-   Also interesting to see the aquasec team mention the use of eBPF for system
    monitoring / instrumentation to detect malware - ie. using an eBPF program to
    detect malicious use of eBPF
    -   but perhaps the best solution is to disable the use of eBPF by unprivileged
        / untrusted users and use seccomp or similar (via systemd units) to restrict
        the use of eBPF to only those applications which really need it
    -   then the only way for malware to use eBPF would be to compromise something
        which already has access to eBPF - ie. the kernel itself or a privileged
        process - ie. reducing the attack surface


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
