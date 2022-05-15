+++
title = "Episode 115"
description = "This week we look at some details of the 90 unique CVEs addressed across the supported Ubuntu releases and more."
date = 2021-05-14T14:49:00+09:30
lastmod = 2022-05-15T18:06:08+09:30
draft = false
weight = 1045
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E115.mp3"
podcast_duration = "12:44"
podcast_bytes = 10470335
permalink = "https://ubuntusecuritypodcast.org/episode-115/"
guid = "e41d16ec99942421046692700e4a2d653e64ec78845c8ddeb8d6c63e2957cfaa97aace439965772b61a85106d5a382b1e501cb69ae759ec1134601535c1aec7cHH"
+++

## Overview {#overview}

This week we look at some details of the 90 unique CVEs addressed across the supported Ubuntu releases and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

90 unique CVEs addressed


### [[USN-4934-2](https://ubuntu.com/security/notices/USN-4934-2)] Exim vulnerabilities [00:41] {#usn-4934-2-exim-vulnerabilities-00-41}

-   16 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2021-27216](https://ubuntu.com/security/CVE-2021-27216) <!-- medium -->
    -   [CVE-2020-28025](https://ubuntu.com/security/CVE-2020-28025) <!-- medium -->
    -   [CVE-2020-28024](https://ubuntu.com/security/CVE-2020-28024) <!-- medium -->
    -   [CVE-2020-28022](https://ubuntu.com/security/CVE-2020-28022) <!-- medium -->
    -   [CVE-2020-28020](https://ubuntu.com/security/CVE-2020-28020) <!-- medium -->
    -   [CVE-2020-28017](https://ubuntu.com/security/CVE-2020-28017) <!-- medium -->
    -   [CVE-2020-28016](https://ubuntu.com/security/CVE-2020-28016) <!-- medium -->
    -   [CVE-2020-28015](https://ubuntu.com/security/CVE-2020-28015) <!-- medium -->
    -   [CVE-2020-28014](https://ubuntu.com/security/CVE-2020-28014) <!-- medium -->
    -   [CVE-2020-28013](https://ubuntu.com/security/CVE-2020-28013) <!-- medium -->
    -   [CVE-2020-28012](https://ubuntu.com/security/CVE-2020-28012) <!-- medium -->
    -   [CVE-2020-28011](https://ubuntu.com/security/CVE-2020-28011) <!-- medium -->
    -   [CVE-2020-28009](https://ubuntu.com/security/CVE-2020-28009) <!-- medium -->
    -   [CVE-2020-28008](https://ubuntu.com/security/CVE-2020-28008) <!-- medium -->
    -   [CVE-2020-28007](https://ubuntu.com/security/CVE-2020-28007) <!-- medium -->
    -   [CVE-2020-28026](https://ubuntu.com/security/CVE-2020-28026) <!-- medium -->
-   [Episode 114](https://ubuntusecuritypodcast.org/episode-114/)


### [[USN-4937-1](https://ubuntu.com/security/notices/USN-4937-1)] GNOME Autoar vulnerability [01:00] {#usn-4937-1-gnome-autoar-vulnerability-01-00}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-28650](https://ubuntu.com/security/CVE-2021-28650) <!-- medium -->
-   Directory traversal due to failure to properly handle symlinks (result of
    incomplete fix for previous [CVE-2020-36241](https://ubuntu.com/security/CVE-2020-36241))


### [[USN-4936-1](https://ubuntu.com/security/notices/USN-4936-1)] Thunderbird vulnerabilities [01:47] {#usn-4936-1-thunderbird-vulnerabilities-01-47}

-   5 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-29950](https://ubuntu.com/security/CVE-2021-29950) <!-- low -->
    -   [CVE-2021-23978](https://ubuntu.com/security/CVE-2021-23978) <!-- medium -->
    -   [CVE-2021-23973](https://ubuntu.com/security/CVE-2021-23973) <!-- low -->
    -   [CVE-2021-23969](https://ubuntu.com/security/CVE-2021-23969) <!-- medium -->
    -   [CVE-2021-23968](https://ubuntu.com/security/CVE-2021-23968) <!-- medium -->
-   78.8.1
-   If used a PGP key but then a failure occurred, TB would keep the
    decrypted key in memory - on Ubuntu we enable Yama ptrace restrictions
    (ptrace_scope) - so this means processes can only ptrace their
    descendents by default and hence even other user-level processes cannot
    dump the memory of another process to say extract this private key
-   Various other CVEs inherited from Firefox


### [[USN-4938-1](https://ubuntu.com/security/notices/USN-4938-1)] Unbound vulnerabilities [03:21] {#usn-4938-1-unbound-vulnerabilities-03-21}

-   13 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-28935](https://ubuntu.com/security/CVE-2020-28935) <!-- low -->
    -   [CVE-2019-25042](https://ubuntu.com/security/CVE-2019-25042) <!-- medium -->
    -   [CVE-2019-25041](https://ubuntu.com/security/CVE-2019-25041) <!-- medium -->
    -   [CVE-2019-25040](https://ubuntu.com/security/CVE-2019-25040) <!-- medium -->
    -   [CVE-2019-25039](https://ubuntu.com/security/CVE-2019-25039) <!-- medium -->
    -   [CVE-2019-25038](https://ubuntu.com/security/CVE-2019-25038) <!-- medium -->
    -   [CVE-2019-25037](https://ubuntu.com/security/CVE-2019-25037) <!-- medium -->
    -   [CVE-2019-25036](https://ubuntu.com/security/CVE-2019-25036) <!-- medium -->
    -   [CVE-2019-25035](https://ubuntu.com/security/CVE-2019-25035) <!-- medium -->
    -   [CVE-2019-25034](https://ubuntu.com/security/CVE-2019-25034) <!-- medium -->
    -   [CVE-2019-25033](https://ubuntu.com/security/CVE-2019-25033) <!-- medium -->
    -   [CVE-2019-25032](https://ubuntu.com/security/CVE-2019-25032) <!-- medium -->
    -   [CVE-2019-25031](https://ubuntu.com/security/CVE-2019-25031) <!-- medium -->
-   Validating, recursive DNS resolver
-   Remote DoS, command injection, RCE, local file overwrite etc


### [[USN-4939-1](https://ubuntu.com/security/notices/USN-4939-1)] WebKitGTK vulnerabilities [03:48] {#usn-4939-1-webkitgtk-vulnerabilities-03-48}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-1871](https://ubuntu.com/security/CVE-2021-1871) <!-- medium -->
    -   [CVE-2021-1844](https://ubuntu.com/security/CVE-2021-1844) <!-- medium -->
    -   [CVE-2021-1788](https://ubuntu.com/security/CVE-2021-1788) <!-- medium -->
-   1 logic issue, 2 memory corruption bugs - all leading to possible RCE


### [[USN-4940-1](https://ubuntu.com/security/notices/USN-4940-1)] PyYAML vulnerability [04:12] {#usn-4940-1-pyyaml-vulnerability-04-12}

-   1 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-14343](https://ubuntu.com/security/CVE-2020-14343) <!-- medium -->
-   RCE when processing untrusted YAML - due to incomplete fix for previous
    [CVE-2020-1747](https://ubuntu.com/security/CVE-2020-1747) - that CVE not specifically patched in Ubuntu as either the
    versions of pyyaml were too old to be affected or were based on upstream
    releases that had already patched it


### [[USN-4941-1](https://ubuntu.com/security/notices/USN-4941-1)] Exiv2 vulnerabilities [04:35] {#usn-4941-1-exiv2-vulnerabilities-04-35}

-   4 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-3482](https://ubuntu.com/security/CVE-2021-3482) <!-- medium -->
    -   [CVE-2021-29470](https://ubuntu.com/security/CVE-2021-29470) <!-- medium -->
    -   [CVE-2021-29458](https://ubuntu.com/security/CVE-2021-29458) <!-- medium -->
    -   [CVE-2021-29457](https://ubuntu.com/security/CVE-2021-29457) <!-- medium -->
-   EXIF/IPTC/XMP metadata manipulation tool
-   Heap buffer overflow or OOB read when writing metadata - so not so likely
    to be triggered by applications that are just extracting metadata etc
-   Heap buffer overflow for handling EXIF in JPG images


### [[USN-4942-1](https://ubuntu.com/security/notices/USN-4942-1)] Firefox vulnerability [05:09] {#usn-4942-1-firefox-vulnerability-05-09}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-29952](https://ubuntu.com/security/CVE-2021-29952) <!-- medium -->
-   88.0.1
-   Race condition on destruction of WebRender components -&gt; UAF? -&gt; possible RCE


### [[USN-4943-1](https://ubuntu.com/security/notices/USN-4943-1)] XStream vulnerabilities [05:32] {#usn-4943-1-xstream-vulnerabilities-05-32}

-   14 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-21351](https://ubuntu.com/security/CVE-2021-21351) <!-- medium -->
    -   [CVE-2021-21350](https://ubuntu.com/security/CVE-2021-21350) <!-- medium -->
    -   [CVE-2021-21349](https://ubuntu.com/security/CVE-2021-21349) <!-- medium -->
    -   [CVE-2021-21348](https://ubuntu.com/security/CVE-2021-21348) <!-- low -->
    -   [CVE-2021-21347](https://ubuntu.com/security/CVE-2021-21347) <!-- medium -->
    -   [CVE-2021-21346](https://ubuntu.com/security/CVE-2021-21346) <!-- medium -->
    -   [CVE-2021-21345](https://ubuntu.com/security/CVE-2021-21345) <!-- medium -->
    -   [CVE-2021-21344](https://ubuntu.com/security/CVE-2021-21344) <!-- medium -->
    -   [CVE-2021-21343](https://ubuntu.com/security/CVE-2021-21343) <!-- medium -->
    -   [CVE-2021-21342](https://ubuntu.com/security/CVE-2021-21342) <!-- medium -->
    -   [CVE-2021-21341](https://ubuntu.com/security/CVE-2021-21341) <!-- medium -->
    -   [CVE-2020-26259](https://ubuntu.com/security/CVE-2020-26259) <!-- medium -->
    -   [CVE-2020-26258](https://ubuntu.com/security/CVE-2020-26258) <!-- medium -->
    -   [CVE-2020-26217](https://ubuntu.com/security/CVE-2020-26217) <!-- medium -->
-   [Episode 102](https://ubuntusecuritypodcast.org/episode-102/) - B+F - corresponding fixes for those 3 CVEs for G
-   Also a heap of others - denial of service, arbitrary code execution,
    arbitrary file deletion and server-side forgery attacks


### [[USN-4944-1](https://ubuntu.com/security/notices/USN-4944-1)] MariaDB vulnerabilities [06:04] {#usn-4944-1-mariadb-vulnerabilities-06-04}

-   Affecting Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
-   Latest upstream point releases rolling in a large number of security fixes:
    -   Ubuntu 18.04 LTS has been updated to MariaDB 10.1.48.
    -   Ubuntu 20.04 LTS has been updated to MariaDB 10.3.29.
    -   Ubuntu 20.10 has been updated to MariaDB 10.3.29.
    -   Ubuntu 21.04 has been updated to MariaDB 10.5.10.
    -   Thanks to Otto Kekäläinen from the MariaDB foundation for contributing
        and preparing these updates


### [[USN-4945-1](https://ubuntu.com/security/notices/USN-4945-1)] Linux kernel vulnerabilities [06:33] {#usn-4945-1-linux-kernel-vulnerabilities-06-33}

-   7 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-30002](https://ubuntu.com/security/CVE-2021-30002) <!-- medium -->
    -   [CVE-2021-29650](https://ubuntu.com/security/CVE-2021-29650) <!-- medium -->
    -   [CVE-2021-29265](https://ubuntu.com/security/CVE-2021-29265) <!-- medium -->
    -   [CVE-2021-28660](https://ubuntu.com/security/CVE-2021-28660) <!-- medium -->
    -   [CVE-2021-28375](https://ubuntu.com/security/CVE-2021-28375) <!-- medium -->
    -   [CVE-2021-28038](https://ubuntu.com/security/CVE-2021-28038) <!-- medium -->
    -   [CVE-2020-25639](https://ubuntu.com/security/CVE-2020-25639) <!-- low -->
-   5.4 (standard kernel for 20.04 LTS, HWE for 18.04 LTS)


### [[USN-4946-1](https://ubuntu.com/security/notices/USN-4946-1)] Linux kernel vulnerabilities {#usn-4946-1-linux-kernel-vulnerabilities}

-   9 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2021-30002](https://ubuntu.com/security/CVE-2021-30002) <!-- medium -->
    -   [CVE-2021-29650](https://ubuntu.com/security/CVE-2021-29650) <!-- medium -->
    -   [CVE-2021-29265](https://ubuntu.com/security/CVE-2021-29265) <!-- medium -->
    -   [CVE-2021-29264](https://ubuntu.com/security/CVE-2021-29264) <!-- medium -->
    -   [CVE-2021-28688](https://ubuntu.com/security/CVE-2021-28688) <!-- low -->
    -   [CVE-2021-28038](https://ubuntu.com/security/CVE-2021-28038) <!-- medium -->
    -   [CVE-2021-26931](https://ubuntu.com/security/CVE-2021-26931) <!-- low -->
    -   [CVE-2021-26930](https://ubuntu.com/security/CVE-2021-26930) <!-- low -->
    -   [CVE-2021-20292](https://ubuntu.com/security/CVE-2021-20292) <!-- low -->
-   4.15 (standard kernel for 18.04 LTS, HWE for 16.04 ESM, Azure for 14.04
    ESM)


### [[USN-4947-1](https://ubuntu.com/security/notices/USN-4947-1)] Linux kernel (OEM) vulnerabilities {#usn-4947-1-linux-kernel--oem--vulnerabilities}

-   5 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-30002](https://ubuntu.com/security/CVE-2021-30002) <!-- medium -->
    -   [CVE-2021-29650](https://ubuntu.com/security/CVE-2021-29650) <!-- medium -->
    -   [CVE-2021-29646](https://ubuntu.com/security/CVE-2021-29646) <!-- medium -->
    -   [CVE-2021-28375](https://ubuntu.com/security/CVE-2021-28375) <!-- medium -->
    -   [CVE-2020-35519](https://ubuntu.com/security/CVE-2020-35519) <!-- medium -->
-   5.6 (OEM for 20.04 LTS)


### [[USN-4948-1](https://ubuntu.com/security/notices/USN-4948-1)] Linux kernel (OEM) vulnerabilities {#usn-4948-1-linux-kernel--oem--vulnerabilities}

-   21 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-3483](https://ubuntu.com/security/CVE-2021-3483) <!-- medium -->
    -   [CVE-2021-31916](https://ubuntu.com/security/CVE-2021-31916) <!-- medium -->
    -   [CVE-2021-29657](https://ubuntu.com/security/CVE-2021-29657) <!-- medium -->
    -   [CVE-2021-29650](https://ubuntu.com/security/CVE-2021-29650) <!-- medium -->
    -   [CVE-2021-29649](https://ubuntu.com/security/CVE-2021-29649) <!-- medium -->
    -   [CVE-2021-29647](https://ubuntu.com/security/CVE-2021-29647) <!-- low -->
    -   [CVE-2021-29646](https://ubuntu.com/security/CVE-2021-29646) <!-- medium -->
    -   [CVE-2021-29266](https://ubuntu.com/security/CVE-2021-29266) <!-- medium -->
    -   [CVE-2021-29264](https://ubuntu.com/security/CVE-2021-29264) <!-- medium -->
    -   [CVE-2021-28972](https://ubuntu.com/security/CVE-2021-28972) <!-- medium -->
    -   [CVE-2021-28971](https://ubuntu.com/security/CVE-2021-28971) <!-- medium -->
    -   [CVE-2021-28964](https://ubuntu.com/security/CVE-2021-28964) <!-- medium -->
    -   [CVE-2021-28952](https://ubuntu.com/security/CVE-2021-28952) <!-- low -->
    -   [CVE-2021-28951](https://ubuntu.com/security/CVE-2021-28951) <!-- medium -->
    -   [CVE-2021-28688](https://ubuntu.com/security/CVE-2021-28688) <!-- low -->
    -   [CVE-2020-25672](https://ubuntu.com/security/CVE-2020-25672) <!-- medium -->
    -   [CVE-2020-25671](https://ubuntu.com/security/CVE-2020-25671) <!-- medium -->
    -   [CVE-2020-25670](https://ubuntu.com/security/CVE-2020-25670) <!-- medium -->
    -   [CVE-2021-3491](https://ubuntu.com/security/CVE-2021-3491) <!-- high -->
    -   [CVE-2021-3490](https://ubuntu.com/security/CVE-2021-3490) <!-- high -->
    -   [CVE-2021-3489](https://ubuntu.com/security/CVE-2021-3489) <!-- high -->
-   5.10 (OEM for 20.04 LTS)
-   3 Pwn2Own vulnerabilities
    -   Ryota Shiga - eBPF ring buffer
    -   Manfred Paul - eBPF bounds tracking on bitwise operations
    -   Billy Jheng Bing-Jhong - io_uring
        -   All OOB writes + info leaks -&gt; local priv esc + code execution as
            root


### [[USN-4949-1](https://ubuntu.com/security/notices/USN-4949-1)] Linux kernel vulnerabilities {#usn-4949-1-linux-kernel-vulnerabilities}

-   12 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-29650](https://ubuntu.com/security/CVE-2021-29650) <!-- medium -->
    -   [CVE-2021-29646](https://ubuntu.com/security/CVE-2021-29646) <!-- medium -->
    -   [CVE-2021-29266](https://ubuntu.com/security/CVE-2021-29266) <!-- medium -->
    -   [CVE-2021-29265](https://ubuntu.com/security/CVE-2021-29265) <!-- medium -->
    -   [CVE-2021-29264](https://ubuntu.com/security/CVE-2021-29264) <!-- medium -->
    -   [CVE-2021-28375](https://ubuntu.com/security/CVE-2021-28375) <!-- medium -->
    -   [CVE-2021-26931](https://ubuntu.com/security/CVE-2021-26931) <!-- low -->
    -   [CVE-2021-26930](https://ubuntu.com/security/CVE-2021-26930) <!-- low -->
    -   [CVE-2020-25639](https://ubuntu.com/security/CVE-2020-25639) <!-- low -->
    -   [CVE-2021-3491](https://ubuntu.com/security/CVE-2021-3491) <!-- high -->
    -   [CVE-2021-3490](https://ubuntu.com/security/CVE-2021-3490) <!-- high -->
    -   [CVE-2021-3489](https://ubuntu.com/security/CVE-2021-3489) <!-- high -->
-   5.8 (standard kernel for 20.10, HWE for 20.04 ESM, Azure for 14.04
    ESM)


### [[USN-4950-1](https://ubuntu.com/security/notices/USN-4950-1)] Linux kernel vulnerabilities {#usn-4950-1-linux-kernel-vulnerabilities}

-   3 CVEs addressed in Hirsute (21.04)
    -   [CVE-2021-3491](https://ubuntu.com/security/CVE-2021-3491) <!-- high -->
    -   [CVE-2021-3490](https://ubuntu.com/security/CVE-2021-3490) <!-- high -->
    -   [CVE-2021-3489](https://ubuntu.com/security/CVE-2021-3489) <!-- high -->
-   5.11
-   Plus CAN ISOTP race condition - discovered by a Norbert Slusarek (high
    school student in Germany) - local privilege escalation
    -   Introduced via recent broadcast mode support (normally a CAN socket
        registers a particular CAN ID to receive and only gets those frames -
        was only in 5.11 kernel so only affected hirsute) - this support has
        been removed from the hirsute kernel until a proper fix comes from
        upstream


### [[USN-4951-1](https://ubuntu.com/security/notices/USN-4951-1)] Flatpak vulnerability [10:16] {#usn-4951-1-flatpak-vulnerability-10-16}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-21381](https://ubuntu.com/security/CVE-2021-21381) <!-- medium -->
-   File forwarding issue which could allow an attacker to get access to
    files that are not normally provided by the permissions granted to an app
-   Use special tokens in the Exec line of the desktop file for an app could
    trick flatpak runtime into providing access to a file as though this had
    been explicitly granted by the user
    -   snapd generates desktop files so less likely to be affected by this
        sort of issue - less untrusted input in general (but perhaps also less
        flexible)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Hiring [11:47] {#hiring-11-47}


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