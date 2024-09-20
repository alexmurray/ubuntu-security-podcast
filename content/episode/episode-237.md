+++
title = "Episode 237"
description = """
  John and Maximé have been talking about Ubuntu's AppArmor user namespace
  restrictions at the the Linux Security Summit in Europe this past week, plus we
  cover some more details from the official announcement of permission prompting
  in Ubuntu 24.10, a new release of Intel TDX for Ubuntu 24.04 LTS and more.
  """
date = 2024-09-20T11:57:00+09:30
lastmod = 2024-09-20T14:34:04+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E237.mp3"
podcast_duration = 976
podcast_bytes = 16295769
permalink = "https://ubuntusecuritypodcast.org/episode-237/"
guid = "b8a7f759543db68aa6ff041962efbead323957ed57ee414527693528c7b8090dc64d18bfde1e13c82ee7456f77f5104e226bf3117158f6e2a0ec96de75997505"
+++

## Overview {#overview}

John and Maximé have been talking about Ubuntu's AppArmor user namespace
restrictions at the the Linux Security Summit in Europe this past week, plus we
cover some more details from the official announcement of permission prompting
in Ubuntu 24.10, a new release of Intel TDX for Ubuntu 24.04 LTS and more.


## This week in Ubuntu Security Updates (01:11) {#this-week-in-ubuntu-security-updates--01-11}

613 unique CVEs addressed in the past fortnight


### [[USN-6989-1](https://ubuntu.com/security/notices/USN-6989-1)] OpenStack vulnerability {#usn-6989-1-openstack-vulnerability}

