+++
title = "Episode 124"
description = """
  It's another week when too many security updates are never enough as we
  cover 240 CVE fixes across Avahi, QEMU, the Linux kernel, containerd,
  binutils and more, plus the Ubuntu 20.10 Groovy Gorilla end-of-life.
  """
date = 2021-07-30T14:46:00+09:30
lastmod = 2022-05-15T18:06:01+09:30
draft = false
weight = 1036
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E124.mp3"
podcast_duration = "14:29"
podcast_bytes = 11590829
permalink = "https://ubuntusecuritypodcast.org/episode-124/"
guid = "d2899b04375c5cc8e92e37291c2a2b4bce70b742950e9fb74e649c4cc57db94e40d4895e1f98b2efe91802633a405fa32df0636f14f2bf40eab766c8ba1d5b27"
+++

## Overview {#overview}

It's another week when too many security updates are never enough as we
cover 240 CVE fixes across Avahi, QEMU, the Linux kernel, containerd,
binutils and more, plus the Ubuntu 20.10 Groovy Gorilla end-of-life.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

240 unique CVEs addressed


### [[USN-5008-1](https://ubuntu.com/security/notices/USN-5008-1), [USN-5008-2](https://ubuntu.com/security/notices/USN-5008-2)] Avahi vulnerabilities [00:36] {#usn-5008-1-usn-5008-2-avahi-vulnerabilities-00-36}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-3502](https://ubuntu.com/security/CVE-2021-3502) <!-- medium -->
    -   [CVE-2021-3468](https://ubuntu.com/security/CVE-2021-3468) <!-- medium -->
-   2 DoS via local users - first via abusing the Avahi daemon's unix socket -&gt; hang
-   second by calling asking the avahi daemon to resolve a crafted domain
    name either via the DBus API or the local socket - assert() -&gt; crash


### [[USN-5006-2](https://ubuntu.com/security/notices/USN-5006-2)] PHP vulnerabilities [01:12] {#usn-5006-2-php-vulnerabilities-01-12}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2021-21705](https://ubuntu.com/security/CVE-2021-21705) <!-- medium -->
    -   [CVE-2021-21704](https://ubuntu.com/security/CVE-2021-21704) <!-- medium -->
    -   [CVE-2021-21702](https://ubuntu.com/security/CVE-2021-21702) <!-- low -->
    -   [CVE-2020-7071](https://ubuntu.com/security/CVE-2020-7071) <!-- low -->
    -   [CVE-2020-7068](https://ubuntu.com/security/CVE-2020-7068) <!-- low -->
-   [Episode 123](https://ubuntusecuritypodcast.org/episode-123/)


### [[USN-5009-1](https://ubuntu.com/security/notices/USN-5009-1)] libslirp vulnerabilities [01:31] {#usn-5009-1-libslirp-vulnerabilities-01-31}

-   6 CVEs addressed in Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-3595](https://ubuntu.com/security/CVE-2021-3595) <!-- low -->
    -   [CVE-2021-3594](https://ubuntu.com/security/CVE-2021-3594) <!-- low -->
    -   [CVE-2021-3593](https://ubuntu.com/security/CVE-2021-3593) <!-- low -->
    -   [CVE-2021-3592](https://ubuntu.com/security/CVE-2021-3592) <!-- low -->
    -   [CVE-2020-29130](https://ubuntu.com/security/CVE-2020-29130) <!-- low -->
    -   [CVE-2020-29129](https://ubuntu.com/security/CVE-2020-29129) <!-- low -->
-   TCP/IP emulation library using by QEMU etc
-   Info leaks from the host to the guest via buffer over-reads in handling
    of various network packet types (UDP etc)


### [[USN-5010-1](https://ubuntu.com/security/notices/USN-5010-1)] QEMU vulnerabilities [02:07] {#usn-5010-1-qemu-vulnerabilities-02-07}

-   21 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-3595](https://ubuntu.com/security/CVE-2021-3595) <!-- low -->
    -   [CVE-2021-3594](https://ubuntu.com/security/CVE-2021-3594) <!-- low -->
    -   [CVE-2021-3593](https://ubuntu.com/security/CVE-2021-3593) <!-- low -->
    -   [CVE-2021-3592](https://ubuntu.com/security/CVE-2021-3592) <!-- low -->
    -   [CVE-2021-3608](https://ubuntu.com/security/CVE-2021-3608) <!-- low -->
    -   [CVE-2021-3607](https://ubuntu.com/security/CVE-2021-3607) <!-- low -->
    -   [CVE-2021-3582](https://ubuntu.com/security/CVE-2021-3582) <!-- medium -->
    -   [CVE-2021-3546](https://ubuntu.com/security/CVE-2021-3546) <!-- medium -->
    -   [CVE-2021-3545](https://ubuntu.com/security/CVE-2021-3545) <!-- low -->
    -   [CVE-2021-3544](https://ubuntu.com/security/CVE-2021-3544) <!-- low -->
    -   [CVE-2021-3527](https://ubuntu.com/security/CVE-2021-3527) <!-- low -->
    -   [CVE-2021-3416](https://ubuntu.com/security/CVE-2021-3416) <!-- low -->
    -   [CVE-2021-3409](https://ubuntu.com/security/CVE-2021-3409) <!-- medium -->
    -   [CVE-2021-20257](https://ubuntu.com/security/CVE-2021-20257) <!-- medium -->
    -   [CVE-2021-20221](https://ubuntu.com/security/CVE-2021-20221) <!-- low -->
    -   [CVE-2020-35517](https://ubuntu.com/security/CVE-2020-35517) <!-- medium -->
    -   [CVE-2021-3392](https://ubuntu.com/security/CVE-2021-3392) <!-- low -->
    -   [CVE-2020-35505](https://ubuntu.com/security/CVE-2020-35505) <!-- low -->
    -   [CVE-2020-35504](https://ubuntu.com/security/CVE-2020-35504) <!-- low -->
    -   [CVE-2020-29443](https://ubuntu.com/security/CVE-2020-29443) <!-- low -->
    -   [CVE-2020-15469](https://ubuntu.com/security/CVE-2020-15469) <!-- low -->
-   Usual mix of vulns in emulation of various devices etc - generally allows
    a malicious guest to cause QEMU to crash on the host -&gt; DoS
    -   MMIO, ATAPI, SCSI, ARM Generic Interrupt Controller, e1000
-   Mishandling in virtio-fs shared filesystem daemon allows malicious guest
    to read/write host devices
-   A few others possibly result on code-exec on the host as the QEMU daemon
    BUT on Ubuntu QEMU is confined via AppArmor by default so this limits the
    possible impact


### [[LSN-0078-1](https://ubuntu.com/security/notices/LSN-0078-1)] Linux kernel vulnerability [03:14] {#lsn-0078-1-linux-kernel-vulnerability-03-14}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3609](https://ubuntu.com/security/CVE-2021-3609) <!-- high -->
-   Livepatch for CAN BCM UAF -&gt; arbitrary code exec ([Episode 121](https://ubuntusecuritypodcast.org/episode-121/))


### [[USN-5014-1](https://ubuntu.com/security/notices/USN-5014-1)] Linux kernel vulnerability [03:49] {#usn-5014-1-linux-kernel-vulnerability-03-49}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Hirsute (21.04)
    -   [CVE-2021-33909](https://ubuntu.com/security/CVE-2021-33909) <!-- high -->
-   high priority respin
-   seq_file vuln - this virt file-system contained an unsigned integer
    conversion error - would result in a local user being able to cause an
    OOB write and hence possible code-exec in the kernel -&gt; privesc


### [[USN-5015-1](https://ubuntu.com/security/notices/USN-5015-1)] Linux kernel (OEM) vulnerabilities [04:28] {#usn-5015-1-linux-kernel--oem--vulnerabilities-04-28}

-   5 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-3587](https://ubuntu.com/security/CVE-2021-3587) <!-- medium -->
    -   [CVE-2021-3573](https://ubuntu.com/security/CVE-2021-3573) <!-- medium -->
    -   [CVE-2021-3564](https://ubuntu.com/security/CVE-2021-3564) <!-- medium -->
    -   [CVE-2021-28691](https://ubuntu.com/security/CVE-2021-28691) <!-- medium -->
    -   [CVE-2021-33909](https://ubuntu.com/security/CVE-2021-33909) <!-- high -->
-   5.10 oem
-   seq_file vuln plus a couple UAF in bluetooth, NULL ptr deref in NFC, UAF
    in Xen networking - guest to host crash/code-exec etc


### [[USN-5016-1](https://ubuntu.com/security/notices/USN-5016-1)] Linux kernel vulnerabilities [04:54] {#usn-5016-1-linux-kernel-vulnerabilities-04-54}

-   5 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-3506](https://ubuntu.com/security/CVE-2021-3506) <!-- medium -->
    -   [CVE-2021-33034](https://ubuntu.com/security/CVE-2021-33034) <!-- medium -->
    -   [CVE-2021-32399](https://ubuntu.com/security/CVE-2021-32399) <!-- medium -->
    -   [CVE-2021-23134](https://ubuntu.com/security/CVE-2021-23134) <!-- medium -->
    -   [CVE-2021-33909](https://ubuntu.com/security/CVE-2021-33909) <!-- high -->
-   5.8 - hirsute, focal hwe
-   seq_file vuln plus, NFC UAF, Bluetooth UAFs, F2FS OOB read


### [[USN-5017-1](https://ubuntu.com/security/notices/USN-5017-1)] Linux kernel vulnerabilities [05:26] {#usn-5017-1-linux-kernel-vulnerabilities-05-26}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-0129](https://ubuntu.com/security/CVE-2021-0129) <!-- medium -->
    -   [CVE-2020-26558](https://ubuntu.com/security/CVE-2020-26558) <!-- medium -->
    -   [CVE-2021-33909](https://ubuntu.com/security/CVE-2021-33909) <!-- high -->
-   5.4 - focal, bionic hwe, oem, aws, azure, gcp, gke etc
-   seq_file vuln plus a few bluetooth info leaks


### [[USN-5018-1](https://ubuntu.com/security/notices/USN-5018-1)] Linux kernel vulnerabilities [05:49] {#usn-5018-1-linux-kernel-vulnerabilities-05-49}

-   12 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-33034](https://ubuntu.com/security/CVE-2021-33034) <!-- medium -->
    -   [CVE-2021-32399](https://ubuntu.com/security/CVE-2021-32399) <!-- medium -->
    -   [CVE-2021-31829](https://ubuntu.com/security/CVE-2021-31829) <!-- medium -->
    -   [CVE-2021-23134](https://ubuntu.com/security/CVE-2021-23134) <!-- medium -->
    -   [CVE-2021-0129](https://ubuntu.com/security/CVE-2021-0129) <!-- medium -->
    -   [CVE-2020-26558](https://ubuntu.com/security/CVE-2020-26558) <!-- medium -->
    -   [CVE-2020-26147](https://ubuntu.com/security/CVE-2020-26147) <!-- medium -->
    -   [CVE-2020-26139](https://ubuntu.com/security/CVE-2020-26139) <!-- medium -->
    -   [CVE-2020-24587](https://ubuntu.com/security/CVE-2020-24587) <!-- medium -->
    -   [CVE-2020-24586](https://ubuntu.com/security/CVE-2020-24586) <!-- medium -->
    -   [CVE-2021-33200](https://ubuntu.com/security/CVE-2021-33200) <!-- high -->
    -   [CVE-2021-33909](https://ubuntu.com/security/CVE-2021-33909) <!-- high -->
-   4.15 - bionic, xenial hwe, trusty azure
-   seq_file vuln plus various other fixes from recent kernels - eBPF
    privesc, Wifi FRAGATTACKs fixes, bluetooth info leaks and UAFs and NFC
    UAF


### [[LSN-0079-1](https://ubuntu.com/security/notices/LSN-0079-1)] Linux kernel vulnerability [06:21] {#lsn-0079-1-linux-kernel-vulnerability-06-21}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-33909](https://ubuntu.com/security/CVE-2021-33909) <!-- high -->
    -   [CVE-2021-3600](https://ubuntu.com/security/CVE-2021-3600) <!-- high -->
-   seq_file vuln plus eBPF codeexec


### [[USN-5019-1](https://ubuntu.com/security/notices/USN-5019-1)] NVIDIA graphics drivers vulnerabilities [06:43] {#usn-5019-1-nvidia-graphics-drivers-vulnerabilities-06-43}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-1095](https://ubuntu.com/security/CVE-2021-1095) <!-- medium -->
    -   [CVE-2021-1094](https://ubuntu.com/security/CVE-2021-1094) <!-- medium -->
    -   [CVE-2021-1093](https://ubuntu.com/security/CVE-2021-1093) <!-- medium -->
-   2 DoS - one by triggering an assert(), the other by dereferencing an
    untrusted pointer - kernel crash in either case
-   OOB array access (OOB read) - info leak or crash -&gt; DoS


### [[USN-5012-1](https://ubuntu.com/security/notices/USN-5012-1)] containerd vulnerabilities [07:23] {#usn-5012-1-containerd-vulnerabilities-07-23}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-32760](https://ubuntu.com/security/CVE-2021-32760) <!-- high -->
-   When extracting a container image, would try and set the
    owner/permissions on the resulting extracted files - if these files were
    symlinks pointing to existing files on the host then would change perms
    of those files instead - fixed to ensure it does not follow symlinks when
    applying this permissions changes


### [[USN-5013-1](https://ubuntu.com/security/notices/USN-5013-1), [USN-5013-2](https://ubuntu.com/security/notices/USN-5013-2)] systemd vulnerabilities [08:00] {#usn-5013-1-usn-5013-2-systemd-vulnerabilities-08-00}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2020-13529](https://ubuntu.com/security/CVE-2020-13529) <!-- low -->
    -   [CVE-2021-33910](https://ubuntu.com/security/CVE-2021-33910) <!-- high -->
-   When parsing mount paths, would allocate memory for the path on the
    stack - if a local attacker can mount a file-system with a very long path
    name, would overflow the entire stack memory and cause systemd to crash -
    as systemd is PID1 this effectively crashes the whole system
-   Remote attacker could cause sytemd DHCP client to force assign a
    different address and hence could cause a networking DoS against a remote
    server on the same network by making it unroutable etc


### [[USN-4336-2](https://ubuntu.com/security/notices/USN-4336-2)] GNU binutils vulnerabilities [09:12] {#usn-4336-2-gnu-binutils-vulnerabilities-09-12}

-   147 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2019-9077](https://ubuntu.com/security/CVE-2019-9077) <!-- low -->
    -   [CVE-2019-9075](https://ubuntu.com/security/CVE-2019-9075) <!-- low -->
    -   [CVE-2019-9074](https://ubuntu.com/security/CVE-2019-9074) <!-- low -->
    -   [CVE-2019-9073](https://ubuntu.com/security/CVE-2019-9073) <!-- low -->
    -   [CVE-2019-9071](https://ubuntu.com/security/CVE-2019-9071) <!-- low -->
    -   [CVE-2019-9070](https://ubuntu.com/security/CVE-2019-9070) <!-- low -->
    -   [CVE-2019-17451](https://ubuntu.com/security/CVE-2019-17451) <!-- medium -->
    -   [CVE-2019-17450](https://ubuntu.com/security/CVE-2019-17450) <!-- low -->
    -   [CVE-2019-14444](https://ubuntu.com/security/CVE-2019-14444) <!-- medium -->
    -   [CVE-2019-14250](https://ubuntu.com/security/CVE-2019-14250) <!-- medium -->
    -   [CVE-2019-12972](https://ubuntu.com/security/CVE-2019-12972) <!-- low -->
    -   [CVE-2018-9138](https://ubuntu.com/security/CVE-2018-9138) <!-- low -->
    -   [CVE-2018-8945](https://ubuntu.com/security/CVE-2018-8945) <!-- low -->
    -   [CVE-2018-7643](https://ubuntu.com/security/CVE-2018-7643) <!-- low -->
    -   [CVE-2018-7642](https://ubuntu.com/security/CVE-2018-7642) <!-- low -->
    -   [CVE-2018-7569](https://ubuntu.com/security/CVE-2018-7569) <!-- low -->
    -   [CVE-2018-7568](https://ubuntu.com/security/CVE-2018-7568) <!-- low -->
    -   [CVE-2018-7208](https://ubuntu.com/security/CVE-2018-7208) <!-- low -->
    -   [CVE-2018-6759](https://ubuntu.com/security/CVE-2018-6759) <!-- low -->
    -   [CVE-2018-6543](https://ubuntu.com/security/CVE-2018-6543) <!-- low -->
    -   [CVE-2018-6323](https://ubuntu.com/security/CVE-2018-6323) <!-- low -->
    -   [CVE-2018-20671](https://ubuntu.com/security/CVE-2018-20671) <!-- low -->
    -   [CVE-2018-20623](https://ubuntu.com/security/CVE-2018-20623) <!-- low -->
    -   [CVE-2018-20002](https://ubuntu.com/security/CVE-2018-20002) <!-- low -->
    -   [CVE-2018-19932](https://ubuntu.com/security/CVE-2018-19932) <!-- low -->
    -   [CVE-2018-19931](https://ubuntu.com/security/CVE-2018-19931) <!-- low -->
    -   [CVE-2018-18701](https://ubuntu.com/security/CVE-2018-18701) <!-- low -->
    -   [CVE-2018-18700](https://ubuntu.com/security/CVE-2018-18700) <!-- low -->
    -   [CVE-2018-18607](https://ubuntu.com/security/CVE-2018-18607) <!-- low -->
    -   [CVE-2018-18606](https://ubuntu.com/security/CVE-2018-18606) <!-- low -->
    -   [CVE-2018-18605](https://ubuntu.com/security/CVE-2018-18605) <!-- low -->
    -   [CVE-2018-18484](https://ubuntu.com/security/CVE-2018-18484) <!-- low -->
    -   [CVE-2018-18483](https://ubuntu.com/security/CVE-2018-18483) <!-- low -->
    -   [CVE-2018-18309](https://ubuntu.com/security/CVE-2018-18309) <!-- low -->
    -   [CVE-2018-17985](https://ubuntu.com/security/CVE-2018-17985) <!-- low -->
    -   [CVE-2018-17794](https://ubuntu.com/security/CVE-2018-17794) <!-- low -->
    -   [CVE-2018-17360](https://ubuntu.com/security/CVE-2018-17360) <!-- low -->
    -   [CVE-2018-17359](https://ubuntu.com/security/CVE-2018-17359) <!-- low -->
    -   [CVE-2018-17358](https://ubuntu.com/security/CVE-2018-17358) <!-- low -->
    -   [CVE-2018-13033](https://ubuntu.com/security/CVE-2018-13033) <!-- low -->
    -   [CVE-2018-12934](https://ubuntu.com/security/CVE-2018-12934) <!-- low -->
    -   [CVE-2018-12700](https://ubuntu.com/security/CVE-2018-12700) <!-- low -->
    -   [CVE-2018-12699](https://ubuntu.com/security/CVE-2018-12699) <!-- low -->
    -   [CVE-2018-12698](https://ubuntu.com/security/CVE-2018-12698) <!-- low -->
    -   [CVE-2018-12697](https://ubuntu.com/security/CVE-2018-12697) <!-- low -->
    -   [CVE-2018-12641](https://ubuntu.com/security/CVE-2018-12641) <!-- low -->
    -   [CVE-2018-10535](https://ubuntu.com/security/CVE-2018-10535) <!-- low -->
    -   [CVE-2018-10534](https://ubuntu.com/security/CVE-2018-10534) <!-- low -->
    -   [CVE-2018-10373](https://ubuntu.com/security/CVE-2018-10373) <!-- low -->
    -   [CVE-2018-10372](https://ubuntu.com/security/CVE-2018-10372) <!-- low -->
    -   [CVE-2018-1000876](https://ubuntu.com/security/CVE-2018-1000876) <!-- low -->
    -   [CVE-2017-9954](https://ubuntu.com/security/CVE-2017-9954) <!-- low -->
    -   [CVE-2017-9756](https://ubuntu.com/security/CVE-2017-9756) <!-- low -->
    -   [CVE-2017-9755](https://ubuntu.com/security/CVE-2017-9755) <!-- low -->
    -   [CVE-2017-9754](https://ubuntu.com/security/CVE-2017-9754) <!-- low -->
    -   [CVE-2017-9753](https://ubuntu.com/security/CVE-2017-9753) <!-- low -->
    -   [CVE-2017-9752](https://ubuntu.com/security/CVE-2017-9752) <!-- low -->
    -   [CVE-2017-9751](https://ubuntu.com/security/CVE-2017-9751) <!-- low -->
    -   [CVE-2017-9750](https://ubuntu.com/security/CVE-2017-9750) <!-- low -->
    -   [CVE-2017-9749](https://ubuntu.com/security/CVE-2017-9749) <!-- low -->
    -   [CVE-2017-9748](https://ubuntu.com/security/CVE-2017-9748) <!-- low -->
    -   [CVE-2017-9747](https://ubuntu.com/security/CVE-2017-9747) <!-- low -->
    -   [CVE-2017-9746](https://ubuntu.com/security/CVE-2017-9746) <!-- low -->
    -   [CVE-2017-9745](https://ubuntu.com/security/CVE-2017-9745) <!-- low -->
    -   [CVE-2017-9744](https://ubuntu.com/security/CVE-2017-9744) <!-- low -->
    -   [CVE-2017-9742](https://ubuntu.com/security/CVE-2017-9742) <!-- low -->
    -   [CVE-2017-9044](https://ubuntu.com/security/CVE-2017-9044) <!-- low -->
    -   [CVE-2017-9042](https://ubuntu.com/security/CVE-2017-9042) <!-- low -->
    -   [CVE-2017-9041](https://ubuntu.com/security/CVE-2017-9041) <!-- low -->
    -   [CVE-2017-9040](https://ubuntu.com/security/CVE-2017-9040) <!-- low -->
    -   [CVE-2017-9039](https://ubuntu.com/security/CVE-2017-9039) <!-- low -->
    -   [CVE-2017-9038](https://ubuntu.com/security/CVE-2017-9038) <!-- low -->
    -   [CVE-2017-8421](https://ubuntu.com/security/CVE-2017-8421) <!-- low -->
    -   [CVE-2017-8398](https://ubuntu.com/security/CVE-2017-8398) <!-- low -->
    -   [CVE-2017-8397](https://ubuntu.com/security/CVE-2017-8397) <!-- low -->
    -   [CVE-2017-8396](https://ubuntu.com/security/CVE-2017-8396) <!-- low -->
    -   [CVE-2017-8395](https://ubuntu.com/security/CVE-2017-8395) <!-- low -->
    -   [CVE-2017-8394](https://ubuntu.com/security/CVE-2017-8394) <!-- low -->
    -   [CVE-2017-8393](https://ubuntu.com/security/CVE-2017-8393) <!-- low -->
    -   [CVE-2017-7614](https://ubuntu.com/security/CVE-2017-7614) <!-- low -->
    -   [CVE-2017-7302](https://ubuntu.com/security/CVE-2017-7302) <!-- low -->
    -   [CVE-2017-7301](https://ubuntu.com/security/CVE-2017-7301) <!-- low -->
    -   [CVE-2017-7300](https://ubuntu.com/security/CVE-2017-7300) <!-- low -->
    -   [CVE-2017-7299](https://ubuntu.com/security/CVE-2017-7299) <!-- low -->
    -   [CVE-2017-7227](https://ubuntu.com/security/CVE-2017-7227) <!-- low -->
    -   [CVE-2017-7226](https://ubuntu.com/security/CVE-2017-7226) <!-- low -->
    -   [CVE-2017-7225](https://ubuntu.com/security/CVE-2017-7225) <!-- low -->
    -   [CVE-2017-7224](https://ubuntu.com/security/CVE-2017-7224) <!-- low -->
    -   [CVE-2017-7223](https://ubuntu.com/security/CVE-2017-7223) <!-- low -->
    -   [CVE-2017-7210](https://ubuntu.com/security/CVE-2017-7210) <!-- low -->
    -   [CVE-2017-7209](https://ubuntu.com/security/CVE-2017-7209) <!-- low -->
    -   [CVE-2017-6969](https://ubuntu.com/security/CVE-2017-6969) <!-- low -->
    -   [CVE-2017-6966](https://ubuntu.com/security/CVE-2017-6966) <!-- low -->
    -   [CVE-2017-6965](https://ubuntu.com/security/CVE-2017-6965) <!-- low -->
    -   [CVE-2017-17125](https://ubuntu.com/security/CVE-2017-17125) <!-- low -->
    -   [CVE-2017-17124](https://ubuntu.com/security/CVE-2017-17124) <!-- low -->
    -   [CVE-2017-17123](https://ubuntu.com/security/CVE-2017-17123) <!-- low -->
    -   [CVE-2017-17121](https://ubuntu.com/security/CVE-2017-17121) <!-- low -->
    -   [CVE-2017-17080](https://ubuntu.com/security/CVE-2017-17080) <!-- low -->
    -   [CVE-2017-16832](https://ubuntu.com/security/CVE-2017-16832) <!-- low -->
    -   [CVE-2017-16831](https://ubuntu.com/security/CVE-2017-16831) <!-- low -->
    -   [CVE-2017-16828](https://ubuntu.com/security/CVE-2017-16828) <!-- low -->
    -   [CVE-2017-16827](https://ubuntu.com/security/CVE-2017-16827) <!-- low -->
    -   [CVE-2017-16826](https://ubuntu.com/security/CVE-2017-16826) <!-- low -->
    -   [CVE-2017-15996](https://ubuntu.com/security/CVE-2017-15996) <!-- low -->
    -   [CVE-2017-15939](https://ubuntu.com/security/CVE-2017-15939) <!-- low -->
    -   [CVE-2017-15938](https://ubuntu.com/security/CVE-2017-15938) <!-- low -->
    -   [CVE-2017-15225](https://ubuntu.com/security/CVE-2017-15225) <!-- low -->
    -   [CVE-2017-15025](https://ubuntu.com/security/CVE-2017-15025) <!-- low -->
    -   [CVE-2017-15024](https://ubuntu.com/security/CVE-2017-15024) <!-- low -->
    -   [CVE-2017-15022](https://ubuntu.com/security/CVE-2017-15022) <!-- low -->
    -   [CVE-2017-15021](https://ubuntu.com/security/CVE-2017-15021) <!-- low -->
    -   [CVE-2017-15020](https://ubuntu.com/security/CVE-2017-15020) <!-- low -->
    -   [CVE-2017-14940](https://ubuntu.com/security/CVE-2017-14940) <!-- low -->
    -   [CVE-2017-14939](https://ubuntu.com/security/CVE-2017-14939) <!-- low -->
    -   [CVE-2017-14938](https://ubuntu.com/security/CVE-2017-14938) <!-- low -->
    -   [CVE-2017-14932](https://ubuntu.com/security/CVE-2017-14932) <!-- low -->
    -   [CVE-2017-14930](https://ubuntu.com/security/CVE-2017-14930) <!-- low -->
    -   [CVE-2017-14529](https://ubuntu.com/security/CVE-2017-14529) <!-- low -->
    -   [CVE-2017-14333](https://ubuntu.com/security/CVE-2017-14333) <!-- low -->
    -   [CVE-2017-14130](https://ubuntu.com/security/CVE-2017-14130) <!-- low -->
    -   [CVE-2017-14129](https://ubuntu.com/security/CVE-2017-14129) <!-- low -->
    -   [CVE-2017-14128](https://ubuntu.com/security/CVE-2017-14128) <!-- low -->
    -   [CVE-2017-13710](https://ubuntu.com/security/CVE-2017-13710) <!-- low -->
    -   [CVE-2017-12967](https://ubuntu.com/security/CVE-2017-12967) <!-- low -->
    -   [CVE-2017-12799](https://ubuntu.com/security/CVE-2017-12799) <!-- low -->
    -   [CVE-2017-12459](https://ubuntu.com/security/CVE-2017-12459) <!-- low -->
    -   [CVE-2017-12458](https://ubuntu.com/security/CVE-2017-12458) <!-- low -->
    -   [CVE-2017-12457](https://ubuntu.com/security/CVE-2017-12457) <!-- low -->
    -   [CVE-2017-12456](https://ubuntu.com/security/CVE-2017-12456) <!-- low -->
    -   [CVE-2017-12455](https://ubuntu.com/security/CVE-2017-12455) <!-- low -->
    -   [CVE-2017-12454](https://ubuntu.com/security/CVE-2017-12454) <!-- low -->
    -   [CVE-2017-12453](https://ubuntu.com/security/CVE-2017-12453) <!-- low -->
    -   [CVE-2017-12452](https://ubuntu.com/security/CVE-2017-12452) <!-- low -->
    -   [CVE-2017-12451](https://ubuntu.com/security/CVE-2017-12451) <!-- low -->
    -   [CVE-2017-12450](https://ubuntu.com/security/CVE-2017-12450) <!-- low -->
    -   [CVE-2017-12449](https://ubuntu.com/security/CVE-2017-12449) <!-- low -->
    -   [CVE-2017-12448](https://ubuntu.com/security/CVE-2017-12448) <!-- low -->
    -   [CVE-2016-6131](https://ubuntu.com/security/CVE-2016-6131) <!-- low -->
    -   [CVE-2016-4493](https://ubuntu.com/security/CVE-2016-4493) <!-- low -->
    -   [CVE-2016-4492](https://ubuntu.com/security/CVE-2016-4492) <!-- low -->
    -   [CVE-2016-4491](https://ubuntu.com/security/CVE-2016-4491) <!-- low -->
    -   [CVE-2016-4490](https://ubuntu.com/security/CVE-2016-4490) <!-- low -->
    -   [CVE-2016-4489](https://ubuntu.com/security/CVE-2016-4489) <!-- low -->
    -   [CVE-2016-4488](https://ubuntu.com/security/CVE-2016-4488) <!-- low -->
    -   [CVE-2016-4487](https://ubuntu.com/security/CVE-2016-4487) <!-- low -->
    -   [CVE-2016-2226](https://ubuntu.com/security/CVE-2016-2226) <!-- low -->
-   Most CVEs fixed in a single update?
-   binutils gets a lot of CVEs which are generally low priority -
    ie. objdump could crash or get code-exec if run on untrusted input - but
    since is installed in a lot of common developer scenarious we often get
    requests about these CVEs - even though they are unlikely to actually be
    able to be exploited in most scenarios
-   Thanks to Leo on our team (and Marc for the original backport of a lot of
    these patches)


### [[USN-5020-1](https://ubuntu.com/security/notices/USN-5020-1)] Ruby vulnerabilities [10:24] {#usn-5020-1-ruby-vulnerabilities-10-24}

-   3 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-32066](https://ubuntu.com/security/CVE-2021-32066) <!-- medium -->
    -   [CVE-2021-31810](https://ubuntu.com/security/CVE-2021-31810) <!-- low -->
    -   [CVE-2021-31799](https://ubuntu.com/security/CVE-2021-31799) <!-- medium -->
-   RCE, port scans / banner extractions, interpose on connections to bypass
    TLS


### [[USN-5021-1](https://ubuntu.com/security/notices/USN-5021-1)] curl vulnerabilities [10:46] {#usn-5021-1-curl-vulnerabilities-10-46}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-22924](https://ubuntu.com/security/CVE-2021-22924) <!-- medium -->
    -   [CVE-2021-22925](https://ubuntu.com/security/CVE-2021-22925) <!-- medium -->
    -   [CVE-2021-22898](https://ubuntu.com/security/CVE-2021-22898) <!-- low -->
-   Failed to initialise data when handling TELNET connections - if these
    structures happened to contain sensitive info -&gt; info leak
-   Could reuse connections from the connection pool in the wrong
    circumstances, leading to reusing wrong connection and sending data to
    wrong host


### [[USN-5022-1](https://ubuntu.com/security/notices/USN-5022-1)] MySQL vulnerabilities [11:36] {#usn-5022-1-mysql-vulnerabilities-11-36}

-   31 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-2441](https://ubuntu.com/security/CVE-2021-2441) <!-- medium -->
    -   [CVE-2021-2440](https://ubuntu.com/security/CVE-2021-2440) <!-- medium -->
    -   [CVE-2021-2437](https://ubuntu.com/security/CVE-2021-2437) <!-- medium -->
    -   [CVE-2021-2429](https://ubuntu.com/security/CVE-2021-2429) <!-- medium -->
    -   [CVE-2021-2427](https://ubuntu.com/security/CVE-2021-2427) <!-- medium -->
    -   [CVE-2021-2426](https://ubuntu.com/security/CVE-2021-2426) <!-- medium -->
    -   [CVE-2021-2425](https://ubuntu.com/security/CVE-2021-2425) <!-- medium -->
    -   [CVE-2021-2424](https://ubuntu.com/security/CVE-2021-2424) <!-- medium -->
    -   [CVE-2021-2422](https://ubuntu.com/security/CVE-2021-2422) <!-- medium -->
    -   [CVE-2021-2418](https://ubuntu.com/security/CVE-2021-2418) <!-- medium -->
    -   [CVE-2021-2417](https://ubuntu.com/security/CVE-2021-2417) <!-- medium -->
    -   [CVE-2021-2410](https://ubuntu.com/security/CVE-2021-2410) <!-- medium -->
    -   [CVE-2021-2402](https://ubuntu.com/security/CVE-2021-2402) <!-- medium -->
    -   [CVE-2021-2399](https://ubuntu.com/security/CVE-2021-2399) <!-- medium -->
    -   [CVE-2021-2390](https://ubuntu.com/security/CVE-2021-2390) <!-- medium -->
    -   [CVE-2021-2389](https://ubuntu.com/security/CVE-2021-2389) <!-- medium -->
    -   [CVE-2021-2387](https://ubuntu.com/security/CVE-2021-2387) <!-- medium -->
    -   [CVE-2021-2385](https://ubuntu.com/security/CVE-2021-2385) <!-- medium -->
    -   [CVE-2021-2384](https://ubuntu.com/security/CVE-2021-2384) <!-- medium -->
    -   [CVE-2021-2383](https://ubuntu.com/security/CVE-2021-2383) <!-- medium -->
    -   [CVE-2021-2374](https://ubuntu.com/security/CVE-2021-2374) <!-- medium -->
    -   [CVE-2021-2372](https://ubuntu.com/security/CVE-2021-2372) <!-- medium -->
    -   [CVE-2021-2370](https://ubuntu.com/security/CVE-2021-2370) <!-- medium -->
    -   [CVE-2021-2367](https://ubuntu.com/security/CVE-2021-2367) <!-- medium -->
    -   [CVE-2021-2357](https://ubuntu.com/security/CVE-2021-2357) <!-- medium -->
    -   [CVE-2021-2356](https://ubuntu.com/security/CVE-2021-2356) <!-- medium -->
    -   [CVE-2021-2354](https://ubuntu.com/security/CVE-2021-2354) <!-- medium -->
    -   [CVE-2021-2352](https://ubuntu.com/security/CVE-2021-2352) <!-- medium -->
    -   [CVE-2021-2342](https://ubuntu.com/security/CVE-2021-2342) <!-- medium -->
    -   [CVE-2021-2340](https://ubuntu.com/security/CVE-2021-2340) <!-- medium -->
    -   [CVE-2021-2339](https://ubuntu.com/security/CVE-2021-2339) <!-- medium -->
-   8.0.26 (focal, hirsute)
-   5.7.35 (bionic)


### [[USN-5023-1](https://ubuntu.com/security/notices/USN-5023-1)] Aspell vulnerability [12:00] {#usn-5023-1-aspell-vulnerability-12-00}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2019-25051](https://ubuntu.com/security/CVE-2019-25051) <!-- medium -->
-   Heap buffer overflow - fixed to actually validate size before using


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 20.10 Groovy Gorilla EOL [12:25] {#ubuntu-20-dot-10-groovy-gorilla-eol-12-25}

-   as of July 22, 2021, Ubuntu 20.10 is no longer supported.
-   No more package updates will be accepted to 20.10
-   Will be archived to old-releases.ubuntu.com in the coming weeks
-   Upgrade to Hirsute - <https://help.ubuntu.com/community/HirsuteUpgrades>
-   <https://lists.ubuntu.com/archives/ubuntu-security-announce/2021-July/006117.html>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)