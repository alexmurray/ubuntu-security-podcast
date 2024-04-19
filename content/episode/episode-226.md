+++
title = "Episode 226"
description = """
  John and Georgia are at the Linux Security Summit presenting on some long
  awaited developments in AppArmor and we give you all the details in a sneak peek
  preview as well as some of the other talks to look out for, plus we cover
  security updates for NSS, Squid, Apache, libvirt and more and we put out a call
  for testing of a pending AppArmor security fix too.
  """
date = 2024-04-19T16:45:00+09:30
lastmod = 2024-04-19T16:49:48+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E226.mp3"
podcast_duration = 1439
podcast_bytes = 24772081
permalink = "https://ubuntusecuritypodcast.org/episode-226/"
guid = "10f17d09cebded4973031faf11b1b7c26cde4b8e16154b16825840b98e9fef85b9c0ca60e75ee0fbe91c55963e78bcbe7ec32d61ca69ccd333f986d8e34010d3"
+++

## Overview {#overview}

John and Georgia are at the Linux Security Summit presenting on some long
awaited developments in AppArmor and we give you all the details in a sneak peek
preview as well as some of the other talks to look out for, plus we cover
security updates for NSS, Squid, Apache, libvirt and more and we put out a call
for testing of a pending AppArmor security fix too.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

86 unique CVEs addressed


