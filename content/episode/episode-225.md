+++
title = "Episode 225"
description = """
  This week we cover the recent reports of a new local privilege escalation
  exploit against the Linux kernel, follow-up on the xz-utils backdoor from last
  week and it's the beta release of Ubuntu 24.04 LTS - plus we talk security
  vulnerabilities in the X Server, Django, util-linux and more.
  """
date = 2024-04-12T17:21:00+09:30
lastmod = 2024-04-12T17:28:32+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E225.mp3"
podcast_duration = 1182
podcast_bytes = 19383151
permalink = "https://ubuntusecuritypodcast.org/episode-225/"
guid = "67195c686e5b9b18b4b5ee4bd467624681f3b8d68a065eea4e94f7be68725af5f3bc564a8ba0bc1c32227abb0a13c48d4fd43615b61fff572b2e72e9c45dcca2"
+++

## Overview {#overview}

This week we cover the recent reports of a new local privilege escalation
exploit against the Linux kernel, follow-up on the xz-utils backdoor from last
week and it's the beta release of Ubuntu 24.04 LTS - plus we talk security
vulnerabilities in the X Server, Django, util-linux and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

76 unique CVEs addressed


### [[LSN-0102-1](https://ubuntu.com/security/notices/LSN-0102-1)] Linux kernel vulnerability (00:53) {#lsn-0102-1-linux-kernel-vulnerability--00-53}

