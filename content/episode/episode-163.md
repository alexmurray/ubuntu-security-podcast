+++
title = "Episode 163"
description = """
  This week we dig into some of the details of another recent Linux malware
  sample called Symbiote, plus we cover security updates for the Linux
  kernel, vim, FreeRDP, NTFS-3G and more.
  """
date = 2022-06-10T15:40:00+09:30
lastmod = 2022-06-10T15:41:28+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E163.mp3"
podcast_duration = 853
podcast_bytes = 11058577
permalink = "https://ubuntusecuritypodcast.org/episode-163/"
guid = "f57e6634c8d46754d0b82ac6a7aa5e42f25f2a416fb7a2bd9a0cefe44d971d7d22620f859f114e78f8a4149a787e7077d3e87f881895ec66144d3d5ce098dd30"
+++

## Overview {#overview}

This week we dig into some of the details of another recent Linux malware
sample called Symbiote, plus we cover security updates for the Linux
kernel, vim, FreeRDP, NTFS-3G and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

82 unique CVEs addressed


### [[USN-5456-1](https://ubuntu.com/security/notices/USN-5456-1)] ImageMagick vulnerability [00:36] {#usn-5456-1-imagemagick-vulnerability-00-36}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2022-28463](https://ubuntu.com/security/CVE-2022-28463) <!-- medium -->
-   Heap UAF found by oss-fuzz


### [[LSN-0086-1](https://ubuntu.com/security/notices/LSN-0086-1)] Linux kernel vulnerability [00:51] {#lsn-0086-1-linux-kernel-vulnerability-00-51}

