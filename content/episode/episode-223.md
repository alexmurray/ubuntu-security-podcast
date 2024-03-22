+++
title = "Episode 223"
description = """
  This week we bring you a sneak peak of how Ubuntu 23.10 fared at Pwn2Own
  Vancouver 2024, plus news of malicious themes in the KDE Store and we cover
  security updates for the Linux kernel, X.Org X Server, TeX Live, Expat, Bash and
  more.
  """
date = 2024-03-22T16:44:00+10:30
lastmod = 2024-03-22T16:44:33+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E223.mp3"
podcast_duration = 1034
podcast_bytes = 17195285
permalink = "https://ubuntusecuritypodcast.org/episode-223/"
guid = "50edf2179cdf046568b40430dd07484f04a91601133004d7335a7266efb0853c28ca7a092de4e490194e54f4a51b4a4ba6c980826dfd4973a84f3f9faaea03d3"
+++

## Overview {#overview}

This week we bring you a sneak peak of how Ubuntu 23.10 fared at Pwn2Own
Vancouver 2024, plus news of malicious themes in the KDE Store and we cover
security updates for the Linux kernel, X.Org X Server, TeX Live, Expat, Bash and
more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

61 unique CVEs addressed


### [[USN-6681-3](https://ubuntu.com/security/notices/USN-6681-3)] Linux kernel vulnerabilities (00:54) {#usn-6681-3-linux-kernel-vulnerabilities--00-54}

