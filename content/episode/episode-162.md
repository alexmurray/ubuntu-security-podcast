+++
title = "Episode 162"
description = """
  This week we cover security updates for dpkg, logrotate, GnuPG, CUPS,
  InfluxDB and more, plus we take a quick look at some open positions on the
  team - come join us!
  """
date = 2022-06-03T16:50:00+09:30
lastmod = 2022-06-03T16:51:13+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E162.mp3"
podcast_duration = 938
podcast_bytes = 11996727
permalink = "https://ubuntusecuritypodcast.org/episode-162/"
guid = "6157df5bba6d9c3b1c2615db1b7a215e6e183a319d38fa580746810081f9b1d27fc04fba9b68728d55ea6e85f86038532a47f1da6e537b54d7c26b29c337128e"
+++

## Overview {#overview}

This week we cover security updates for dpkg, logrotate, GnuPG, CUPS,
InfluxDB and more, plus we take a quick look at some open positions on the
team - come join us!


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

31 unique CVEs addressed


### [[USN-5446-1](https://ubuntu.com/security/notices/USN-5446-1), [USN-5446-2](https://ubuntu.com/security/notices/USN-5446-2)] dpkg vulnerability [00:42] {#usn-5446-1-usn-5446-2-dpkg-vulnerability-00-42}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-1664](https://ubuntu.com/security/CVE-2022-1664) <!-- medium -->
-   Directory traversal vulnerability when extracting untrusted **source** packages
    -   debian source packages consist of two tarballs - orig and debian
    -   orig is unpacked and then debian in unpacked on top of that - if orig
        is crafted to contain a symlink which pointed to a file outside of the
        source code, then when unpacking debian it will follow that symlink and
        hence would overwrite arbitrary files outside the source directory
    -   Only really a problem for debian/ubuntu developers


### [[USN-5447-1](https://ubuntu.com/security/notices/USN-5447-1)] logrotate vulnerability [02:58] {#usn-5447-1-logrotate-vulnerability-02-58}