-   6 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-1086](https://ubuntu.com/security/CVE-2024-1086) <!-- high -->
    -   [CVE-2024-0646](https://ubuntu.com/security/CVE-2024-0646) <!-- high -->
    -   [CVE-2023-51781](https://ubuntu.com/security/CVE-2023-51781) <!-- high -->
    -   [CVE-2023-6176](https://ubuntu.com/security/CVE-2023-6176) <!-- high -->
    -   [CVE-2023-4569](https://ubuntu.com/security/CVE-2023-4569) <!-- high -->
    -   [CVE-2023-1872](https://ubuntu.com/security/CVE-2023-1872) <!-- medium -->
-   All covered in previous episodes
    -   netfilter UAF ([[USN-6700-1] Linux kernel vulnerabilities from Episode 223]({{< relref "episode-223#usn-6700-1-linux-kernel-vulnerabilities--02-40" >}}))
    -   OOB write in KTLS ([[USN-6648-1] Linux kernel vulnerabilities from Episode 220]({{< relref "episode-220#usn-6648-1-linux-kernel-vulnerabilities--02-00" >}}))
    -   UAF in AppleTalk network driver ([[USN-6648-1] Linux kernel vulnerabilities from Episode 220]({{< relref "episode-220#usn-6648-1-linux-kernel-vulnerabilities--02-00" >}}))
    -   NULL ptr deref in TLS impl ([[LSN-0100-1] Linux kernel vulnerability from Episode 219]({{< relref "episode-219#lsn-0100-1-linux-kernel-vulnerability--00-56" >}}))
    -   Memory leak in netfilter ([[USN-6383-1] Linux kernel vulnerabilities from Episode 210]({{< relref "episode-210#usn-6383-1-linux-kernel-vulnerabilities--11-15" >}}))

| Kernel type     | 22.04 | 20.04 | 18.04 | 16.04 | 14.04 |
|-----------------|-------|-------|-------|-------|-------|
| aws             | 102.1 | 102.1 | 102.1 | 102.1 | —     |
| aws-5.15        | —     | 102.1 | —     | —     | —     |
| aws-5.4         | —     | —     | 102.1 | —     | —     |
| aws-6.5         | 102.1 | —     | —     | —     | —     |
| aws-hwe         | —     | —     | —     | 102.1 | —     |
| azure           | 102.1 | 102.1 | —     | 102.1 | —     |
| azure-4.15      | —     | —     | 102.1 | —     | —     |
| azure-5.4       | —     | —     | 102.1 | —     | —     |
| azure-6.5       | 102.1 | —     | —     | —     | —     |
| gcp             | 102.1 | 102.1 | —     | 102.1 | —     |
| gcp-4.15        | —     | —     | 102.1 | —     | —     |
| gcp-5.15        | —     | 102.1 | —     | —     | —     |
| gcp-5.4         | —     | —     | 102.1 | —     | —     |
| gcp-6.5         | 102.1 | —     | —     | —     | —     |
| generic-4.15    | —     | —     | 102.1 | 102.1 | —     |
| generic-4.4     | —     | —     | —     | 102.1 | 102.1 |
| generic-5.15    | —     | 102.1 | —     | —     | —     |
| generic-5.4     | —     | 102.1 | 102.1 | —     | —     |
| gke             | 102.1 | 102.1 | —     | —     | —     |
| gke-5.15        | —     | 102.1 | —     | —     | —     |
| gkeop           | —     | 102.1 | —     | —     | —     |
| hwe-6.5         | 102.1 | —     | —     | —     | —     |
| ibm             | 102.1 | 102.1 | —     | —     | —     |
| ibm-5.15        | —     | 102.1 | —     | —     | —     |
| linux           | 102.1 | —     | —     | —     | —     |
| lowlatency      | 102.1 | —     | —     | —     | —     |
| lowlatency-4.15 | —     | —     | 102.1 | 102.1 | —     |
| lowlatency-4.4  | —     | —     | —     | 102.1 | 102.1 |
| lowlatency-5.15 | —     | 102.1 | —     | —     | —     |
| lowlatency-5.4  | —     | 102.1 | 102.1 | —     | —     |

```shell
canonical-livepatch status
```


### [[USN-6710-2](https://ubuntu.com/security/notices/USN-6710-2)] Firefox regressions (01:54) {#usn-6710-2-firefox-regressions--01-54}

-   2 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2024-29944](https://ubuntu.com/security/CVE-2024-29944) <!-- medium -->
    -   [CVE-2024-29943](https://ubuntu.com/security/CVE-2024-29943) <!-- medium -->
-   124.0.2
    -   In particular fixes to allow firefox when installed directly from Mozilla to
        work under 24.04 LTS with the new AppArmor userns restrictions
    -   As discussed in previous episodes, default profile allows to use userns but
        then to be blocked on getting additional capabilities - Firefox would
        previously try and do both a new userns and a new PID NS in one call - which
        would be blocked - now split this into two separate calls so the userns can
        succeed but pidns will be denied (since requires `CAP_SYS_ADMIN`) - but then
        firefox correctly detects this and falls back to the correct behaviour


### [[USN-6721-1](https://ubuntu.com/security/notices/USN-6721-1)] X.Org X Server vulnerabilities (04:11) {#usn-6721-1-x-dot-org-x-server-vulnerabilities--04-11}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-31083](https://ubuntu.com/security/CVE-2024-31083) <!-- medium -->
    -   [CVE-2024-31082](https://ubuntu.com/security/CVE-2024-31082) <!-- medium -->
    -   [CVE-2024-31081](https://ubuntu.com/security/CVE-2024-31081) <!-- medium -->
    -   [CVE-2024-31080](https://ubuntu.com/security/CVE-2024-31080) <!-- medium -->
-   Various OOB reads -&gt; crash / info leaks when handling byte-swapped length
    values - able to be easily triggered by a client who is using a different
    endianness than the X server
-   UAF in glyph handling -&gt; crash / RCE


### [[USN-6721-2](https://ubuntu.com/security/notices/USN-6721-2)] X.Org X Server regression {#usn-6721-2-x-dot-org-x-server-regression}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-31083](https://ubuntu.com/security/CVE-2024-31083) <!-- medium -->
    -   [CVE-2024-31082](https://ubuntu.com/security/CVE-2024-31082) <!-- medium -->
    -   [CVE-2024-31081](https://ubuntu.com/security/CVE-2024-31081) <!-- medium -->
    -   [CVE-2024-31080](https://ubuntu.com/security/CVE-2024-31080) <!-- medium -->


### [[USN-6722-1](https://ubuntu.com/security/notices/USN-6722-1)] Django vulnerability (05:19) {#usn-6722-1-django-vulnerability--05-19}

-   1 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2019-19844](https://ubuntu.com/security/CVE-2019-19844) <!-- high -->
-   Possible account takeover - would use a case transformation on unicode of the
    email address - so if an attacker can register an email address that is the
    same as the intended targets email address after this case transformation -
    fix simply just discards the transformed email address and sends to the one
    registered by the user


### [[USN-6723-1](https://ubuntu.com/security/notices/USN-6723-1)] Bind vulnerabilities (06:11) {#usn-6723-1-bind-vulnerabilities--06-11}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-50868](https://ubuntu.com/security/CVE-2023-50868) <!-- medium -->
    -   [CVE-2023-50387](https://ubuntu.com/security/CVE-2023-50387) <!-- medium -->
-   [[USN-6633-1] Bind vulnerabilities from Episode 219]({{< relref "episode-219#usn-6633-1-bind-vulnerabilities--07-33" >}})


### [[USN-6724-1](https://ubuntu.com/security/notices/USN-6724-1)] Linux kernel vulnerabilities (06:27) {#usn-6724-1-linux-kernel-vulnerabilities--06-27}

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


### [[USN-6725-1](https://ubuntu.com/security/notices/USN-6725-1)] Linux kernel vulnerabilities {#usn-6725-1-linux-kernel-vulnerabilities}

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


### [[USN-6726-1](https://ubuntu.com/security/notices/USN-6726-1)] Linux kernel vulnerabilities {#usn-6726-1-linux-kernel-vulnerabilities}

-   23 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
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


### [[USN-6701-4](https://ubuntu.com/security/notices/USN-6701-4)] Linux kernel (Azure) vulnerabilities {#usn-6701-4-linux-kernel--azure--vulnerabilities}

-   12 CVEs addressed in Trusty ESM (14.04 ESM)
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


### [[USN-6719-2](https://ubuntu.com/security/notices/USN-6719-2)] util-linux vulnerability (07:08) {#usn-6719-2-util-linux-vulnerability--07-08}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-28085](https://ubuntu.com/security/CVE-2024-28085) <!-- medium -->
-   Initial fix in [[USN-6719-1] util-linux vulnerability from Episode 224]({{< relref "episode-224#usn-6719-1-util-linux-vulnerability" >}}) tried to
    escape output to avoid shell command injection - as is often the case, turned
    out to be insufficient, so instead have now just removed the setgid permission
    from the wall/write binaries - can then only send to yourself rather than all
    users


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Reports of a new local root privilege escalation exploit against Linux kernel (08:32) {#reports-of-a-new-local-root-privilege-escalation-exploit-against-linux-kernel--08-32}

-   <https://github.com/YuriiCrimson/ExploitGMStr>
-   Ukrainian hacker YuriiCrimson
-   Has generated a lot of interest since whilst there are always vulns / CVEs in
    the kernel we don't always see full PoCs much anymore
-   Originally developed an exploit against the `n_gsm` driver in the 6.4 and and 6.5 kernels
-   Says they were contacted by another hacker `jmpeax` (Jammes) - who wanted to purchase the exploit
-   After selling it to them, seems they tried to pass it off as their own
    -   <https://github.com/jmpe4x/GSM_Linux_Kernel_LPE_Nday_Exploit>
    -   <https://jmpeax.dev/The-tale-of-a-GSM-Kernel-LPE.html>
    -   commit timestamps of the purported copy by Jammes are all dated over 3 weeks ago
    -   but the original is only is only 1 week ago
    -   so on the surface would appear the other way around
    -   however, Yurii posted a [video](https://t.me/itcrowdua/1/203010) of their interaction with Jammes on Telegram
        to try and prove their side
    -   looking at repo metadata
        <https://api.github.com/repos/jmpe4x/GSM_Linux_Kernel_LPE_Nday_Exploit> shows
        the so-called copy was created on 22nd March
    -   whereas the Yurii's is 6th April - so would appear that perhaps Jammes is
        the original author
    -   also can compare the two exploits and see they are almost identical - but
        Jammes has an extra target for the 6.5.0-26-generic kernel from mantic
        ```shell
        diff -w <(curl https://raw.githubusercontent.com/jmpe4x/GSM_Linux_Kernel_LPE_Nday_Exploit/main/main.c) <(curl https://raw.githubusercontent.com/YuriiCrimson/ExploitGSM/main/ExploitGSM_6_5/main.c)
        ```
    -   who the actual author is remains unclear (also I don't have telegram so
        couldn't check the video)...
-   Regarding the actual vulnerability - turns out there is at least 2 if not 3 in this module
-   Old CVE-2023-6546 - written up <https://github.com/Nassim-Asrir/ZDI-24-020/>
    -   Fixed in 6.5-rc7
-   Yurii / Jammes
-   Additional exploit by Yurii apparently targeting 5.15-6.1 - also in `n_gsm`
-   Mixed reports about this last exploit but [report the one from
    Yurii/Jammes does work even on the latest upstream kernel](https://marc.info/?i=CADW8OBuC4JhqZ1Aa-GSGsRRbEzR-yL=xzRmxT+UkG_h6KsX9-A@mail.gmail.com)
-   Waiting on a fix from upstream to then integrate in Ubuntu kernels
-   Interesting these exploits all used the same basic info leak from xen via
    `/sys/kernel/notes` which leaks the symbol of the `xen_startup` function and
    allows to break KASLR
-   Reports this was [known since at least 2020](https://twitter.com/andersonc0d3/status/1778379134583861583)
-   Many eyes...?


### Ubuntu 24.04 LTS (Noble Numbat) Beta released (14:01) {#ubuntu-24-dot-04-lts--noble-numbat--beta-released--14-01}

-   <https://lists.ubuntu.com/archives/ubuntu-announce/2024-April/000300.html>
-   <https://discourse.ubuntu.com/t/noble-numbat-release-notes/>
-   Also releases for all the flavours
    -   Edubuntu, Kubuntu, Lubuntu, Ubuntu Budgie, Ubuntu Cinnamon, UbuntuKylin,
        Ubuntu MATE, Ubuntu Studio, Ubuntu Unity, Xubuntu
-   Final release scheduled for 25th April (just under 2 weeks)


### Update on xz-utils (15:18) {#update-on-xz-utils--15-18}

-   When we talked about xz-utils last week, didn't really talk much about the
    main upstream developer Lasse Collin
-   Thought it could be interesting to dive into how they essentially got
    compromised by this actor - but that is perhaps done better by others - go
    listen to the latest episode of Between Two Nerds from Tom Uren and The Grugq
    (<https://risky.biz/BTN74/>) talking about the tradecraft used to infiltrate the
    project and comparing this against the more traditional HUMINT elements
-   Lasse Collin's github account and the [Github project for xz](https://github.com/tukaani-project/xz) was reinstated
-   [Backdoor removed](https://github.com/tukaani-project/xz/commit/e93e13c8b3bec925c56e0c0b675d8000a0f7f754)
-   Great sense of humour:

> -   The executable payloads were embedded as binary blobs in
>     the test files. This was a blatant violation of the
>     Debian Free Software Guidelines.
>
> -   On machines that see lots bots poking at the SSH port, the backdoor
>     noticeably increased CPU load, resulting in degraded user experience
>     and thus overwhelmingly negative user feedback.
>
> -   The maintainer who added the backdoor has disappeared.
>
> -   Backdoors are bad for security.

-   Also [removed](https://github.com/tukaani-project/xz/commit/689ae2427342a2ea1206eb5ca08301baf410e7e0) the [ifunc](https://sourceware.org/glibc/wiki/GNU_IFUNC) (indirect function) support - ostensibly used to allow a
    developer to create multiple implementations of a given function and select
    between then at runtime - in this case was for an optimised version of CRC
    calculation - but abused by the backdoor to be able to hook into and replace
    functions in the global symbol table before it gets made read-only by the
    dynamic loader
    -   Says this was not for security reasons but since it makes the code harder to
        maintain but is clearly a good win for security
-   Lasse still plans to make to write an article on the backdoor etc but is more
    focused on cleaning up the upstream repo first - next version is likely to be
    5.8.0
-   Watch this space...


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
