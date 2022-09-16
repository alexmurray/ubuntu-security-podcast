+++
title = "Episode 177"
description = """
  Alex talks with special guests Nishit Majithia and Matthew Ruffell about a
  recent systemd regression on Ubuntu 18.04 LTS plus we cover security updates for
  Dnsmasq, the Linux kernel, poppler, .NET 6, rust-regex and more.
  """
date = 2022-09-16T16:18:00+09:30
lastmod = 2022-09-16T16:23:05+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E177.mp3"
podcast_duration = 1868
podcast_bytes = 31562912
permalink = "https://ubuntusecuritypodcast.org/episode-177/"
guid = "95f122fada84fa4c0f9d2b0878278d04745a62e38260dabf210a9daa35041fc3e8152b85ff224f7421c649458e4498cf1c231ad99c89cb296298a12fda6e0aea"
+++

## Overview {#overview}

Alex talks with special guests Nishit Majithia and Matthew Ruffell about a
recent systemd regression on Ubuntu 18.04 LTS plus we cover security updates for
Dnsmasq, the Linux kernel, poppler, .NET 6, rust-regex and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

28 unique CVEs addressed


### [[USN-4976-2](https://ubuntu.com/security/notices/USN-4976-2)] Dnsmasq vulnerability [00:55] {#usn-4976-2-dnsmasq-vulnerability-00-55}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-3448](https://ubuntu.com/security/CVE-2021-3448) <!-- low -->
-   [[USN-4976-1] Dnsmasq vulnerability for Episode 118]({{< relref "episode-118#usn-4976-1-dnsmasq-vulnerability-08-56" >}})
-   Failed to properly randomise source port (ie used a fixed port) when
    forwarding queries when configured to use a specific server for a given
    network interface - could then allow a remote attacker to more easily
    perform cache poisoning attacks (ie just need to guess the transmission
    ID once know the source port to get a forged reply accepted)
    -   As I said back in Episode 118, this is very similar to the issues that were
        discovered back in 2008 by Dan Kaminsky - the whole reason source port
        randomisation was introduced as part of the DNS protocol


### [[USN-5602-1](https://ubuntu.com/security/notices/USN-5602-1)] Linux kernel (Raspberry Pi) vulnerabilities [02:11] {#usn-5602-1-linux-kernel--raspberry-pi--vulnerabilities-02-11}

