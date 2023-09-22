+++
title = "Episode 210"
description = """
  It's the Linux Security Summit in Bilbao this week and we bring you some
  highlights from our favourite talks, plus we cover the 25 most stubborn software
  weaknesses, and we look at security updates for Open VM Tools, libwebp, Django,
  binutils, Indent, the Linux kernel and more.
  """
date = 2023-09-22T12:39:00+09:30
lastmod = 2023-09-22T12:40:06+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E210.mp3"
podcast_duration = 1280
podcast_bytes = 36992861
permalink = "https://ubuntusecuritypodcast.org/episode-210/"
guid = "2f29842942c9ee3000ad00007a2bdaa3315e95d912afceb84efbba06fc340630ea10a6acb8956848977109c47ce8aa6cc5683af50e1cac70ca44ce4a2124fec6"
+++

## Overview {#overview}

It's the Linux Security Summit in Bilbao this week and we bring you some
highlights from our favourite talks, plus we cover the 25 most stubborn software
weaknesses, and we look at security updates for Open VM Tools, libwebp, Django,
binutils, Indent, the Linux kernel and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

88 unique CVEs addressed


### [[USN-6365-1](https://ubuntu.com/security/notices/USN-6365-1)] Open VM Tools vulnerability (00:45) {#usn-6365-1-open-vm-tools-vulnerability--00-45}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-20900](https://ubuntu.com/security/CVE-2023-20900) <!-- medium -->
-   Failed to properly validate SAML tokens - uses the xmlsec library but when
    verifying the signature on a SAML document, failed to configure the library to
    only use the X509 certificate for validation - since presumably an attacker
    could intercept the SAML token, and replace the X509 cert with a different
    type of signature which would then be trusted by the xmlsec library and allow
    the attacker to gain access


### [[USN-6366-1](https://ubuntu.com/security/notices/USN-6366-1)] PostgreSQL vulnerability (01:34) {#usn-6366-1-postgresql-vulnerability--01-34}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-39417](https://ubuntu.com/security/CVE-2023-39417) <!-- medium -->
-   Fixed for other releases in [[USN-6296-1] PostgreSQL vulnerabilities in Episode
    206]({{< relref "episode-206#usn-6296-1-postgresql-vulnerabilities--06-44" >}}) - one issue, which allowed an attacker to escalate their privileges
    (from `CREATE` to being able to execute arbitrary code as a bootstrap superuser)
    also affected PostgreSQL 9.5 in Ubuntu 16.04


