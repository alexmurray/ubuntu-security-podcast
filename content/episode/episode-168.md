+++
title = "Episode 168"
description = """
  This week we rocket back into your podcast feed with a look at the OrBit
  Linux malware teardown from Intezer, plus we cover security updates for
  cloud-init, Vim, the Linux kernel, GnuPG, Dovecot and more.
  """
date = 2022-07-15T15:33:00+09:30
lastmod = 2022-07-15T15:36:31+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E168.mp3"
podcast_duration = 840
podcast_bytes = 10879437
permalink = "https://ubuntusecuritypodcast.org/episode-168/"
guid = "6c8fc8b515f4f3718da0aa01d11dd88f366766729b52c20473c9819f873cbd2d1fce7db6d7c5693e476f001669202b2919d09f1beab3d78d10edda7c4cf2c029"
+++

## Overview {#overview}

This week we rocket back into your podcast feed with a look at the OrBit
Linux malware teardown from Intezer, plus we cover security updates for
cloud-init, Vim, the Linux kernel, GnuPG, Dovecot and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

52 unique CVEs addressed


### [[USN-5496-1](https://ubuntu.com/security/notices/USN-5496-1)] cloud-init vulnerability {#usn-5496-1-cloud-init-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-2084](https://ubuntu.com/security/CVE-2022-2084) <!-- medium -->
-   `cloud-init` was originally a Canonical developed project but is now widely
    used by many of the public clouds for configuring cloud images on first
    boot
-   When validating configuration, would log invalid entries - if one of
    those was a password then the password would get logged in the clear -
    and cloud init logs are world readable by default
-   Fixed to instead log a generic error message with details on how to
    obtain the actual invalid entries via a privileged command


### [[USN-5497-1](https://ubuntu.com/security/notices/USN-5497-1)] Libjpeg6b vulnerabilities [01:54] {#usn-5497-1-libjpeg6b-vulnerabilities-01-54}

