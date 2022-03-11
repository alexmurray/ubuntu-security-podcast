+++
title = "Episode 150"
description = """
  Ubuntu 20.04.4 LTS is released, plus we talk about Google Project Zero's
  metrics report as well as security updates for the Linux kernel, expat,
  c3p0, Cyrus SASL and more.
  """
date = 2022-02-25T14:40:00+10:30
lastmod = 2022-02-25T14:41:02+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E150.mp3"
podcast_duration = 1093
podcast_bytes = 14301756
permalink = "https://ubuntusecuritypodcast.org/episode-150/"
guid = "682cb3a0b2124c939876f020415aa419fe4d305d424cfde0f437f09c806b6f5ceffb297f6187437d7043263abddcfa9c3d598afb855c48beebfbd410c08a00fa"
+++

## Overview {#overview}

Ubuntu 20.04.4 LTS is released, plus we talk about Google Project Zero's
metrics report as well as security updates for the Linux kernel, expat,
c3p0, Cyrus SASL and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

62 unique CVEs addressed


### [[USN-5292-2](https://ubuntu.com/security/notices/USN-5292-2), [USN-5292-3](https://ubuntu.com/security/notices/USN-5292-3)] snapd vulnerabilities [00:44] {#usn-5292-2-usn-5292-3-snapd-vulnerabilities-00-44}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Focal (20.04 LTS)
    -   [CVE-2021-44731](https://ubuntu.com/security/CVE-2021-44731)
    -   [CVE-2021-44730](https://ubuntu.com/security/CVE-2021-44730)
    -   [CVE-2021-4120](https://ubuntu.com/security/CVE-2021-4120)
    -   [CVE-2021-3155](https://ubuntu.com/security/CVE-2021-3155)
-   [Episode 149](https://ubuntusecuritypodcast.org/episode-149/)


### [[USN-5294-1](https://ubuntu.com/security/notices/USN-5294-1), [USN-5294-2](https://ubuntu.com/security/notices/USN-5294-2)] Linux kernel vulnerabilities [01:38] {#usn-5294-1-usn-5294-2-linux-kernel-vulnerabilities-01-38}

-   8 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-22942](https://ubuntu.com/security/CVE-2022-22942)
    -   [CVE-2022-0330](https://ubuntu.com/security/CVE-2022-0330)
    -   [CVE-2021-43975](https://ubuntu.com/security/CVE-2021-43975)
    -   [CVE-2021-4202](https://ubuntu.com/security/CVE-2021-4202)
    -   [CVE-2021-4155](https://ubuntu.com/security/CVE-2021-4155)
    -   [CVE-2021-4083](https://ubuntu.com/security/CVE-2021-4083)
    -   [CVE-2021-39685](https://ubuntu.com/security/CVE-2021-39685)
    -   [CVE-2021-22600](https://ubuntu.com/security/CVE-2021-22600)
-   5.4 - focal GA + clouds
-   Usual sorts of issues - double-free (UAF) in packet network protocol, OOB
    R/W in USB Gadget, race condition in Unix domain sockets - UAF, XFS info
    leak, NFC race -&gt; UAF, Intel GPU TLB flush missing - DoS/RCE, VMWare vGPU
    missing cleanup on errors - stale entries in fd table - info leak /
    privesc


### [[USN-5295-1](https://ubuntu.com/security/notices/USN-5295-1), [USN-5295-2](https://ubuntu.com/security/notices/USN-5295-2)] Linux kernel (HWE) vulnerabilities [02:57] {#usn-5295-1-usn-5295-2-linux-kernel--hwe--vulnerabilities-02-57}

-   5 CVEs addressed in Impish (21.10), Focal (20.04 LTS)
    -   [CVE-2022-22942](https://ubuntu.com/security/CVE-2022-22942)
    -   [CVE-2022-0330](https://ubuntu.com/security/CVE-2022-0330)
    -   [CVE-2021-4155](https://ubuntu.com/security/CVE-2021-4155)
    -   [CVE-2021-4083](https://ubuntu.com/security/CVE-2021-4083)
    -   [CVE-2021-22600](https://ubuntu.com/security/CVE-2021-22600)
-   5.13 - impish GA + focal HWE


### [[USN-5297-1](https://ubuntu.com/security/notices/USN-5297-1)] Linux kernel (GKE) vulnerabilities [03:17] {#usn-5297-1-linux-kernel--gke--vulnerabilities-03-17}

-   7 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-22942](https://ubuntu.com/security/CVE-2022-22942)
    -   [CVE-2022-0330](https://ubuntu.com/security/CVE-2022-0330)
    -   [CVE-2021-43975](https://ubuntu.com/security/CVE-2021-43975)
    -   [CVE-2021-4202](https://ubuntu.com/security/CVE-2021-4202)
    -   [CVE-2021-4155](https://ubuntu.com/security/CVE-2021-4155)
    -   [CVE-2021-4083](https://ubuntu.com/security/CVE-2021-4083)
    -   [CVE-2021-39685](https://ubuntu.com/security/CVE-2021-39685)
-   5.4 gke specific kernel - focal + bionic


### [[USN-5298-1](https://ubuntu.com/security/notices/USN-5298-1)] Linux kernel vulnerabilities [03:29] {#usn-5298-1-linux-kernel-vulnerabilities-03-29}

-   12 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2022-22942](https://ubuntu.com/security/CVE-2022-22942)
    -   [CVE-2022-0330](https://ubuntu.com/security/CVE-2022-0330)
    -   [CVE-2021-4202](https://ubuntu.com/security/CVE-2021-4202)
    -   [CVE-2021-4155](https://ubuntu.com/security/CVE-2021-4155)
    -   [CVE-2021-4083](https://ubuntu.com/security/CVE-2021-4083)
    -   [CVE-2021-39685](https://ubuntu.com/security/CVE-2021-39685)
    -   [CVE-2021-28715](https://ubuntu.com/security/CVE-2021-28715)
    -   [CVE-2021-28714](https://ubuntu.com/security/CVE-2021-28714)
    -   [CVE-2021-28713](https://ubuntu.com/security/CVE-2021-28713)
    -   [CVE-2021-28712](https://ubuntu.com/security/CVE-2021-28712)
    -   [CVE-2021-28711](https://ubuntu.com/security/CVE-2021-28711)
    -   [CVE-2021-22600](https://ubuntu.com/security/CVE-2021-22600)
-   4.15 bionic GA + xenial HWE + trusty azure


### [[USN-5299-1](https://ubuntu.com/security/notices/USN-5299-1)] Linux kernel vulnerabilities [03:46] {#usn-5299-1-linux-kernel-vulnerabilities-03-46}

-   13 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2021-45485](https://ubuntu.com/security/CVE-2021-45485)
    -   [CVE-2021-42008](https://ubuntu.com/security/CVE-2021-42008)
    -   [CVE-2021-38204](https://ubuntu.com/security/CVE-2021-38204)
    -   [CVE-2021-3679](https://ubuntu.com/security/CVE-2021-3679)
    -   [CVE-2021-3612](https://ubuntu.com/security/CVE-2021-3612)
    -   [CVE-2021-3564](https://ubuntu.com/security/CVE-2021-3564)
    -   [CVE-2021-3483](https://ubuntu.com/security/CVE-2021-3483)
    -   [CVE-2021-34693](https://ubuntu.com/security/CVE-2021-34693)
    -   [CVE-2021-33034](https://ubuntu.com/security/CVE-2021-33034)
    -   [CVE-2021-28972](https://ubuntu.com/security/CVE-2021-28972)
    -   [CVE-2021-0129](https://ubuntu.com/security/CVE-2021-0129)
    -   [CVE-2020-26558](https://ubuntu.com/security/CVE-2020-26558)
    -   [CVE-2020-26147](https://ubuntu.com/security/CVE-2020-26147)
-   4.4 - xenial GA + trusty ESM


### [[USN-5302-1](https://ubuntu.com/security/notices/USN-5302-1)] Linux kernel (OEM) vulnerabilities [03:57] {#usn-5302-1-linux-kernel--oem--vulnerabilities-03-57}

-   6 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-24959](https://ubuntu.com/security/CVE-2022-24959)
        -   [CVE-2022-24448](https://ubuntu.com/security/CVE-2022-24448)
    -   [CVE-2022-0435](https://ubuntu.com/security/CVE-2022-0435)
    -   [CVE-2021-44879](https://ubuntu.com/security/CVE-2021-44879)
    -   [CVE-2021-43976](https://ubuntu.com/security/CVE-2021-43976)
    -   [CVE-2022-0492](https://ubuntu.com/security/CVE-2022-0492)
-   5.14 - focal OEM


### [[USN-5288-1](https://ubuntu.com/security/notices/USN-5288-1)] Expat vulnerabilities [04:12] {#usn-5288-1-expat-vulnerabilities-04-12}

-   12 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-25236](https://ubuntu.com/security/CVE-2022-25236)
    -   [CVE-2022-25235](https://ubuntu.com/security/CVE-2022-25235)
    -   [CVE-2022-23990](https://ubuntu.com/security/CVE-2022-23990)
    -   [CVE-2022-23852](https://ubuntu.com/security/CVE-2022-23852)
    -   [CVE-2022-22827](https://ubuntu.com/security/CVE-2022-22827)
    -   [CVE-2022-22826](https://ubuntu.com/security/CVE-2022-22826)
    -   [CVE-2022-22825](https://ubuntu.com/security/CVE-2022-22825)
    -   [CVE-2022-22824](https://ubuntu.com/security/CVE-2022-22824)
    -   [CVE-2022-22823](https://ubuntu.com/security/CVE-2022-22823)
    -   [CVE-2022-22822](https://ubuntu.com/security/CVE-2022-22822)
    -   [CVE-2021-46143](https://ubuntu.com/security/CVE-2021-46143)
    -   [CVE-2021-45960](https://ubuntu.com/security/CVE-2021-45960)
-   XML parser written in C - used by a huge number of other applications
    from audacity, avahi, ceph, dbus, gdb, git, fontconfig, python, mesa,
    squid and a lot more
-   2 possible RCE vulns - possible to inject content into XML namespace
    tags, and failure to validate encoding e.g. for UTF-8 in particular
    contexts
    -   critical severity according to upstream since if expat passes malformed
        data back to the application could result in memory corruption etc -&gt;
        RCE (thanks to upstream for the heads-up on the possible impact of
        these)
    -   Plus a bunch of DoS and other less severe bugs fixed too (stack
        exhaustion, integer overflows when multi-gigabyte input is parsed etc)


### [[USN-5293-1](https://ubuntu.com/security/notices/USN-5293-1)] c3p0 vulnerability [05:41] {#usn-5293-1-c3p0-vulnerability-05-41}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2019-5427](https://ubuntu.com/security/CVE-2019-5427)
-   JDBC connection pooling library
-   billion laughs attack (aka XML bomb) when parsing XML config via
    recursive XML entity expansion - have one entity defined as 10 of the
    previous entity - then do this 10 times - 1 billion copies of the
    original entity - memory exhaustion
-   billion laughs comes from original PoC which used an entity called `lol`
    which was defined as 10 copies of `lol8` which was defined as 10 copies of
    `lol7` etc...


### [[USN-5301-1](https://ubuntu.com/security/notices/USN-5301-1), [USN-5301-2](https://ubuntu.com/security/notices/USN-5301-2)] Cyrus SASL vulnerability [06:44] {#usn-5301-1-usn-5301-2-cyrus-sasl-vulnerability-06-44}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-24407](https://ubuntu.com/security/CVE-2022-24407)
-   SASL implementation for Cyrus IMAP server, used also by exim, ldap-utils,
    mutt, php, postfix and others
-   SQL plugin failed to properly validate input - SQL injection


### [[USN-5300-1](https://ubuntu.com/security/notices/USN-5300-1)] PHP vulnerabilities [07:23] {#usn-5300-1-php-vulnerabilities-07-23}

-   6 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-21707](https://ubuntu.com/security/CVE-2021-21707)
    -   [CVE-2017-9119](https://ubuntu.com/security/CVE-2017-9119)
    -   [CVE-2017-9120](https://ubuntu.com/security/CVE-2017-9120)
    -   [CVE-2017-9118](https://ubuntu.com/security/CVE-2017-9118)
    -   [CVE-2017-8923](https://ubuntu.com/security/CVE-2017-8923)
    -   [CVE-2015-9253](https://ubuntu.com/security/CVE-2015-9253)
-   php 7 - 4 different DoS vulns, 1 memory corruption - crash/RCE and one
    info leak


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### GPZ report on vulnerability metrics [07:48] {#gpz-report-on-vulnerability-metrics-07-48}

-   <https://googleprojectzero.blogspot.com/2022/02/a-walk-through-project-zero-metrics.html>
-   Looks at vulns which GPZ has reported between Jan 2019 - Dec 2021 and how
    fast they get patched
-   376 vulns
    -   351 (93%) fixed, 14 (4%) wontfix, 11 (3%) unfixed
    -   96 (26%) Microsoft, 85 (23%) Apple, 60 (16%) Google
-   Strict 90-day deadline to fix and ship (with additional 14-day grace
    period)
-   When looking at vulns, group by Vendor - Apple, MS, Google, Linux
    (kernel), Adobe, Mozilla, Samsung, Oracle and Others
    -   Others: includes both vendors: Apache, AWS, Canonical, Intel, Qualcomm,
        RedHat etc, but also individual OSS projects: c-ares, git, glibc,
        gnupg, libseccomp, systemd and more
-   Time-to-patch:
    -   Linux - 25 days on average
    -   Google + Others - 44 days
    -   Mozilla - 61
    -   Adobe - 65
    -   Apple - 69
    -   Microsoft - 83
    -   Oracle - 109
-   If look by year - shows most vendors have gotten faster over time - but
    in particular Linux and Others are twice as fast in 2021 cf. 2019
    -   Good news for Ubuntu users as these encompass the Linux relevant vulns
-   Also look into stats on Phone - comparing iOS, Android (Samsung), Android
    (Google) - and all have a TTP of ~70 days
-   Then also dig into specifics of timelines for OSS projects, focusing on
    browsers since can break down the process into 2 discrete steps:
    -   time from report to a public patch being available
    -   time from public patch to release
-   And compare these across Chrome, WebKit and Firefox
    -   Chrome is fastest overall at 30 days total, Firefox 38 days, WebKit 73
    -   When looking at the two steps:
        -   Chrome has a very short initial patch time - 5 days - but both WebKit
            and Firefox are respectible with 12 and 17 days respectively
        -   But release cycle of WebKit is so long (61 days)compared to Chrome
            (25) and Firefox (21) that this significantly delays the time to
            fixes being available to users
        -   Also puts them at more risk, since once a patch is publicly
            available, it is usually not too hard to engineer a PoC for motivated
            researchers, so they then have 2 months to use this on average before
            it is patched
        -   WebKit is used for all web rendering on iOS so iPhone users are then
            vulnerable for quite a while no matter what browser they use -
            hopefully Apple get faster at doing WebKit releases
        -   Compared to Firefox and Chrome - both 4 week cycle now
        -   Is not enough to develop fixes - you actually have to get them into
            the hands of users to protect them


### Ubuntu 20.04.4 LTS Released [15:27] {#ubuntu-20-dot-04-dot-4-lts-released-15-27}

-   <https://lists.ubuntu.com/archives/ubuntu-announce/2022-February/000277.html>

The Ubuntu team is pleased to announce the release of Ubuntu 20.04.4 LTS
(Long-Term Support) for its Desktop, Server, and Cloud products, as well
as other flavours of Ubuntu with long-term support.

Like previous LTS series, 20.04.4 includes hardware enablement stacks
for use on newer hardware. This support is offered on all architectures.

Ubuntu Server defaults to installing the GA kernel; however you may
select the HWE kernel from the installer bootloader.

As usual, this point release includes many updates, and updated
installation media has been provided so that fewer updates will need to
be downloaded after installation. These include security updates and
corrections for other high-impact bugs, with a focus on maintaining
stability and compatibility with Ubuntu 20.04 LTS.

Kubuntu 20.04.4 LTS, Ubuntu Budgie 20.04.4 LTS, Ubuntu MATE 20.04.4 LTS,
Lubuntu 20.04.4 LTS, Ubuntu Kylin 20.04.4 LTS, Ubuntu Studio 20.04.4 LTS,
and Xubuntu 20.04.4 LTS are also now available. More details can be found
in their individual release notes:

<https://wiki.ubuntu.com/FocalFossa/ReleaseNotes#Official_flavours>

Maintenance updates will be provided for 5 years for Ubuntu Desktop,
Ubuntu Server, Ubuntu Cloud, and Ubuntu Core. All the remaining
flavours will be supported for 3 years. Additional security support is
available with ESM (Extended Security Maintenance).

-   <https://wiki.ubuntu.com/FocalFossa/ReleaseNotes>
-   <https://wiki.ubuntu.com/FocalFossa/ReleaseNotes/ChangeSummary/20.04.4>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)