-   1 CVEs addressed in Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-1348](https://ubuntu.com/security/CVE-2022-1348) <!-- medium -->
-   logrotate creates a 'state' file to avoid parallel executions of itself -
    each instance locks this file as a mutex mechanism
-   if this doesn't exist, it gets created - **but** is created world readable -
    which allows unprivileged users to take the lock on this file
-   as such the real logrotate will fail to run since it can't get the lock
    -&gt; DoS


### [[USN-5402-2](https://ubuntu.com/security/notices/USN-5402-2)] OpenSSL vulnerabilities [04:13] {#usn-5402-2-openssl-vulnerabilities-04-13}

-   2 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-1473](https://ubuntu.com/security/CVE-2022-1473) <!-- low -->
    -   [CVE-2022-1292](https://ubuntu.com/security/CVE-2022-1292) <!-- medium -->
-   [Episode 159](https://ubuntusecuritypodcast.org/episode-159/)


### [[USN-5448-1](https://ubuntu.com/security/notices/USN-5448-1)] ncurses vulnerabilities [04:21] {#usn-5448-1-ncurses-vulnerabilities-04-21}

-   11 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2017-13728](https://ubuntu.com/security/CVE-2017-13728) <!-- negligible -->
    -   [CVE-2017-11113](https://ubuntu.com/security/CVE-2017-11113) <!-- negligible -->
    -   [CVE-2017-13734](https://ubuntu.com/security/CVE-2017-13734) <!-- negligible -->
    -   [CVE-2017-13733](https://ubuntu.com/security/CVE-2017-13733) <!-- negligible -->
    -   [CVE-2017-13732](https://ubuntu.com/security/CVE-2017-13732) <!-- negligible -->
    -   [CVE-2017-13731](https://ubuntu.com/security/CVE-2017-13731) <!-- negligible -->
    -   [CVE-2017-13730](https://ubuntu.com/security/CVE-2017-13730) <!-- negligible -->
    -   [CVE-2017-13729](https://ubuntu.com/security/CVE-2017-13729) <!-- negligible -->
    -   [CVE-2017-11112](https://ubuntu.com/security/CVE-2017-11112) <!-- negligible -->
    -   [CVE-2017-10685](https://ubuntu.com/security/CVE-2017-10685) <!-- negligible -->
    -   [CVE-2017-10684](https://ubuntu.com/security/CVE-2017-10684) <!-- negligible -->
-   Crafted inputs could cause ncurses to crash - most of these were found
    via fuzzing and are stack buffer overflows - these are generally
    mitigated via stack-protector, others are NULL ptr deref, but again same
    outcome (crash -&gt; DoS)
-   Possible infinite loop as well -&gt; cpu based DoS


### [[USN-5449-1](https://ubuntu.com/security/notices/USN-5449-1)] libXv vulnerability [04:58] {#usn-5449-1-libxv-vulnerability-04-58}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2016-5407](https://ubuntu.com/security/CVE-2016-5407) <!-- low -->
-   Remove X server could trigger OOB read in the X client via crafted
    response -&gt; crash -&gt; DoS


### [[USN-5431-1](https://ubuntu.com/security/notices/USN-5431-1)] GnuPG vulnerability [04:24] {#usn-5431-1-gnupg-vulnerability-04-24}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-13050](https://ubuntu.com/security/CVE-2019-13050) <!-- low -->
-   Weakness in PGP/SKS keyserver design - if a key/certificate has many
    signatures, GnuPG will take an inordinate amount of time to process these
    when downloading the key from the keyserver -&gt; DoS
    -   Certificate spamming attack - anyone can sign someone else's cert
        thereby attaching another signature to it on the SKS keyserver network
    -   The OpenPGP spec doesn't limit the number of signatures (but SKS
        keyserver network does - 150k)
    -   So anyone can poison someone else's cert by attaching a large number of
        signatures to it
    -   GnuPG would download **all** of these signatures when importing a key **and**
        then proceed to validate them all
        -   Also would do this when say validating a signature from that poisoned
            cert
-   Fixed to not import key signatures by default anymore and to then
    fallback to only import self-signatures on large keyblocks


### [[USN-5452-1](https://ubuntu.com/security/notices/USN-5452-1)] NTFS-3G vulnerability [07:55] {#usn-5452-1-ntfs-3g-vulnerability-07-55}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2021-46790](https://ubuntu.com/security/CVE-2021-46790) <!-- low -->
-   `ntfsck` tool failed to perform proper bounds checking on filesystem
    metadata - if could trick a user into running it on an untrusted
    filesystem image could then possibly get code execution
    -   Upstream have deprecated this tool and it is only present in the
        `ntfs-3g-dev` package which is not installed by default


### [[USN-5453-1](https://ubuntu.com/security/notices/USN-5453-1)] FreeType vulnerability [08:38] {#usn-5453-1-freetype-vulnerability-08-38}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-27406](https://ubuntu.com/security/CVE-2022-27406) <!-- low -->
-   OOB read when processing a crafted font file -&gt; DoS


### [[USN-5454-1](https://ubuntu.com/security/notices/USN-5454-1), [USN-5454-2](https://ubuntu.com/security/notices/USN-5454-2)] CUPS vulnerabilities [08:50] {#usn-5454-1-usn-5454-2-cups-vulnerabilities-08-50}

-   3 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2020-10001](https://ubuntu.com/security/CVE-2020-10001) <!-- low -->
    -   [CVE-2019-8842](https://ubuntu.com/security/CVE-2019-8842) <!-- low -->
    -   [CVE-2022-26691](https://ubuntu.com/security/CVE-2022-26691) <!-- medium -->
-   Upstream Apple advisory describes this as:
    -   "Logic issue addressed with improved state management... An application
        may be able to gain elevated privileges"
-   Looks like it was discovered by [Mandiant](https://github.com/mandiant/Vulnerability-Disclosures/blob/master/2022/MNDT-2022-0026/MNDT-2022-0026.md)
    -   CUPS provides the ability to authenticate via Basic Web Authentication
        or through a 32-byte randomly generated token created at runtime
    -   Comparison function would only compare the supplied token value against
        the real one based on the length of the shortest input - so if supplied
        an empty string then would compare 0 bytes of the two and return
        success!
-   Other two issues were memory handling issues in IPP printing - could
    submit a print job which would cause an OOB read in CUPS -&gt; crash -&gt; DoS


### [[USN-5451-1](https://ubuntu.com/security/notices/USN-5451-1)] InfluxDB vulnerability [10:39] {#usn-5451-1-influxdb-vulnerability-10-39}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2019-20933](https://ubuntu.com/security/CVE-2019-20933) <!-- medium -->
-   Similar authentication bug in InfluxDB - could bypass authentication by
    supplying a JWT token with an empty SharedSecret


### [[USN-5442-2](https://ubuntu.com/security/notices/USN-5442-2)] Linux kernel vulnerabilities [11:06] {#usn-5442-2-linux-kernel-vulnerabilities-11-06}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-30594](https://ubuntu.com/security/CVE-2022-30594) <!-- medium -->
    -   [CVE-2022-1116](https://ubuntu.com/security/CVE-2022-1116) <!-- high -->
    -   [CVE-2022-29581](https://ubuntu.com/security/CVE-2022-29581) <!-- high -->
-   5.4 - GCP/GKE/IBM/Oracle/Raspi
-   Bing-Jhong Billy Jheng found integer overflow in `io_uring` - an
    unprivileged user can spam requests which would eventually overflow
    counter and then could be used to trigger an OOB write -&gt; controlled
    memory corruption -&gt; privesc
    -   Not the first bug in `io_uring` found by this researcher -
        <https://seclists.org/oss-sec/2021/q2/127>
-   Similarly, Jann Horn (GPZ) found kernel didn't properly check privileges
    of a process when allowing it to set a flag which would then disable
    seccomp filters on another process or itself
    -   Could then allow an unprivileged process to turn of seccomp for itself
        / other processes and allow them to bypass intended access restrictions
-   Regular kernel security bug - ref count issue in network queueing
    subsystem -&gt; UAF - able to be triggered by a local attacker -&gt; crash /
    code execution


### [[USN-5443-2](https://ubuntu.com/security/notices/USN-5443-2)] Linux kernel vulnerabilities [12:47] {#usn-5443-2-linux-kernel-vulnerabilities-12-47}

-   2 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-30594](https://ubuntu.com/security/CVE-2022-30594) <!-- medium -->
    -   [CVE-2022-29581](https://ubuntu.com/security/CVE-2022-29581) <!-- high -->
-   5.13 Oracle/GCP


### [[USN-5457-1](https://ubuntu.com/security/notices/USN-5457-1)] WebKitGTK vulnerabilities [12:58] {#usn-5457-1-webkitgtk-vulnerabilities-12-58}

-   5 CVEs addressed in Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-26719](https://ubuntu.com/security/CVE-2022-26719) <!-- medium -->
    -   [CVE-2022-26717](https://ubuntu.com/security/CVE-2022-26717) <!-- medium -->
    -   [CVE-2022-26716](https://ubuntu.com/security/CVE-2022-26716) <!-- medium -->
    -   [CVE-2022-26709](https://ubuntu.com/security/CVE-2022-26709) <!-- medium -->
    -   [CVE-2022-26700](https://ubuntu.com/security/CVE-2022-26700) <!-- medium -->
-   Latest webkit point release - usual mix of issues fixed - XSS, DoS, RCE
    etc


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Hiring {#hiring}


#### Security Engineer - Ubuntu [13:25] {#security-engineer-ubuntu-13-25}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>


#### Security Certifications Product Manager - CIS, FIPS, FedRAMP and more [14:24] {#security-certifications-product-manager-cis-fips-fedramp-and-more-14-24}

-   <https://canonical.com/careers/3781589/security-certifications-product-manager-cis-fips-fedramp-and-more-remote>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)