-   7 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-30594](https://ubuntu.com/security/CVE-2022-30594) <!-- medium -->
    -   [CVE-2022-29581](https://ubuntu.com/security/CVE-2022-29581) <!-- high -->
    -   [CVE-2022-21499](https://ubuntu.com/security/CVE-2022-21499) <!-- high -->
    -   [CVE-2022-1116](https://ubuntu.com/security/CVE-2022-1116) <!-- high -->
    -   [CVE-2022-1055](https://ubuntu.com/security/CVE-2022-1055) <!-- high -->
    -   [CVE-2022-0492](https://ubuntu.com/security/CVE-2022-0492) <!-- high -->
    -   [CVE-2021-39713](https://ubuntu.com/security/CVE-2021-39713) <!-- high -->
-   Various recent local privesc vulns:
    -   cgroups v1 `release_agent`
    -   UAF in network scheduling subsystem
    -   UAF in network traffic control subsystem
    -   integer overflow in `io_uring`
    -   seccomp restrictions bypass
    -   UAF in network queuing and scheduling subsystem
-   Secure boot bypass through `kgdb`

<!--listend-->

```shell
canonical-livepatch status
```

| Kernel type     | 22.04 | 20.04 | 18.04 | 16.04 | 14.04 |
|-----------------|-------|-------|-------|-------|-------|
| aws             | —     | 86.3  | 86.3  | 86.3  | —     |
| aws-5.4         | —     | —     | 86.3  | —     | —     |
| aws-hwe         | —     | —     | —     | 86.3  | —     |
| azure           | —     | 86.3  | —     | 86.3  | —     |
| azure-4.15      | —     | —     | 86.3  | —     | —     |
| azure-5.4       | —     | —     | 86.3  | —     | —     |
| gcp             | 86.4  | 86.3  | —     | 86.3  | —     |
| gcp-4.15        | —     | —     | 86.3  | —     | —     |
| gcp-5.4         | —     | —     | 86.3  | —     | —     |
| generic-4.15    | —     | —     | 86.3  | 86.3  | —     |
| generic-4.4     | —     | —     | —     | 86.3  | 86.3  |
| generic-5.4     | —     | 86.3  | 86.3  | —     | —     |
| gke             | 86.4  | 86.3  | —     | —     | —     |
| gke-4.15        | —     | —     | 86.3  | —     | —     |
| gke-5.4         | —     | —     | 86.3  | —     | —     |
| gkeop           | —     | 86.3  | —     | —     | —     |
| gkeop-5.4       | —     | —     | 86.3  | —     | —     |
| ibm             | 86.4  | 86.3  | —     | —     | —     |
| ibm-5.4         | —     | —     | 86.3  | —     | —     |
| linux           | 86.4  | —     | —     | —     | —     |
| lowlatency      | 86.4  | —     | —     | —     | —     |
| lowlatency-4.15 | —     | —     | 86.3  | 86.3  | —     |
| lowlatency-4.4  | —     | —     | —     | 86.3  | 86.3  |
| lowlatency-5.4  | —     | 86.3  | 86.3  | —     | —     |
| oem             | —     | —     | 86.3  | —     | —     |


### [[USN-5465-1](https://ubuntu.com/security/notices/USN-5465-1)] Linux kernel vulnerabilities [02:02] {#usn-5465-1-linux-kernel-vulnerabilities-02-02}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-30594](https://ubuntu.com/security/CVE-2022-30594) <!-- medium -->
    -   [CVE-2022-1966](https://ubuntu.com/security/CVE-2022-1966) <!-- high -->
    -   [CVE-2022-21499](https://ubuntu.com/security/CVE-2022-21499) <!-- high -->
-   secure boot bypass via kgdb
-   UAF in netfliter -&gt; privesc
-   seccomp restrictions bypass


### [[USN-5466-1](https://ubuntu.com/security/notices/USN-5466-1)] Linux kernel vulnerabilities {#usn-5466-1-linux-kernel-vulnerabilities}

-   8 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2022-28390](https://ubuntu.com/security/CVE-2022-28390) <!-- medium -->
    -   [CVE-2022-28356](https://ubuntu.com/security/CVE-2022-28356) <!-- medium -->
    -   [CVE-2022-1419](https://ubuntu.com/security/CVE-2022-1419) <!-- medium -->
    -   [CVE-2022-1016](https://ubuntu.com/security/CVE-2022-1016) <!-- medium -->
    -   [CVE-2021-4149](https://ubuntu.com/security/CVE-2021-4149) <!-- medium -->
    -   [CVE-2021-3772](https://ubuntu.com/security/CVE-2021-3772) <!-- low -->
    -   [CVE-2022-1966](https://ubuntu.com/security/CVE-2022-1966) <!-- high -->
    -   [CVE-2022-21499](https://ubuntu.com/security/CVE-2022-21499) <!-- high -->
-   secure boot bypass, netfilter UAF plus btrfs deadlock, infoleak in
    netfilter + virtual graphics manager, double free in 802.2 LLC driver and
    EMS CAN/USB drivers


### [[USN-5467-1](https://ubuntu.com/security/notices/USN-5467-1)] Linux kernel vulnerabilities [02:29] {#usn-5467-1-linux-kernel-vulnerabilities-02-29}

-   21 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-28390](https://ubuntu.com/security/CVE-2022-28390) <!-- medium -->
    -   [CVE-2022-28389](https://ubuntu.com/security/CVE-2022-28389) <!-- medium -->
    -   [CVE-2022-28356](https://ubuntu.com/security/CVE-2022-28356) <!-- medium -->
    -   [CVE-2022-26966](https://ubuntu.com/security/CVE-2022-26966) <!-- medium -->
    -   [CVE-2022-24958](https://ubuntu.com/security/CVE-2022-24958) <!-- medium -->
    -   [CVE-2022-23042](https://ubuntu.com/security/CVE-2022-23042) <!-- medium -->
    -   [CVE-2022-23041](https://ubuntu.com/security/CVE-2022-23041) <!-- medium -->
    -   [CVE-2022-23040](https://ubuntu.com/security/CVE-2022-23040) <!-- medium -->
    -   [CVE-2022-23039](https://ubuntu.com/security/CVE-2022-23039) <!-- medium -->
    -   [CVE-2022-23038](https://ubuntu.com/security/CVE-2022-23038) <!-- medium -->
    -   [CVE-2022-23037](https://ubuntu.com/security/CVE-2022-23037) <!-- medium -->
    -   [CVE-2022-23036](https://ubuntu.com/security/CVE-2022-23036) <!-- medium -->
    -   [CVE-2022-1516](https://ubuntu.com/security/CVE-2022-1516) <!-- medium -->
    -   [CVE-2022-1353](https://ubuntu.com/security/CVE-2022-1353) <!-- medium -->
    -   [CVE-2022-1198](https://ubuntu.com/security/CVE-2022-1198) <!-- medium -->
    -   [CVE-2022-1158](https://ubuntu.com/security/CVE-2022-1158) <!-- medium -->
    -   [CVE-2022-1011](https://ubuntu.com/security/CVE-2022-1011) <!-- medium -->
    -   [CVE-2021-4197](https://ubuntu.com/security/CVE-2021-4197) <!-- medium -->
    -   [CVE-2021-3772](https://ubuntu.com/security/CVE-2021-3772) <!-- low -->
    -   [CVE-2022-1966](https://ubuntu.com/security/CVE-2022-1966) <!-- high -->
    -   [CVE-2022-21499](https://ubuntu.com/security/CVE-2022-21499) <!-- high -->
-   Most of the above plus privesc via mishandling of permission checks when
    migrating processes across cgroups, KVM page table handling -&gt; host crash
    (DoS), UAF in USB-Gadget, Microchip CAN BUS Analyzer, 6pack protocol
    driver and more


### [[USN-5468-1](https://ubuntu.com/security/notices/USN-5468-1)] Linux kernel vulnerabilities {#usn-5468-1-linux-kernel-vulnerabilities}

-   6 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-28390](https://ubuntu.com/security/CVE-2022-28390) <!-- medium -->
    -   [CVE-2022-24958](https://ubuntu.com/security/CVE-2022-24958) <!-- medium -->
    -   [CVE-2022-1972](https://ubuntu.com/security/CVE-2022-1972) <!-- medium -->
    -   [CVE-2022-1158](https://ubuntu.com/security/CVE-2022-1158) <!-- medium -->
    -   [CVE-2022-1966](https://ubuntu.com/security/CVE-2022-1966) <!-- high -->
    -   [CVE-2022-21499](https://ubuntu.com/security/CVE-2022-21499) <!-- high -->
-   Subset of the above


### [[USN-5469-1](https://ubuntu.com/security/notices/USN-5469-1)] Linux kernel vulnerabilities {#usn-5469-1-linux-kernel-vulnerabilities}

-   20 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-28390](https://ubuntu.com/security/CVE-2022-28390) <!-- medium -->
    -   [CVE-2022-28389](https://ubuntu.com/security/CVE-2022-28389) <!-- medium -->
    -   [CVE-2022-28388](https://ubuntu.com/security/CVE-2022-28388) <!-- medium -->
    -   [CVE-2022-28356](https://ubuntu.com/security/CVE-2022-28356) <!-- medium -->
    -   [CVE-2022-1972](https://ubuntu.com/security/CVE-2022-1972) <!-- medium -->
    -   [CVE-2022-1671](https://ubuntu.com/security/CVE-2022-1671) <!-- medium -->
    -   [CVE-2022-1651](https://ubuntu.com/security/CVE-2022-1651) <!-- medium -->
    -   [CVE-2022-1516](https://ubuntu.com/security/CVE-2022-1516) <!-- medium -->
    -   [CVE-2022-1353](https://ubuntu.com/security/CVE-2022-1353) <!-- medium -->
    -   [CVE-2022-1263](https://ubuntu.com/security/CVE-2022-1263) <!-- medium -->
    -   [CVE-2022-1205](https://ubuntu.com/security/CVE-2022-1205) <!-- medium -->
    -   [CVE-2022-1204](https://ubuntu.com/security/CVE-2022-1204) <!-- medium -->
    -   [CVE-2022-1199](https://ubuntu.com/security/CVE-2022-1199) <!-- medium -->
    -   [CVE-2022-1198](https://ubuntu.com/security/CVE-2022-1198) <!-- medium -->
    -   [CVE-2022-1195](https://ubuntu.com/security/CVE-2022-1195) <!-- medium -->
    -   [CVE-2022-1158](https://ubuntu.com/security/CVE-2022-1158) <!-- medium -->
    -   [CVE-2022-1048](https://ubuntu.com/security/CVE-2022-1048) <!-- medium -->
    -   [CVE-2022-0168](https://ubuntu.com/security/CVE-2022-0168) <!-- medium -->
    -   [CVE-2022-1966](https://ubuntu.com/security/CVE-2022-1966) <!-- high -->
    -   [CVE-2022-21499](https://ubuntu.com/security/CVE-2022-21499) <!-- high -->
-   More of the same


### [[USN-5470-1](https://ubuntu.com/security/notices/USN-5470-1)] Linux kernel (OEM) vulnerabilities {#usn-5470-1-linux-kernel--oem--vulnerabilities}

-   4 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-1972](https://ubuntu.com/security/CVE-2022-1972) <!-- medium -->
    -   [CVE-2022-1836](https://ubuntu.com/security/CVE-2022-1836) <!-- medium -->
    -   [CVE-2022-1966](https://ubuntu.com/security/CVE-2022-1966) <!-- high -->
    -   [CVE-2022-21499](https://ubuntu.com/security/CVE-2022-21499) <!-- high -->


### [[USN-5471-1](https://ubuntu.com/security/notices/USN-5471-1)] Linux kernel (OEM) vulnerabilities {#usn-5471-1-linux-kernel--oem--vulnerabilities}

-   8 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-29968](https://ubuntu.com/security/CVE-2022-29968) <!-- medium -->
    -   [CVE-2022-1972](https://ubuntu.com/security/CVE-2022-1972) <!-- medium -->
    -   [CVE-2022-1836](https://ubuntu.com/security/CVE-2022-1836) <!-- medium -->
    -   [CVE-2022-1734](https://ubuntu.com/security/CVE-2022-1734) <!-- medium -->
    -   [CVE-2022-1205](https://ubuntu.com/security/CVE-2022-1205) <!-- medium -->
    -   [CVE-2022-1012](https://ubuntu.com/security/CVE-2022-1012) <!-- medium -->
    -   [CVE-2022-1966](https://ubuntu.com/security/CVE-2022-1966) <!-- high -->
    -   [CVE-2022-21499](https://ubuntu.com/security/CVE-2022-21499) <!-- high -->


### [[USN-5458-1](https://ubuntu.com/security/notices/USN-5458-1)] Vim vulnerabilities [03:17] {#usn-5458-1-vim-vulnerabilities-03-17}

-   9 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-0443](https://ubuntu.com/security/CVE-2022-0443) <!-- low -->
    -   [CVE-2022-0408](https://ubuntu.com/security/CVE-2022-0408) <!-- medium -->
    -   [CVE-2022-0368](https://ubuntu.com/security/CVE-2022-0368) <!-- medium -->
    -   [CVE-2022-0361](https://ubuntu.com/security/CVE-2022-0361) <!-- medium -->
    -   [CVE-2022-0359](https://ubuntu.com/security/CVE-2022-0359) <!-- medium -->
    -   [CVE-2022-0351](https://ubuntu.com/security/CVE-2022-0351) <!-- medium -->
    -   [CVE-2022-0319](https://ubuntu.com/security/CVE-2022-0319) <!-- medium -->
    -   [CVE-2022-0213](https://ubuntu.com/security/CVE-2022-0213) <!-- medium -->
    -   [CVE-2021-4193](https://ubuntu.com/security/CVE-2021-4193) <!-- low -->
-   OOB reads, heap buffer overflows, stack buffer overflows, UAFs etc via
    crafted input files


### [[USN-5460-1](https://ubuntu.com/security/notices/USN-5460-1)] Vim vulnerabilities {#usn-5460-1-vim-vulnerabilities}

-   10 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-1621](https://ubuntu.com/security/CVE-2022-1621) <!-- medium -->
    -   [CVE-2022-1620](https://ubuntu.com/security/CVE-2022-1620) <!-- medium -->
    -   [CVE-2022-1619](https://ubuntu.com/security/CVE-2022-1619) <!-- medium -->
    -   [CVE-2022-1616](https://ubuntu.com/security/CVE-2022-1616) <!-- medium -->
    -   [CVE-2022-0943](https://ubuntu.com/security/CVE-2022-0943) <!-- medium -->
    -   [CVE-2022-0729](https://ubuntu.com/security/CVE-2022-0729) <!-- low -->
    -   [CVE-2022-0714](https://ubuntu.com/security/CVE-2022-0714) <!-- medium -->
    -   [CVE-2022-0685](https://ubuntu.com/security/CVE-2022-0685) <!-- medium -->
    -   [CVE-2022-0572](https://ubuntu.com/security/CVE-2022-0572) <!-- medium -->
    -   [CVE-2022-0554](https://ubuntu.com/security/CVE-2022-0554) <!-- medium -->


### [[USN-5459-1](https://ubuntu.com/security/notices/USN-5459-1)] cifs-utils vulnerabilities [03:49] {#usn-5459-1-cifs-utils-vulnerabilities-03-49}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-29869](https://ubuntu.com/security/CVE-2022-29869) <!-- medium -->
    -   [CVE-2022-27239](https://ubuntu.com/security/CVE-2022-27239) <!-- medium -->
    -   [CVE-2021-20208](https://ubuntu.com/security/CVE-2021-20208) <!-- low -->
    -   [CVE-2020-14342](https://ubuntu.com/security/CVE-2020-14342) <!-- low -->
-   Tools for managing cifs mounts etc
-   Privesc via stack buffer overflow in `mount.cifs` via crafted command-line
    arguments - used `strcpy()` to copy the provided IP address after first
    checking length - but did comparison using `strnlen()` which returns the
    max length even if the string is longer - so subsequent `strcpy()` would
    then overflow
-   Possible shell command injection into `mount.cifs` when it spawns a
    subshell for password input
-   Exposure of host kerberos credentials when mounting a CIFS share using
    kerberos authentication within a container


### [[USN-5461-1](https://ubuntu.com/security/notices/USN-5461-1)] FreeRDP vulnerabilities [05:21] {#usn-5461-1-freerdp-vulnerabilities-05-21}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-24883](https://ubuntu.com/security/CVE-2022-24883) <!-- low -->
    -   [CVE-2022-24882](https://ubuntu.com/security/CVE-2022-24882) <!-- medium -->
-   [Episode 162](https://ubuntusecuritypodcast.org/episode-162/) - Last week we talked about a couple different packages that
    mishandled empty password to then improperly authenticate a user
    -   Similar vuln in FreeRDP when using NTLM authentication - allows a
        client to authenticate to the server with an empty NTLM password


### [[USN-5462-1](https://ubuntu.com/security/notices/USN-5462-1), [USN-5462-2](https://ubuntu.com/security/notices/USN-5462-2)] Ruby vulnerabilities [06:11] {#usn-5462-1-usn-5462-2-ruby-vulnerabilities-06-11}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-28739](https://ubuntu.com/security/CVE-2022-28739) <!-- low -->
    -   [CVE-2022-28738](https://ubuntu.com/security/CVE-2022-28738) <!-- medium -->
-   Double free in regexp compiler when handling a crafted regex as input -
    so if allow attackers to provide regex which will then get compiled could
    abuse this to gain code execution as the ruby interpreter


### [[USN-5463-1](https://ubuntu.com/security/notices/USN-5463-1)] NTFS-3G vulnerabilities [06:41] {#usn-5463-1-ntfs-3g-vulnerabilities-06-41}

-   8 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-30787](https://ubuntu.com/security/CVE-2022-30787) <!-- medium -->
    -   [CVE-2022-30785](https://ubuntu.com/security/CVE-2022-30785) <!-- medium -->
    -   [CVE-2022-30789](https://ubuntu.com/security/CVE-2022-30789) <!-- medium -->
    -   [CVE-2022-30788](https://ubuntu.com/security/CVE-2022-30788) <!-- medium -->
    -   [CVE-2022-30786](https://ubuntu.com/security/CVE-2022-30786) <!-- medium -->
    -   [CVE-2022-30784](https://ubuntu.com/security/CVE-2022-30784) <!-- medium -->
    -   [CVE-2022-30783](https://ubuntu.com/security/CVE-2022-30783) <!-- medium -->
    -   [CVE-2021-46790](https://ubuntu.com/security/CVE-2021-46790) <!-- low -->
-   ntfsck code execution via crafted disk images ([Episode 162](https://ubuntusecuritypodcast.org/episode-162/))
-   Incorrect handling of crafted disk images during mounting etc -&gt; various
    heap buffer overflows -&gt; code execution
-   Logic error exposes a user to intercept the FUSE protocol traffic between
    nfts-3g and the kernel


### [[USN-5464-1](https://ubuntu.com/security/notices/USN-5464-1)] E2fsprogs vulnerability [07:17] {#usn-5464-1-e2fsprogs-vulnerability-07-17}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-1304](https://ubuntu.com/security/CVE-2022-1304) <!-- medium -->
-   Similarly, OOB R/W in e2fsprogs -&gt; used when doing fsck, mkfs, resizefs,
    badblocks etc on crafted file system image -&gt; code execution


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Symbiote Linux malware analysis [07:58] {#symbiote-linux-malware-analysis-07-58}

-   <https://www.intezer.com/blog/research/new-linux-threat-symbiote/>
-   Research from Intezer and Blackberry
-   Found targeting financial sector in Latin America
-   Described as 'nearly impossible' to detect
-   Uses `LD_PRELOAD` to 'infect' binaries on system
-   Evades detection by then hooking various functions in libc, libpcap etc
    to change their behaviour and alter their output so that when running
    tools like ls, ps etc they don't show evidence of infection
-   Also loads BPF filter to hide it's own network traffic from being seen
    when say running a local `tcpdump` etc
-   'Nearly impossible to detect' claim
    -   Indeed, is going to be very hard to detect it from the machine itself
        which is compromised
    -   If an attacker has control over the machine they can clearly influence
        that environment to hide themselves
-   Reminds of a recent [twitter thread](https://twitter.com/halvarflake/status/1528660068798955520) involving halvarflake, Mathias Krause
    and others, and then a follow-up [blog post](https://grsecurity.net/tetragone_a_lesson_in_security_fundamentals) from Brad Spengler from
    grsecurity looking at Tetragon eBPF Security Observability and Runtime
    Environment
    -   eBPF based system which allows sysadmins to develop policy to detect
        and kill exploits
    -   Runs on the system itself in kernel-space and tries to detect once a
        user has elevated privileges etc
        -   e.g. kernel memory corruption to set their own uid as 0
    -   But since the attacker has already got code execution in the kernel to
        be able to achieve this they can just as easily first disable Tetragon
        and then go and elevate privileges and hence not be detected
-   Basically if you are trying to detect compromise from within the
    environment itself the attacker is always at an advantage and can change
    the environment to evade detection and make everything look normal /
    disable checks etc
-   Instead need to be at a higher level of abstraction
-   In the case of detecting Symbiote - would need to say take a disk image
    and analyse it offline from another machine so that the analysis
    environment can't be influenced by the malware itself


### Ubuntu 21.10 (Impish Indri) reaches End of Life on July 14 2022 [12:45] {#ubuntu-21-dot-10--impish-indri--reaches-end-of-life-on-july-14-2022-12-45}

-   <https://lists.ubuntu.com/archives/ubuntu-announce/2022-May/000280.html>


### Hiring [13:16] {#hiring-13-16}


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>


#### Security Certifications Product Manager - CIS, FIPS, FedRAMP and more {#security-certifications-product-manager-cis-fips-fedramp-and-more}

-   <https://canonical.com/careers/3781589/security-certifications-product-manager-cis-fips-fedramp-and-more-remote>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)