-   8 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2024-0340](https://ubuntu.com/security/CVE-2024-0340) <!-- low -->
    -   [CVE-2023-6121](https://ubuntu.com/security/CVE-2023-6121) <!-- medium -->
    -   [CVE-2023-51782](https://ubuntu.com/security/CVE-2023-51782) <!-- medium -->
    -   [CVE-2023-51780](https://ubuntu.com/security/CVE-2023-51780) <!-- medium -->
    -   [CVE-2023-51779](https://ubuntu.com/security/CVE-2023-51779) <!-- medium -->
    -   [CVE-2023-4244](https://ubuntu.com/security/CVE-2023-4244) <!-- high -->
    -   [CVE-2023-22995](https://ubuntu.com/security/CVE-2023-22995) <!-- low -->
    -   [CVE-2021-44879](https://ubuntu.com/security/CVE-2021-44879) <!-- low -->
-   5.4 - IBM, Oracle
-   UAF due to a race-condition in netfilter - underflow a reference counter -&gt;
    UAF


### [[USN-6686-2](https://ubuntu.com/security/notices/USN-6686-2)] Linux kernel vulnerabilities (01:42) {#usn-6686-2-linux-kernel-vulnerabilities--01-42}

-   9 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2024-0607](https://ubuntu.com/security/CVE-2024-0607) <!-- medium -->
    -   [CVE-2024-0340](https://ubuntu.com/security/CVE-2024-0340) <!-- low -->
    -   [CVE-2023-6121](https://ubuntu.com/security/CVE-2023-6121) <!-- medium -->
    -   [CVE-2023-51782](https://ubuntu.com/security/CVE-2023-51782) <!-- medium -->
    -   [CVE-2023-51779](https://ubuntu.com/security/CVE-2023-51779) <!-- medium -->
    -   [CVE-2023-46862](https://ubuntu.com/security/CVE-2023-46862) <!-- medium -->
    -   [CVE-2023-46343](https://ubuntu.com/security/CVE-2023-46343) <!-- medium -->
    -   [CVE-2023-4134](https://ubuntu.com/security/CVE-2023-4134) <!-- low -->
    -   [CVE-2023-22995](https://ubuntu.com/security/CVE-2023-22995) <!-- low -->
-   5.15 - Raspi, Lowlatency


### [[USN-6699-1](https://ubuntu.com/security/notices/USN-6699-1)] Linux kernel vulnerabilities (01:52) {#usn-6699-1-linux-kernel-vulnerabilities--01-52}

-   3 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2024-24855](https://ubuntu.com/security/CVE-2024-24855) <!-- medium -->
    -   [CVE-2023-4921](https://ubuntu.com/security/CVE-2023-4921) <!-- high -->
    -   [CVE-2023-30456](https://ubuntu.com/security/CVE-2023-30456) <!-- high -->
-   3.13 - generic, lowlatency, server, virtual
-   KVM mishandling of control registers for nested guest VMs
    -   [[USN-6123-1] Linux kernel (OEM) vulnerabilities from Episode 197]({{< relref "episode-197#usn-6123-1-linux-kernel--oem--vulnerabilities--06-48" >}})
-   UAF in Quick Fair Queuing network packet scheduler
    -   Local privesc, reported to Google's kCTF


### [[USN-6700-1](https://ubuntu.com/security/notices/USN-6700-1)] Linux kernel vulnerabilities (02:40) {#usn-6700-1-linux-kernel-vulnerabilities--02-40}

-   7 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2024-24855](https://ubuntu.com/security/CVE-2024-24855) <!-- medium -->
    -   [CVE-2024-1086](https://ubuntu.com/security/CVE-2024-1086) <!-- high -->
    -   [CVE-2024-0775](https://ubuntu.com/security/CVE-2024-0775) <!-- medium -->
    -   [CVE-2023-51781](https://ubuntu.com/security/CVE-2023-51781) <!-- high -->
    -   [CVE-2023-39197](https://ubuntu.com/security/CVE-2023-39197) <!-- medium -->
    -   [CVE-2023-34256](https://ubuntu.com/security/CVE-2023-34256) <!-- low -->
    -   [CVE-2022-20567](https://ubuntu.com/security/CVE-2022-20567) <!-- medium -->
-   4.4 - generic, kvm, lowlatency, virtual, aws (14.04 only)
-   UAF in nftables - also originally reported to kCTF


### [[USN-6701-1](https://ubuntu.com/security/notices/USN-6701-1)] Linux kernel vulnerabilities {#usn-6701-1-linux-kernel-vulnerabilities}

-   12 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2024-24855](https://ubuntu.com/security/CVE-2024-24855) <!-- medium -->
    -   [CVE-2024-1086](https://ubuntu.com/security/CVE-2024-1086) <!-- high -->
    -   [CVE-2024-0775](https://ubuntu.com/security/CVE-2024-0775) <!-- medium -->
    -   [CVE-2023-6121](https://ubuntu.com/security/CVE-2023-6121) <!-- medium -->
    -   [CVE-2023-51781](https://ubuntu.com/security/CVE-2023-51781) <!-- high -->
    -   [CVE-2023-46838](https://ubuntu.com/security/CVE-2023-46838) <!-- medium -->
    -   [CVE-2023-4132](https://ubuntu.com/security/CVE-2023-4132) <!-- low -->
    -   [CVE-2023-39197](https://ubuntu.com/security/CVE-2023-39197) <!-- medium -->
    -   [CVE-2023-34256](https://ubuntu.com/security/CVE-2023-34256) <!-- low -->
    -   [CVE-2023-3006](https://ubuntu.com/security/CVE-2023-3006) <!-- medium -->
    -   [CVE-2023-23000](https://ubuntu.com/security/CVE-2023-23000) <!-- medium -->
    -   [CVE-2023-2002](https://ubuntu.com/security/CVE-2023-2002) <!-- medium -->
-   4.15 - oracle, kvm, aws, generic, lowlatency
-   UAF in nftables from above and UAF in AppleTalk network driver - [[USN-6648-1]
    Linux kernel vulnerabilities from Episode 220]({{< relref "episode-220#usn-6648-1-linux-kernel-vulnerabilities--02-00" >}})


### [[USN-6680-3](https://ubuntu.com/security/notices/USN-6680-3)] Linux kernel (AWS) vulnerabilities {#usn-6680-3-linux-kernel--aws--vulnerabilities}

-   7 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-25744](https://ubuntu.com/security/CVE-2024-25744) <!-- medium -->
    -   [CVE-2024-0607](https://ubuntu.com/security/CVE-2024-0607) <!-- medium -->
    -   [CVE-2023-6560](https://ubuntu.com/security/CVE-2023-6560) <!-- medium -->
    -   [CVE-2023-6121](https://ubuntu.com/security/CVE-2023-6121) <!-- medium -->
    -   [CVE-2023-51782](https://ubuntu.com/security/CVE-2023-51782) <!-- medium -->
    -   [CVE-2023-51779](https://ubuntu.com/security/CVE-2023-51779) <!-- medium -->
    -   [CVE-2023-46343](https://ubuntu.com/security/CVE-2023-46343) <!-- medium -->
-   6.5 - aws


### [[USN-6681-4](https://ubuntu.com/security/notices/USN-6681-4)] Linux kernel (AWS) vulnerabilities {#usn-6681-4-linux-kernel--aws--vulnerabilities}

-   8 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2024-0340](https://ubuntu.com/security/CVE-2024-0340) <!-- low -->
    -   [CVE-2023-6121](https://ubuntu.com/security/CVE-2023-6121) <!-- medium -->
    -   [CVE-2023-51782](https://ubuntu.com/security/CVE-2023-51782) <!-- medium -->
    -   [CVE-2023-51780](https://ubuntu.com/security/CVE-2023-51780) <!-- medium -->
    -   [CVE-2023-51779](https://ubuntu.com/security/CVE-2023-51779) <!-- medium -->
    -   [CVE-2023-4244](https://ubuntu.com/security/CVE-2023-4244) <!-- high -->
    -   [CVE-2023-22995](https://ubuntu.com/security/CVE-2023-22995) <!-- low -->
    -   [CVE-2021-44879](https://ubuntu.com/security/CVE-2021-44879) <!-- low -->
-   5.4 - aws
-   UAF in netfilter discussed earlier


### [[USN-6686-3](https://ubuntu.com/security/notices/USN-6686-3)] Linux kernel (Oracle) vulnerabilities {#usn-6686-3-linux-kernel--oracle--vulnerabilities}

-   9 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-0607](https://ubuntu.com/security/CVE-2024-0607) <!-- medium -->
    -   [CVE-2024-0340](https://ubuntu.com/security/CVE-2024-0340) <!-- low -->
    -   [CVE-2023-6121](https://ubuntu.com/security/CVE-2023-6121) <!-- medium -->
    -   [CVE-2023-51782](https://ubuntu.com/security/CVE-2023-51782) <!-- medium -->
    -   [CVE-2023-51779](https://ubuntu.com/security/CVE-2023-51779) <!-- medium -->
    -   [CVE-2023-46862](https://ubuntu.com/security/CVE-2023-46862) <!-- medium -->
    -   [CVE-2023-46343](https://ubuntu.com/security/CVE-2023-46343) <!-- medium -->
    -   [CVE-2023-4134](https://ubuntu.com/security/CVE-2023-4134) <!-- low -->
    -   [CVE-2023-22995](https://ubuntu.com/security/CVE-2023-22995) <!-- low -->
-   5.15 - oracle


### [[USN-6702-1](https://ubuntu.com/security/notices/USN-6702-1)] Linux kernel vulnerabilities {#usn-6702-1-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2024-24855](https://ubuntu.com/security/CVE-2024-24855) <!-- medium -->
    -   [CVE-2024-1086](https://ubuntu.com/security/CVE-2024-1086) <!-- high -->
    -   [CVE-2023-23004](https://ubuntu.com/security/CVE-2023-23004) <!-- medium -->
    -   [CVE-2023-23000](https://ubuntu.com/security/CVE-2023-23000) <!-- medium -->
-   5.4 - iot, ibm, bluefield, gkeop, kvm, oracle, gcp, generic, lowlatency, oem
-   Second netfilter UAF above


### [[USN-6587-5](https://ubuntu.com/security/notices/USN-6587-5)] X.Org X Server vulnerabilities (03:34) {#usn-6587-5-x-dot-org-x-server-vulnerabilities--03-34}

-   7 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2024-21886](https://ubuntu.com/security/CVE-2024-21886) <!-- medium -->
    -   [CVE-2024-21885](https://ubuntu.com/security/CVE-2024-21885) <!-- medium -->
    -   [CVE-2024-0409](https://ubuntu.com/security/CVE-2024-0409) <!-- medium -->
    -   [CVE-2024-0408](https://ubuntu.com/security/CVE-2024-0408) <!-- medium -->
    -   [CVE-2024-0229](https://ubuntu.com/security/CVE-2024-0229) <!-- medium -->
    -   [CVE-2023-6816](https://ubuntu.com/security/CVE-2023-6816) <!-- medium -->
    -   [CVE-2023-6478](https://ubuntu.com/security/CVE-2023-6478) <!-- medium -->
-   Previous updates for X now available in 14.04 ESM
-   Most issues either OOB R/W - impact is then can crash X Server or potentially
    get code execution - nowadays X runs unprivileged but in 14.04 still runs as
    root so these vulns are more severe in the older releases


### [[USN-6673-2](https://ubuntu.com/security/notices/USN-6673-2)] python-cryptography vulnerability (04:21) {#usn-6673-2-python-cryptography-vulnerability--04-21}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-50782](https://ubuntu.com/security/CVE-2023-50782) <!-- medium -->
-   [[USN-6673-1] python-cryptography vulnerabilities from Episode 220]({{< relref "episode-221#usn-6673-1-python-cryptography-vulnerabilities--07-30" >}})


### [[USN-6695-1](https://ubuntu.com/security/notices/USN-6695-1)] TeX Live vulnerabilities (04:28) {#usn-6695-1-tex-live-vulnerabilities--04-28}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-25262](https://ubuntu.com/security/CVE-2024-25262) <!-- medium -->
    -   [CVE-2023-32668](https://ubuntu.com/security/CVE-2023-32668) <!-- medium -->
    -   [CVE-2019-18604](https://ubuntu.com/security/CVE-2019-18604) <!-- low -->
-   Heap buffer overflow via a crafted TTF file
-   LuaTeX specific issue - allowed a document to make arbitrary network requests
    since it didn't disable access to the underlying lua socket library
-   Misused sprint() resulting in a buffer overflow in the axohelp - helper
    program for the LaTeX axodraw2 package when used with pdflatex


### [[USN-6694-1](https://ubuntu.com/security/notices/USN-6694-1)] Expat vulnerabilities (05:24) {#usn-6694-1-expat-vulnerabilities--05-24}

-   2 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-28757](https://ubuntu.com/security/CVE-2024-28757) <!-- medium -->
    -   [CVE-2023-52425](https://ubuntu.com/security/CVE-2023-52425) <!-- medium -->
-   C library for parsing xml
    -   used by many other applications like gdb, dbus, audacity, git, python,
        polkit, squid and more
-   CPU/memory-based DoS since would do many full reparsings of a document in some cases
-   XML Entity Expansion attack
    -   [billion laughs attack](https://en.wikipedia.org/wiki/Billion_laughs_attack) / XML bomb - 10 entities which each comprise 10 of the
        previous entity with the document containing a single instance of the
        largest entity - 1 billion copies of the original entity


### [[USN-6696-1](https://ubuntu.com/security/notices/USN-6696-1)] OpenJDK 8 vulnerabilities (06:40) {#usn-6696-1-openjdk-8-vulnerabilities--06-40}

-   6 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-20952](https://ubuntu.com/security/CVE-2024-20952) <!-- medium -->
    -   [CVE-2024-20945](https://ubuntu.com/security/CVE-2024-20945) <!-- medium -->
    -   [CVE-2024-20926](https://ubuntu.com/security/CVE-2024-20926) <!-- medium -->
    -   [CVE-2024-20921](https://ubuntu.com/security/CVE-2024-20921) <!-- medium -->
    -   [CVE-2024-20919](https://ubuntu.com/security/CVE-2024-20919) <!-- medium -->
    -   [CVE-2024-20918](https://ubuntu.com/security/CVE-2024-20918) <!-- medium -->
-   [[USN-6660-1, USN-6661-1] OpenJDK 11 &amp; 17 vulnerabilities from Episode 220]({{< relref "episode-220#usn-6660-1-usn-6661-1-openjdk-11-and-17-vulnerabilities--08-17" >}})


### [[USN-6697-1](https://ubuntu.com/security/notices/USN-6697-1)] Bash vulnerability (07:01) {#usn-6697-1-bash-vulnerability--07-01}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-3715](https://ubuntu.com/security/CVE-2022-3715) <!-- medium -->
-   Heap buffer overflow on a valid parameter transformation - can then
    unexpectedly lead to possible code execution


### [[USN-6698-1](https://ubuntu.com/security/notices/USN-6698-1)] Vim vulnerability (07:30) {#usn-6698-1-vim-vulnerability--07-30}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-22667](https://ubuntu.com/security/CVE-2024-22667) <!-- low -->
-   stack buffer overflow when parsing a crafted command file - ie. the user has
    to load a crafted file to be sourced by vim


### [[USN-6703-1](https://ubuntu.com/security/notices/USN-6703-1)] Firefox vulnerabilities (07:48) {#usn-6703-1-firefox-vulnerabilities--07-48}

-   11 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2024-2613](https://ubuntu.com/security/CVE-2024-2613) <!-- medium -->
    -   [CVE-2024-2612](https://ubuntu.com/security/CVE-2024-2612) <!-- medium -->
    -   [CVE-2024-2610](https://ubuntu.com/security/CVE-2024-2610) <!-- medium -->
    -   [CVE-2024-2608](https://ubuntu.com/security/CVE-2024-2608) <!-- medium -->
    -   [CVE-2024-2607](https://ubuntu.com/security/CVE-2024-2607) <!-- medium -->
    -   [CVE-2024-2606](https://ubuntu.com/security/CVE-2024-2606) <!-- medium -->
    -   [CVE-2023-5388](https://ubuntu.com/security/CVE-2023-5388) <!-- medium -->
    -   [CVE-2024-2615](https://ubuntu.com/security/CVE-2024-2615) <!-- medium -->
    -   [CVE-2024-2614](https://ubuntu.com/security/CVE-2024-2614) <!-- medium -->
    -   [CVE-2024-2611](https://ubuntu.com/security/CVE-2024-2611) <!-- medium -->
    -   [CVE-2024-2609](https://ubuntu.com/security/CVE-2024-2609) <!-- medium -->
-   124.0


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Summary of Pwn2Own Vancouver 2024 results against Ubuntu 23.10 (08:05) {#summary-of-pwn2own-vancouver-2024-results-against-ubuntu-23-dot-10--08-05}

-   <https://www.zerodayinitiative.com/blog/2024/3/20/pwn2own-vancouver-2024-day-one-results>
-   The DEVCORE Team was able to execute their LPE attack against Ubuntu
    Linux. However, the bug they used was previously known. They still earn
    $10,000 and 1 Master of Pwn points.
    -   <https://youtube.com/shorts/fXUrMIM2KYc?si=VIR7YKIt86NGEceU>
-   Kyle Zeng from ASU SEFCOM used an ever tricky race condition to escalate
    privileges on Ubuntu Linux desktop. This earns him him $20,000 and 20 Master
    of Pwn points.
    -   <https://www.youtube.com/shorts/HSIasEbEkXY>
-   <https://www.zerodayinitiative.com/blog/2024/3/21/pwn2own-vancouver-2024-day-two-results>
-   STAR Labs SG successfully demonstrated their privilege escalation on Ubuntu
    desktop. However, they used a bug that was previously reported. They still
    earn $5,000 and 1 Master of Pwn point.
-   The final entry of Pwn2Own Vancouver 2024 ends as a collision as Theori used a
    bug that was previously know to escalate privileges on Ubuntu desktop. He
    still wins $5,000 and 1 Master of Pwn point.


### Reports of malicious themes in KDE Store (10:27) {#reports-of-malicious-themes-in-kde-store--10-27}

-   <https://www.bleepingcomputer.com/news/linux/kde-advises-extreme-caution-after-theme-wipes-linux-users-files/>
-   <https://floss.social/@kde/112128243960545659>
-   <https://www.reddit.com/r/kde/comments/1bixmbx/do_not_install_global_themes_some_wipe_out_all/>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
