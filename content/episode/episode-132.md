+++
title = "Episode 132"
description = """
  Extended Security Maintenance gets an extension, Linux disk encryption and
  authentication goes under the microscope and we cover security updates for
  libgcrypt, the Linux kernel, Python, and more.
  """
date = 2021-09-24T15:05:00+09:30
lastmod = 2021-09-24T15:05:59+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E132.mp3"
podcast_duration = "17:08"
podcast_bytes = 13439023
permalink = "https://ubuntusecuritypodcast.org/episode-132/"
guid = "aecdd8cd6e00592eb78450c30378b1b6a092bce950126ea400aebf107c9f2443264d55fcd2ec1065363edac0522e75e17b8af76f4478df7ddb8bc75fe2ce4f9b"
+++

## Overview {#overview}

Extended Security Maintenance gets an extension, Linux disk encryption and
authentication goes under the microscope and we cover security updates for
libgcrypt, the Linux kernel, Python, and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

20 unique CVEs addressed


### [[USN-5078-2](https://ubuntu.com/security/notices/USN-5078-2)] Squashfs-Tools vulnerabilities [01:02] {#usn-5078-2-squashfs-tools-vulnerabilities-01-02}

-   2 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-41072](https://ubuntu.com/security/CVE-2021-41072) <!-- medium -->
    -   [CVE-2021-40153](https://ubuntu.com/security/CVE-2021-40153) <!-- medium -->
-   [Episode 131](https://ubuntusecuritypodcast.org/episode-131/)


### [[USN-5080-1](https://ubuntu.com/security/notices/USN-5080-1), [USN-5080-2](https://ubuntu.com/security/notices/USN-5080-2)] Libgcrypt vulnerabilities [01:43] {#usn-5080-1-usn-5080-2-libgcrypt-vulnerabilities-01-43}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-40528](https://ubuntu.com/security/CVE-2021-40528) <!-- medium -->
    -   [CVE-2021-33560](https://ubuntu.com/security/CVE-2021-33560) <!-- low -->
-   Side-channel attacks against the various ElGamal implementations in
    OpenPGP - <https://eprint.iacr.org/2021/923> - researchers from IBM
    Research Europe
    -   Patent free public key encryption scheme - popular in OpenPGP - 1 in 6
        registered OpenPGP keys have an ElGamal subkey
-   Various implementations of ElGamal are used in different OpenPGP
    implementations - Go stdlib, Crypto++ and gcrypt
-   libgcrypt has previously had other side-channel vulns found and was used
    in the development of [FLUSH+RELOAD attack](https://www.usenix.org/system/files/conference/usenixsecurity14/sec14-paper-yarom.pdf) against GnuPG
-   This attack exploits the different configurations used in the various
    implementations to use timing differences to be able to recover plaintext
-   Fixed to remove support for smaller key lengths and add exponent blinding
    (combining the exponent with randomness to avoid it being inferred by
    timing analysis)


### [[USN-5071-2](https://ubuntu.com/security/notices/USN-5071-2)] Linux kernel (HWE) vulnerabilities [04:11] {#usn-5071-2-linux-kernel--hwe--vulnerabilities-04-11}

-   5 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2021-3612](https://ubuntu.com/security/CVE-2021-3612) <!-- medium -->
    -   [CVE-2021-22543](https://ubuntu.com/security/CVE-2021-22543) <!-- medium -->
    -   [CVE-2020-36311](https://ubuntu.com/security/CVE-2020-36311) <!-- medium -->
    -   [CVE-2021-3653](https://ubuntu.com/security/CVE-2021-3653) <!-- high -->
    -   [CVE-2021-3656](https://ubuntu.com/security/CVE-2021-3656) <!-- high -->
-   AMD nested virtualisation vulns ([Episode 130](https://ubuntusecuritypodcast.org/episode-130/), [Episode 131](https://ubuntusecuritypodcast.org/episode-131/))
-   2 other KVM vulns - UAF
-   OOB write in joystick subsystem via a malicious `ioctl()`
    -   requires a joystick device to be present
    -   snaps joystick interface is not auto-connected by default


### [[USN-5071-3](https://ubuntu.com/security/notices/USN-5071-3)] Linux kernel (Raspberry Pi) vulnerabilities {#usn-5071-3-linux-kernel--raspberry-pi--vulnerabilities}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3612](https://ubuntu.com/security/CVE-2021-3612) <!-- medium -->
    -   [CVE-2021-22543](https://ubuntu.com/security/CVE-2021-22543) <!-- medium -->


### [[USN-5082-1](https://ubuntu.com/security/notices/USN-5082-1)] Linux kernel (OEM) vulnerabilities {#usn-5082-1-linux-kernel--oem--vulnerabilities}

-   3 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-3609](https://ubuntu.com/security/CVE-2021-3609) <!-- high -->
    -   [CVE-2021-3653](https://ubuntu.com/security/CVE-2021-3653) <!-- high -->
    -   [CVE-2021-3656](https://ubuntu.com/security/CVE-2021-3656) <!-- high -->
-   CAN BCM UAF ([Episode 121](https://ubuntusecuritypodcast.org/episode-121/)), AMD nested virtualisation


### [[USN-5073-2](https://ubuntu.com/security/notices/USN-5073-2)] Linux kernel (GCP) vulnerabilities {#usn-5073-2-linux-kernel--gcp--vulnerabilities}

-   5 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-38160](https://ubuntu.com/security/CVE-2021-38160) <!-- medium -->
    -   [CVE-2021-3612](https://ubuntu.com/security/CVE-2021-3612) <!-- medium -->
    -   [CVE-2021-34693](https://ubuntu.com/security/CVE-2021-34693) <!-- low -->
    -   [CVE-2021-3653](https://ubuntu.com/security/CVE-2021-3653) <!-- high -->
    -   [CVE-2021-3656](https://ubuntu.com/security/CVE-2021-3656) <!-- high -->


### [[USN-5073-3](https://ubuntu.com/security/notices/USN-5073-3)] Linux kernel (Raspberry Pi) vulnerabilities {#usn-5073-3-linux-kernel--raspberry-pi--vulnerabilities}

-   3 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2021-38160](https://ubuntu.com/security/CVE-2021-38160) <!-- medium -->
    -   [CVE-2021-3612](https://ubuntu.com/security/CVE-2021-3612) <!-- medium -->
    -   [CVE-2021-34693](https://ubuntu.com/security/CVE-2021-34693) <!-- low -->


### [[USN-5079-3](https://ubuntu.com/security/notices/USN-5079-3)] curl vulnerabilities [06:34] {#usn-5079-3-curl-vulnerabilities-06-34}

-   3 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2021-22947](https://ubuntu.com/security/CVE-2021-22947) <!-- medium -->
    -   [CVE-2021-22946](https://ubuntu.com/security/CVE-2021-22946) <!-- medium -->
    -   [CVE-2021-22945](https://ubuntu.com/security/CVE-2021-22945) <!-- medium -->
-   [Episode 131](https://ubuntusecuritypodcast.org/episode-131/)


### [[USN-5081-1](https://ubuntu.com/security/notices/USN-5081-1)] Qt vulnerabilities [06:49] {#usn-5081-1-qt-vulnerabilities-06-49}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2021-38593](https://ubuntu.com/security/CVE-2021-38593) <!-- medium -->
    -   [CVE-2020-17507](https://ubuntu.com/security/CVE-2020-17507) <!-- low -->
-   2 issues in graphics / image handling
    -   crafted XBM trigger OOB read -> crash
    -   OOB write when rendering SVG or other crafted vector content


### [[USN-5083-1](https://ubuntu.com/security/notices/USN-5083-1)] Python vulnerabilities [07:22] {#usn-5083-1-python-vulnerabilities-07-22}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2021-3737](https://ubuntu.com/security/CVE-2021-3737) <!-- medium -->
    -   [CVE-2021-3733](https://ubuntu.com/security/CVE-2021-3733) <!-- medium -->
-   ReDOS - a malicious HTTP server which would send a crafted response for
    BasicAuth which would cause high CPU usage in trying to match the header
    value via a regex - fixed to use a simpler regex
-   Malicious server could cause a client to hang even if the client had set
    a timeout - server sends a '100 Continue' response and the client would
    sit there waiting to receive more input which would never arrive (since
    server is malicious)


### [[USN-5084-1](https://ubuntu.com/security/notices/USN-5084-1)] LibTIFF vulnerability [08:32] {#usn-5084-1-libtiff-vulnerability-08-32}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-19143](https://ubuntu.com/security/CVE-2020-19143) <!-- medium -->
-   Buffer overflow via crafted TIFF file


### [[USN-5079-4](https://ubuntu.com/security/notices/USN-5079-4)] curl regression [08:42] {#usn-5079-4-curl-regression-08-42}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2021-22947](https://ubuntu.com/security/CVE-2021-22947) <!-- medium -->
    -   [CVE-2021-22946](https://ubuntu.com/security/CVE-2021-22946) <!-- medium -->
-   Mistake in backporting patch would cause STARTTLS to fail when used for
    SMTP only - thanks for tuaris for metioning this on
    <https://ubuntuforums.org/showthread.php?t=2467177> but next time please
    file a LP bug directly as you will get our attention much faster (and
    more reliably)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Authenticated boot and disk encryption on Linux [09:28] {#authenticated-boot-and-disk-encryption-on-linux-09-28}

-   <http://0pointer.net/blog/authenticated-boot-and-disk-encryption-on-linux.html>
-   systemd focused review of existing FDE in general purpose Linux distros
    with pointers to proposed mechanisms to implement authenticated FDE etc
    -   Laments lack of authenticated initrd, use of TPMs etc
    -   Proposal is quite different than traditional distros - immutable,
        authenticated `/usr`, encrypted, authenticated `/etc`, `/var` and per-user
        `/home/user` encryption using their own login password
-   [UC20 already does TPM backed FDE with authentication](https://ubuntu.com/blog/ubuntu-core-20-secures-linux-for-iot)


### Ubuntu 14.04 and 16.04 ESM extended [14:16] {#ubuntu-14-dot-04-and-16-dot-04-esm-extended-14-16}

-   <https://ubuntu.com/blog/ubuntu-14-04-and-16-04-lifecycle-extended-to-ten-years>
-   Total of 10 years of support (5 LTS, 5 ESM)

| RELEASE                      | RELEASE DATE | END OF LIFE\*               |
|------------------------------|--------------|-----------------------------|
| Ubuntu 14.04 (Trusty Tahr)   | April 2014   | April 2024(from April 2022) |
| Ubuntu 16.04 (Xenial Xerus)  | April 2016   | April 2026(from April 2024) |
| Ubuntu 18.04 (Bionic Beaver) | April 2018   | April 2028(unchanged)       |
| Ubuntu 20.04 (Focal Fossa)   | April 2020   | April 2030(unchanged)       |

-   Use extra time to plan upgrades


### Hiring [15:48] {#hiring-15-48}


#### Linux Cryptography and Security Engineer {#linux-cryptography-and-security-engineer}

-   <https://canonical.com/careers/2612092/linux-cryptography-and-security-engineer-remote>


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>


#### Security Product Manager {#security-product-manager}

-   <https://canonical.com/careers/2278145/security-product-manager-remote>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
