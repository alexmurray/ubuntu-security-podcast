+++
title = "Episode 227"
description = """
  Ubuntu 24.04 LTS is finally released and we cover all the new security features
  it brings, plus we look at security vulnerabilities in, and updates for,
  FreeRDP, Zabbix, CryptoJS, cpio, less, JSON5 and a heap more.
  """
date = 2024-05-03T16:53:00+09:30
lastmod = 2024-05-03T16:54:12+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E227.mp3"
podcast_duration = 1481
podcast_bytes = 24684354
permalink = "https://ubuntusecuritypodcast.org/episode-227/"
guid = "dac27fc0478de34f908353bfab652f82a039179d082bacd34fe18963b11c4267082151362e17318e8260cfee3f5b6260974dee0ffb7c209179d1fe223d19d7a6"
+++

## Overview {#overview}

Ubuntu 24.04 LTS is finally released and we cover all the new security features
it brings, plus we look at security vulnerabilities in, and updates for,
FreeRDP, Zabbix, CryptoJS, cpio, less, JSON5 and a heap more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

61 unique CVEs addressed


### [[USN-6749-1](https://ubuntu.com/security/notices/USN-6749-1)] FreeRDP vulnerabilities (00:45) {#usn-6749-1-freerdp-vulnerabilities--00-45}