-   9 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-2959](https://ubuntu.com/security/CVE-2022-2959) <!-- medium -->
    -   [CVE-2022-2873](https://ubuntu.com/security/CVE-2022-2873) <!-- medium -->
    -   [CVE-2022-2503](https://ubuntu.com/security/CVE-2022-2503) <!-- medium -->
    -   [CVE-2022-1973](https://ubuntu.com/security/CVE-2022-1973) <!-- medium -->
    -   [CVE-2022-1943](https://ubuntu.com/security/CVE-2022-1943) <!-- medium -->
    -   [CVE-2022-1852](https://ubuntu.com/security/CVE-2022-1852) <!-- medium -->
    -   [CVE-2022-1729](https://ubuntu.com/security/CVE-2022-1729) <!-- low -->
    -   [CVE-2022-1012](https://ubuntu.com/security/CVE-2022-1012) <!-- medium -->
    -   [CVE-2021-33061](https://ubuntu.com/security/CVE-2021-33061) <!-- medium -->
-   [See [USN-5594-1, USN-5599-1] Linux kernel (+ Oracle) vulnerabilities from last week]({{< relref "episode-176#usn-5594-1-usn-5599-1-linux-kernel--plus-oracle--vulnerabilities-01-28" >}})


### [[USN-5603-1](https://ubuntu.com/security/notices/USN-5603-1)] Linux kernel (Raspberry Pi) vulnerabilities [02:29] {#usn-5603-1-linux-kernel--raspberry-pi--vulnerabilities-02-29}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2021-33656](https://ubuntu.com/security/CVE-2021-33656) <!-- medium -->
    -   [CVE-2021-33061](https://ubuntu.com/security/CVE-2021-33061) <!-- medium -->
-   [See [USN-5592-1, USN-5595-1, USN-5596-1, USN-5600-1] Linux kernel (+ OEM, HWE) vulnerabilities from last week]({{< relref "episode-176#usn-5592-1-usn-5595-1-usn-5596-1-usn-5600-1-linux-kernel--plus-oem-hwe--vulnerabilities-01-04" >}})


### [[USN-5605-1](https://ubuntu.com/security/notices/USN-5605-1)] Linux kernel (Azure CVM) vulnerabilities [02:38] {#usn-5605-1-linux-kernel--azure-cvm--vulnerabilities-02-38}

-   2 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-33656](https://ubuntu.com/security/CVE-2021-33656) <!-- medium -->
    -   [CVE-2021-33061](https://ubuntu.com/security/CVE-2021-33061) <!-- medium -->
-   [See [USN-5592-1, USN-5595-1, USN-5596-1, USN-5600-1] Linux kernel (+ OEM, HWE) vulnerabilities from last week]({{< relref "episode-176#usn-5592-1-usn-5595-1-usn-5596-1-usn-5600-1-linux-kernel--plus-oem-hwe--vulnerabilities-01-04" >}})


### [[USN-5523-2](https://ubuntu.com/security/notices/USN-5523-2)] LibTIFF vulnerabilities [02:45] {#usn-5523-2-libtiff-vulnerabilities-02-45}

-   7 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-19144](https://ubuntu.com/security/CVE-2020-19144) <!-- negligible -->
    -   [CVE-2020-19131](https://ubuntu.com/security/CVE-2020-19131) <!-- negligible -->
    -   [CVE-2022-22844](https://ubuntu.com/security/CVE-2022-22844) <!-- negligible -->
    -   [CVE-2022-0924](https://ubuntu.com/security/CVE-2022-0924) <!-- medium -->
    -   [CVE-2022-0909](https://ubuntu.com/security/CVE-2022-0909) <!-- medium -->
    -   [CVE-2022-0908](https://ubuntu.com/security/CVE-2022-0908) <!-- medium -->
    -   [CVE-2022-0907](https://ubuntu.com/security/CVE-2022-0907) <!-- medium -->
-   [[USN-5523-1] LibTIFF vulnerabilities from Episode 169]({{< relref "episode-169#usn-5523-1-libtiff-vulnerabilities-08-02" >}})


### [[USN-5604-1](https://ubuntu.com/security/notices/USN-5604-1)] LibTIFF vulnerabilities [03:13] {#usn-5604-1-libtiff-vulnerabilities-03-13}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-2868](https://ubuntu.com/security/CVE-2022-2868) <!-- low -->
    -   [CVE-2022-2869](https://ubuntu.com/security/CVE-2022-2869) <!-- low -->
    -   [CVE-2022-2867](https://ubuntu.com/security/CVE-2022-2867) <!-- low -->


### [[USN-5606-1](https://ubuntu.com/security/notices/USN-5606-1)] poppler vulnerability [03:23] {#usn-5606-1-poppler-vulnerability-03-23}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-38784](https://ubuntu.com/security/CVE-2022-38784) <!-- medium -->
-   Integer overflow in JBIG2 decoder -&gt; heap buffer overflow via crafted PDF /
    JBIG2 image - very similar to [CVE-2022-38171](https://ubuntu.com/security/CVE-2022-38171) in xpdf
    -   poppler started life as a fork of code from xpdf-3.0 but now has diverged so
        much that in general a vuln in one cannot be assumed to exist in the other,
        hence the separate CVE IDs for these two vulns


### [[USN-5607-1](https://ubuntu.com/security/notices/USN-5607-1)] GDK-PixBuf vulnerability [04:11] {#usn-5607-1-gdk-pixbuf-vulnerability-04-11}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2021-44648](https://ubuntu.com/security/CVE-2021-44648) <!-- medium -->
-   Heap buffer overflow when decoding lzw compressed stream from GIF files


### [[USN-5608-1](https://ubuntu.com/security/notices/USN-5608-1)] DPDK vulnerability [04:26] {#usn-5608-1-dpdk-vulnerability-04-26}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-2132](https://ubuntu.com/security/CVE-2022-2132) <!-- medium -->
-   Crafted Vhost header could cause a DoS


### [[USN-5609-1](https://ubuntu.com/security/notices/USN-5609-1)] .NET 6 vulnerability [04:39] {#usn-5609-1-dot-net-6-vulnerability-04-39}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-38013](https://ubuntu.com/security/CVE-2022-38013) <!-- medium  -->
-   DoS in .NET Core - "a malicious client could cause a stack overflow which may
    result in a denial of service attack when an attacker sends a customized
    payload that is parsed during model binding"
-   <https://devblogs.microsoft.com/dotnet/september-2022-updates/>
-   Updates to latest upstream release 6.0.109


### [[USN-5583-2](https://ubuntu.com/security/notices/USN-5583-2)] systemd regression [05:16] {#usn-5583-2-systemd-regression-05-16}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2022-2526](https://ubuntu.com/security/CVE-2022-2526) <!-- medium -->
-   Mentioned in passing in both the last 2 weeks episodes


### [[USN-5610-1](https://ubuntu.com/security/notices/USN-5610-1)] rust-regex vulnerability {#usn-5610-1-rust-regex-vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-24713](https://ubuntu.com/security/CVE-2022-24713) <!-- medium -->
-   ReDoS in regex crate - already includes various mitigations against DoS via
    untrusted regexes (and these can be tuned by users of the crate) - however was
    able to be bypassed by a regex that specified an empty subexpression that
    should be matched up to say 294 million times - this then gets compiled but is
    able to evade the existing mitigations since doesn't take any memory - but it
    does take a lot of CPU time
-   Fixed by changing code such that it will take a fake amount of memory for each
    empty subexpression and therefore will trip the existing detection logic in a
    reasonable amount of time


### [[USN-5611-1](https://ubuntu.com/security/notices/USN-5611-1)] WebKitGTK vulnerability [06:53] {#usn-5611-1-webkitgtk-vulnerability-06-53}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-32893](https://ubuntu.com/security/CVE-2022-32893) <!-- medium -->
-   OOB write via malicious web content - Apple reported that this was being
    actively exploited for iOS users (Safari uses Webkit)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Discussion of the recent systemd regression in Ubuntu 18.04 LTS with Nishit Majithia and Matthew Ruffell [07:49] {#discussion-of-the-recent-systemd-regression-in-ubuntu-18-dot-04-lts-with-nishit-majithia-and-matthew-ruffell-07-49}

-   Gathered media attention
-   <https://thenewstack.io/ubuntu-linux-and-azure-dns-problem-gives-azure-fits/>
-   Matthew is from the Sustaining Engineering Team at Canonical - I talked about
    his blog in [Analysis of the dovecat and hy4 Linux Malware - from Episode 97]({{< relref "episode-97#analysis-of-the-dovecat-and-hy4-linux-malware-12-36" >}})


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)