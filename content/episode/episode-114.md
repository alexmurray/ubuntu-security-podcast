+++
title = "Episode 114"
description = """
  This week we look at the response from the Linux Technical Advisory Board
  to the UMN Linux kernel incident, plus we cover the 21Nails Exim
  vulnerabilities as well as updates for Bind, Samba, OpenVPN and more.
  """
date = 2021-05-07T00:03:00+09:30
lastmod = 2021-05-07T00:07:21+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E114.mp3"
podcast_duration = "12:44"
podcast_bytes = 10096965
permalink = "https://ubuntusecuritypodcast.org/episode-114/"
guid = "1ad3c582bda6db97671c4cee2689d3b8d9fefc3ef5ad90094f91f7dec3b9d71c64f51ec90386259923d0fd0cf4fd9ed9e6fcf7795d13b82d95d902cd05548483"
+++

## Overview {#overview}

This week we look at the response from the Linux Technical Advisory Board
to the UMN Linux kernel incident, plus we cover the 21Nails Exim
vulnerabilities as well as updates for Bind, Samba, OpenVPN and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

40 unique CVEs addressed


### [[USN-4928-1](https://ubuntu.com/security/notices/USN-4928-1)] GStreamer Good Plugins vulnerabilities [00:40] {#usn-4928-1-gstreamer-good-plugins-vulnerabilities-00-40}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-3498](https://ubuntu.com/security/CVE-2021-3498) <!-- medium -->
    -   [CVE-2021-3497](https://ubuntu.com/security/CVE-2021-3497) <!-- medium -->
-   UAF or heap corruption when handling crafted Matroska files - crash / RCE


### [[USN-4929-1](https://ubuntu.com/security/notices/USN-4929-1)] Bind vulnerabilities [01:18] {#usn-4929-1-bind-vulnerabilities-01-18}

-   3 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-25216](https://ubuntu.com/security/CVE-2021-25216) <!-- medium -->
    -   [CVE-2021-25215](https://ubuntu.com/security/CVE-2021-25215) <!-- medium -->
    -   [CVE-2021-25214](https://ubuntu.com/security/CVE-2021-25214) <!-- medium -->
-   2 possible crasher bugs (failed assertions) -> DoS, 1 buffer over-read or
    possible overflow -> crash / RCE


### [[USN-4930-1](https://ubuntu.com/security/notices/USN-4930-1)] Samba vulnerability [02:08] {#usn-4930-1-samba-vulnerability-02-08}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-20254](https://ubuntu.com/security/CVE-2021-20254) <!-- medium -->
-   Failed to properly handle negative idmap cache entries - could then end
    up with incorrect group entries and as such could possibly allow a user
    to access / modify files they should not have access to


### [[USN-4931-1](https://ubuntu.com/security/notices/USN-4931-1)] Samba vulnerabilities [02:51] {#usn-4931-1-samba-vulnerabilities-02-51}

-   4 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2021-20254](https://ubuntu.com/security/CVE-2021-20254) <!-- medium -->
    -   [CVE-2020-14383](https://ubuntu.com/security/CVE-2020-14383) <!-- medium -->
    -   [CVE-2020-14323](https://ubuntu.com/security/CVE-2020-14323) <!-- medium -->
    -   [CVE-2020-14318](https://ubuntu.com/security/CVE-2020-14318) <!-- medium -->
-   negative idmap cache entries issue plus some older vulns ([Episode 95](https://ubuntusecuritypodcast.org/episode-95/))


### [[LSN-0076-1](https://lists.ubuntu.com/archives/ubuntu-security-announce/2021-May/005996.html)] Linux kernel vulnerability [03:03] {#lsn-0076-1-linux-kernel-vulnerability-03-03}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-29154](https://ubuntu.com/security/CVE-2021-29154) <!-- high -->
    -   [CVE-2021-3493](https://ubuntu.com/security/CVE-2021-3493) <!-- high -->
-   2 local user privesc vulns fixed:
    -   BPF JIT branch displacement issue ([Episode 112](https://ubuntusecuritypodcast.org/episode-112/))
    -   Overlayfs / file system capabilities interaction


### [[USN-4918-3](https://ubuntu.com/security/notices/USN-4918-3)] ClamAV regression [03:52] {#usn-4918-3-clamav-regression-03-52}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-1405](https://ubuntu.com/security/CVE-2021-1405) <!-- medium -->
    -   [CVE-2021-1404](https://ubuntu.com/security/CVE-2021-1404) <!-- medium -->
    -   [CVE-2021-1252](https://ubuntu.com/security/CVE-2021-1252) <!-- medium -->
-   Previous clamav update (back in April <!-- I was on leave so not covered
    in a podcast episode then -->) introduced a regression where clamdscan
    would crash if called with --multiscan and --fdpass AND you had an
    ExcludePath configured in the configuration - backported the upstream
    commit from the development branch to fix this


### [[USN-4932-1](https://ubuntu.com/security/notices/USN-4932-1)] Django vulnerability [04:30] {#usn-4932-1-django-vulnerability-04-30}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-31542](https://ubuntu.com/security/CVE-2021-31542) <!-- medium -->
-   Directory traversal via uploaded files with crafted names


### [[USN-4933-1](https://ubuntu.com/security/notices/USN-4933-1)] OpenVPN vulnerabilities [04:47] {#usn-4933-1-openvpn-vulnerabilities-04-47}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2020-15078](https://ubuntu.com/security/CVE-2020-15078) <!-- medium -->
    -   [CVE-2020-11810](https://ubuntu.com/security/CVE-2020-11810) <!-- low -->
-   Race condition in handling of data packets could allow an attacker to
    inject a packet using a victim's peer-id before the crypto channel is
    properly initialised - could cause the victim's connection to be dropped
    (DoS) but doesn't appear to expose any sensitive info etc
-   Attackers could possibly bypass auth on control channel and hence leak info


### [[USN-4934-1](https://ubuntu.com/security/notices/USN-4934-1)] Exim vulnerabilities [05:39] {#usn-4934-1-exim-vulnerabilities-05-39}

-   21 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-27216](https://ubuntu.com/security/CVE-2021-27216) <!-- medium -->
    -   [CVE-2020-28026](https://ubuntu.com/security/CVE-2020-28026) <!-- medium -->
    -   [CVE-2020-28025](https://ubuntu.com/security/CVE-2020-28025) <!-- medium -->
    -   [CVE-2020-28024](https://ubuntu.com/security/CVE-2020-28024) <!-- medium -->
    -   [CVE-2020-28023](https://ubuntu.com/security/CVE-2020-28023) <!-- medium -->
    -   [CVE-2020-28022](https://ubuntu.com/security/CVE-2020-28022) <!-- medium -->
    -   [CVE-2020-28021](https://ubuntu.com/security/CVE-2020-28021) <!-- medium -->
    -   [CVE-2020-28020](https://ubuntu.com/security/CVE-2020-28020) <!-- medium -->
    -   [CVE-2020-28019](https://ubuntu.com/security/CVE-2020-28019) <!-- medium -->
    -   [CVE-2020-28018](https://ubuntu.com/security/CVE-2020-28018) <!-- medium -->
    -   [CVE-2020-28017](https://ubuntu.com/security/CVE-2020-28017) <!-- medium -->
    -   [CVE-2020-28016](https://ubuntu.com/security/CVE-2020-28016) <!-- medium -->
    -   [CVE-2020-28015](https://ubuntu.com/security/CVE-2020-28015) <!-- medium -->
    -   [CVE-2020-28014](https://ubuntu.com/security/CVE-2020-28014) <!-- medium -->
    -   [CVE-2020-28013](https://ubuntu.com/security/CVE-2020-28013) <!-- medium -->
    -   [CVE-2020-28012](https://ubuntu.com/security/CVE-2020-28012) <!-- medium -->
    -   [CVE-2020-28011](https://ubuntu.com/security/CVE-2020-28011) <!-- medium -->
    -   [CVE-2020-28010](https://ubuntu.com/security/CVE-2020-28010) <!-- medium -->
    -   [CVE-2020-28009](https://ubuntu.com/security/CVE-2020-28009) <!-- medium -->
    -   [CVE-2020-28008](https://ubuntu.com/security/CVE-2020-28008) <!-- medium -->
    -   [CVE-2020-28007](https://ubuntu.com/security/CVE-2020-28007) <!-- medium -->
-   Qualsys - [21Nails](https://blog.qualys.com/vulnerabilities-research/2021/05/04/21nails-multiple-vulnerabilities-in-exim-mail-server) - various vulns which could be chained together to get
    full remote unauthenticated RCE and root privesc
    -   [Full write-up](https://www.qualys.com/2021/05/04/21nails/21nails.txt)
-   Possibly 60% of internet mail servers run exim and 4 million are publicly
    accessible
-   [Previously has been a target of Sandworm](https://www.bleepingcomputer.com/news/security/nsa-russian-govt-hackers-exploiting-critical-exim-flaw-since-2019/)
-   In the process of preparing the updates for 16.04 / 14.04 ESM - expect to
    be available in the next day or 2 so most likely will already be out by
    the time you are listening to this


### [[USN-4935-1](https://ubuntu.com/security/notices/USN-4935-1)] NVIDIA graphics drivers vulnerabilities [07:58] {#usn-4935-1-nvidia-graphics-drivers-vulnerabilities-07-58}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-1077](https://ubuntu.com/security/CVE-2021-1077) <!-- medium -->
    -   [CVE-2021-1076](https://ubuntu.com/security/CVE-2021-1076) <!-- high -->
-   Not much detail from NVIDIA
    -   improper access control -> DoS, infoleak or data corruption -> privesc etc
    -   incorrect use of reference counting -> DoS (crash?) (UAF?)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Linux Technical Advisory Board response to UMN incident [08:56] {#linux-technical-advisory-board-response-to-umn-incident-08-56}

-   Covered in [Episode 113](https://ubuntusecuritypodcast.org/episode-113/)
-   <https://lore.kernel.org/lkml/202105051005.49BFABCE@keescook/>
-   Kees Cook (previously inaugural Tech Lead of Ubuntu Security Team) posted
    to LKML the Tab's report (various folks from across the Linux Kernel
    community, including from Red Hat, Google, Canonical and others)
-   Detailed timeline of events, identification of the "hypocrite" commits in
    question
-   Recommendations going forward
    -   UMN must improve quality of their submissions since even for a lot of
        what were good-faith patches, they actually had issues and either
        didn't fix the purported issue or tried to fix a non-issue
    -   TAB will create a best-practices document for all research groups when
        working with the kernel or other open source projects


### Hiring [11:36] {#hiring-11-36}


#### AppArmor Security Engineer {#apparmor-security-engineer}

-   <https://canonical.com/careers/2114847/apparmor-security-engineer-remote>
    <!-- americas, emea -->


#### Linux Cryptography and Security Engineer {#linux-cryptography-and-security-engineer}

-   <https://canonical.com/careers/2612092/linux-cryptography-and-security-engineer-remote>
    <!-- americas -->


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>
    <!-- worldwide -->


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