### [[USN-6364-1](https://ubuntu.com/security/notices/USN-6364-1)] Ghostscript vulnerabilities (01:59) {#usn-6364-1-ghostscript-vulnerabilities--01-59}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2020-21890](https://ubuntu.com/security/CVE-2020-21890) <!-- medium -->
    -   [CVE-2020-21710](https://ubuntu.com/security/CVE-2020-21710) <!-- medium -->
-   Divide by zero and buffer overflow in handling of PDFs -&gt; DoS / RCE?


### [[USN-6369-1](https://ubuntu.com/security/notices/USN-6369-1)] libwebp vulnerability (02:19) {#usn-6369-1-libwebp-vulnerability--02-19}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-4863](https://ubuntu.com/security/CVE-2023-4863) <!-- medium -->
-   heap buffer overflow -&gt; OOB write -&gt; RCE
-   originally reported as a vuln in Chrome on 12 September - full impact that
    this was actually a bug in libwebp became clear a few days later
    -   Solar Designer has a good thread on the details on [oss-security](https://marc.info/?i=20230921205250.GA13106@openwall.com)


### [[USN-6367-1](https://ubuntu.com/security/notices/USN-6367-1)] Firefox vulnerability (03:55) {#usn-6367-1-firefox-vulnerability--03-55}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-4863](https://ubuntu.com/security/CVE-2023-4863) <!-- medium -->
-   117.0.1 for the libwebp fix above


### [[USN-6368-1](https://ubuntu.com/security/notices/USN-6368-1)] Thunderbird vulnerabilities (04:04) {#usn-6368-1-thunderbird-vulnerabilities--04-04}

-   6 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-4863](https://ubuntu.com/security/CVE-2023-4863) <!-- medium -->
    -   [CVE-2023-4584](https://ubuntu.com/security/CVE-2023-4584) <!-- medium -->
    -   [CVE-2023-4581](https://ubuntu.com/security/CVE-2023-4581) <!-- medium -->
    -   [CVE-2023-4575](https://ubuntu.com/security/CVE-2023-4575) <!-- medium -->
    -   [CVE-2023-4574](https://ubuntu.com/security/CVE-2023-4574) <!-- medium -->
    -   [CVE-2023-4573](https://ubuntu.com/security/CVE-2023-4573) <!-- medium -->
-   102.15.1 - libwebp issue above plus various other issues - various UAFs,
    missing `.xll` files from standard blocklist that warns users when downloading
    executables - more of a windows issue but these are Excel add-in files -
    ie. plugins for Excel, "memory safety bugs"


### [[USN-6370-1](https://ubuntu.com/security/notices/USN-6370-1)] ModSecurity vulnerabilities (04:42) {#usn-6370-1-modsecurity-vulnerabilities--04-42}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-24021](https://ubuntu.com/security/CVE-2023-24021) <!-- medium -->
    -   [CVE-2022-48279](https://ubuntu.com/security/CVE-2022-48279) <!-- medium -->
    -   [CVE-2021-42717](https://ubuntu.com/security/CVE-2021-42717) <!-- medium -->
-   CPU-based DoS when parsing excessively nested JSON objects (needs to be
    tens-of-thousands deep)
-   Mishandling of NUL byte in file uploads - would parse the filename as a string
    but if it contained an embedded NUL byte then filename would be truncated and
    hence could result in a buffer overread or the ability to bypass the web
    application firewall for rules which read from the `FILES_TMP_CONTENT` variable
-   Mishandling of HTTP multipart requests could also allow to bypass WAF


### [[USN-6371-1](https://ubuntu.com/security/notices/USN-6371-1)] libssh2 vulnerability (06:07) {#usn-6371-1-libssh2-vulnerability--06-07}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2020-22218](https://ubuntu.com/security/CVE-2020-22218) <!-- medium -->
-   OOB read - low impact since requires to connect to a malicious server to
    trigger - and outcome is likely a DoS


### [[USN-6372-1](https://ubuntu.com/security/notices/USN-6372-1)] DBus vulnerability (06:26) {#usn-6372-1-dbus-vulnerability--06-26}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-34969](https://ubuntu.com/security/CVE-2023-34969) <!-- low -->
-   Ability to crash the dbus daemon by an unprivileged user - BUT only if there
    is a privileged user using the in-built monitoring interface of dbus to
    monitor the traffic - so low chance of being able to trigger this and the
    outcome is just a DoS anyway - and will be restarted by systemd anyway


### [[USN-6373-1](https://ubuntu.com/security/notices/USN-6373-1)] gawk vulnerability (07:02) {#usn-6373-1-gawk-vulnerability--07-02}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-4156](https://ubuntu.com/security/CVE-2023-4156) <!-- medium -->
-   Heap OOB read - DoS


### [[USN-6374-1](https://ubuntu.com/security/notices/USN-6374-1)] Mutt vulnerabilities (07:16) {#usn-6374-1-mutt-vulnerabilities--07-16}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-4875](https://ubuntu.com/security/CVE-2023-4875) <!-- medium -->
    -   [CVE-2023-4874](https://ubuntu.com/security/CVE-2023-4874) <!-- medium -->
-   2 different NULL ptr deref
    -   viewing crafted email
    -   composing from a specially crafted draft email
    -   DoS only


### [[USN-6375-1](https://ubuntu.com/security/notices/USN-6375-1)] atftp vulnerability (07:38) {#usn-6375-1-atftp-vulnerability--07-38}

-   Affecting Jammy (22.04 LTS), Lunar (23.04)
-   Could crash `atftpd` if requesting a non-existant file - turns out to be a
    buffer overflow so could possibly be used for code execution


### [[USN-6376-1](https://ubuntu.com/security/notices/USN-6376-1)] c-ares vulnerability (7:50) {#usn-6376-1-c-ares-vulnerability--7-50}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-22217](https://ubuntu.com/security/CVE-2020-22217) <!-- medium -->
-   OOB read when parsing a crafted Start of Authority (SOA) reply


### [[USN-6377-1](https://ubuntu.com/security/notices/USN-6377-1)] LibRaw vulnerability (7:56) {#usn-6377-1-libraw-vulnerability--7-56}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-22628](https://ubuntu.com/security/CVE-2020-22628) <!-- medium -->
-   Failed to reject images with invalid pixel aspect ratio - leading to an OOB
    read -&gt; crash


### [[USN-6378-1](https://ubuntu.com/security/notices/USN-6378-1)] Django vulnerability (08:08) {#usn-6378-1-django-vulnerability--08-08}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-41164](https://ubuntu.com/security/CVE-2023-41164) <!-- medium -->
-   DoS via handling of URIs with a very large number of unicode characters -
    algorithm would parse from start of string forwards for every invalid unicode
    character - instead of just using the remainder of the string


### [[USN-6379-1](https://ubuntu.com/security/notices/USN-6379-1)] vsftpd vulnerability (08:47) {#usn-6379-1-vsftpd-vulnerability--08-47}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-3618](https://ubuntu.com/security/CVE-2021-3618) <!-- low -->
-   Possible application layer confusion attack ([ALPACA](https://alpaca-attack.com/)) - abuses wildcard or
    multi-domain certificates to redirect traffic from one subdomain to another


### [[USN-6381-1](https://ubuntu.com/security/notices/USN-6381-1)] GNU binutils vulnerabilities (09:07) {#usn-6381-1-gnu-binutils-vulnerabilities--09-07}

-   8 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2022-47695](https://ubuntu.com/security/CVE-2022-47695) <!-- medium -->
    -   [CVE-2022-44840](https://ubuntu.com/security/CVE-2022-44840) <!-- medium -->
    -   [CVE-2020-35342](https://ubuntu.com/security/CVE-2020-35342) <!-- medium -->
    -   [CVE-2022-45703](https://ubuntu.com/security/CVE-2022-45703) <!-- medium -->
    -   [CVE-2021-46174](https://ubuntu.com/security/CVE-2021-46174) <!-- medium -->
    -   [CVE-2020-19726](https://ubuntu.com/security/CVE-2020-19726) <!-- medium -->
    -   [CVE-2020-21490](https://ubuntu.com/security/CVE-2020-21490) <!-- medium -->
    -   [CVE-2020-19724](https://ubuntu.com/security/CVE-2020-19724) <!-- medium -->
-   memory leaks in nm and when disassembling microblaze instructions -&gt; DoS
-   various buffer overflows in different functions -&gt; DoS / RCE
-   failure to zero memory -&gt; info leak
-   OOB read in objdump
-   heap buffer overflow in readelf
-   in general, we don't consider it safe to run binutils on untrusted inputs


### [[USN-6380-1](https://ubuntu.com/security/notices/USN-6380-1)] Node.js vulnerabilities (09:54) {#usn-6380-1-node-dot-js-vulnerabilities--09-54}

-   6 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2020-8287](https://ubuntu.com/security/CVE-2020-8287) <!-- medium -->
    -   [CVE-2020-8265](https://ubuntu.com/security/CVE-2020-8265) <!-- medium -->
    -   [CVE-2020-8174](https://ubuntu.com/security/CVE-2020-8174) <!-- medium -->
    -   [CVE-2019-15606](https://ubuntu.com/security/CVE-2019-15606) <!-- medium -->
    -   [CVE-2019-15605](https://ubuntu.com/security/CVE-2019-15605) <!-- medium -->
    -   [CVE-2019-15604](https://ubuntu.com/security/CVE-2019-15604) <!-- medium -->
-   abort when sending a crafted X509 certificate -&gt; DoS
-   2 different HTTP request smuggling attacks
-   possible bypass of HTTP authorization since would include whitespace in HTTP
    headers
-   couple memory corruption issues in various operations implemented in C


### [[USN-6382-1](https://ubuntu.com/security/notices/USN-6382-1)] Memcached vulnerability (10:23) {#usn-6382-1-memcached-vulnerability--10-23}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2022-48571](https://ubuntu.com/security/CVE-2022-48571) <!-- medium -->
-   NULL ptr deref upon reception of a UDP multi-packet request


### [[USN-6389-1](https://ubuntu.com/security/notices/USN-6389-1)] Indent vulnerability (10:30) {#usn-6389-1-indent-vulnerability--10-30}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-40305](https://ubuntu.com/security/CVE-2023-40305) <!-- medium -->
-   heap buffer overflow -&gt; DoS / RCE


### [[USN-6339-4](https://ubuntu.com/security/notices/USN-6339-4)] Linux kernel (Intel IoTG) vulnerabilities (10:53) {#usn-6339-4-linux-kernel--intel-iotg--vulnerabilities--10-53}

-   8 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-38429](https://ubuntu.com/security/CVE-2023-38429) <!-- medium -->
    -   [CVE-2023-38428](https://ubuntu.com/security/CVE-2023-38428) <!-- medium -->
    -   [CVE-2023-38426](https://ubuntu.com/security/CVE-2023-38426) <!-- medium -->
    -   [CVE-2023-3212](https://ubuntu.com/security/CVE-2023-3212) <!-- low -->
    -   [CVE-2023-31084](https://ubuntu.com/security/CVE-2023-31084) <!-- low -->
    -   [CVE-2023-2898](https://ubuntu.com/security/CVE-2023-2898) <!-- low -->
    -   [CVE-2023-21255](https://ubuntu.com/security/CVE-2023-21255) <!-- medium -->
    -   [CVE-2022-48425](https://ubuntu.com/security/CVE-2022-48425) <!-- medium -->
-   5.15
-   same set of vulns from [[USN-6350-1, USN-6351-1, USN-6339-2, USN-6339-3] Linux
    kernel vulnerabilities]({{< relref "episode-209#usn-6350-1-usn-6351-1-usn-6339-2-usn-6339-3-linux-kernel-vulnerabilities" >}})


### [[USN-6383-1](https://ubuntu.com/security/notices/USN-6383-1)] Linux kernel vulnerabilities (11:15) {#usn-6383-1-linux-kernel-vulnerabilities--11-15}

-   5 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-4569](https://ubuntu.com/security/CVE-2023-4569) <!-- high -->
    -   [CVE-2023-4128](https://ubuntu.com/security/CVE-2023-4128) <!-- high -->
    -   [CVE-2023-40283](https://ubuntu.com/security/CVE-2023-40283) <!-- high -->
    -   [CVE-2023-21264](https://ubuntu.com/security/CVE-2023-21264) <!-- high -->
    -   [CVE-2023-20588](https://ubuntu.com/security/CVE-2023-20588) <!-- high -->
-   6.2 all in 23.04, HWE in 22.04
-   speculative execution leak when performing a divide-by-zero on various AMD processors
-   possible privilege escalation in ARM64 KVM implementation -&gt; guest VM could
    then write to host memory -&gt; code execution
-   UAF in L2CAP socket handling in bluetooth - local DoS / code execution
-   UAF in various network packet classifiers - local DoS via unprivileged user
    namespace
-   Memory leak in netfilter - also able to be abused by an unprivileged user in a
    user namespace


### [[USN-6384-1](https://ubuntu.com/security/notices/USN-6384-1)] Linux kernel (OEM) vulnerabilities (12:23) {#usn-6384-1-linux-kernel--oem--vulnerabilities--12-23}

-   2 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-4569](https://ubuntu.com/security/CVE-2023-4569) <!-- high -->
    -   [CVE-2023-20588](https://ubuntu.com/security/CVE-2023-20588) <!-- high -->
-   6.1
-   speculative execution leak when performing a divide-by-zero on various AMD processors
-   Memory leak in netfilter - also able to be abused by an unprivileged user in a
    user namespace


### [[USN-6385-1](https://ubuntu.com/security/notices/USN-6385-1)] Linux kernel (OEM) vulnerabilities (12:37) {#usn-6385-1-linux-kernel--oem--vulnerabilities--12-37}

-   37 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-4569](https://ubuntu.com/security/CVE-2023-4569) <!-- high -->
    -   [CVE-2023-4273](https://ubuntu.com/security/CVE-2023-4273) <!-- medium -->
    -   [CVE-2023-4128](https://ubuntu.com/security/CVE-2023-4128) <!-- high -->
    -   [CVE-2023-40283](https://ubuntu.com/security/CVE-2023-40283) <!-- high -->
    -   [CVE-2023-4015](https://ubuntu.com/security/CVE-2023-4015) <!-- high -->
    -   [CVE-2023-4004](https://ubuntu.com/security/CVE-2023-4004) <!-- high -->
    -   [CVE-2023-3995](https://ubuntu.com/security/CVE-2023-3995) <!-- high -->
    -   [CVE-2023-3863](https://ubuntu.com/security/CVE-2023-3863) <!-- medium -->
    -   [CVE-2023-3777](https://ubuntu.com/security/CVE-2023-3777) <!-- high -->
    -   [CVE-2023-3776](https://ubuntu.com/security/CVE-2023-3776) <!-- high -->
    -   [CVE-2023-3611](https://ubuntu.com/security/CVE-2023-3611) <!-- high -->
    -   [CVE-2023-3610](https://ubuntu.com/security/CVE-2023-3610) <!-- high -->
    -   [CVE-2023-3609](https://ubuntu.com/security/CVE-2023-3609) <!-- high -->
    -   [CVE-2023-3390](https://ubuntu.com/security/CVE-2023-3390) <!-- high -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-3220](https://ubuntu.com/security/CVE-2023-3220) <!-- medium -->
    -   [CVE-2023-31436](https://ubuntu.com/security/CVE-2023-31436) <!-- high -->
    -   [CVE-2023-3141](https://ubuntu.com/security/CVE-2023-3141) <!-- low -->
    -   [CVE-2023-3090](https://ubuntu.com/security/CVE-2023-3090) <!-- high -->
    -   [CVE-2023-2898](https://ubuntu.com/security/CVE-2023-2898) <!-- low -->
    -   [CVE-2023-28466](https://ubuntu.com/security/CVE-2023-28466) <!-- medium -->
    -   [CVE-2023-28328](https://ubuntu.com/security/CVE-2023-28328) <!-- medium -->
    -   [CVE-2023-2269](https://ubuntu.com/security/CVE-2023-2269) <!-- medium -->
    -   [CVE-2023-2235](https://ubuntu.com/security/CVE-2023-2235) <!-- low -->
    -   [CVE-2023-2163](https://ubuntu.com/security/CVE-2023-2163) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-20593](https://ubuntu.com/security/CVE-2023-20593) <!-- high -->
    -   [CVE-2023-2002](https://ubuntu.com/security/CVE-2023-2002) <!-- medium -->
    -   [CVE-2023-1611](https://ubuntu.com/security/CVE-2023-1611) <!-- low -->
    -   [CVE-2023-1380](https://ubuntu.com/security/CVE-2023-1380) <!-- high -->
    -   [CVE-2023-1206](https://ubuntu.com/security/CVE-2023-1206) <!-- medium -->
    -   [CVE-2023-4194](https://ubuntu.com/security/CVE-2023-4194) <!-- medium -->
    -   [CVE-2023-1076](https://ubuntu.com/security/CVE-2023-1076) <!-- medium -->
    -   [CVE-2023-1075](https://ubuntu.com/security/CVE-2023-1075) <!-- medium -->
    -   [CVE-2023-0458](https://ubuntu.com/security/CVE-2023-0458) <!-- medium -->
    -   [CVE-2022-4269](https://ubuntu.com/security/CVE-2022-4269) <!-- medium -->
    -   [CVE-2022-27672](https://ubuntu.com/security/CVE-2022-27672) <!-- medium -->
-   6.0 OEM
-   All the previously mentioned vulns plus a heap more - kudos to OEM team and
    Timo Aaltonen from the kernel team for the most number of CVEs fixed this week


### [[USN-6386-1](https://ubuntu.com/security/notices/USN-6386-1)] Linux kernel vulnerabilities (13:01) {#usn-6386-1-linux-kernel-vulnerabilities--13-01}

-   4 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-4569](https://ubuntu.com/security/CVE-2023-4569) <!-- high -->
    -   [CVE-2023-4128](https://ubuntu.com/security/CVE-2023-4128) <!-- high -->
    -   [CVE-2023-40283](https://ubuntu.com/security/CVE-2023-40283) <!-- high -->
    -   [CVE-2023-20588](https://ubuntu.com/security/CVE-2023-20588) <!-- high -->
-   5.15 22.04 GA. 20.04 HWE


### [[USN-6387-1](https://ubuntu.com/security/notices/USN-6387-1)] Linux kernel vulnerabilities (13:08) {#usn-6387-1-linux-kernel-vulnerabilities--13-08}

-   3 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-4128](https://ubuntu.com/security/CVE-2023-4128) <!-- high -->
    -   [CVE-2023-40283](https://ubuntu.com/security/CVE-2023-40283) <!-- high -->
    -   [CVE-2023-20588](https://ubuntu.com/security/CVE-2023-20588) <!-- high -->
-   5.4 20.04 GA, 18.04 HWE


### [[USN-6388-1](https://ubuntu.com/security/notices/USN-6388-1)] Linux kernel vulnerabilities (13:12) {#usn-6388-1-linux-kernel-vulnerabilities--13-12}

-   9 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2023-4459](https://ubuntu.com/security/CVE-2023-4459) <!-- medium -->
    -   [CVE-2023-4387](https://ubuntu.com/security/CVE-2023-4387) <!-- medium -->
    -   [CVE-2023-4385](https://ubuntu.com/security/CVE-2023-4385) <!-- medium -->
    -   [CVE-2023-4128](https://ubuntu.com/security/CVE-2023-4128) <!-- high -->
    -   [CVE-2023-40283](https://ubuntu.com/security/CVE-2023-40283) <!-- high -->
    -   [CVE-2023-3863](https://ubuntu.com/security/CVE-2023-3863) <!-- medium -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-3212](https://ubuntu.com/security/CVE-2023-3212) <!-- low -->
    -   [CVE-2022-40982](https://ubuntu.com/security/CVE-2022-40982) <!-- medium -->
-   4.4 16.04 GA, 14.04 HWE


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Highlights from LSS EU (13:29) {#highlights-from-lss-eu--13-29}

-   [Hardware-backed Per-process Secrets - Matthew Garrett, Aurora](https://sched.co/1OL76)
    -   Mark Esler described as a crystal clear explanation of how TPM works and
        proposes an automated attestation for confidential computing
-   [Estimating Security Risk Through Repository Mining - Tamas K. Lengyel, Intel](https://sched.co/1OL6x)
    proposed that most common metrics don't demonstrate code quality, except
    possibly percentage of **cognitive complex functions**
    -   cyclomatic complexity measured how hard to test - cognitive complexity
        tries to measure how hard to understand
        -   premise is that if you can't understand it, you can't see the vulns
    -   intuitively makes sense, but relies on the ability actually measure
        cognitive complexity
        -   and [recent](https://www.sciencedirect.com/science/article/abs/pii/S0164121222002370) [studies](https://arxiv.org/abs/2303.07722) seem to show that the current cognitive complexity
            measurements are no better at accurately identifying code that is hard
            to understand than the more traditional methods of LOC or cyclomatic
            complexity
    -   [Cognitive Complexity: A new way of measuring understandability white paper by G. Ann Campbell of SonarSource](https://www.sonarsource.com/docs/CognitiveComplexity.pdf)
    -   I missed this one but as Steve Beattie said, it does provide some things to
        think about in the context of the security reviews that the Ubuntu Security
        does as part of the MIR process (for a good overview of this, take a step
        back in time to [Main inclusion review security code audits discussion with
        Seth Arnold from Episode 32]({{< relref "episode-32#main-inclusion-review-security-code-audits-discussion-with-seth-arnold" >}}))


### Top 25 most stubborn weaknesses (17:13) {#top-25-most-stubborn-weaknesses--17-13}

-   <https://cwe.mitre.org/top25/archive/2023/2023_stubborn_weaknesses.html>
-   [MITRE 2023 CWE Top 25 Most Dangerous Software Weaknesses published from Episode 201]({{< relref "episode-201#mitre-2023-cwe-top-25-most-dangerous-software-weaknesses-published--06-20" >}})
-   15 CWEs present in every one of the last 5 top 25 most dangerous lists from MITRE

| CWE-ID  | Description                                                                                | 2023 Rank |
|---------|--------------------------------------------------------------------------------------------|-----------|
| CWE-787 | Out-of-bounds Write                                                                        | 1         |
| CWE-79  | Improper Neutralization of Input During Web Page Generation (‘Cross-site Scripting’)       | 2         |
| CWE-89  | Improper Neutralization of Special Elements used in an SQL Command (‘SQL Injection’)       | 3         |
| CWE-416 | Use After Free                                                                             | 4         |
| CWE-78  | Improper Neutralization of Special Elements used in an OS Command ('OS Command Injection') | 5         |
| CWE-20  | Improper Input Validation                                                                  | 6         |
| CWE-125 | Out-of-bounds Read                                                                         | 7         |
| CWE-22  | Improper Limitation of a Pathname to a Restricted Directory (‘Path Traversal’)             | 8         |
| CWE-352 | Cross-Site Request Forgery (CSRF)                                                          | 9         |
| CWE-476 | NULL Pointer Dereference                                                                   | 12        |
| CWE-287 | Improper Authentication                                                                    | 13        |
| CWE-190 | Integer Overflow or Wraparound                                                             | 14        |
| CWE-502 | Deserialization of Untrusted Data                                                          | 15        |
| CWE-119 | Improper Restriction of Operations within Bounds of a Memory Buffer                        | 17        |
| CWE-798 | Use of Hard-coded Credentials                                                              | 18        |

-   all fall into one of three different categories
    -   errors when processing of data from untrusted sources providing an initial
        entry point for compromise
    -   weaknesses from using languages that don't provide strong memory safety
        guarantees
    -   poor security architecture / design choices
-   re memory safety - MITRE note that this has been coming down - CWE-119
    ("Improper Restriction of Operations within Bounds of a Memory Buffer") was
    once ranked 1 5 years ago, is now 17. Related (but not directly memory safety
    but more correctness) CWE-190 ("Integer Overflow or Wraparound") was ranked 5,
    is now 7.
-   Really shows that if you are implementing any new code, choosing a language
    that is memory safe will help avoid a lot of the most prevalent security
    issues - clearly won't help with lack of proper input validation or poor
    security architecture etc - but will cut out the most dangerous and most
    stubborn issues (OOB W, UAF etc)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
