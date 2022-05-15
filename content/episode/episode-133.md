+++
title = "Episode 133"
description = """
  This week we look at a Wifi lookalike attack dubbed "SSID stripping" plus
  updates for ca-certificates, EDK II, Apache, the Linux kernel and even vim!
  """
date = 2021-10-01T15:10:00+09:30
lastmod = 2022-05-15T18:05:55+09:30
draft = false
weight = 1027
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E133.mp3"
podcast_duration = "17:58"
podcast_bytes = 13970429
permalink = "https://ubuntusecuritypodcast.org/episode-133/"
guid = "b0c58cd2a8f2a393fc778ab4a60801eecd607821a10817c1fe956e4dc1fdc81b795342129b00f136ca88be9605c225cc57ca8988c6d3a97f91b652df3dc26343"
+++

## Overview {#overview}

This week we look at a Wifi lookalike attack dubbed "SSID stripping" plus
updates for ca-certificates, EDK II, Apache, the Linux kernel and even vim!


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

28 unique CVEs addressed


### [[USN-5086-1](https://ubuntu.com/security/notices/USN-5086-1)] Linux kernel vulnerability [00:50] {#usn-5086-1-linux-kernel-vulnerability-00-50}

-   Affecting Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
-   s390x BPF JIT verifier bypass - no CVE assigned


### [[USN-5085-1](https://ubuntu.com/security/notices/USN-5085-1)] SQL parse vulnerability [01:33] {#usn-5085-1-sql-parse-vulnerability-01-33}

