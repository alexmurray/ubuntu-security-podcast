+++
title = "Episode 112"
description = """
  This week we look at a reboot of the DWF project, Rust in the Linux kernel,
  an Ubuntu security webinar plus some details of the 45 CVEs addressed
  across the Ubuntu releases this last week and more.
  """
date = 2021-04-16T17:18:00+09:30
lastmod = 2022-05-15T18:06:11+09:30
draft = false
weight = 1048
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E112.mp3"
podcast_duration = "14:37"
podcast_bytes = 11480197
permalink = "https://ubuntusecuritypodcast.org/episode-112/"
guid = "04d09ee2bd28b15449ad702b4be3a0f94884523c0eb8f3febcc9d72aaf01269d3eb6370c9be35df627b191aaf6814601591578ac8cc1781bdb6df35b8173f64e"
+++

## Overview {#overview}

This week we look at a reboot of the DWF project, Rust in the Linux kernel,
an Ubuntu security webinar plus some details of the 45 CVEs addressed
across the Ubuntu releases this last week and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

45 unique CVEs addressed


### [[LSN-0075-1](https://lists.ubuntu.com/archives/ubuntu-security-announce/2021-April/005960.html)] Linux kernel vulnerability [01:01] {#lsn-0075-1-linux-kernel-vulnerability-01-01}

