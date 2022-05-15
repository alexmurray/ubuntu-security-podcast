+++
title = "Episode 70"
description = """
  This week we have a great interview between Joe McManus and Emilia Torino from the Ubuntu
  Security team, plus we cover security updates for Apport, Firefox, GnuTLS,
  the Linux kernel and more.
  """
date = 2020-04-10T14:12:00+09:30
lastmod = 2022-05-15T18:06:43+09:30
draft = false
weight = 1090
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E070.mp3"
podcast_duration = "26:25"
podcast_bytes = 25363135
permalink = "https://ubuntusecuritypodcast.org/episode-70/"
guid = "2bf9926db3b0c53514ff0d5a54efbbbef0f32c597d0d989eb0fae132d2427a4a8ee74c3faa35d4cb5d31bdb00e475d42800b711d12962686e283f97696b037eb"
+++

## Overview {#overview}

This week we have a great interview between Joe McManus and Emilia Torino from the Ubuntu
Security team, plus we cover security updates for Apport, Firefox, GnuTLS,
the Linux kernel and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

18 unique CVEs addressed


### [[USN-4315-1](https://usn.ubuntu.com/4315-1/)] Apport vulnerabilities [00:32] {#usn-4315-1-apport-vulnerabilities-00-32}

-   2 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-8833](https://ubuntu.com/security/CVE-2020-8833) <!-- medium -->
    -   [CVE-2020-8831](https://ubuntu.com/security/CVE-2020-8831) <!-- high -->
-   Apport creates it's lock file as world writable in a world-writable
    location - so a local attacker could create a symlink in it's place to a
    non-existant file in a root-owned location and Apport would end up
    creating that file but with world-writable permissions - so could be used
    to possibly escalate privileges say by dropping a new cron file or
    similar.
-   Apport runs as root but drops privileges when creating crash reports -
    and then changes permissions on crash report to be owned by the user -
    again using a symlink attack it could be possible to get Apport to change
    the permissions on an arbitrary file to be readable by a regular user and
    hence disclose sensitive information. Is generally mitigated by
    protected_symlinks setting.


### [[USN-4316-1](https://usn.ubuntu.com/4316-1/), [USN-4316-2](https://usn.ubuntu.com/4316-2/)] GD Graphics Library vulnerabilities [02:46] {#usn-4316-1-usn-4316-2-gd-graphics-library-vulnerabilities-02-46}

-   2 CVEs addressed in Trusty ESM, Xenial, Bionic, Eoan
    -   [CVE-2019-11038](https://ubuntu.com/security/CVE-2019-11038) <!-- low -->
    -   [CVE-2018-14553](https://ubuntu.com/security/CVE-2018-14553) <!-- low -->
-   Used by php for image handling
-   Use of an uninitialized variable during
    image creation -&gt; info leak or possible memory corruption
-   NULL ptr deref in certain circumstances


### [[USN-4317-1](https://usn.ubuntu.com/4317-1/)] Firefox vulnerabilities [03:10] {#usn-4317-1-firefox-vulnerabilities-03-10}

-   2 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-6820](https://ubuntu.com/security/CVE-2020-6820) <!-- high -->
    -   [CVE-2020-6819](https://ubuntu.com/security/CVE-2020-6819) <!-- high -->
-   74.0.1 - reports of two issues being used to exploit Firefox in the
    wild - <https://www.mozilla.org/en-US/security/advisories/mfsa2020-11/>
-   2 use-after-free  -&gt; remote code execution


### [[USN-4321-1](https://usn.ubuntu.com/4321-1/)] HAProxy vulnerability [03:56] {#usn-4321-1-haproxy-vulnerability-03-56}

-   1 CVEs addressed in Bionic, Eoan
    -   [CVE-2020-11100](https://ubuntu.com/security/CVE-2020-11100) <!-- medium -->
-   Arbitrary heap memory write in HPACK decoder (HTTP/2 header
    compression) -&gt; crash, DoS or possible RCE


### [[USN-4322-1](https://usn.ubuntu.com/4322-1/)] GnuTLS vulnerability [04:35] {#usn-4322-1-gnutls-vulnerability-04-35}

-   1 CVEs addressed in Eoan
    -   [CVE-2020-11501](https://ubuntu.com/security/CVE-2020-11501) <!-- medium -->
-   Used all zeros instead of a random 32-byte value for key negotiation as a
    DTLS client - so breaks the security guarantees of DTLS
    (datagram-TLS). Introduced in a code change which changed a boolean OR to
    and AND without inverting the logic (ie De Morgan)


### [[USN-4323-1](https://usn.ubuntu.com/4323-1/)] Firefox vulnerabilities [05:28] {#usn-4323-1-firefox-vulnerabilities-05-28}

-   6 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-6823](https://ubuntu.com/security/CVE-2020-6823) <!-- medium -->
    -   [CVE-2020-6826](https://ubuntu.com/security/CVE-2020-6826) <!-- medium -->
    -   [CVE-2020-6825](https://ubuntu.com/security/CVE-2020-6825) <!-- medium -->
    -   [CVE-2020-6824](https://ubuntu.com/security/CVE-2020-6824) <!-- medium -->
    -   [CVE-2020-6822](https://ubuntu.com/security/CVE-2020-6822) <!-- medium -->
    -   [CVE-2020-6821](https://ubuntu.com/security/CVE-2020-6821) <!-- medium -->
-   75.0
-   Malicious extension could possibly steal auth codes from OAuth login
    sequences
-   Memory corruption -&gt; DoS, info leak or RCE via malicious website


### [[USN-4318-1](https://usn.ubuntu.com/4318-1/)] Linux kernel vulnerabilities [06:18] {#usn-4318-1-linux-kernel-vulnerabilities-06-18}

-   3 CVEs addressed in Xenial, Bionic
    -   [CVE-2020-8992](https://ubuntu.com/security/CVE-2020-8992) <!-- low -->
    -   [CVE-2020-8834](https://ubuntu.com/security/CVE-2020-8834) <!-- medium -->
    -   [CVE-2020-8428](https://ubuntu.com/security/CVE-2020-8428) <!-- medium -->
-   4.15 bionic kernel (xenial hwe)
-   3 DoS issues:
    -   Use-after-free in VFS layer -&gt; crash / info-leak
    -   PowerPC KVM guest to host state memory corruption -&gt; crash
    -   Soft-lockup via malicious ext4 image due to failure to properly validate
        the journal size


### [[USN-4319-1](https://usn.ubuntu.com/4319-1/), [USN-4325-1](https://usn.ubuntu.com/4325-1/)] Linux kernel vulnerabilities [07:22] {#usn-4319-1-usn-4325-1-linux-kernel-vulnerabilities-07-22}

-   2 CVEs addressed in Bionic, Eoan
    -   [CVE-2020-8428](https://ubuntu.com/security/CVE-2020-8428) <!-- medium -->
    -   [CVE-2019-19046](https://ubuntu.com/security/CVE-2019-19046) <!-- low -->
-   5.3 eoan kernel (bionic hwe), 5.0 bionic clouds kernel
-   VFS UAF from above
-   Memory leak in IPMI handler -&gt; DoS via memory exhaustion


### [[USN-4320-1](https://usn.ubuntu.com/4320-1/)] Linux kernel vulnerability [08:08] {#usn-4320-1-linux-kernel-vulnerability-08-08}

-   1 CVEs addressed in Trusty ESM, Xenial
    -   [CVE-2020-8428](https://ubuntu.com/security/CVE-2020-8428) <!-- medium -->
-   4.4 xenial kernel (trusty hwe)
-   VFS UAF


### [[USN-4324-1](https://usn.ubuntu.com/4324-1/)] Linux kernel vulnerabilities [08:33] {#usn-4324-1-linux-kernel-vulnerabilities-08-33}

-   2 CVEs addressed in Trusty ESM, Xenial, Bionic
    -   [CVE-2020-8992](https://ubuntu.com/security/CVE-2020-8992) <!-- low -->
    -   [CVE-2020-8428](https://ubuntu.com/security/CVE-2020-8428) <!-- medium -->
-   4.15 rapsi, snapdragon, gke, aws etc - bionic, xenial hwe, trusty esm hwe
-   VFS UAF
-   Ext4 soft-lockup issue


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe talks with Ubuntu Security Team member Emilia Torino [09:06] {#joe-talks-with-ubuntu-security-team-member-emilia-torino-09-06}


### Uncompressed OVAL data being discontinued on 1st May [24:25] {#uncompressed-oval-data-being-discontinued-on-1st-may-24-25}

-   Will still have bzip2 compressed form just removing uncompressed since is
    redundant and too large to be useful in general
-   <https://discourse.ubuntu.com/t/uncompressed-oval-data-going-away/14981>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)