### [[USN-6727-1](https://ubuntu.com/security/notices/USN-6727-1), [USN-6727-2](https://ubuntu.com/security/notices/USN-6727-2)] NSS vulnerabilities + regression (01:02) {#usn-6727-1-usn-6727-2-nss-vulnerabilities-plus-regression--01-02}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-6135](https://ubuntu.com/security/CVE-2023-6135) <!-- medium -->
    -   [CVE-2023-5388](https://ubuntu.com/security/CVE-2023-5388) <!-- medium -->
    -   [CVE-2023-4421](https://ubuntu.com/security/CVE-2023-4421) <!-- medium -->
-   All various different timing side channels - two were effectively the same
    since the original fix was incomplete - mishandling of padding in PKCS#1 (RSA)
    certificate checks - possible to infer the length of the encrypted message and
    other properties to eventually infer secret key by sending a large number of
    attacker-chosen ciphertexts, the other when using various NIST
    curves (elliptic curve cryptography)
-   Original fix caused some issues with loading NSS security modules so published
    a second update to fix that on focal+jammy


### [[USN-6728-1](https://ubuntu.com/security/notices/USN-6728-1), [USN-6728-2](https://ubuntu.com/security/notices/USN-6728-2)] Squid vulnerabilities + regression (02:05) {#usn-6728-1-usn-6728-2-squid-vulnerabilities-plus-regression--02-05}

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-25617](https://ubuntu.com/security/CVE-2024-25617) <!-- medium -->
    -   [CVE-2024-25111](https://ubuntu.com/security/CVE-2024-25111) <!-- medium -->
    -   [CVE-2024-23638](https://ubuntu.com/security/CVE-2024-23638) <!-- medium -->
    -   [CVE-2023-5824](https://ubuntu.com/security/CVE-2023-5824) <!-- medium -->
    -   [CVE-2023-49288](https://ubuntu.com/security/CVE-2023-49288) <!-- medium -->
-   All found by the same researcher (Joshua Rogers) who performed a security
    audit of Squid back in 2021 -
    <https://megamansec.github.io/Squid-Security-Audit/> - first mentioned by us in
    [[USN-6500-1] Squid vulnerabilities in Episode
    214]({{< relref "episode-214#usn-6500-1-squid-vulnerabilities--10-20" >}}) back in December 2023
-   Then we mentioned how squid was under-resourced and so hadn't be able to fix
    all the identified issues - over time upstream has published fixes for more
    issues and we are now incorporating those into squid in Ubuntu
-   All of these were various DoS issues where could either cause squid to crash
    or stop responding
-   One of these fixes was problematic and caused squid to crash itself so was reverted


### [[USN-6729-1](https://ubuntu.com/security/notices/USN-6729-1)] Apache HTTP Server vulnerabilities (03:01) {#usn-6729-1-apache-http-server-vulnerabilities--03-01}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-27316](https://ubuntu.com/security/CVE-2024-27316) <!-- medium -->
    -   [CVE-2024-24795](https://ubuntu.com/security/CVE-2024-24795) <!-- medium -->
    -   [CVE-2023-38709](https://ubuntu.com/security/CVE-2023-38709) <!-- medium -->
-   2 different issues that could result in HTTP request splitting attacks -
    similar to HTTP request smuggling which is a more specific version of this
    attack, relies on different parsing/interpretation of HTTP request messages by
    an intermediate (load balancer/proxy/WAF etc.) to split a single HTTP request
    into multiple HTTP requests at the backend - allowing to bypass restrictions
    along the way - usually involves the use of injected CR/LF/TAB/SPC etc in
    headers
-   Plus memory-based DoS in handling of HTTP/2 - client could just keep sending
    more headers, buffered by the server so it can generate an informative
    response, until it exhausts memory
    -   limit to just 100 headers before bailing with such an error


### [[USN-6730-1](https://ubuntu.com/security/notices/USN-6730-1)] Apache Maven Shared Utils vulnerability {#usn-6730-1-apache-maven-shared-utils-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-29599](https://ubuntu.com/security/CVE-2022-29599) <!-- medium -->


### [[USN-6731-1](https://ubuntu.com/security/notices/USN-6731-1)] YARD vulnerabilities {#usn-6731-1-yard-vulnerabilities}

-   3 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-27285](https://ubuntu.com/security/CVE-2024-27285) <!-- medium -->
    -   [CVE-2019-1020001](https://ubuntu.com/security/CVE-2019-1020001) <!-- medium -->
    -   [CVE-2017-17042](https://ubuntu.com/security/CVE-2017-17042) <!-- medium -->


### [[USN-6732-1](https://ubuntu.com/security/notices/USN-6732-1)] WebKitGTK vulnerabilities {#usn-6732-1-webkitgtk-vulnerabilities}

-   8 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-23284](https://ubuntu.com/security/CVE-2024-23284) <!-- medium -->
    -   [CVE-2024-23280](https://ubuntu.com/security/CVE-2024-23280) <!-- medium -->
    -   [CVE-2024-23263](https://ubuntu.com/security/CVE-2024-23263) <!-- medium -->
    -   [CVE-2024-23254](https://ubuntu.com/security/CVE-2024-23254) <!-- medium -->
    -   [CVE-2024-23252](https://ubuntu.com/security/CVE-2024-23252) <!-- medium -->
    -   [CVE-2023-42956](https://ubuntu.com/security/CVE-2023-42956) <!-- medium -->
    -   [CVE-2023-42950](https://ubuntu.com/security/CVE-2023-42950) <!-- medium -->
    -   [CVE-2023-42843](https://ubuntu.com/security/CVE-2023-42843) <!-- medium -->


### [[USN-6733-1](https://ubuntu.com/security/notices/USN-6733-1)] GnuTLS vulnerabilities (04:57) {#usn-6733-1-gnutls-vulnerabilities--04-57}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-28835](https://ubuntu.com/security/CVE-2024-28835) <!-- medium -->
    -   [CVE-2024-28834](https://ubuntu.com/security/CVE-2024-28834) <!-- medium -->
-   Timing side-channel in ECDSA
-   Crash when verifying crafted PEM bundles -&gt; DoS


### [[USN-6734-1](https://ubuntu.com/security/notices/USN-6734-1)] libvirt vulnerabilities (05:13) {#usn-6734-1-libvirt-vulnerabilities--05-13}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-2496](https://ubuntu.com/security/CVE-2024-2496) <!-- medium -->
    -   [CVE-2024-2494](https://ubuntu.com/security/CVE-2024-2494) <!-- medium -->
    -   [CVE-2024-1441](https://ubuntu.com/security/CVE-2024-1441) <!-- medium -->
-   off-by-one in handling of udev interface names - unpriv client could then
    abuse this to send crafted udev data to the libvirt daemon, triggering a crash -&gt; DoS
-   NULL ptr deref in same code - race condition, need to detach a host interface
    whilst calling into the function
-   Crash in RPC handling - pass a negative length value, would then try and
    allocate a negative number of array indices - uses underlying `g_new0()` from
    [glib](https://developer-old.gnome.org/glib/stable/glib-Memory-Allocation.html#g-new0) which expects an unsigned value -&gt; tries to allocate an extremely large
    amount of memory -&gt; crash


### [[USN-6735-1](https://ubuntu.com/security/notices/USN-6735-1)] Node.js vulnerabilities {#usn-6735-1-node-dot-js-vulnerabilities}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-30590](https://ubuntu.com/security/CVE-2023-30590) <!-- medium -->
    -   [CVE-2023-30589](https://ubuntu.com/security/CVE-2023-30589) <!-- medium -->
    -   [CVE-2023-30588](https://ubuntu.com/security/CVE-2023-30588) <!-- medium -->


### [[USN-6736-1](https://ubuntu.com/security/notices/USN-6736-1)] klibc vulnerabilities (06:33) {#usn-6736-1-klibc-vulnerabilities--06-33}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2022-37434](https://ubuntu.com/security/CVE-2022-37434) <!-- medium -->
    -   [CVE-2018-25032](https://ubuntu.com/security/CVE-2018-25032) <!-- medium -->
    -   [CVE-2016-9841](https://ubuntu.com/security/CVE-2016-9841) <!-- low -->
    -   [CVE-2016-9840](https://ubuntu.com/security/CVE-2016-9840) <!-- low -->
-   All old memory corruption issues in zlib - vendored within klibc


### [[USN-6724-2](https://ubuntu.com/security/notices/USN-6724-2)] Linux kernel vulnerabilities {#usn-6724-2-linux-kernel-vulnerabilities}

-   12 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-52438](https://ubuntu.com/security/CVE-2023-52438) <!-- medium -->
    -   [CVE-2023-52439](https://ubuntu.com/security/CVE-2023-52439) <!-- medium -->
    -   [CVE-2023-52435](https://ubuntu.com/security/CVE-2023-52435) <!-- medium -->
    -   [CVE-2023-52436](https://ubuntu.com/security/CVE-2023-52436) <!-- medium -->
    -   [CVE-2023-52434](https://ubuntu.com/security/CVE-2023-52434) <!-- medium -->
    -   [CVE-2024-23850](https://ubuntu.com/security/CVE-2024-23850) <!-- medium -->
    -   [CVE-2024-22705](https://ubuntu.com/security/CVE-2024-22705) <!-- medium -->
    -   [CVE-2023-6610](https://ubuntu.com/security/CVE-2023-6610) <!-- medium -->
    -   [CVE-2024-23851](https://ubuntu.com/security/CVE-2024-23851) <!-- low -->
    -   [CVE-2023-52429](https://ubuntu.com/security/CVE-2023-52429) <!-- low -->
    -   [CVE-2023-50431](https://ubuntu.com/security/CVE-2023-50431) <!-- medium -->
    -   [CVE-2023-46838](https://ubuntu.com/security/CVE-2023-46838) <!-- medium -->


### [[USN-6725-2](https://ubuntu.com/security/notices/USN-6725-2)] Linux kernel (AWS) vulnerabilities {#usn-6725-2-linux-kernel--aws--vulnerabilities}

-   46 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-52470](https://ubuntu.com/security/CVE-2023-52470) <!-- low -->
    -   [CVE-2023-52469](https://ubuntu.com/security/CVE-2023-52469) <!-- low -->
    -   [CVE-2023-52451](https://ubuntu.com/security/CVE-2023-52451) <!-- medium -->
    -   [CVE-2023-52610](https://ubuntu.com/security/CVE-2023-52610) <!-- medium -->
    -   [CVE-2023-52441](https://ubuntu.com/security/CVE-2023-52441) <!-- medium -->
    -   [CVE-2023-52467](https://ubuntu.com/security/CVE-2023-52467) <!-- low -->
    -   [CVE-2023-52449](https://ubuntu.com/security/CVE-2023-52449) <!-- medium -->
    -   [CVE-2024-26591](https://ubuntu.com/security/CVE-2024-26591) <!-- medium -->
    -   [CVE-2023-52458](https://ubuntu.com/security/CVE-2023-52458) <!-- medium -->
    -   [CVE-2024-26597](https://ubuntu.com/security/CVE-2024-26597) <!-- high -->
    -   [CVE-2024-26633](https://ubuntu.com/security/CVE-2024-26633) <!-- medium -->
    -   [CVE-2023-52436](https://ubuntu.com/security/CVE-2023-52436) <!-- medium -->
    -   [CVE-2023-52444](https://ubuntu.com/security/CVE-2023-52444) <!-- medium -->
    -   [CVE-2024-26589](https://ubuntu.com/security/CVE-2024-26589) <!-- medium -->
    -   [CVE-2024-26586](https://ubuntu.com/security/CVE-2024-26586) <!-- medium -->
    -   [CVE-2024-26598](https://ubuntu.com/security/CVE-2024-26598) <!-- medium -->
    -   [CVE-2023-52612](https://ubuntu.com/security/CVE-2023-52612) <!-- medium -->
    -   [CVE-2023-52439](https://ubuntu.com/security/CVE-2023-52439) <!-- medium -->
    -   [CVE-2024-26631](https://ubuntu.com/security/CVE-2024-26631) <!-- medium -->
    -   [CVE-2023-52442](https://ubuntu.com/security/CVE-2023-52442) <!-- medium -->
    -   [CVE-2023-52443](https://ubuntu.com/security/CVE-2023-52443) <!-- medium -->
    -   [CVE-2023-52480](https://ubuntu.com/security/CVE-2023-52480) <!-- medium -->
    -   [CVE-2023-52438](https://ubuntu.com/security/CVE-2023-52438) <!-- medium -->
    -   [CVE-2023-52454](https://ubuntu.com/security/CVE-2023-52454) <!-- medium -->
    -   [CVE-2023-52456](https://ubuntu.com/security/CVE-2023-52456) <!-- medium -->
    -   [CVE-2023-52464](https://ubuntu.com/security/CVE-2023-52464) <!-- medium -->
    -   [CVE-2023-52457](https://ubuntu.com/security/CVE-2023-52457) <!-- medium -->
    -   [CVE-2023-52448](https://ubuntu.com/security/CVE-2023-52448) <!-- medium -->
    -   [CVE-2023-52609](https://ubuntu.com/security/CVE-2023-52609) <!-- medium -->
    -   [CVE-2023-52462](https://ubuntu.com/security/CVE-2023-52462) <!-- medium -->
    -   [CVE-2023-52445](https://ubuntu.com/security/CVE-2023-52445) <!-- medium -->
    -   [CVE-2023-52463](https://ubuntu.com/security/CVE-2023-52463) <!-- medium -->
    -   [CVE-2024-24860](https://ubuntu.com/security/CVE-2024-24860) <!-- low -->
    -   [CVE-2024-23850](https://ubuntu.com/security/CVE-2024-23850) <!-- medium -->
    -   [CVE-2024-22705](https://ubuntu.com/security/CVE-2024-22705) <!-- medium -->
    -   [CVE-2024-23851](https://ubuntu.com/security/CVE-2024-23851) <!-- low -->
    -   [CVE-2023-52429](https://ubuntu.com/security/CVE-2023-52429) <!-- low -->
    -   [CVE-2023-52340](https://ubuntu.com/security/CVE-2023-52340) <!-- medium -->
    -   [CVE-2023-46838](https://ubuntu.com/security/CVE-2023-46838) <!-- medium -->
    -   [CVE-2023-3867](https://ubuntu.com/security/CVE-2023-3867) <!-- medium -->
    -   [CVE-2023-38431](https://ubuntu.com/security/CVE-2023-38431) <!-- medium -->
    -   [CVE-2023-38430](https://ubuntu.com/security/CVE-2023-38430) <!-- medium -->
    -   [CVE-2023-38427](https://ubuntu.com/security/CVE-2023-38427) <!-- medium -->
    -   [CVE-2023-32258](https://ubuntu.com/security/CVE-2023-32258) <!-- medium -->
    -   [CVE-2023-32254](https://ubuntu.com/security/CVE-2023-32254) <!-- medium -->
    -   [CVE-2023-1194](https://ubuntu.com/security/CVE-2023-1194) <!-- medium -->


### [[USN-6726-2](https://ubuntu.com/security/notices/USN-6726-2)] Linux kernel (IoT) vulnerabilities {#usn-6726-2-linux-kernel--iot--vulnerabilities}

-   23 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-52438](https://ubuntu.com/security/CVE-2023-52438) <!-- medium -->
    -   [CVE-2023-52436](https://ubuntu.com/security/CVE-2023-52436) <!-- medium -->
    -   [CVE-2023-52454](https://ubuntu.com/security/CVE-2023-52454) <!-- medium -->
    -   [CVE-2023-52470](https://ubuntu.com/security/CVE-2023-52470) <!-- low -->
    -   [CVE-2023-52451](https://ubuntu.com/security/CVE-2023-52451) <!-- medium -->
    -   [CVE-2023-52445](https://ubuntu.com/security/CVE-2023-52445) <!-- medium -->
    -   [CVE-2023-52469](https://ubuntu.com/security/CVE-2023-52469) <!-- low -->
    -   [CVE-2023-52609](https://ubuntu.com/security/CVE-2023-52609) <!-- medium -->
    -   [CVE-2023-52444](https://ubuntu.com/security/CVE-2023-52444) <!-- medium -->
    -   [CVE-2023-52449](https://ubuntu.com/security/CVE-2023-52449) <!-- medium -->
    -   [CVE-2024-26597](https://ubuntu.com/security/CVE-2024-26597) <!-- high -->
    -   [CVE-2024-26633](https://ubuntu.com/security/CVE-2024-26633) <!-- medium -->
    -   [CVE-2023-52612](https://ubuntu.com/security/CVE-2023-52612) <!-- medium -->
    -   [CVE-2023-52439](https://ubuntu.com/security/CVE-2023-52439) <!-- medium -->
    -   [CVE-2023-52443](https://ubuntu.com/security/CVE-2023-52443) <!-- medium -->
    -   [CVE-2023-52457](https://ubuntu.com/security/CVE-2023-52457) <!-- medium -->
    -   [CVE-2023-52448](https://ubuntu.com/security/CVE-2023-52448) <!-- medium -->
    -   [CVE-2023-52464](https://ubuntu.com/security/CVE-2023-52464) <!-- medium -->
    -   [CVE-2024-0607](https://ubuntu.com/security/CVE-2024-0607) <!-- medium -->
    -   [CVE-2024-23851](https://ubuntu.com/security/CVE-2024-23851) <!-- low -->
    -   [CVE-2023-52429](https://ubuntu.com/security/CVE-2023-52429) <!-- low -->
    -   [CVE-2023-52340](https://ubuntu.com/security/CVE-2023-52340) <!-- medium -->
    -   [CVE-2023-46838](https://ubuntu.com/security/CVE-2023-46838) <!-- medium -->


### [[USN-6726-3](https://ubuntu.com/security/notices/USN-6726-3)] Linux kernel (Xilinx ZynqMP) vulnerabilities {#usn-6726-3-linux-kernel--xilinx-zynqmp--vulnerabilities}

-   23 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-52438](https://ubuntu.com/security/CVE-2023-52438) <!-- medium -->
    -   [CVE-2023-52436](https://ubuntu.com/security/CVE-2023-52436) <!-- medium -->
    -   [CVE-2023-52454](https://ubuntu.com/security/CVE-2023-52454) <!-- medium -->
    -   [CVE-2023-52470](https://ubuntu.com/security/CVE-2023-52470) <!-- low -->
    -   [CVE-2023-52451](https://ubuntu.com/security/CVE-2023-52451) <!-- medium -->
    -   [CVE-2023-52445](https://ubuntu.com/security/CVE-2023-52445) <!-- medium -->
    -   [CVE-2023-52469](https://ubuntu.com/security/CVE-2023-52469) <!-- low -->
    -   [CVE-2023-52609](https://ubuntu.com/security/CVE-2023-52609) <!-- medium -->
    -   [CVE-2023-52444](https://ubuntu.com/security/CVE-2023-52444) <!-- medium -->
    -   [CVE-2023-52449](https://ubuntu.com/security/CVE-2023-52449) <!-- medium -->
    -   [CVE-2024-26597](https://ubuntu.com/security/CVE-2024-26597) <!-- high -->
    -   [CVE-2024-26633](https://ubuntu.com/security/CVE-2024-26633) <!-- medium -->
    -   [CVE-2023-52612](https://ubuntu.com/security/CVE-2023-52612) <!-- medium -->
    -   [CVE-2023-52439](https://ubuntu.com/security/CVE-2023-52439) <!-- medium -->
    -   [CVE-2023-52443](https://ubuntu.com/security/CVE-2023-52443) <!-- medium -->
    -   [CVE-2023-52457](https://ubuntu.com/security/CVE-2023-52457) <!-- medium -->
    -   [CVE-2023-52448](https://ubuntu.com/security/CVE-2023-52448) <!-- medium -->
    -   [CVE-2023-52464](https://ubuntu.com/security/CVE-2023-52464) <!-- medium -->
    -   [CVE-2024-0607](https://ubuntu.com/security/CVE-2024-0607) <!-- medium -->
    -   [CVE-2024-23851](https://ubuntu.com/security/CVE-2024-23851) <!-- low -->
    -   [CVE-2023-52429](https://ubuntu.com/security/CVE-2023-52429) <!-- low -->
    -   [CVE-2023-52340](https://ubuntu.com/security/CVE-2023-52340) <!-- medium -->
    -   [CVE-2023-46838](https://ubuntu.com/security/CVE-2023-46838) <!-- medium -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Linux Security Summit NA 2024 (07:22) {#linux-security-summit-na-2024--07-22}

-   <https://events.linuxfoundation.org/linux-security-summit-north-america/>
-   [Unprivileged Access Control in AppArmor - John Johansen &amp; Georgia Garcia, Canonical](https://lssna24.sched.com/event/1aIe6/unprivileged-access-control-in-apparmor-john-johansen-georgia-garcia-canonical?iframe=no)
    -   <https://static.sched.com/hosted_files/lssna24/97/AppArmor%20-%20Unprivileged%20Application%20Policy.pdf>
    -   Friday 19th @ 9.15am PDT - live stream at <https://www.youtube.com/watch?v=S-RQZGRoQFY>
    -   AppArmor - MAC - sysadmin defines policy
    -   Allowing applications to define and load their own policy
        -   APIs in libapparmor to allow this to be done from static policy OR to build up policy over time
        -   policy is compiled in userspace and loaded into the kernel as usual
        -   To then stop a compromised application from unloading its policy, can mark
            it immutable so it can't be further modified / removed
        -   Any further restrictions though can then be stacked against the immutable
            policy to say allow it to be confined futher
        -   On kernel side
            -   sysctl to allow/deny applications to load their own policy
            -   checks on the amount of memory able to be used to avoid apps DoSing system
            -   verification of compiled policy by kernel state machine
            -   policy only applies to the task and its children
        -   Various complexities in handling credentials/labels across tasks
            (ie. processes) and how these interact with the userspace
            processes/threads etc
        -   Also still have to resolve whether to use prctl vs syscall as the
            interface since we can't use the LSM syscalls
            -   May result in an AppArmor specific syscall
            -   But for now just using a prctl
        -   Application profiles then stack against any relevant system policy
        -   ie. if there is system policy, and policy loaded by the application itself is bounded by the system policy
    -   Demo of implementing `pledge()` and `unveil()` from OpenBSD
        -   pledge is similar to seccomp() on linux - allows an application to
            restrict what it can do by declaring what subsystems it should be allowed
            access to "promises"
            -   stdio, inet, bpf, unix, audio, video and many others
            -   map these to equivalent AppArmor permissions (although this is not a perfect mapping but WIP)
            -   also since this is at the LSM layer, we are not necessarily blocking
                syscalls as is done by pledge (since it is more akin to seccomp)
            -   but can use seccomp to plug any gaps
            -   to fully emulate this also need to emulate the return value - since on
                OpenBSD if the application violates the promise, deliver a SIGABRT -
                whereas LSMs return EACCES
            -   can do this via a new profile flag called `kill` along with the associated signal to deliver
            -   further complications to this since not always SIGABRT, sometimes is an errno (ENOSYS/EACCES) too
            -   extend apparmor policy to allow to specify priorities of what action should be taken in various cases
            -   can use the aforementioned immutable profile flag and stacking to then implement the promise reduction feature of `pledge()`
        -   unveil is used to remove visibility of parts of the file-system
            -   maps quite cleanly to apparmor file rules
    -   Full video of the session should be available soon
-   Lots of other interesting talks:
    -   [Stacked LSMs and User Space - Casey Schaufler, The Smack Project](https://lssna24.sched.com/event/1aIe8/stacked-lsms-and-user-space-casey-schaufler-the-smack-project?iframe=yes&w=100%&sidebar=yes&bg=no)
        -   LSM syscalls and associated liblsm to provide an easier API plus emulation for older systems
        -   <https://static.sched.com/hosted_files/lssna24/1a/2024-04-LSSNA-liblsm.pdf>
    -   [Mitigating Integer Overflow in C - Kees Cook, Google](https://lssna24.sched.com/event/1aIe9/mitigating-integer-overflow-in-c-kees-cook-google?iframe=yes&w=100%&sidebar=yes&bg=no)
        -   LKSPP - latest efforts to mitigate integer overflows within the kernel
            through the use of compiler sanitizers
        -   <https://static.sched.com/hosted_files/lssna24/fb/Mitigating%20Integer%20Overflow%20in%20C.pdf>
    -   [Enhancing Kernel Bug Discovery with Large Language Models - Zahra Tarkhani, Microsoft](https://lssna24.sched.com/event/1aIeF/enhancing-kernel-bug-discovery-with-large-language-models-zahra-tarkhani-microsoft?iframe=yes&w=100%&sidebar=yes&bg=no)
    -   [SandBox Mode (SBM) - New Execution Mode Between Kernel and User Space - Petr Tesarik, Self-employed](https://lssna24.sched.com/event/1aIeG/sandbox-mode-sbm-new-execution-mode-between-kernel-and-user-space-petr-tesarik-self-employed?iframe=yes&w=100%&sidebar=yes&bg=no)


### Upcoming AppArmor Security update for CVE-2016-1585 {#upcoming-apparmor-security-update-for-cve-2016-1585}

-   <https://discourse.ubuntu.com/t/upcoming-apparmor-security-update-for-cve-2016-1585/44268/1>
-   <https://bugs.launchpad.net/apparmor/+bug/1597017>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
