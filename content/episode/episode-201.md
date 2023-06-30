+++
title = "Episode 201"
description = """
  This week we look at the top 25 most dangerous vulnerability types, as well as
  the announcement of the program for LSS EU, and we cover security updates for
  Bind, the Linux kernel, CUPS, etcd and more.
  """
date = 2023-06-30T14:49:00+09:30
lastmod = 2023-06-30T14:50:56+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E201.mp3"
podcast_duration = 1213
podcast_bytes = 20883398
permalink = "https://ubuntusecuritypodcast.org/episode-201/"
guid = "1a5a33984b59b0c901a90c2f627707d238fbd027424b02f28e2d031dc16cd7606583d07d407b63db90a87b63b2df2231dbb14786cbd9d11159454fae21a3d9a8"
+++

## Overview {#overview}

This week we look at the top 25 most dangerous vulnerability types, as well as
the announcement of the program for LSS EU, and we cover security updates for
Bind, the Linux kernel, CUPS, etcd and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

36 unique CVEs addressed


### [[USN-6183-1](https://ubuntu.com/security/notices/USN-6183-1)] Bind vulnerabilities (00:53) {#usn-6183-1-bind-vulnerabilities--00-53}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-2911](https://ubuntu.com/security/CVE-2023-2911) <!-- medium -->
    -   [CVE-2023-2828](https://ubuntu.com/security/CVE-2023-2828) <!-- medium -->
-   Two DoS issues - when bind was configured as a recursive resolver, possible to
    cause the configured cache size to be exceeded by a remote attacker by
    performing queries in a particular manner (as this would then evade the normal
    cache cleaning algorithm) - DoS due to excessive memory usage -&gt; OOM killer
    etc
-   The other was due to a recursive algorithm that could be triggered in a
    pathological way when particular configuration options were used - eventually
    would exhaust the available stack space -&gt; killed by stack protections -&gt; DoS


### [[USN-6185-1](https://ubuntu.com/security/notices/USN-6185-1)] Linux kernel vulnerabilities (01:52) {#usn-6185-1-linux-kernel-vulnerabilities--01-52}

-   8 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-2985](https://ubuntu.com/security/CVE-2023-2985) <!-- medium -->
    -   [CVE-2023-25012](https://ubuntu.com/security/CVE-2023-25012) <!-- low -->
    -   [CVE-2023-1998](https://ubuntu.com/security/CVE-2023-1998) <!-- medium -->
    -   [CVE-2023-1859](https://ubuntu.com/security/CVE-2023-1859) <!-- medium -->
    -   [CVE-2023-1670](https://ubuntu.com/security/CVE-2023-1670) <!-- low -->
    -   [CVE-2023-1079](https://ubuntu.com/security/CVE-2023-1079) <!-- low -->
    -   [CVE-2023-1077](https://ubuntu.com/security/CVE-2023-1077) <!-- medium -->
    -   [CVE-2023-1076](https://ubuntu.com/security/CVE-2023-1076) <!-- medium -->
-   5.4 - IBM, GCP, GKEOP, raspi2, Azure, AWS, Bluefield, KVM, Oracle
-   type confusion in real-time scheduler -&gt; DoS
-   few different UAF in various USB device drivers (and even PCMCIA) - could all
    be triggered by a local attacker with physical access
-   UAF in HFS+ file-system + Xen 9P file-system protocol impl


### [[USN-6187-1](https://ubuntu.com/security/notices/USN-6187-1)] Linux kernel (IBM) vulnerabilities (02:49) {#usn-6187-1-linux-kernel--ibm--vulnerabilities--02-49}

-   9 CVEs addressed in Kinetic (22.10)
    -   [CVE-2023-2985](https://ubuntu.com/security/CVE-2023-2985) <!-- medium -->
    -   [CVE-2023-25012](https://ubuntu.com/security/CVE-2023-25012) <!-- low -->
    -   [CVE-2023-1998](https://ubuntu.com/security/CVE-2023-1998) <!-- medium -->
    -   [CVE-2023-1859](https://ubuntu.com/security/CVE-2023-1859) <!-- medium -->
    -   [CVE-2023-1670](https://ubuntu.com/security/CVE-2023-1670) <!-- low -->
    -   [CVE-2023-1079](https://ubuntu.com/security/CVE-2023-1079) <!-- low -->
    -   [CVE-2023-1077](https://ubuntu.com/security/CVE-2023-1077) <!-- medium -->
    -   [CVE-2023-1076](https://ubuntu.com/security/CVE-2023-1076) <!-- medium -->
    -   [CVE-2022-4269](https://ubuntu.com/security/CVE-2022-4269) <!-- medium -->
-   5.19 IBM
-   All of the above plus a possible deadlock in the network traffic control
    subsystem that could be triggered by a local attacker -&gt; DoS


### [[USN-6186-1](https://ubuntu.com/security/notices/USN-6186-1)] Linux kernel vulnerabilities (03:06) {#usn-6186-1-linux-kernel-vulnerabilities--03-06}

-   20 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-33288](https://ubuntu.com/security/CVE-2023-33288) <!-- low -->
    -   [CVE-2023-33203](https://ubuntu.com/security/CVE-2023-33203) <!-- low -->
    -   [CVE-2023-30772](https://ubuntu.com/security/CVE-2023-30772) <!-- low -->
    -   [CVE-2023-28866](https://ubuntu.com/security/CVE-2023-28866) <!-- medium -->
    -   [CVE-2023-28466](https://ubuntu.com/security/CVE-2023-28466) <!-- medium -->
    -   [CVE-2023-2612](https://ubuntu.com/security/CVE-2023-2612) <!-- medium -->
    -   [CVE-2023-2235](https://ubuntu.com/security/CVE-2023-2235) <!-- low -->
    -   [CVE-2023-2194](https://ubuntu.com/security/CVE-2023-2194) <!-- medium -->
    -   [CVE-2023-1990](https://ubuntu.com/security/CVE-2023-1990) <!-- low -->
    -   [CVE-2023-1989](https://ubuntu.com/security/CVE-2023-1989) <!-- low -->
    -   [CVE-2023-1859](https://ubuntu.com/security/CVE-2023-1859) <!-- medium -->
    -   [CVE-2023-1855](https://ubuntu.com/security/CVE-2023-1855) <!-- low -->
    -   [CVE-2023-1670](https://ubuntu.com/security/CVE-2023-1670) <!-- low -->
    -   [CVE-2023-1611](https://ubuntu.com/security/CVE-2023-1611) <!-- low -->
    -   [CVE-2023-1583](https://ubuntu.com/security/CVE-2023-1583) <!-- medium -->
    -   [CVE-2022-4269](https://ubuntu.com/security/CVE-2022-4269) <!-- medium -->
    -   [CVE-2023-1380](https://ubuntu.com/security/CVE-2023-1380) <!-- high -->
    -   [CVE-2023-30456](https://ubuntu.com/security/CVE-2023-30456) <!-- high -->
    -   [CVE-2023-31436](https://ubuntu.com/security/CVE-2023-31436) <!-- high -->
    -   [CVE-2023-32233](https://ubuntu.com/security/CVE-2023-32233) <!-- high -->
-   All interesting CVEs discussed previously - [[USN-6130-1] Linux kernel vulnerabilities in Episode 198]({{< relref "episode-198#usn-6130-1-linux-kernel-vulnerabilities--02-23" >}})
    -   netfilter race condition able to be triggered by a local attacker -&gt; UAF -&gt; DoS/RCE
    -   OOB read in the USB handling code for Broadcom FullMAC USB WiFi driver
    -   KVM mishandling of control registers for nested guest VMs
    -   OOB write in network queuing scheduler - able to be triggered though an
        unprivileged user namespace (again)


### [[USN-6184-1](https://ubuntu.com/security/notices/USN-6184-1)] CUPS vulnerability (03:55) {#usn-6184-1-cups-vulnerability--03-55}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-34241](https://ubuntu.com/security/CVE-2023-34241) <!-- medium -->
-   UAF since would log details of a connection after closing the connection (and
    hence freeing the memory associated with the connection) - since was in the
    logging code, would only happen if the log level was set to `warn` or higher -
    could then either cause a crash (SEGV etc) or could potentially end up logging
    sensitive info if that was then present in that memory location


### [[USN-6188-1](https://ubuntu.com/security/notices/USN-6188-1)] OpenSSL vulnerability (04:43) {#usn-6188-1-openssl-vulnerability--04-43}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2023-2650](https://ubuntu.com/security/CVE-2023-2650) <!-- medium -->
-   [[USN-6119-1] OpenSSL vulnerabilities from Episode 197]({{< relref "episode-197#usn-6119-1-openssl-vulnerabilities--13-20" >}})
-   CPU-based DoS when parsing crafted ASN.1 object identifiers


### [[USN-6161-2](https://ubuntu.com/security/notices/USN-6161-2)] .NET regression (05:02) {#usn-6161-2-dot-net-regression--05-02}

-   5 CVEs addressed in Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-33128](https://ubuntu.com/security/CVE-2023-33128) <!-- medium -->
    -   [CVE-2023-32032](https://ubuntu.com/security/CVE-2023-32032) <!-- medium -->
    -   [CVE-2023-29337](https://ubuntu.com/security/CVE-2023-29337) <!-- medium -->
    -   [CVE-2023-29331](https://ubuntu.com/security/CVE-2023-29331) <!-- medium -->
    -   [CVE-2023-24936](https://ubuntu.com/security/CVE-2023-24936) <!-- medium -->
-   [[USN-6161-1] .NET vulnerabilities from Episode 199]({{< relref "episode-199#usn-6161-1-dot-net-vulnerabilities--09-02" >}})
-   New upstream point release to address a regression in the previous release -
    would fail to import PKCS12 blobs where the private keys were protected by a
    null password (apparently this was non-deterministic which sounds like it was
    due to an uninitialised local variable...?)


### [[USN-6189-1](https://ubuntu.com/security/notices/USN-6189-1)] etcd vulnerability (05:55) {#usn-6189-1-etcd-vulnerability--05-55}

-   1 CVEs addressed in Kinetic (22.10), Lunar (23.04)
    -   [CVE-2021-28235](https://ubuntu.com/security/CVE-2021-28235) <!-- medium -->
-   Leaked credentials into the debug log which could then be accessed by a remote
    attacker via the debug API endpoint


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### MITRE 2023 CWE Top 25 Most Dangerous Software Weaknesses published (06:20) {#mitre-2023-cwe-top-25-most-dangerous-software-weaknesses-published--06-20}

| Rank | ID      | Name                                                                                        | Score | CVEs in KEV |
|------|---------|---------------------------------------------------------------------------------------------|-------|-------------|
| 1    | CWE-787 | Out-of-bounds Write                                                                         | 63.72 | 70          |
| 2    | CWE-79  | Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting')        | 45.54 | 4           |
| 3    | CWE-89  | Improper Neutralization of Special Elements used in an SQL Command ('SQL Injection')        | 34.27 | 6           |
| 4    | CWE-416 | Use After Free                                                                              | 16.71 | 44          |
| 5    | CWE-78  | Improper Neutralization of Special Elements used in an OS Command ('OS Command Injection')  | 15.65 | 23          |
| 6    | CWE-20  | Improper Input Validation                                                                   | 15.50 | 35          |
| 7    | CWE-125 | Out-of-bounds Read                                                                          | 14.60 | 2           |
| 8    | CWE-22  | Improper Limitation of a Pathname to a Restricted Directory ('Path Traversal')              | 14.11 | 16          |
| 9    | CWE-352 | Cross-Site Request Forgery (CSRF)                                                           | 11.73 | 0           |
| 10   | CWE-434 | Unrestricted Upload of File with Dangerous Type                                             | 10.41 | 5           |
| 11   | CWE-862 | Missing Authorization                                                                       | 6.90  | 0           |
| 12   | CWE-476 | NULL Pointer Dereference                                                                    | 6.59  | 0           |
| 13   | CWE-287 | Improper Authentication                                                                     | 6.39  | 10          |
| 14   | CWE-190 | Integer Overflow or Wraparound                                                              | 5.89  | 4           |
| 15   | CWE-502 | Deserialization of Untrusted Data                                                           | 5.56  | 14          |
| 16   | CWE-77  | Improper Neutralization of Special Elements used in a Command ('Command Injection')         | 4.95  | 4           |
| 17   | CWE-119 | Improper Restriction of Operations within the Bounds of a Memory Buffer                     | 4.75  | 7           |
| 18   | CWE-798 | Use of Hard-coded Credentials                                                               | 4.57  | 2           |
| 19   | CWE-918 | Server-Side Request Forgery (SSRF)                                                          | 4.56  | 16          |
| 20   | CWE-306 | Missing Authentication for Critical Function                                                | 3.78  | 8           |
| 21   | CWE-362 | Concurrent Execution using Shared Resource with Improper Synchronization ('Race Condition') | 3.53  | 8           |
| 22   | CWE-269 | Improper Privilege Management                                                               | 3.31  | 5           |
| 23   | CWE-94  | Improper Control of Generation of Code ('Code Injection')                                   | 3.30  | 6           |
| 24   | CWE-863 | Incorrect Authorization                                                                     | 3.16  | 0           |
| 25   | CWE-276 | Incorrect Default Permissions                                                               | 3.16  | 0           |

-   <https://cwe.mitre.org/top25/archive/2023/2023_top25_list.html>
-   MITRE (operates the US Homeland Security Systems Engineering and Development
    Institute) released the 2023 CWE Top 25 Most Dangerous Software Weaknesses
-   Calculated by analysing the previous 2 years worth of public vulnerability
    data from NVD for their various root-causes and ranking those
-   Also incorporates updates weakness data for the CVEs that form CISA's (US
    Cybersecurity &amp; Infrastructure Security Agency) known exploited
    vulnerabilities catalog (KEV)
-   root-causes - CWE - common weakness enumeration - list of software and
    hardware weakness types
-   Looked at CVEs published in 2021 and 2022 and used those where the CWEs could
    be mapped to the simplified collection of 130 weakness types which are the
    most common set
-   Each CVE published by NVD has associated CWEs that identify the root-case for
    the vulnerability - these are generally chosen by the CNA who assigns the CVE
    (as they are most familiar with the product and vulnerability in question) or
    by an NVD analyst - multiple CWEs can be assigned for a CVE since they can
    often be part of chain
-   Score was calculated as the frequency of the CWE compared to other CWEs in the
    dataset, multiplied by the average CVSS score for all CVEs that had the CWE
    -   Have spoken in the past about perceived inaccuracies in CVSS scores and how
        they are not necessarily a good fit for determining the risk of a given
        CVE - but in this case, using them as the basis for this calculation is
        perhaps not awful as they are the only real objective measure of the
        potential **severity** of a CVE - and this is a noisy measure anyway
-   Looking at the top 10, OOB writes come in way at the top with a score of 63.7,
    then XSS (45.5), SQLi (34.3) after which follows a long tail of CWEs with
    scores in the teens - UAF (16.7), OS Command Injection (15.6), Improper Input
    Validation (15.5), OOB Read (14.6), Path Traversal (14.11), CSRF (11.73) and
    finally Unrestricted Upload of File with Dangerous Type (10.4)
    -   Interesting to see the top 3 have a much higher score (all over 34) where as
        the rest are half this - below 16
-   They also quote the number of CVEs that featured in the KEV list (known
    exploited vulns) - OOB W (70) yet XSS (4) + SQLi (6) - so just because there
    are more of a given type of vuln, doesn't mean that they get exploited more -
    e.g. OOB reads are #7 yet only 2 in the list of KEV, and CSRF #9 yet none in
    the KEV list
-   What does this mean for Ubuntu Security? Ultimately it is interesting and
    seems to back up our more traditional approach to CVE priority assignment
    compared to trying to use CVSS as a priority (again this is a severity score
    but doesn't really indicate risk, which is what our traditional priority score
    is based on) - but perhaps is more interesting from an industry point of
    view - memory corruption vulns (OOB Writes) still most prevalent and
    impactful - static / dynamic analysis still very important to try and find
    these - but ultimately the move to memory safe languages (Rust, Go etc) is
    where we will finally see a shift away from this dominance
-   Even then, will still be security bugs (XSS + SQLi, OS Command Injection,
    Improper Input Validation, Path Traveral, CSRF etc)


### Linux Security Summit EU Schedule Published (17:16) {#linux-security-summit-eu-schedule-published--17-16}

-   <https://events.linuxfoundation.org/linux-security-summit-europe/program/schedule/>
-   20-21 September - in Bilbao Spain alongside the Open Source Summit
-   Still chance to get Early Bird Registration (closes 6th July)
-   BPF, exploit detection, estimating security risk of a given OSS project,
    OP-TEE (ARM Trust-Zone) usage, novel project using CHERI hardware architecture
    to protect security sensitive parts of the kernel, using TPM for per-process
    secret storage, secure boot, LSM Updates + LandLock and some more


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