-   1 CVEs addressed in Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-44082](https://ubuntu.com/security/CVE-2024-44082) <!-- medium -->


### [[USN-6990-1](https://ubuntu.com/security/notices/USN-6990-1)] znc vulnerability {#usn-6990-1-znc-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-39844](https://ubuntu.com/security/CVE-2024-39844) <!-- medium -->


### [[USN-6992-1](https://ubuntu.com/security/notices/USN-6992-1)] Firefox vulnerabilities {#usn-6992-1-firefox-vulnerabilities}

-   8 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2024-8385](https://ubuntu.com/security/CVE-2024-8385) <!-- medium -->
    -   [CVE-2024-8384](https://ubuntu.com/security/CVE-2024-8384) <!-- medium -->
    -   [CVE-2024-8381](https://ubuntu.com/security/CVE-2024-8381) <!-- medium -->
    -   [CVE-2024-8389](https://ubuntu.com/security/CVE-2024-8389) <!-- medium -->
    -   [CVE-2024-8387](https://ubuntu.com/security/CVE-2024-8387) <!-- medium -->
    -   [CVE-2024-8386](https://ubuntu.com/security/CVE-2024-8386) <!-- medium -->
    -   [CVE-2024-8383](https://ubuntu.com/security/CVE-2024-8383) <!-- medium -->
    -   [CVE-2024-8382](https://ubuntu.com/security/CVE-2024-8382) <!-- medium -->


### [[USN-6993-1](https://ubuntu.com/security/notices/USN-6993-1)] Vim vulnerabilities {#usn-6993-1-vim-vulnerabilities}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-43374](https://ubuntu.com/security/CVE-2024-43374) <!-- medium -->
    -   [CVE-2024-41957](https://ubuntu.com/security/CVE-2024-41957) <!-- medium -->


### [[USN-6991-1](https://ubuntu.com/security/notices/USN-6991-1)] AIOHTTP vulnerability {#usn-6991-1-aiohttp-vulnerability}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-23334](https://ubuntu.com/security/CVE-2024-23334) <!-- medium -->


### [[USN-6995-1](https://ubuntu.com/security/notices/USN-6995-1)] Thunderbird vulnerabilities {#usn-6995-1-thunderbird-vulnerabilities}

-   10 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-8384](https://ubuntu.com/security/CVE-2024-8384) <!-- medium -->
    -   [CVE-2024-8381](https://ubuntu.com/security/CVE-2024-8381) <!-- medium -->
    -   [CVE-2024-7525](https://ubuntu.com/security/CVE-2024-7525) <!-- medium -->
    -   [CVE-2024-7522](https://ubuntu.com/security/CVE-2024-7522) <!-- medium -->
    -   [CVE-2024-7519](https://ubuntu.com/security/CVE-2024-7519) <!-- medium -->
    -   [CVE-2024-8382](https://ubuntu.com/security/CVE-2024-8382) <!-- medium -->
    -   [CVE-2024-7529](https://ubuntu.com/security/CVE-2024-7529) <!-- medium -->
    -   [CVE-2024-7527](https://ubuntu.com/security/CVE-2024-7527) <!-- medium -->
    -   [CVE-2024-7526](https://ubuntu.com/security/CVE-2024-7526) <!-- medium -->
    -   [CVE-2024-7521](https://ubuntu.com/security/CVE-2024-7521) <!-- medium -->


### [[USN-6996-1](https://ubuntu.com/security/notices/USN-6996-1)] WebKitGTK vulnerabilities {#usn-6996-1-webkitgtk-vulnerabilities}

-   6 CVEs addressed in Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-4558](https://ubuntu.com/security/CVE-2024-4558) <!-- medium -->
    -   [CVE-2024-40789](https://ubuntu.com/security/CVE-2024-40789) <!-- medium -->
    -   [CVE-2024-40782](https://ubuntu.com/security/CVE-2024-40782) <!-- medium -->
    -   [CVE-2024-40780](https://ubuntu.com/security/CVE-2024-40780) <!-- medium -->
    -   [CVE-2024-40779](https://ubuntu.com/security/CVE-2024-40779) <!-- medium -->
    -   [CVE-2024-40776](https://ubuntu.com/security/CVE-2024-40776) <!-- medium -->


### [[USN-6841-2](https://ubuntu.com/security/notices/USN-6841-2)] PHP vulnerability {#usn-6841-2-php-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2024-5458](https://ubuntu.com/security/CVE-2024-5458) <!-- medium -->


### [[USN-6997-1](https://ubuntu.com/security/notices/USN-6997-1), [USN-6997-2](https://ubuntu.com/security/notices/USN-6997-2)] LibTIFF vulnerability {#usn-6997-1-usn-6997-2-libtiff-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-7006](https://ubuntu.com/security/CVE-2024-7006) <!-- medium -->


### [[USN-6994-1](https://ubuntu.com/security/notices/USN-6994-1)] Netty vulnerabilities {#usn-6994-1-netty-vulnerabilities}

-   2 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-44487](https://ubuntu.com/security/CVE-2023-44487) <!-- high -->
    -   [CVE-2023-34462](https://ubuntu.com/security/CVE-2023-34462) <!-- medium -->
-   HTTP/2 DoS, seen exploited in the wild and listen on the CISA KEV


### [[USN-6998-1](https://ubuntu.com/security/notices/USN-6998-1)] Unbound vulnerabilities {#usn-6998-1-unbound-vulnerabilities}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-43168](https://ubuntu.com/security/CVE-2024-43168) <!-- medium -->
    -   [CVE-2024-43167](https://ubuntu.com/security/CVE-2024-43167) <!-- medium -->


### [[USN-6999-1](https://ubuntu.com/security/notices/USN-6999-1)] Linux kernel vulnerabilities {#usn-6999-1-linux-kernel-vulnerabilities}

-   220 CVEs addressed in Noble (24.04 LTS)
-   Full CVE list elided - see USN for details


### [[USN-7003-1](https://ubuntu.com/security/notices/USN-7003-1), [USN-7003-2](https://ubuntu.com/security/notices/USN-7003-2), [USN-7003-3](https://ubuntu.com/security/notices/USN-7003-3)] Linux kernel vulnerabilities {#usn-7003-1-usn-7003-2-usn-7003-3-linux-kernel-vulnerabilities}

-   85 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
-   Full CVE list elided - see USN for details


### [[USN-7004-1](https://ubuntu.com/security/notices/USN-7004-1)] Linux kernel vulnerabilities {#usn-7004-1-linux-kernel-vulnerabilities}

-   221 CVEs addressed in Noble (24.04 LTS)
-   Full CVE list elided - see USN for details


### [[USN-7005-1](https://ubuntu.com/security/notices/USN-7005-1), [USN-7005-2](https://ubuntu.com/security/notices/USN-7005-2)] Linux kernel vulnerabilities {#usn-7005-1-usn-7005-2-linux-kernel-vulnerabilities}

-   219 CVEs addressed in Jammy (22.04 LTS), Noble (24.04 LTS)
-   Full CVE list elided - see USN for details


### [[USN-7006-1](https://ubuntu.com/security/notices/USN-7006-1)] Linux kernel vulnerabilities {#usn-7006-1-linux-kernel-vulnerabilities}

-   94 CVEs addressed in Focal (20.04 LTS)
-   Full CVE list elided - see USN for details


### [[USN-7007-1](https://ubuntu.com/security/notices/USN-7007-1)] Linux kernel vulnerabilities {#usn-7007-1-linux-kernel-vulnerabilities}

-   219 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
-   Full CVE list elided - see USN for details


### [[USN-7008-1](https://ubuntu.com/security/notices/USN-7008-1)] Linux kernel vulnerabilities {#usn-7008-1-linux-kernel-vulnerabilities}

-   222 CVEs addressed in Jammy (22.04 LTS)
-   Full CVE list elided - see USN for details


### [[USN-7009-1](https://ubuntu.com/security/notices/USN-7009-1)] Linux kernel vulnerabilities {#usn-7009-1-linux-kernel-vulnerabilities}

-   219 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
-   Full CVE list elided - see USN for details


### [[USN-7019-1](https://ubuntu.com/security/notices/USN-7019-1)] Linux kernel vulnerabilities {#usn-7019-1-linux-kernel-vulnerabilities}

-   429 CVEs addressed in Jammy (22.04 LTS)
-   Full CVE list elided - see USN for details


### [[USN-7002-1](https://ubuntu.com/security/notices/USN-7002-1)] Setuptools vulnerability {#usn-7002-1-setuptools-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-6345](https://ubuntu.com/security/CVE-2024-6345) <!-- medium -->


### [[USN-7000-1](https://ubuntu.com/security/notices/USN-7000-1), [USN-7000-2](https://ubuntu.com/security/notices/USN-7000-2)] Expat vulnerabilities {#usn-7000-1-usn-7000-2-expat-vulnerabilities}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-45492](https://ubuntu.com/security/CVE-2024-45492) <!-- medium -->
    -   [CVE-2024-45491](https://ubuntu.com/security/CVE-2024-45491) <!-- medium -->
    -   [CVE-2024-45490](https://ubuntu.com/security/CVE-2024-45490) <!-- medium -->


### [[USN-7001-1](https://ubuntu.com/security/notices/USN-7001-1), [USN-7001-2](https://ubuntu.com/security/notices/USN-7001-2)] xmltok library vulnerabilities {#usn-7001-1-usn-7001-2-xmltok-library-vulnerabilities}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-45491](https://ubuntu.com/security/CVE-2024-45491) <!-- medium -->
    -   [CVE-2024-45490](https://ubuntu.com/security/CVE-2024-45490) <!-- medium -->


### [[USN-6560-3](https://ubuntu.com/security/notices/USN-6560-3)] OpenSSH vulnerability {#usn-6560-3-openssh-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-51385](https://ubuntu.com/security/CVE-2023-51385) <!-- medium -->


### [[USN-7011-1](https://ubuntu.com/security/notices/USN-7011-1), [USN-7011-2](https://ubuntu.com/security/notices/USN-7011-2)] ClamAV vulnerabilities {#usn-7011-1-usn-7011-2-clamav-vulnerabilities}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-20506](https://ubuntu.com/security/CVE-2024-20506) <!-- medium -->
    -   [CVE-2024-20505](https://ubuntu.com/security/CVE-2024-20505) <!-- medium -->


### [[USN-7012-1](https://ubuntu.com/security/notices/USN-7012-1)] curl vulnerability {#usn-7012-1-curl-vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-8096](https://ubuntu.com/security/CVE-2024-8096) <!-- medium -->


### [[USN-7013-1](https://ubuntu.com/security/notices/USN-7013-1)] Dovecot vulnerabilities {#usn-7013-1-dovecot-vulnerabilities}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-23185](https://ubuntu.com/security/CVE-2024-23185) <!-- medium -->
    -   [CVE-2024-23184](https://ubuntu.com/security/CVE-2024-23184) <!-- medium -->


### [[USN-7014-1](https://ubuntu.com/security/notices/USN-7014-1)] nginx vulnerability {#usn-7014-1-nginx-vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-7347](https://ubuntu.com/security/CVE-2024-7347) <!-- medium -->


### [[USN-7015-1](https://ubuntu.com/security/notices/USN-7015-1)] Python vulnerabilities {#usn-7015-1-python-vulnerabilities}

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-8088](https://ubuntu.com/security/CVE-2024-8088) <!-- medium -->
    -   [CVE-2024-7592](https://ubuntu.com/security/CVE-2024-7592) <!-- low -->
    -   [CVE-2024-6923](https://ubuntu.com/security/CVE-2024-6923) <!-- medium -->
    -   [CVE-2024-6232](https://ubuntu.com/security/CVE-2024-6232) <!-- medium -->
    -   [CVE-2023-27043](https://ubuntu.com/security/CVE-2023-27043) <!-- medium -->


### [[USN-7010-1](https://ubuntu.com/security/notices/USN-7010-1)] DCMTK vulnerabilities {#usn-7010-1-dcmtk-vulnerabilities}

-   9 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-34509](https://ubuntu.com/security/CVE-2024-34509) <!-- medium -->
    -   [CVE-2024-34508](https://ubuntu.com/security/CVE-2024-34508) <!-- medium -->
    -   [CVE-2024-28130](https://ubuntu.com/security/CVE-2024-28130) <!-- medium -->
    -   [CVE-2022-43272](https://ubuntu.com/security/CVE-2022-43272) <!-- low -->
    -   [CVE-2022-2121](https://ubuntu.com/security/CVE-2022-2121) <!-- low -->
    -   [CVE-2021-41690](https://ubuntu.com/security/CVE-2021-41690) <!-- low -->
    -   [CVE-2021-41689](https://ubuntu.com/security/CVE-2021-41689) <!-- medium -->
    -   [CVE-2021-41688](https://ubuntu.com/security/CVE-2021-41688) <!-- low -->
    -   [CVE-2021-41687](https://ubuntu.com/security/CVE-2021-41687) <!-- low -->


### [[USN-7016-1](https://ubuntu.com/security/notices/USN-7016-1)] FRR vulnerability {#usn-7016-1-frr-vulnerability}

-   1 CVEs addressed in Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-44070](https://ubuntu.com/security/CVE-2024-44070) <!-- medium -->


### [[USN-7017-1](https://ubuntu.com/security/notices/USN-7017-1)] Quagga vulnerability {#usn-7017-1-quagga-vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2024-44070](https://ubuntu.com/security/CVE-2024-44070) <!-- medium -->


### [[USN-7018-1](https://ubuntu.com/security/notices/USN-7018-1)] OpenSSL vulnerabilities {#usn-7018-1-openssl-vulnerabilities}

-   6 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2024-0727](https://ubuntu.com/security/CVE-2024-0727) <!-- low -->
    -   [CVE-2023-3446](https://ubuntu.com/security/CVE-2023-3446) <!-- low -->
    -   [CVE-2022-2068](https://ubuntu.com/security/CVE-2022-2068) <!-- medium -->
    -   [CVE-2022-1292](https://ubuntu.com/security/CVE-2022-1292) <!-- medium -->
    -   [CVE-2021-23840](https://ubuntu.com/security/CVE-2021-23840) <!-- low -->
    -   [CVE-2020-1968](https://ubuntu.com/security/CVE-2020-1968) <!-- low -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Linux Security Summit Europe 2024 (03:44) {#linux-security-summit-europe-2024--03-44}

-   <https://events.linuxfoundation.org/linux-security-summit-europe/program/schedule/>
-   Sep 16-17 - Vienna, Austria
-   John Johansen and Maxime Bélair from AppArmor team presented "Restricting
    Unprivileged User Namespaces in Ubuntu"
    -   <https://youtu.be/yCHGmdXpylA?t=1053>
    -   <https://static.sched.com/hosted_files/lsseu2024/ed/Restricting%20Unprivileged%20User%20Namespaces%20In%20Ubuntu.pdf>
-   Other talks
    -   Deep-dive into xz-utils supply chain attack
    -   Internals of the SLUB memory allocator for exploit developers
    -   Landlock update - including details of new IOCTL restrictions etc
    -   systemd and TPM2 update


### Official announcement of Permissions Prompting in Ubuntu 24.10 (09:00) {#official-announcement-of-permissions-prompting-in-ubuntu-24-dot-10--09-00}

-   <https://discourse.ubuntu.com/t/ubuntu-desktop-s-24-10-dev-cycle-part-5-introducing-permissions-prompting/47963>
-   [Ubuntu Security Center with snapd-based AppArmor home file access prompting preview in episode 236]({{< relref "episode-236#ubuntu-security-center-with-snapd-based-apparmor-home-file-access-prompting-preview--05-45" >}})
-   Even works for command-line applications etc - not just graphical
-   Covers future developments as well:
    -   Better default response suggestions based on user feedback.
    -   Shell integration of the prompting pop-ups (eg full screen takeovers)
    -   Improved rule management summaries and better messaging of overlapping or redundant prompts.
    -   Expansion of the prompting system to cover additional snap interfaces such as camera and microphone access.
    -   Smarter client side analysis of prompts, recommending additional options if multiple similar prompts are detected.


### Version 2.1 of IntelⓇ TDX on Ubuntu 24.04 LTS Released (11:46) {#version-2-dot-1-of-intel-tdx-on-ubuntu-24-dot-04-lts-released--11-46}

-   <https://discourse.ubuntu.com/t/version-2-1-of-intel-tdx-on-ubuntu-24-04-lts-released/47918/1>
-   Confidential computing - using TDX to run VMs in confidential mode - runs
    workloads (VMs) in hardware-backed isolated execution environments (Trust
    Domains). VM memory isolation via encryption in hardware so can't be accessed
    by the hypervisor, remote attestation etc ([Confidential Computing with Ijlal
    Loutfi and Karen Horovitz from Episode 230]({{< relref "episode-230#confidential-computing-with-ijlal-loutfi-and-karen-horovitz--01-17" >}}))
-   <https://discourse.ubuntu.com/t/intel-tdx-1-0-technology-preview-available-on-ubuntu-23-10/40698>
-   Scripting to setup the required elements to use TDX on Ubuntu 24.04 host and
    then setup guest VMs to run in confidential mode
    -   Install server image, run scripts, enable TDX in BIOS, create VM images etc
    -   Can also configure remote attestation of VM too
-   See full changes at <https://github.com/canonical/tdx/releases/tag/2.1>


### Ubuntu 22.04.5 LTS released (13:45) {#ubuntu-22-dot-04-dot-5-lts-released--13-45}

-   <https://discourse.ubuntu.com/t/jammy-jellyfish-point-release-changes/29835/8>
    -   Only covers changes in main and restricted, doesn't list security updates either
-   <https://discourse.ubuntu.com/t/jammy-jellyfish-release-notes/24668>


### AppArmor security update for CVE-2016-1585 published (14:23) {#apparmor-security-update-for-cve-2016-1585-published--14-23}

-   [Upcoming AppArmor Security update for CVE-2016-1585 from Episode 226]({{< relref "episode-226#upcoming-apparmor-security-update-for-cve-2016-1585" >}})
-   <https://discourse.ubuntu.com/t/upcoming-apparmor-security-update-for-cve-2016-1585/44268/3>
-   Now published to -updates pocket for 20.04 LTS and 22.04 LTS
-   Will be published to -security pocket next week


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