-   5 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2018-11214](https://ubuntu.com/security/CVE-2018-11214) <!-- low -->
    -   [CVE-2018-11213](https://ubuntu.com/security/CVE-2018-11213) <!-- low -->
    -   [CVE-2020-14152](https://ubuntu.com/security/CVE-2020-14152) <!-- low -->
    -   [CVE-2018-11813](https://ubuntu.com/security/CVE-2018-11813) <!-- low -->
    -   [CVE-2018-11212](https://ubuntu.com/security/CVE-2018-11212) <!-- low -->
-   Various DoS via crafted JPEG,PPM or Targa image files
-   OOB read, excessive memory consumption etc


### [[USN-5498-1](https://ubuntu.com/security/notices/USN-5498-1)] Vim vulnerabilities [02:16] {#usn-5498-1-vim-vulnerabilities-02-16}

-   8 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-1898](https://ubuntu.com/security/CVE-2022-1898) <!-- low -->
    -   [CVE-2022-1851](https://ubuntu.com/security/CVE-2022-1851) <!-- medium -->
    -   [CVE-2022-1796](https://ubuntu.com/security/CVE-2022-1796) <!-- low -->
    -   [CVE-2022-1785](https://ubuntu.com/security/CVE-2022-1785) <!-- low -->
    -   [CVE-2022-1735](https://ubuntu.com/security/CVE-2022-1735) <!-- low -->
    -   [CVE-2022-1733](https://ubuntu.com/security/CVE-2022-1733) <!-- low -->
    -   [CVE-2022-1629](https://ubuntu.com/security/CVE-2022-1629) <!-- medium -->
    -   [CVE-2022-0413](https://ubuntu.com/security/CVE-2022-0413) <!-- medium -->
-   vim is fast becoming one of our most updated packages for security vulns
-   More instances of DoS or possible RCE attacks via crafted input files
    found via fuzzing


### [[USN-5499-1](https://ubuntu.com/security/notices/USN-5499-1)] curl vulnerabilities [02:44] {#usn-5499-1-curl-vulnerabilities-02-44}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-32208](https://ubuntu.com/security/CVE-2022-32208) <!-- medium -->
    -   [CVE-2022-27781](https://ubuntu.com/security/CVE-2022-27781) <!-- low -->
-   [Episode 166](https://ubuntusecuritypodcast.org/episode-166/)


### [[USN-5485-2](https://ubuntu.com/security/notices/USN-5485-2)] Linux kernel (OEM) vulnerabilities [02:53] {#usn-5485-2-linux-kernel--oem--vulnerabilities-02-53}

-   3 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-21166](https://ubuntu.com/security/CVE-2022-21166) <!-- medium -->
    -   [CVE-2022-21125](https://ubuntu.com/security/CVE-2022-21125) <!-- medium -->
    -   [CVE-2022-21123](https://ubuntu.com/security/CVE-2022-21123) <!-- medium -->
-   5.14 OEM kernel
-   MMIO stale data vulns ([Episode 165](https://ubuntusecuritypodcast.org/episode-165/))


### [[USN-5493-2](https://ubuntu.com/security/notices/USN-5493-2)] Linux kernel (HWE) vulnerability [03:03] {#usn-5493-2-linux-kernel--hwe--vulnerability-03-03}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS),
    -   [CVE-2022-28388](https://ubuntu.com/security/CVE-2022-28388) <!-- medium -->
-   5.4 and 5.13 HWE kernels respectively
-   8 Devices USB2CAN driver -&gt; double free -&gt; crash (DoS)


### [[USN-5500-1](https://ubuntu.com/security/notices/USN-5500-1)] Linux kernel vulnerabilities [03:21] {#usn-5500-1-linux-kernel-vulnerabilities-03-21}

-   8 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-28356](https://ubuntu.com/security/CVE-2022-28356) <!-- low -->
    -   [CVE-2022-1734](https://ubuntu.com/security/CVE-2022-1734) <!-- medium -->
    -   [CVE-2022-1679](https://ubuntu.com/security/CVE-2022-1679) <!-- medium -->
    -   [CVE-2022-1652](https://ubuntu.com/security/CVE-2022-1652) <!-- medium -->
    -   [CVE-2022-1419](https://ubuntu.com/security/CVE-2022-1419) <!-- medium -->
    -   [CVE-2022-1353](https://ubuntu.com/security/CVE-2022-1353) <!-- medium -->
    -   [CVE-2021-4202](https://ubuntu.com/security/CVE-2021-4202) <!-- medium -->
    -   [CVE-2021-4197](https://ubuntu.com/security/CVE-2021-4197) <!-- medium -->
-   4.4 GA + AWS
-   Usual mix of issues in various drivers -&gt; UAFs due to various race
    conditions, information leak (uninitialised memory) etc -&gt; DoS or
    possible code execution


### [[USN-5501-1](https://ubuntu.com/security/notices/USN-5501-1)] Django vulnerability [03:47] {#usn-5501-1-django-vulnerability-03-47}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-34265](https://ubuntu.com/security/CVE-2022-34265) <!-- medium -->
-   Possible SQL injection if used the `Trunc()` or `Extract()` DB functions with
    untrusted data


### [[USN-5479-2](https://ubuntu.com/security/notices/USN-5479-2)] PHP vulnerabilities [04:05] {#usn-5479-2-php-vulnerabilities-04-05}

-   2 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-31626](https://ubuntu.com/security/CVE-2022-31626) <!-- medium -->
    -   [CVE-2022-31625](https://ubuntu.com/security/CVE-2022-31625) <!-- medium -->
-   [Episode 164](https://ubuntusecuritypodcast.org/episode-164/)


### [[USN-5479-3](https://ubuntu.com/security/notices/USN-5479-3)] PHP regression {#usn-5479-3-php-regression}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2022-31626](https://ubuntu.com/security/CVE-2022-31626) <!-- medium -->
    -   [CVE-2022-31625](https://ubuntu.com/security/CVE-2022-31625) <!-- medium -->


### [[USN-5502-1](https://ubuntu.com/security/notices/USN-5502-1)] OpenSSL vulnerability [04:21] {#usn-5502-1-openssl-vulnerability-04-21}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-2097](https://ubuntu.com/security/CVE-2022-2097) <!-- medium -->
-   Mishandled AES OCB (offset cookbook) mode - combines authentication with
    encryption - on 32-bit x86 platforms that support AES-NI hardware
    optimised instructions - would possibly miss one block of data and leave
    it unencrypted


### [[USN-5503-1](https://ubuntu.com/security/notices/USN-5503-1), [USN-5503-2](https://ubuntu.com/security/notices/USN-5503-2)] GnuPG vulnerability [05:11] {#usn-5503-1-usn-5503-2-gnupg-vulnerability-05-11}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-34903](https://ubuntu.com/security/CVE-2022-34903) <!-- medium -->
-   Possible to craft signed data such that on attempted verification GPG
    would display output that appeared to show the message was correctly
    signed when infact it would fail - so could possibly trick user /
    application


### [[USN-5488-2](https://ubuntu.com/security/notices/USN-5488-2)] OpenSSL vulnerability [05:37] {#usn-5488-2-openssl-vulnerability-05-37}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-2068](https://ubuntu.com/security/CVE-2022-2068) <!-- medium -->
-   [Episode 165](https://ubuntusecuritypodcast.org/episode-165/)


### [[USN-5505-1](https://ubuntu.com/security/notices/USN-5505-1)] Linux kernel vulnerabilities [05:46] {#usn-5505-1-linux-kernel-vulnerabilities-05-46}

-   19 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-28388](https://ubuntu.com/security/CVE-2022-28388) <!-- medium -->
    -   [CVE-2022-28356](https://ubuntu.com/security/CVE-2022-28356) <!-- low -->
    -   [CVE-2022-24958](https://ubuntu.com/security/CVE-2022-24958) <!-- medium -->
    -   [CVE-2022-21166](https://ubuntu.com/security/CVE-2022-21166) <!-- medium -->
    -   [CVE-2022-21125](https://ubuntu.com/security/CVE-2022-21125) <!-- medium -->
    -   [CVE-2022-21123](https://ubuntu.com/security/CVE-2022-21123) <!-- medium -->
    -   [CVE-2022-1734](https://ubuntu.com/security/CVE-2022-1734) <!-- medium -->
    -   [CVE-2022-1679](https://ubuntu.com/security/CVE-2022-1679) <!-- medium -->
    -   [CVE-2022-1652](https://ubuntu.com/security/CVE-2022-1652) <!-- medium -->
    -   [CVE-2022-1419](https://ubuntu.com/security/CVE-2022-1419) <!-- medium -->
    -   [CVE-2022-1353](https://ubuntu.com/security/CVE-2022-1353) <!-- medium -->
    -   [CVE-2022-0330](https://ubuntu.com/security/CVE-2022-0330) <!-- medium -->
    -   [CVE-2021-4202](https://ubuntu.com/security/CVE-2021-4202) <!-- medium -->
    -   [CVE-2021-4197](https://ubuntu.com/security/CVE-2021-4197) <!-- medium -->
    -   [CVE-2021-39714](https://ubuntu.com/security/CVE-2021-39714) <!-- medium -->
    -   [CVE-2021-39685](https://ubuntu.com/security/CVE-2021-39685) <!-- medium -->
    -   [CVE-2021-3760](https://ubuntu.com/security/CVE-2021-3760) <!-- medium -->
    -   [CVE-2021-3752](https://ubuntu.com/security/CVE-2021-3752) <!-- medium -->
    -   [CVE-2021-3609](https://ubuntu.com/security/CVE-2021-3609) <!-- high -->
-   4.4 - 16.04 ESM kvm kernel + 14.04 ESM HWE kernel
-   MMIO stale data plus various other kernel issues that have been covered
    in recent episodes


### [[USN-5506-1](https://ubuntu.com/security/notices/USN-5506-1)] NSS vulnerabilities [06:24] {#usn-5506-1-nss-vulnerabilities-06-24}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-34480](https://ubuntu.com/security/CVE-2022-34480) <!-- medium -->
    -   [CVE-2022-22747](https://ubuntu.com/security/CVE-2022-22747) <!-- low -->
-   Crash on empty pkcs7 sequence -&gt; DoS
-   Possible free of invalid pointer -&gt; likely crash -&gt; DoS or possible RCE


### [[USN-5507-1](https://ubuntu.com/security/notices/USN-5507-1)] Vim vulnerabilities [06:48] {#usn-5507-1-vim-vulnerabilities-06-48}

-   3 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-1942](https://ubuntu.com/security/CVE-2022-1942) <!-- medium -->
    -   [CVE-2022-1897](https://ubuntu.com/security/CVE-2022-1897) <!-- low -->
    -   [CVE-2022-1968](https://ubuntu.com/security/CVE-2022-1968) <!-- medium -->
-   Moar vim CVEs


### [[USN-5509-1](https://ubuntu.com/security/notices/USN-5509-1)] Dovecot vulnerability [06:57] {#usn-5509-1-dovecot-vulnerability-06-57}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-30550](https://ubuntu.com/security/CVE-2022-30550) <!-- medium -->
-   Possible privilege escalation when using similar primary and non-primary
    passdb configuration entries - unlikely configuration to use in practice
    but could then result in the non-primary config allowing users to access
    as the primary config


### [[USN-5508-1](https://ubuntu.com/security/notices/USN-5508-1)] Python LDAP vulnerability [07:30] {#usn-5508-1-python-ldap-vulnerability-07-30}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2021-46823](https://ubuntu.com/security/CVE-2021-46823) <!-- medium -->
-   ReDoS when using `ldap.schema` to validate untrusted schemas - DoS via
    excessive CPU/memory usage


### [[USN-5510-1](https://ubuntu.com/security/notices/USN-5510-1), [USN-5510-2](https://ubuntu.com/security/notices/USN-5510-2)] X.Org X Server vulnerabilities [07:51] {#usn-5510-1-usn-5510-2-x-dot-org-x-server-vulnerabilities-07-51}

-   2 CVEs addressed in Xenial ESM (16.04 ESM),  Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-2320](https://ubuntu.com/security/CVE-2022-2320) <!-- medium -->
    -   [CVE-2022-2319](https://ubuntu.com/security/CVE-2022-2319) <!-- medium -->
-   2 different OOB reads via various X server methods - untrusted client
    could use this to crash X server or expose sensitive info


### [[USN-5256-1](https://ubuntu.com/security/notices/USN-5256-1)] uriparser vulnerabilities [08:07] {#usn-5256-1-uriparser-vulnerabilities-08-07}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2021-46142](https://ubuntu.com/security/CVE-2021-46142) <!-- medium -->
    -   [CVE-2021-46141](https://ubuntu.com/security/CVE-2021-46141) <!-- medium -->
-   C library for parsing RFC 3986 compliant URIs
-   Not surprisingly, since C is memory unsafe, contained 2 different issue
    with invalid memory management which could be triggered via crafted input
    -&gt; both resulting in UAF -&gt; DoS / RCE


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### OrBit malware analysis [08:44] {#orbit-malware-analysis-08-44}

-   <https://www.intezer.com/blog/incident-response/orbit-new-undetected-linux-threat/>
-   Similar to Symbiote which we covered in [Episode 163](https://ubuntusecuritypodcast.org/episode-163/) - Intezer has
    detailed another Linux malware sample
-   Like Symbiote, the dropper component for OrBit targets arbitrary binaries
    via the linker - however, unlike Symbiote, doesn't use `LD_PRELOAD`
    environment variable but instead instructs the dynamic linker via
    `/etc/ld.so.preload` - this has benefits for the malware since the use of
    the `LD_PRELOAD` env var has various restrictions around setuid binaries
    etc - but this is not the case of `/etc/ld.so.preload` meaning all binaries
    **including** setuid root ones are also "infected" via this technique and the
    malware payload gets loaded for all
-   Then payload then hooks functions from libc, libpcap and libpam so that
    all other binaries on the system which use these libraries then use the
    payloads malicious variants of these functions
-   Allows it to then harvest credentials (via pam), evade detection (via
    libpcap) and gain persistence and remote access
-   By hooking libc it can then also hide in plain sight by making sure when
    other binaries call functions like `readdir()` the presence of the malware
    itself is omitted - same for even `execve()` so that if say a binary like
    `ip`, `iptables` or even `strace` is then executed, it can modify the output
    which is returned to omit its own details
-   As we discussed with Symbiote, even though it goes to great lengths to
    hide in plain sight, could still be detected via offline forensic
    analysis etc
-   Interesting to see similar techniques used across the various malware
    samples
-   No info on how initial compromise / privesc is achieved since this is
    required to allow the malware to use `/etc/ld.so.preload` - but likely is
    via vulnerabilities in privileged internet facing applications - as such,
    MAC systems like AppArmor then become very useful for confining these
    services so they cannot arbitrarily write to these quite privileged files
    etc
-   POLA is one of the basic tenets of good security


### Ubuntu 21.10 (Impish Indri) EOL [12:40] {#ubuntu-21-dot-10--impish-indri--eol-12-40}

-   Officially EOL yesterday (14th July 2022)
-   Will no longer receive security or bug fix updates etc
-   Upgrade to Ubuntu 22.04 LTS - 5 years of standard support plus 5 years of
    ESM (free for personal use on up to 3 machines) - 10 years total of
    support


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)