-   8 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-27365](https://ubuntu.com/security/CVE-2021-27365) <!-- high -->
    -   [CVE-2021-27364](https://ubuntu.com/security/CVE-2021-27364) <!-- medium -->
    -   [CVE-2021-27363](https://ubuntu.com/security/CVE-2021-27363) <!-- medium -->
    -   [CVE-2021-3444](https://ubuntu.com/security/CVE-2021-3444) <!-- high -->
    -   [CVE-2020-29374](https://ubuntu.com/security/CVE-2020-29374) <!-- medium -->
    -   [CVE-2020-29372](https://ubuntu.com/security/CVE-2020-29372) <!-- medium -->
    -   [CVE-2020-27171](https://ubuntu.com/security/CVE-2020-27171) <!-- high -->
    -   [CVE-2020-27170](https://ubuntu.com/security/CVE-2020-27170) <!-- high -->
-   madvise issue reported by Jann Horn -
-   BPF spectre mitigations fixes ([Episode 109](https://ubuntusecuritypodcast.org/episode-109/))


### [[USN-4903-1](https://ubuntu.com/security/notices/USN-4903-1)] curl vulnerability [02:02] {#usn-4903-1-curl-vulnerability-02-02}

-   1 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2021-22876](https://ubuntu.com/security/CVE-2021-22876) <!-- medium -->
-   [Episode 110](https://ubuntusecuritypodcast.org/episode-110/) - leaking credentials via HTTP Referer header


### [[USN-4896-2](https://ubuntu.com/security/notices/USN-4896-2)] lxml vulnerability {#usn-4896-2-lxml-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2021-28957](https://ubuntu.com/security/CVE-2021-28957) <!-- medium -->
-   [Episode 110](https://ubuntusecuritypodcast.org/episode-110/)


### [[USN-4899-2](https://ubuntu.com/security/notices/USN-4899-2)] SpamAssassin vulnerability {#usn-4899-2-spamassassin-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2020-1946](https://ubuntu.com/security/CVE-2020-1946) <!-- medium -->
-   [Episode 110](https://ubuntusecuritypodcast.org/episode-110/)


### [[USN-4905-1](https://ubuntu.com/security/notices/USN-4905-1)] X.Org X Server vulnerability [02:26] {#usn-4905-1-x-dot-org-x-server-vulnerability-02-26}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-3472](https://ubuntu.com/security/CVE-2021-3472) <!-- medium -->
-   Local user (X client) could crash the server via Xinput extension and
    ChangeFeedbackControl request - integer underflow -&gt; heap buffer overflow


### [[USN-4906-1](https://ubuntu.com/security/notices/USN-4906-1)] Nettle vulnerability [03:31] {#usn-4906-1-nettle-vulnerability-03-31}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-20305](https://ubuntu.com/security/CVE-2021-20305) <!-- medium -->
-   Low level crypto library used by lots of packages - chrony, dnsmasq,
    lighttpd, qemu, squid, supertuxkart
-   Could en up calling EC multiply with out-of-range scalers - as a result
    would get incorrect results during EC signature verification and so could
    allow an attacker to trigger an assertion failure -&gt; DoS OR force an
    invalid signature - bypass verification


### [[USN-4904-1](https://ubuntu.com/security/notices/USN-4904-1)] Linux kernel vulnerabilities [04:27] {#usn-4904-1-linux-kernel-vulnerabilities-04-27}

-   11 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2021-28038](https://ubuntu.com/security/CVE-2021-28038) <!-- medium -->
    -   [CVE-2021-26931](https://ubuntu.com/security/CVE-2021-26931) <!-- low -->
    -   [CVE-2021-26930](https://ubuntu.com/security/CVE-2021-26930) <!-- low -->
    -   [CVE-2021-20261](https://ubuntu.com/security/CVE-2021-20261) <!-- medium -->
    -   [CVE-2019-19061](https://ubuntu.com/security/CVE-2019-19061) <!-- low -->
    -   [CVE-2019-16232](https://ubuntu.com/security/CVE-2019-16232) <!-- low -->
    -   [CVE-2019-16231](https://ubuntu.com/security/CVE-2019-16231) <!-- low -->
    -   [CVE-2018-13095](https://ubuntu.com/security/CVE-2018-13095) <!-- low -->
    -   [CVE-2017-5967](https://ubuntu.com/security/CVE-2017-5967) <!-- low -->
    -   [CVE-2017-16644](https://ubuntu.com/security/CVE-2017-16644) <!-- low -->
    -   [CVE-2015-1350](https://ubuntu.com/security/CVE-2015-1350) <!-- low -->


### [[USN-4907-1](https://ubuntu.com/security/notices/USN-4907-1)] Linux kernel vulnerabilities {#usn-4907-1-linux-kernel-vulnerabilities}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2021-3348](https://ubuntu.com/security/CVE-2021-3348) <!-- medium -->
    -   [CVE-2021-3347](https://ubuntu.com/security/CVE-2021-3347) <!-- medium -->
    -   [CVE-2018-13095](https://ubuntu.com/security/CVE-2018-13095) <!-- low -->


### [[USN-4909-1](https://ubuntu.com/security/notices/USN-4909-1)] Linux kernel vulnerabilities {#usn-4909-1-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3348](https://ubuntu.com/security/CVE-2021-3348) <!-- medium -->
    -   [CVE-2021-26931](https://ubuntu.com/security/CVE-2021-26931) <!-- low -->
    -   [CVE-2021-26930](https://ubuntu.com/security/CVE-2021-26930) <!-- low -->
    -   [CVE-2021-20194](https://ubuntu.com/security/CVE-2021-20194) <!-- low -->


### [[USN-4910-1](https://ubuntu.com/security/notices/USN-4910-1)] Linux kernel vulnerabilities {#usn-4910-1-linux-kernel-vulnerabilities}

-   5 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-3178](https://ubuntu.com/security/CVE-2021-3178) <!-- negligible -->
    -   [CVE-2021-3348](https://ubuntu.com/security/CVE-2021-3348) <!-- medium -->
    -   [CVE-2021-3347](https://ubuntu.com/security/CVE-2021-3347) <!-- medium -->
    -   [CVE-2021-20268](https://ubuntu.com/security/CVE-2021-20268) <!-- medium -->
    -   [CVE-2021-20239](https://ubuntu.com/security/CVE-2021-20239) <!-- low -->


### [[USN-4911-1](https://ubuntu.com/security/notices/USN-4911-1)] Linux kernel (OEM) vulnerabilities {#usn-4911-1-linux-kernel--oem--vulnerabilities}

-   4 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-28950](https://ubuntu.com/security/CVE-2021-28950) <!-- medium -->
    -   [CVE-2021-28375](https://ubuntu.com/security/CVE-2021-28375) <!-- medium -->
    -   [CVE-2021-28038](https://ubuntu.com/security/CVE-2021-28038) <!-- medium -->
    -   [CVE-2020-25639](https://ubuntu.com/security/CVE-2020-25639) <!-- low -->


### [[USN-4912-1](https://ubuntu.com/security/notices/USN-4912-1)] Linux kernel (OEM) vulnerabilities {#usn-4912-1-linux-kernel--oem--vulnerabilities}

-   14 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-3178](https://ubuntu.com/security/CVE-2021-3178) <!-- negligible -->
    -   [CVE-2021-3411](https://ubuntu.com/security/CVE-2021-3411) <!-- medium -->
    -   [CVE-2021-20194](https://ubuntu.com/security/CVE-2021-20194) <!-- low -->
    -   [CVE-2020-36158](https://ubuntu.com/security/CVE-2020-36158) <!-- medium -->
    -   [CVE-2020-27830](https://ubuntu.com/security/CVE-2020-27830) <!-- low -->
    -   [CVE-2020-25669](https://ubuntu.com/security/CVE-2020-25669) <!-- low -->
    -   [CVE-2020-25645](https://ubuntu.com/security/CVE-2020-25645) <!-- medium -->
    -   [CVE-2020-25285](https://ubuntu.com/security/CVE-2020-25285) <!-- low -->
    -   [CVE-2020-14390](https://ubuntu.com/security/CVE-2020-14390) <!-- low -->
    -   [CVE-2020-14351](https://ubuntu.com/security/CVE-2020-14351) <!-- low -->
    -   [CVE-2020-0466](https://ubuntu.com/security/CVE-2020-0466) <!-- medium -->
    -   [CVE-2020-0465](https://ubuntu.com/security/CVE-2020-0465) <!-- medium -->
    -   [CVE-2020-0423](https://ubuntu.com/security/CVE-2020-0423) <!-- low -->
    -   [CVE-2021-29154](https://ubuntu.com/security/CVE-2021-29154) <!-- high -->
-   Piotr Krysiuk - BPF JIT - invalid branch displacement - could allow OOB
    memory read/write -&gt; code exec or at least crash - unpriv in Ubuntu so
    could then allow an unprivileged user to get kernel code exec
-   Thanks to kernel team for handling these issues - lots of kernel security
    issues at the moment so thanks for their hard work


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### DWF v2 [07:25] {#dwf-v2-07-25}

-   <https://lwn.net/Articles/851849/>
-   <https://iwantacve.org/>
-   <https://twitter.com/CVEannounce/status/1368992488464203777>


### Rust support for Linux kernel [10:12] {#rust-support-for-linux-kernel-10-12}

-   <https://lore.kernel.org/lkml/20210414184604.23473-1-ojeda@kernel.org/>
-   <https://security.googleblog.com/2021/04/rust-in-linux-kernel.html>


### Securing open source from cloud to edge webinar [12:19] {#securing-open-source-from-cloud-to-edge-webinar-12-19}

-   <https://www.brighttalk.com/webcast/6793/440517>
-   Ubuntu is built with security in mind from the ground up, and how we keep
    you protected against major vulnerabilities
-   How you can ensure performant open source in production environments
-   Specific security services that can help you achieve maximum availability
    by reducing downtime and providing access to high and critical CVE fixes
-   Ubuntu helps organisations remain compliant with government and industry
    standards and regulations, including Common Criteria EAL2 with FIPS 140-2
    Level 1 certified crypto modules


### Hiring [13:13] {#hiring-13-13}


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
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)