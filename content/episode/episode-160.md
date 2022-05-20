+++
title = "Episode 160"
description = """
  Ubuntu get's pwned again at Pwn2Own Vancouver 2022, plus we look at
  security updates for the Linux kernel, RSyslog, ClamAV, Apport and more.
  """
date = 2022-05-20T17:36:00+09:30
lastmod = 2022-05-20T17:38:32+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E160.mp3"
podcast_duration = 827
podcast_bytes = 10675121
permalink = "https://ubuntusecuritypodcast.org/episode-160/"
guid = "a470f94e6aa84e5bf8a94b58deeafe0f2de26aa17edb07c480075e25398f91bf9b072bc849307b94eaa8a82373c1d99cafc515ebff380efa7a304ad8c0f0846d"
+++

## Overview {#overview}

Ubuntu get's pwned again at Pwn2Own Vancouver 2022, plus we look at
security updates for the Linux kernel, RSyslog, ClamAV, Apport and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

57 unique CVEs addressed


### [[USN-5413-1](https://ubuntu.com/security/notices/USN-5413-1)] Linux kernel vulnerabilities [01:06] {#usn-5413-1-linux-kernel-vulnerabilities-01-06}

-   6 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-28390](https://ubuntu.com/security/CVE-2022-28390) <!-- medium -->
    -   [CVE-2022-27223](https://ubuntu.com/security/CVE-2022-27223) <!-- low -->
    -   [CVE-2022-26490](https://ubuntu.com/security/CVE-2022-26490) <!-- medium -->
    -   [CVE-2021-4157](https://ubuntu.com/security/CVE-2021-4157) <!-- medium -->
    -   [CVE-2021-39713](https://ubuntu.com/security/CVE-2021-39713) <!-- medium -->
    -   [CVE-2020-27820](https://ubuntu.com/security/CVE-2020-27820) <!-- low -->
-   4.4 - 16.04 ESM GA + 14.04 ESM
-   UAF in nouveau driver when device is removed - external NVIDIA GPU? or
    local user unbinding the driver?
-   UAF due to race condition in network packet scheduler
-   OOB write in NFS - user who had access to an NFS mount could possibly
    exploit this
-   Buffer overflow in ST Micro NFC driver - failed to validate parameters
    from NFC device - physically approximate attacker could possibly exploit
    this but would need custom hw/sw
-   Similarly, Xilinx USB2 gadget driver failed to validate USB endpoints
-   ESM CAN/USB double-free


### [[USN-5415-1](https://ubuntu.com/security/notices/USN-5415-1)] Linux kernel vulnerabilities [02:27] {#usn-5415-1-linux-kernel-vulnerabilities-02-27}

-   8 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-27223](https://ubuntu.com/security/CVE-2022-27223) <!-- low -->
    -   [CVE-2022-26490](https://ubuntu.com/security/CVE-2022-26490) <!-- medium -->
    -   [CVE-2022-25375](https://ubuntu.com/security/CVE-2022-25375) <!-- medium -->
    -   [CVE-2022-25258](https://ubuntu.com/security/CVE-2022-25258) <!-- medium -->
    -   [CVE-2022-20008](https://ubuntu.com/security/CVE-2022-20008) <!-- medium -->
    -   [CVE-2022-1016](https://ubuntu.com/security/CVE-2022-1016) <!-- medium -->
    -   [CVE-2021-26401](https://ubuntu.com/security/CVE-2021-26401) <!-- medium -->
    -   [CVE-2020-27820](https://ubuntu.com/security/CVE-2020-27820) <!-- low -->
-   5.4 - 20.04 LTS GA + 18.04 LTS HWE + clouds
-   Above vulns plus:
    -   AMD specific issue around insufficient mitigations for Spectre v2
        attacks
    -   OOB read -&gt; info leak through mishandling of MMC/SD read errors


### [[USN-5417-1](https://ubuntu.com/security/notices/USN-5417-1)] Linux kernel vulnerabilities [03:07] {#usn-5417-1-linux-kernel-vulnerabilities-03-07}

-   8 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-29156](https://ubuntu.com/security/CVE-2022-29156) <!-- medium -->
    -   [CVE-2022-27223](https://ubuntu.com/security/CVE-2022-27223) <!-- low -->
    -   [CVE-2022-26966](https://ubuntu.com/security/CVE-2022-26966) <!-- medium -->
    -   [CVE-2022-26490](https://ubuntu.com/security/CVE-2022-26490) <!-- medium -->
    -   [CVE-2022-25375](https://ubuntu.com/security/CVE-2022-25375) <!-- medium -->
    -   [CVE-2022-25258](https://ubuntu.com/security/CVE-2022-25258) <!-- medium -->
    -   [CVE-2022-20008](https://ubuntu.com/security/CVE-2022-20008) <!-- medium -->
    -   [CVE-2021-26401](https://ubuntu.com/security/CVE-2021-26401) <!-- medium -->
-   5.13 - 21.10, 20.04 LTS HWE + some clouds
-   ~ same as above


### [[USN-5418-1](https://ubuntu.com/security/notices/USN-5418-1)] Linux kernel vulnerabilities [03:19] {#usn-5418-1-linux-kernel-vulnerabilities-03-19}

-   13 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2022-27223](https://ubuntu.com/security/CVE-2022-27223) <!-- low -->
    -   [CVE-2022-26966](https://ubuntu.com/security/CVE-2022-26966) <!-- medium -->
    -   [CVE-2022-26490](https://ubuntu.com/security/CVE-2022-26490) <!-- medium -->
    -   [CVE-2022-25375](https://ubuntu.com/security/CVE-2022-25375) <!-- medium -->
    -   [CVE-2022-25258](https://ubuntu.com/security/CVE-2022-25258) <!-- medium -->
    -   [CVE-2022-24958](https://ubuntu.com/security/CVE-2022-24958) <!-- medium -->
    -   [CVE-2022-23042](https://ubuntu.com/security/CVE-2022-23042) <!-- medium -->
    -   [CVE-2022-23040](https://ubuntu.com/security/CVE-2022-23040) <!-- medium -->
    -   [CVE-2022-23039](https://ubuntu.com/security/CVE-2022-23039) <!-- medium -->
    -   [CVE-2022-23038](https://ubuntu.com/security/CVE-2022-23038) <!-- medium -->
    -   [CVE-2022-23037](https://ubuntu.com/security/CVE-2022-23037) <!-- medium -->
    -   [CVE-2022-23036](https://ubuntu.com/security/CVE-2022-23036) <!-- medium -->
    -   [CVE-2021-26401](https://ubuntu.com/security/CVE-2021-26401) <!-- medium -->
-   4.15 - 18.04 LTS GA, 16.04 ESM HWE + clouds + OEM, 14.04 ESM azure
-   ~ same as above


### [[USN-5416-1](https://ubuntu.com/security/notices/USN-5416-1)] Linux kernel (OEM) vulnerabilities [03:26] {#usn-5416-1-linux-kernel--oem--vulnerabilities-03-26}

-   5 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-28390](https://ubuntu.com/security/CVE-2022-28390) <!-- medium -->
    -   [CVE-2022-28389](https://ubuntu.com/security/CVE-2022-28389) <!-- medium -->
    -   [CVE-2022-28388](https://ubuntu.com/security/CVE-2022-28388) <!-- medium -->
    -   [CVE-2022-1516](https://ubuntu.com/security/CVE-2022-1516) <!-- medium -->
    -   [CVE-2022-1158](https://ubuntu.com/security/CVE-2022-1158) <!-- medium -->
-   5.14 - 20.04 LTS OEM
-   KVM mishandled guest page table updates -&gt; guest VM crash host OS
-   2 similar issues in CAN bus drivers - 8 Devices USB2CAN and Microchip CAN
    Bus analyzer both had double-free on error paths - local attacker could
    crash -&gt; DoS
-   Plus ESM CAN/USB issue from above


### [[USN-5419-1](https://ubuntu.com/security/notices/USN-5419-1)] Rsyslog vulnerabilities [04:26] {#usn-5419-1-rsyslog-vulnerabilities-04-26}

-   3 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2019-17042](https://ubuntu.com/security/CVE-2019-17042) <!-- low -->
    -   [CVE-2019-17041](https://ubuntu.com/security/CVE-2019-17041) <!-- low -->
    -   [CVE-2018-16881](https://ubuntu.com/security/CVE-2018-16881) <!-- low -->
-   2 issues in handling of various message types (AIX + Cisco log messages
    failed to properly validate contents and so could result in heap buffer overflow)
-   1 in handling of plain TCP socket comms - but this module is not enabled
    in the default rsyslog configuration for Ubuntu


### [[USN-5420-1](https://ubuntu.com/security/notices/USN-5420-1)] Vorbis vulnerabilities [05:01] {#usn-5420-1-vorbis-vulnerabilities-05-01}

-   3 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2018-10393](https://ubuntu.com/security/CVE-2018-10393) <!-- low -->
    -   [CVE-2018-10392](https://ubuntu.com/security/CVE-2018-10392) <!-- low -->
    -   [CVE-2017-14160](https://ubuntu.com/security/CVE-2017-14160) <!-- low -->
-   heap buffer overflow, OOB read + stack buffer overflow via crafted input
    files - DoS / RCE


### [[USN-5421-1](https://ubuntu.com/security/notices/USN-5421-1)] LibTIFF vulnerabilities [05:16] {#usn-5421-1-libtiff-vulnerabilities-05-16}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-0865](https://ubuntu.com/security/CVE-2022-0865) <!-- medium -->
    -   [CVE-2022-0891](https://ubuntu.com/security/CVE-2022-0891) <!-- medium -->
    -   [CVE-2022-0562](https://ubuntu.com/security/CVE-2022-0562) <!-- low -->
    -   [CVE-2022-0561](https://ubuntu.com/security/CVE-2022-0561) <!-- low -->
    -   [CVE-2020-35522](https://ubuntu.com/security/CVE-2020-35522) <!-- negligible -->
-   Similar types of issues in libtiff - OOB reads / writes


### [[USN-5422-1](https://ubuntu.com/security/notices/USN-5422-1)] libxml2 vulnerabilities [05:32] {#usn-5422-1-libxml2-vulnerabilities-05-32}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-29824](https://ubuntu.com/security/CVE-2022-29824) <!-- medium -->
    -   [CVE-2022-23308](https://ubuntu.com/security/CVE-2022-23308) <!-- medium -->
-   UAF plus possible integer overflows -&gt; unspec impact (but requires victim
    to process a multiGB XML file)


### [[USN-5311-2](https://ubuntu.com/security/notices/USN-5311-2)] containerd regression [06:03] {#usn-5311-2-containerd-regression-06-03}

-   1 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-23648](https://ubuntu.com/security/CVE-2022-23648) <!-- medium -->
-   [Episode 152](https://ubuntusecuritypodcast.org/episode-152/) - subsequent update to containerd by different team reverted
    the CVE fix accidentally - reinstated it


### [[USN-5423-1](https://ubuntu.com/security/notices/USN-5423-1), [USN-5423-2](https://ubuntu.com/security/notices/USN-5423-2)] ClamAV vulnerabilities [06:24] {#usn-5423-1-usn-5423-2-clamav-vulnerabilities-06-24}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-20796](https://ubuntu.com/security/CVE-2022-20796) <!-- low -->
    -   [CVE-2022-20792](https://ubuntu.com/security/CVE-2022-20792) <!-- medium -->
    -   [CVE-2022-20785](https://ubuntu.com/security/CVE-2022-20785) <!-- low -->
    -   [CVE-2022-20771](https://ubuntu.com/security/CVE-2022-20771) <!-- low -->
    -   [CVE-2022-20770](https://ubuntu.com/security/CVE-2022-20770) <!-- low -->
-   0.103.6
-   Various infinite loops in different parsers (CPU-based DoS), memory leaks
    plus a couple OOB writes


### [[USN-5424-1](https://ubuntu.com/security/notices/USN-5424-1)] OpenLDAP vulnerability [06:53] {#usn-5424-1-openldap-vulnerability-06-53}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-29155](https://ubuntu.com/security/CVE-2022-29155) <!-- medium -->
-   SQL injection in the sql backend of slapd via an SQL statement within a LDAP query


### [[USN-5425-1](https://ubuntu.com/security/notices/USN-5425-1)] PCRE vulnerabilities [07:09] {#usn-5425-1-pcre-vulnerabilities-07-09}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2020-14155](https://ubuntu.com/security/CVE-2020-14155) <!-- negligible -->
    -   [CVE-2019-20838](https://ubuntu.com/security/CVE-2019-20838) <!-- low -->
-   OOB read -&gt; info leak
-   integer overflow -&gt; buffer overflow? -&gt; crash / code execution


### [[USN-5426-1](https://ubuntu.com/security/notices/USN-5426-1)] needrestart vulnerability [07:20] {#usn-5426-1-needrestart-vulnerability-07-20}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-30688](https://ubuntu.com/security/CVE-2022-30688) <!-- medium -->
-   detects daemons that need to be restarted after libraries are upgraded
-   uses various regex's to detect scripting languages - but since these were
    not specific enough, it could allow a user to get their own script
    executed in the context of the user which is running needrestart - which
    could be root


### [[USN-5427-1](https://ubuntu.com/security/notices/USN-5427-1)] Apport vulnerabilities [08:08] {#usn-5427-1-apport-vulnerabilities-08-08}

-   8 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-28658](https://ubuntu.com/security/CVE-2022-28658) <!-- medium -->
    -   [CVE-2022-28657](https://ubuntu.com/security/CVE-2022-28657) <!-- medium -->
    -   [CVE-2022-28656](https://ubuntu.com/security/CVE-2022-28656) <!-- low -->
    -   [CVE-2022-28655](https://ubuntu.com/security/CVE-2022-28655) <!-- medium -->
    -   [CVE-2022-28654](https://ubuntu.com/security/CVE-2022-28654) <!-- medium -->
    -   [CVE-2022-28652](https://ubuntu.com/security/CVE-2022-28652) <!-- medium -->
    -   [CVE-2022-1242](https://ubuntu.com/security/CVE-2022-1242) <!-- medium -->
    -   [CVE-2021-3899](https://ubuntu.com/security/CVE-2021-3899) <!-- medium -->
-   Gerrit Venema reported a heap of issues in Apport - thanks to Marc
    Deslauriers on our team for working on these
-   Crash handler in Ubuntu - is invoked by the kernel when an application
    crashes to collect various data to then upload to Ubuntu developers
-   Runs as root but can be invoked as a regular user so has been a target
    for privesc vulns in the past
-   Has various code to drop privileges etc but these were found to be
    incomplete
-   Impacts of these issues range from DoS by crashing Apport through to
    local privesc to root


### [[USN-5428-1](https://ubuntu.com/security/notices/USN-5428-1)] libXrandr vulnerabilities [09:14] {#usn-5428-1-libxrandr-vulnerabilities-09-14}

-   2 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2016-7948](https://ubuntu.com/security/CVE-2016-7948) <!-- low -->
    -   [CVE-2016-7947](https://ubuntu.com/security/CVE-2016-7947) <!-- low -->
-   Integer overflows -&gt; OOB write plus another different OOB write - all
    able to be triggered by a malicious remote X server


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu in Pwn2Own Vancouver 2022 [09:39] {#ubuntu-in-pwn2own-vancouver-2022-09-39}

-   15 year anniversary of Pwn2Own
-   17 teams attempting to exploit 21 targets - including Ubuntu Desktop for EoP
-   <https://www.zerodayinitiative.com/blog/2022/5/17/pwn2own-vancouver-2022-the-schedule>
-   5 different teams targeting Ubuntu Desktop - Ubuntu 22.04 LTS fully
    up-to-date
-   Prize of $40k USD
-   2 on day 1, 2 on day 2, 1 on day 3 (tomorrow)
-   <https://www.zerodayinitiative.com/blog/2022/5/18/pwn2own-vancouver-2022-the-results>
-   So far all 4 have been successful:
    -   Team Orca of Sea Security (not live streamed)
        -   OOBW + UAF
    -   [Keith Yeo](https://www.youtube.com/watch?v=BF4pZaojrco)
        -   UAF
    -   [Bien Pham](https://www.youtube.com/watch?v=p7N7SZ2ImrQ)
        -   UAF
    -   [Zhenpeng Lin (@Markak_), Yueqi Chen (@Lewis_Chen\_), and Xinyu Xing (@xingxinyu) of Team TUTELARY](https://www.youtube.com/watch?v=VUHkthNgICs)
        -   UAF
-   Lots of great new bugs - expect to hear more about these in the coming weeks
-   Past episodes covering Ubuntu @ Pwn2Own over previous years [Episode 111](https://ubuntusecuritypodcast.org/episode-111/)
    and [Episode 71](https://ubuntusecuritypodcast.org/episode-71/) - in particular has a great interview with Steve and Marc
    from our team who cover what it is like as a vendor


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)