-   7 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-32459](https://ubuntu.com/security/CVE-2024-32459) <!-- low -->
    -   [CVE-2024-32460](https://ubuntu.com/security/CVE-2024-32460) <!-- low -->
    -   [CVE-2024-32458](https://ubuntu.com/security/CVE-2024-32458) <!-- low -->
    -   [CVE-2024-32041](https://ubuntu.com/security/CVE-2024-32041) <!-- low -->
    -   [CVE-2024-32040](https://ubuntu.com/security/CVE-2024-32040) <!-- low -->
    -   [CVE-2024-32039](https://ubuntu.com/security/CVE-2024-32039) <!-- medium -->
    -   [CVE-2024-22211](https://ubuntu.com/security/CVE-2024-22211) <!-- low -->
-   Bunch of issues all reported by researcher from Kaspersky - usual sorts of issues in this package - written in C etc
-   OOB reads, heap buffer overflow, integer overflow / underflow -&gt; OOB write


### [[USN-6752-1](https://ubuntu.com/security/notices/USN-6752-1)] FreeRDP vulnerabilities (01:41) {#usn-6752-1-freerdp-vulnerabilities--01-41}

-   4 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-32661](https://ubuntu.com/security/CVE-2024-32661) <!-- low -->
    -   [CVE-2024-32660](https://ubuntu.com/security/CVE-2024-32660) <!-- low -->
    -   [CVE-2024-32659](https://ubuntu.com/security/CVE-2024-32659) <!-- low -->
    -   [CVE-2024-32658](https://ubuntu.com/security/CVE-2024-32658) <!-- low -->
-   Not long after those - more CVEs announced
-   OOB read, NULL ptr deref and memory exhaustion


### [[USN-6657-2](https://ubuntu.com/security/notices/USN-6657-2)] Dnsmasq vulnerabilities (01:54) {#usn-6657-2-dnsmasq-vulnerabilities--01-54}

-   3 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-28450](https://ubuntu.com/security/CVE-2023-28450) <!-- low -->
    -   [CVE-2023-50868](https://ubuntu.com/security/CVE-2023-50868) <!-- medium -->
    -   [CVE-2023-50387](https://ubuntu.com/security/CVE-2023-50387) <!-- medium -->
-   [[USN-6657-1] Dnsmasq vulnerabilities from Episode 220]({{< relref "episode-220#usn-6657-1-dnsmasq-vulnerabilities--07-10" >}})


### [[USN-6743-3](https://ubuntu.com/security/notices/USN-6743-3)] Linux kernel (Azure) vulnerabilities (02:13) {#usn-6743-3-linux-kernel--azure--vulnerabilities--02-13}

-   5 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-52603](https://ubuntu.com/security/CVE-2023-52603) <!-- medium -->
    -   [CVE-2024-26581](https://ubuntu.com/security/CVE-2024-26581) <!-- medium -->
    -   [CVE-2024-26591](https://ubuntu.com/security/CVE-2024-26591) <!-- medium -->
    -   [CVE-2024-26589](https://ubuntu.com/security/CVE-2024-26589) <!-- medium -->
    -   [CVE-2023-52600](https://ubuntu.com/security/CVE-2023-52600) <!-- medium -->


### [[USN-6750-1](https://ubuntu.com/security/notices/USN-6750-1)] Thunderbird vulnerabilities (02:19) {#usn-6750-1-thunderbird-vulnerabilities--02-19}

-   8 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-3861](https://ubuntu.com/security/CVE-2024-3861) <!-- medium -->
    -   [CVE-2024-3859](https://ubuntu.com/security/CVE-2024-3859) <!-- medium -->
    -   [CVE-2024-3857](https://ubuntu.com/security/CVE-2024-3857) <!-- medium -->
    -   [CVE-2024-3854](https://ubuntu.com/security/CVE-2024-3854) <!-- medium -->
    -   [CVE-2024-3302](https://ubuntu.com/security/CVE-2024-3302) <!-- medium -->
    -   [CVE-2024-3864](https://ubuntu.com/security/CVE-2024-3864) <!-- medium -->
    -   [CVE-2024-3852](https://ubuntu.com/security/CVE-2024-3852) <!-- medium -->
    -   [CVE-2024-2609](https://ubuntu.com/security/CVE-2024-2609) <!-- medium -->
-   115.10.1


### [[USN-6751-1](https://ubuntu.com/security/notices/USN-6751-1)] Zabbix vulnerabilities (02:54) {#usn-6751-1-zabbix-vulnerabilities--02-54}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2022-35230](https://ubuntu.com/security/CVE-2022-35230) <!-- medium -->
    -   [CVE-2022-35229](https://ubuntu.com/security/CVE-2022-35229) <!-- medium -->
-   First time Zabbix has featured in the podcast!
-   Fixes 2 reflected XSS issues - in newer versions both require the attacker to
    be able to specify the user's specific CSRF token - but in older versions only
    there was only a session ID which is easier to guess


### [[USN-6753-1](https://ubuntu.com/security/notices/USN-6753-1)] CryptoJS vulnerability (03:38) {#usn-6753-1-cryptojs-vulnerability--03-38}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-46233](https://ubuntu.com/security/CVE-2023-46233) <!-- medium -->
-   Insecure default config - uses older parameters for the implementation of
    PBKDF2 - SHA1 with a single iteration - makes any passwords protected via
    PBKDF2 in crypto-js easier to brute-force from the hashed value - instead
    updated to use SHA256 with 250,000 rounds


### [[USN-6754-1](https://ubuntu.com/security/notices/USN-6754-1)] nghttp2 vulnerabilities (04:32) {#usn-6754-1-nghttp2-vulnerabilities--04-32}

-   4 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-28182](https://ubuntu.com/security/CVE-2024-28182) <!-- medium -->
    -   [CVE-2023-44487](https://ubuntu.com/security/CVE-2023-44487) <!-- medium -->
    -   [CVE-2019-9513](https://ubuntu.com/security/CVE-2019-9513) <!-- medium -->
    -   [CVE-2019-9511](https://ubuntu.com/security/CVE-2019-9511) <!-- medium -->
-   Fixes for most recent issue in HTTP/2 (plus a few older HTTP/2 issues for ESM
    releases - HTTP/2 Rapid Reset and 2 disclosed by Netflix back in 2019 which we
    covered back in [[USN-4099-1] nginx vulnerabilities from Episode 49]({{< relref "episode-43#usn-4099-1-nginx-vulnerabilities" >}}) -
    all DoS attacks)
-   HTTP/2 continuation frames - no proper limit on the amount of these frames
    which can be sent in a single stream - attacker can send many to cause a DoS
    on the server either through CPU by lots of processing or memory by storing
    all these headers in memory


### [[USN-6755-1](https://ubuntu.com/security/notices/USN-6755-1)] GNU cpio vulnerabilities (05:42) {#usn-6755-1-gnu-cpio-vulnerabilities--05-42}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-7207](https://ubuntu.com/security/CVE-2023-7207) <!-- medium -->
-   Path traversal vuln - possible to write outside of the target directory
-   Specific to Debian/Ubuntu etc since reverted part of the fix for historic
    CVE-2015-1197 - path traversal via inclusion of a malicious symlink in the
    archive - since it broke the use of the `--no-absolute-filenames` CLI argument
-   Was reverted back in 2.13+dfsg-2 - this was included in all releases of Ubuntu
    since focal
-   Now use more correct fix from upstream (April 2023)


### [[USN-6756-1](https://ubuntu.com/security/notices/USN-6756-1)] less vulnerability (07:10) {#usn-6756-1-less-vulnerability--07-10}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-32487](https://ubuntu.com/security/CVE-2024-32487) <!-- medium -->
-   Second vuln in less in the last 10 weeks or so - [[USN-6664-1] less vulnerability from Episode 220]({{< relref "episode-220#usn-6664-1-less-vulnerability--09-40" >}})
-   Similar issue - this time in the use of `LESSOPEN` environment variable - failed
    to properly quote newlines embedded in a filename - could then allow for
    arbitrary code execution if ran `less` on some untrusted file
-   `LESSOPEN` is automatically set in Debian/Ubuntu via `lesspipe` - allows to run
    less on say a gz compressed log file or even on a tar.gz tarball to list the
    files etc


### [[USN-6757-1](https://ubuntu.com/security/notices/USN-6757-1)] PHP vulnerabilities (08:41) {#usn-6757-1-php-vulnerabilities--08-41}

-   3 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-3096](https://ubuntu.com/security/CVE-2024-3096) <!-- medium -->
    -   [CVE-2024-2756](https://ubuntu.com/security/CVE-2024-2756) <!-- medium -->
    -   [CVE-2022-4900](https://ubuntu.com/security/CVE-2022-4900) <!-- low -->
-   Incomplete fix for historic CVE-2022-31629 - ability for an attacker on the
    same network/site could set a cookie via HTTP with one name, which then gets
    used by sessions using HTTPS and when using a different cookie name - is a
    problem since certain cookie names (like `__Host-` and `__Secure-`) have specific
    meanings which in general should be allowed to be specified by the network but
    only by the browser itself - so can be used to bypass usual restrictions
    (apparently this issue was reported upstream by the original reported of the
    2022 vuln but it got ignored by upstream till now...)
-   `password_verify()` function would sometimes return true for wrong passwords -
    ie if the actual password started with a NUL byte and the specified a password
    was the empty string would verify as true (unlikely to be an issue in practice)
-   Heap buffer overflow due to a large `PHP_CLI_SERVER_WORKERS` env var value -
    integer overflow -&gt; wraparound -&gt; allocate small amount of memory for a large
    number of values -&gt; buffer overflow (low priority since would need to be able
    to set this env var first)


### [[USN-6761-1](https://ubuntu.com/security/notices/USN-6761-1)] Anope vulnerability (11:15) {#usn-6761-1-anope-vulnerability--11-15}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-30187](https://ubuntu.com/security/CVE-2024-30187) <!-- medium -->
-   Failed to deny ability to reset the password of a suspended account and hence
    gain access again


### [[USN-6758-1](https://ubuntu.com/security/notices/USN-6758-1)] JSON5 vulnerability (11:37) {#usn-6758-1-json5-vulnerability--11-37}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-46175](https://ubuntu.com/security/CVE-2022-46175) <!-- medium -->
-   NodeJS module for the JSON5 format - "JSON for humans" - much more similar to
    yaml, does away with a lot of the usual quotes etc
-   Protoype pollution vuln - when parsing would fail to restrict use of the
    `__proto__` key and hence would allow the ability to set arbitrary keys etc
    within the returned object -&gt; RCE


### [[LSN-0103-1](https://ubuntu.com/security/notices/LSN-0103-1)] Linux kernel vulnerability (12:46) {#lsn-0103-1-linux-kernel-vulnerability--12-46}

-   7 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-26597](https://ubuntu.com/security/CVE-2024-26597) <!-- high -->
    -   [CVE-2024-1086](https://ubuntu.com/security/CVE-2024-1086) <!-- high -->
    -   [CVE-2024-1085](https://ubuntu.com/security/CVE-2024-1085) <!-- high -->
    -   [CVE-2024-0193](https://ubuntu.com/security/CVE-2024-0193) <!-- high -->
    -   [CVE-2023-51781](https://ubuntu.com/security/CVE-2023-51781) <!-- high -->
    -   [CVE-2023-6817](https://ubuntu.com/security/CVE-2023-6817) <!-- high -->
    -   [CVE-2023-4569](https://ubuntu.com/security/CVE-2023-4569) <!-- high -->

| Kernel type     | 22.04 | 20.04 | 18.04 |
|-----------------|-------|-------|-------|
| aws             | 103.3 | 103.3 | —     |
| aws-5.15        | —     | 103.3 | —     |
| aws-5.4         | —     | —     | 103.3 |
| aws-6.5         | 103.1 | —     | —     |
| azure           | 103.3 | 103.3 | —     |
| azure-5.4       | —     | —     | 103.3 |
| azure-6.5       | 103.1 | —     | —     |
| gcp             | 103.3 | 103.3 | —     |
| gcp-5.15        | —     | 103.3 | —     |
| gcp-5.4         | —     | —     | 103.3 |
| gcp-6.5         | 103.1 | —     | —     |
| generic-5.15    | —     | 103.3 | —     |
| generic-5.4     | —     | 103.3 | 103.3 |
| gke             | 103.3 | 103.3 | —     |
| hwe-6.5         | 103.1 | —     | —     |
| ibm             | 103.3 | —     | —     |
| ibm-5.15        | —     | 103.3 | —     |
| linux           | 103.3 | —     | —     |
| lowlatency-5.15 | —     | 103.3 | —     |
| lowlatency-5.4  | —     | 103.3 | 103.3 |

```shell
canonical-livepatch status
```


### [[USN-6760-1](https://ubuntu.com/security/notices/USN-6760-1)] Gerbv vulnerability (13:01) {#usn-6760-1-gerbv-vulnerability--13-01}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-4508](https://ubuntu.com/security/CVE-2023-4508) <!-- low -->
-   Vuln found by the Ubuntu Security team - David and (former member) Andrei -
    Andrei found this whilst patching Gerbv back in 2023 and doing a bunch of
    testing with ASan enabled - crafted filename -&gt; crash


### [[USN-6759-1](https://ubuntu.com/security/notices/USN-6759-1)] FreeRDP vulnerabilities (13:41) {#usn-6759-1-freerdp-vulnerabilities--13-41}

-   5 CVEs addressed in Noble (24.04 LTS)
    -   [CVE-2024-32662](https://ubuntu.com/security/CVE-2024-32662) <!-- low -->
    -   [CVE-2024-32661](https://ubuntu.com/security/CVE-2024-32661) <!-- low -->
    -   [CVE-2024-32660](https://ubuntu.com/security/CVE-2024-32660) <!-- low -->
    -   [CVE-2024-32659](https://ubuntu.com/security/CVE-2024-32659) <!-- low -->
    -   [CVE-2024-32658](https://ubuntu.com/security/CVE-2024-32658) <!-- low -->


### [[USN-6737-2](https://ubuntu.com/security/notices/USN-6737-2)] GNU C Library vulnerability {#usn-6737-2-gnu-c-library-vulnerability}

-   1 CVEs addressed in Noble (24.04 LTS)
    -   [CVE-2024-2961](https://ubuntu.com/security/CVE-2024-2961) <!-- medium -->


### [[USN-6729-3](https://ubuntu.com/security/notices/USN-6729-3)] Apache HTTP Server vulnerabilities {#usn-6729-3-apache-http-server-vulnerabilities}

-   3 CVEs addressed in Noble (24.04 LTS)
    -   [CVE-2024-27316](https://ubuntu.com/security/CVE-2024-27316) <!-- medium -->
    -   [CVE-2024-24795](https://ubuntu.com/security/CVE-2024-24795) <!-- medium -->
    -   [CVE-2023-38709](https://ubuntu.com/security/CVE-2023-38709) <!-- medium -->


### [[USN-6718-3](https://ubuntu.com/security/notices/USN-6718-3)] curl vulnerabilities {#usn-6718-3-curl-vulnerabilities}

-   2 CVEs addressed in Noble (24.04 LTS)
    -   [CVE-2024-2398](https://ubuntu.com/security/CVE-2024-2398) <!-- medium -->
    -   [CVE-2024-2004](https://ubuntu.com/security/CVE-2024-2004) <!-- low -->


### [[USN-6733-2](https://ubuntu.com/security/notices/USN-6733-2)] GnuTLS vulnerabilities {#usn-6733-2-gnutls-vulnerabilities}

-   2 CVEs addressed in Noble (24.04 LTS)
    -   [CVE-2024-28835](https://ubuntu.com/security/CVE-2024-28835) <!-- medium -->
    -   [CVE-2024-28834](https://ubuntu.com/security/CVE-2024-28834) <!-- medium -->


### [[USN-6734-2](https://ubuntu.com/security/notices/USN-6734-2)] libvirt vulnerabilities {#usn-6734-2-libvirt-vulnerabilities}

-   2 CVEs addressed in Noble (24.04 LTS)
    -   [CVE-2024-2494](https://ubuntu.com/security/CVE-2024-2494) <!-- medium -->
    -   [CVE-2024-1441](https://ubuntu.com/security/CVE-2024-1441) <!-- medium -->


### [[USN-6744-3](https://ubuntu.com/security/notices/USN-6744-3)] Pillow vulnerability {#usn-6744-3-pillow-vulnerability}

-   1 CVEs addressed in Noble (24.04 LTS)
    -   [CVE-2024-28219](https://ubuntu.com/security/CVE-2024-28219) <!-- medium -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 24.04 LTS (Noble Numbat) released (14:27) {#ubuntu-24-dot-04-lts--noble-numbat--released--14-27}

-   <https://ubuntu.com/blog/canonical-releases-ubuntu-24-04-noble-numbat>
-   <https://ubuntu.com/blog/ubuntu-desktop-24-04-noble-numbat-deep-dive>
-   <https://ubuntu.com/blog/whats-new-in-security-for-ubuntu-24-04-lts>
-   Up to 12 years of support via Ubuntu Pro + Legacy Support Add-on
-   New security features / improvements:
    -   Unprivileged user namespace restrictions
    -   Binary hardening
    -   AppArmor 4
    -   Disabling of old TLS versions
    -   Upstream Kernel Security Features
        -   Intel shadow stack support
        -   Secure virtualisation with AMD SEV-SNP and Intel TDX
        -   Strict compile-time bounds checking


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