-   1 CVEs addressed in Hirsute (21.04)
    -   [CVE-2021-32839](https://ubuntu.com/security/CVE-2021-32839) <!-- medium -->
-   ReDoS via exponential backtracking with a large amount of
    carriage-return, newline combinations


### [[USN-5087-1](https://ubuntu.com/security/notices/USN-5087-1)] WebKitGTK vulnerabilities [02:18] {#usn-5087-1-webkitgtk-vulnerabilities-02-18}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-30858](https://ubuntu.com/security/CVE-2021-30858) <!-- medium -->
-   UAF in underlying webkit - originally reported by Apple against their
    various operating systems - not actually against webkit directly...


### [[USN-5088-1](https://ubuntu.com/security/notices/USN-5088-1)] EDK II vulnerabilities [02:46] {#usn-5088-1-edk-ii-vulnerabilities-02-46}

-   4 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-38575](https://ubuntu.com/security/CVE-2021-38575) <!-- medium -->
    -   [CVE-2021-3712](https://ubuntu.com/security/CVE-2021-3712) <!-- medium -->
    -   [CVE-2021-23840](https://ubuntu.com/security/CVE-2021-23840) <!-- low -->
    -   [CVE-2019-11098](https://ubuntu.com/security/CVE-2019-11098) <!-- low -->
-   mix of issues in the embedded openssl in EDK-II plus 2 issues specific to
    EDK-II itself - one in the handling of Intel Boot Guard which is designed
    to detect attacks against the static root of trust, in particualr
    modifification of the initial boot block - an attacker with physical
    access to the SPI flash chip, could get code execution after the IBB has
    been validated by then injecting SPI transactions to modify the contents
    of the IBB in memory


### [[USN-5089-1](https://ubuntu.com/security/notices/USN-5089-1), [USN-5089-2](https://ubuntu.com/security/notices/USN-5089-2)] ca-certificates update [04:34] {#usn-5089-1-usn-5089-2-ca-certificates-update-04-34}

-   Affecting Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
-   To also support older devices which don;t have that root cert and when
    LetsEncrypt started they got their issuing / intermediate cert (R3)
    signed by IdenTrust's "DST Root CA X3" root certificate -
    "cross-signature"
-   DST Root CA X3 cert expired yesterday (30th Sept 2021)
-   So if you only had that then any HTTPS connections to a site using a
    LetsEncrypt cert would fail
-   Also to support various older Android devices which aren't getting any
    updates anymore, IdenTrust issued an updated cross-signature expiring in
    Sept 2024 so that those Android devices would continue to trust the
    issuing cert
-   Nowadays LetsEncrypt has their own root cert "ISRG Root X1" - which is
    trusted by ca-certificates - this is present on all Ubuntu back to 12.04
-   But older versions of openssl (1.0.x - xenial, trusty, precise!?!)  and
    gnutls etc would see the cross-signature with an expiry in the future and
    so return this as a valid chain to validate against - but then when
    validating the full chain, it would fail as the DST Root CA X3 cert at
    the root is now expired
-   Would cause connections to fail still
-   Solution is to blacklist the DST Root CA X3 as this then ensures the
    cross-signature is seen as invalid and instead the shorter chain back to
    LetsEncrypt's own root cert is used to do the validation


### [[USN-5090-1](https://ubuntu.com/security/notices/USN-5090-1), [USN-5090-2](https://ubuntu.com/security/notices/USN-5090-2), USN-5090-3, [USN-5090-4](https://ubuntu.com/security/notices/USN-5090-4)] Apache HTTP Server vulnerabilities + regression [07:41] {#usn-5090-1-usn-5090-2-usn-5090-3-usn-5090-4-apache-http-server-vulnerabilities-plus-regression-07-41}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-40438](https://ubuntu.com/security/CVE-2021-40438) <!-- medium -->
    -   [CVE-2021-39275](https://ubuntu.com/security/CVE-2021-39275) <!-- medium -->
    -   [CVE-2021-34798](https://ubuntu.com/security/CVE-2021-34798) <!-- medium -->
    -   [CVE-2021-36160](https://ubuntu.com/security/CVE-2021-36160) <!-- medium, not esm -->
    -   [CVE-2021-33193](https://ubuntu.com/security/CVE-2021-33193) <!-- medium, not esm -->
-   HTTP/2 specific issue - crafted method would bypass validation and be
    forwarded by `mod_proxy` - so could lead to request splitting / cache
    poising
-   NULL pointer dereference triggerable via crafted request
-   OOB read in `mod_proxy_uwsgi` - crash / info leak
-   OOB write in `ap_escape_quotes()` if given malicious input - modules in
    apache itself don't pass untrusted input to this but other 3rd party
    modules might
-   crafted request to `mod_proxy` - forward the request to an origin server as
    specified in the request - SSRF
    -   fix for this resulted in more stricter interpretation of `SetHandler`
        config option for `mod_proxy` that broke various configurations using
        unix sockets - these got interpreted more like URIs and so would be
        seen as invalid - broke Plesk and others - upstream then issued further
        fixes which we released in a follow-up


### [[USN-5091-1](https://ubuntu.com/security/notices/USN-5091-1)] Linux kernel vulnerabilities [09:44] {#usn-5091-1-linux-kernel-vulnerabilities-09-44}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-38204](https://ubuntu.com/security/CVE-2021-38204) <!-- low -->
    -   [CVE-2021-38199](https://ubuntu.com/security/CVE-2021-38199) <!-- medium -->
    -   [CVE-2021-38160](https://ubuntu.com/security/CVE-2021-38160) <!-- medium -->
    -   [CVE-2021-37576](https://ubuntu.com/security/CVE-2021-37576) <!-- medium -->
    -   [CVE-2021-3679](https://ubuntu.com/security/CVE-2021-3679) <!-- low -->
    -   [CVE-2021-33624](https://ubuntu.com/security/CVE-2021-33624) <!-- medium -->
-   5.4 (focal / bionic hwe)


### [[USN-5092-1](https://ubuntu.com/security/notices/USN-5092-1), [USN-5092-2](https://ubuntu.com/security/notices/USN-5092-2)] Linux kernel vulnerabilities [09:56] {#usn-5092-1-usn-5092-2-linux-kernel-vulnerabilities-09-56}

-   12 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-38205](https://ubuntu.com/security/CVE-2021-38205) <!-- low -->
    -   [CVE-2021-38204](https://ubuntu.com/security/CVE-2021-38204) <!-- low -->
    -   [CVE-2021-38201](https://ubuntu.com/security/CVE-2021-38201) <!-- medium -->
    -   [CVE-2021-38199](https://ubuntu.com/security/CVE-2021-38199) <!-- medium -->
    -   [CVE-2021-38160](https://ubuntu.com/security/CVE-2021-38160) <!-- medium -->
    -   [CVE-2021-37576](https://ubuntu.com/security/CVE-2021-37576) <!-- medium -->
    -   [CVE-2021-37159](https://ubuntu.com/security/CVE-2021-37159) <!-- low -->
    -   [CVE-2021-3679](https://ubuntu.com/security/CVE-2021-3679) <!-- low -->
    -   [CVE-2021-35477](https://ubuntu.com/security/CVE-2021-35477) <!-- medium -->
    -   [CVE-2021-34556](https://ubuntu.com/security/CVE-2021-34556) <!-- medium -->
    -   [CVE-2021-33624](https://ubuntu.com/security/CVE-2021-33624) <!-- medium -->
    -   [CVE-2021-41073](https://ubuntu.com/security/CVE-2021-41073) <!-- high -->
-   5.11 (hirsute, focal hwe)
-   `io_uring` (5.1) - unprivileged user - trigger free of other kernel
    memory - code execution
-   3 issues in BPF verifier - spectre-like side-channel attacks to leak
    kernel memory
-   KVM guest could corrupt host memory on PowerPC - crash / code exec


### [[USN-5094-1](https://ubuntu.com/security/notices/USN-5094-1)] Linux kernel vulnerabilities [10:39] {#usn-5094-1-linux-kernel-vulnerabilities-10-39}

-   6 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-38205](https://ubuntu.com/security/CVE-2021-38205) <!-- low -->
    -   [CVE-2021-38204](https://ubuntu.com/security/CVE-2021-38204) <!-- low -->
    -   [CVE-2021-37576](https://ubuntu.com/security/CVE-2021-37576) <!-- medium -->
    -   [CVE-2021-3732](https://ubuntu.com/security/CVE-2021-3732) <!-- medium -->
    -   [CVE-2021-3679](https://ubuntu.com/security/CVE-2021-3679) <!-- low -->
    -   [CVE-2021-22543](https://ubuntu.com/security/CVE-2021-22543) <!-- medium -->
-   4.15 (bionic, xenial hwe, trusty azure)


### [[USN-5093-1](https://ubuntu.com/security/notices/USN-5093-1)] Vim vulnerabilities [10:57] {#usn-5093-1-vim-vulnerabilities-10-57}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-3796](https://ubuntu.com/security/CVE-2021-3796) <!-- medium -->
    -   [CVE-2021-3778](https://ubuntu.com/security/CVE-2021-3778) <!-- medium -->
    -   [CVE-2021-3770](https://ubuntu.com/security/CVE-2021-3770) <!-- medium -->
-   Possible code-execution through 2 different heap buffer overflows and 1
    UAF


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### SSID stripping attack against various OSes including Ubuntu [11:37] {#ssid-stripping-attack-against-various-oses-including-ubuntu-11-37}

-   <https://aireye.tech/2021/09/13/the-ssid-stripping-vulnerability-when-you-dont-see-what-you-get/>
-   Combination of lookalike AP name attacks and possible format-string vulns
    against Windows, MacOS, iOS, Android and Ubuntu
-   Lookalike SSIDs uses non-printable chars so that user only sees a chosen
    part of the SSID name rather than the entire thing so gets confused
-   Similar to domain-name lookalike attacks often used in phishing etc - not
    really a new problem
-   No real details on what in Ubuntu is affected (`wpa_supplicant`,
    `NetworkManager`, `gnome-shell` etc)
-   Best remediation would be to try and display all chars in some
    representable format to users but then could still get lookalike names
    that use these placeholder chars
-   Hard problem to solve well but given that this doesn't allow to capture
    credentials anyway (assuming are using WPA2-PSK since 4-way handshake
    makes both the client and AP prove they know the PSK without revealing it
    to each other) then is not really much of a risk
    -   Only relevant then to unsecured networks but if you are connecting to
        an unsecured network then there is no security anyway


### Hiring [15:54] {#hiring-15-54}


#### Linux Cryptography and Security Engineer {#linux-cryptography-and-security-engineer}

-   <https://canonical.com/careers/2612092/linux-cryptography-and-security-engineer-remote>


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>


#### Security Product Manager {#security-product-manager}

-   <https://canonical.com/careers/2278145/security-product-manager-remote>


### 1 week break for the Ubuntu Security Podcast {#1-week-break-for-the-ubuntu-security-podcast}

-   Back in your feed in 2 weeks in the middle of October


### Farewell Ubuntu Podcast {#farewell-ubuntu-podcast}

-   <https://ubuntupodcast.org>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)