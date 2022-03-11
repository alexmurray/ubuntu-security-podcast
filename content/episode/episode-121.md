+++
title = "Episode 121"
description = """
  Ubuntu One opens up two-factor authentication for all, plus we cover
  security updates for Nettle, libxml2, GRUB2, the Linux kernel and more.
  """
date = 2021-06-25T12:36:00+09:30
lastmod = 2021-06-25T12:37:10+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E121.mp3"
podcast_duration = "14:35"
podcast_bytes = 12621151
permalink = "https://ubuntusecuritypodcast.org/episode-121/"
guid = "ba13f4f352cef8bc652dfc659b77db653ad8a281e52fb9974ccf5055f0591021280d82b915d1e5689dd92c30b01347593e94a5d2e15fa3b9a91629cc867f69fc"
+++

## Overview {#overview}

Ubuntu One opens up two-factor authentication for all, plus we cover
security updates for Nettle, libxml2, GRUB2, the Linux kernel and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

73 unique CVEs addressed


### [[USN-4989-2](https://ubuntu.com/security/notices/USN-4989-2)] BlueZ vulnerabilities [00:57] {#usn-4989-2-bluez-vulnerabilities-00-57}

-   2 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2020-27153](https://ubuntu.com/security/CVE-2020-27153)
    -   [CVE-2020-26558](https://ubuntu.com/security/CVE-2020-26558)
-   [Episode 120](https://ubuntusecuritypodcast.org/episode-120/) - bluetooth spec issue around pairing takeover plus a
    possible double-free in gattool that is likely quite hard to exploit due
    to time window race between the two free() calls


### [[USN-4990-1](https://ubuntu.com/security/notices/USN-4990-1)] Nettle vulnerabilities [01:27] {#usn-4990-1-nettle-vulnerabilities-01-27}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2018-16869](https://ubuntu.com/security/CVE-2018-16869)
    -   [CVE-2021-3580](https://ubuntu.com/security/CVE-2021-3580)
-   Low level crypto library used by lots of packages - chrony, dnsmasq,
    lighttpd, qemu, squid, supertuxkart
-   Last covered just a few weeks ago in [Episode 112](https://ubuntusecuritypodcast.org/episode-112/) - is someone taking a
    closer look at this library?
-   Bleichenbacher type side-channel base on a padding oracle attack in
    endian conversion of RSA decrypted PKCS#1 v1.5 data - requires to run a
    process on the same physical core as the victim - but could then allow
    the plaintext to be extracted
-   RSA algo possible crash which is able to be triggered on decryption of
    manipulated ciphertext
-   Changes required for both of these are too intrusive to backport for the
    older releases (e.g. 16.04 ESM) so suggest to upgrade to a newer Ubuntu
    release if you are using nettle on these older releases and are concerned
    about possible attacks


### [[USN-4991-1](https://ubuntu.com/security/notices/USN-4991-1)] libxml2 vulnerabilities [03:08] {#usn-4991-1-libxml2-vulnerabilities-03-08}

-   8 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-3541](https://ubuntu.com/security/CVE-2021-3541)
    -   [CVE-2021-3537](https://ubuntu.com/security/CVE-2021-3537)
    -   [CVE-2021-3518](https://ubuntu.com/security/CVE-2021-3518)
    -   [CVE-2021-3516](https://ubuntu.com/security/CVE-2021-3516)
    -   [CVE-2021-3517](https://ubuntu.com/security/CVE-2021-3517)
    -   [CVE-2020-24977](https://ubuntu.com/security/CVE-2020-24977)
    -   [CVE-2019-20388](https://ubuntu.com/security/CVE-2019-20388)
    -   [CVE-2017-8872](https://ubuntu.com/security/CVE-2017-8872)
-   Crafted XML could possibly trigger crash -> DoS or RCE


### [[USN-4992-1](https://ubuntu.com/security/notices/USN-4992-1)] GRUB 2 vulnerabilities [03:33] {#usn-4992-1-grub-2-vulnerabilities-03-33}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-20233](https://ubuntu.com/security/CVE-2021-20233)
    -   [CVE-2021-20225](https://ubuntu.com/security/CVE-2021-20225)
    -   [CVE-2020-27779](https://ubuntu.com/security/CVE-2020-27779)
    -   [CVE-2020-27749](https://ubuntu.com/security/CVE-2020-27749)
    -   [CVE-2020-25632](https://ubuntu.com/security/CVE-2020-25632)
    -   [CVE-2020-14372](https://ubuntu.com/security/CVE-2020-14372)
-   [Episode 106](https://ubuntusecuritypodcast.org/episode-106/) - BootHole 2021 updates published to the security pocket
-   Vulns included the ability to load ACPI tables, UAF in rmmod, buffer
    overflow in command-line parser, cutmem command boot locking bypass, heap
    buffer overflow in option parser and menu rendering OOB write -> RCE --->
    all could lead to a bypass of secure boot protections
-   Includes one grub - ie. same grub efi binary used across all recent
    Ubuntu releases
-   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/GRUB2SecureBootBypass2021>


### [[USN-4993-1](https://ubuntu.com/security/notices/USN-4993-1)] Dovecot vulnerabilities [05:13] {#usn-4993-1-dovecot-vulnerabilities-05-13}

-   2 CVEs addressed in Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-33515](https://ubuntu.com/security/CVE-2021-33515)
    -   [CVE-2021-29157](https://ubuntu.com/security/CVE-2021-29157)
-   STARTTLS plaintext command injection vuln via SMTP, plus if a local
    attacker could write files to the disk, they could supply their own keys
    to validate their own supplied JSON Web Token and hence login as any
    other user and then access their emails if using OAUTH2


### [[USN-4994-1](https://ubuntu.com/security/notices/USN-4994-1), [USN-4994-2](https://ubuntu.com/security/notices/USN-4994-2)] Apache HTTP Server vulnerabilities [05:58] {#usn-4994-1-usn-4994-2-apache-http-server-vulnerabilities-05-58}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-30641](https://ubuntu.com/security/CVE-2021-30641)
    -   [CVE-2021-26691](https://ubuntu.com/security/CVE-2021-26691)
    -   [CVE-2021-26690](https://ubuntu.com/security/CVE-2021-26690)
    -   [CVE-2020-35452](https://ubuntu.com/security/CVE-2020-35452)
    -   [CVE-2020-13950](https://ubuntu.com/security/CVE-2020-13950)
-   Various DoS issues where under certain configurations an attacker could
    issue particular requests and trigger various crashes in Apache


### [[USN-4996-1](https://ubuntu.com/security/notices/USN-4996-1), [USN-4996-2](https://ubuntu.com/security/notices/USN-4996-2)] OpenEXR vulnerabilities [06:16] {#usn-4996-1-usn-4996-2-openexr-vulnerabilities-06-16}

-   5 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-3605](https://ubuntu.com/security/CVE-2021-3605)
    -   [CVE-2021-3598](https://ubuntu.com/security/CVE-2021-3598)
    -   [CVE-2021-26260](https://ubuntu.com/security/CVE-2021-26260)
    -   [CVE-2021-23215](https://ubuntu.com/security/CVE-2021-23215)
    -   [CVE-2021-20296](https://ubuntu.com/security/CVE-2021-20296)
-   Usual mix of issues for a library which is written in memory unsafe
    language and handling complex image formats etc
-   Courtesy of OSS-Fuzz


### [[USN-4995-1](https://ubuntu.com/security/notices/USN-4995-1)] Thunderbird vulnerabilities [06:48] {#usn-4995-1-thunderbird-vulnerabilities-06-48}

-   20 CVEs addressed in Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-29957](https://ubuntu.com/security/CVE-2021-29957)
    -   [CVE-2021-29956](https://ubuntu.com/security/CVE-2021-29956)
    -   [CVE-2021-29949](https://ubuntu.com/security/CVE-2021-29949)
    -   [CVE-2021-29948](https://ubuntu.com/security/CVE-2021-29948)
    -   [CVE-2021-24002](https://ubuntu.com/security/CVE-2021-24002)
    -   [CVE-2021-23995](https://ubuntu.com/security/CVE-2021-23995)
    -   [CVE-2021-23993](https://ubuntu.com/security/CVE-2021-23993)
    -   [CVE-2021-23992](https://ubuntu.com/security/CVE-2021-23992)
    -   [CVE-2021-23991](https://ubuntu.com/security/CVE-2021-23991)
    -   [CVE-2021-23984](https://ubuntu.com/security/CVE-2021-23984)
    -   [CVE-2021-29967](https://ubuntu.com/security/CVE-2021-29967)
    -   [CVE-2021-29946](https://ubuntu.com/security/CVE-2021-29946)
    -   [CVE-2021-29945](https://ubuntu.com/security/CVE-2021-29945)
    -   [CVE-2021-23999](https://ubuntu.com/security/CVE-2021-23999)
    -   [CVE-2021-23998](https://ubuntu.com/security/CVE-2021-23998)
    -   [CVE-2021-23994](https://ubuntu.com/security/CVE-2021-23994)
    -   [CVE-2021-23987](https://ubuntu.com/security/CVE-2021-23987)
    -   [CVE-2021-23982](https://ubuntu.com/security/CVE-2021-23982)
    -   [CVE-2021-23981](https://ubuntu.com/security/CVE-2021-23981)
    -   [CVE-2021-23961](https://ubuntu.com/security/CVE-2021-23961)
-   78.11.0 - usual mix of untrusted content/web framework issues inherited
    from Firefox, plus fixes for OpenPGP key handling, message signature
    TOCTTOU-type condition due to writing out signatures to disk that then
    could be replaced before being verified, UX issue in display of inline
    signed/encrypted messages with additional unprotected parts


### [[USN-4997-1](https://ubuntu.com/security/notices/USN-4997-1)] Linux kernel vulnerabilities [08:22] {#usn-4997-1-linux-kernel-vulnerabilities-08-22}

-   17 CVEs addressed in Hirsute (21.04)
    -   [CVE-2021-3543](https://ubuntu.com/security/CVE-2021-3543)
    -   [CVE-2021-3506](https://ubuntu.com/security/CVE-2021-3506)
    -   [CVE-2021-33034](https://ubuntu.com/security/CVE-2021-33034)
    -   [CVE-2021-32399](https://ubuntu.com/security/CVE-2021-32399)
    -   [CVE-2021-31829](https://ubuntu.com/security/CVE-2021-31829)
    -   [CVE-2021-31440](https://ubuntu.com/security/CVE-2021-31440)
    -   [CVE-2021-23134](https://ubuntu.com/security/CVE-2021-23134)
    -   [CVE-2021-23133](https://ubuntu.com/security/CVE-2021-23133)
    -   [CVE-2020-26147](https://ubuntu.com/security/CVE-2020-26147)
    -   [CVE-2020-26145](https://ubuntu.com/security/CVE-2020-26145)
    -   [CVE-2020-26141](https://ubuntu.com/security/CVE-2020-26141)
    -   [CVE-2020-26139](https://ubuntu.com/security/CVE-2020-26139)
    -   [CVE-2020-24588](https://ubuntu.com/security/CVE-2020-24588)
    -   [CVE-2020-24587](https://ubuntu.com/security/CVE-2020-24587)
    -   [CVE-2020-24586](https://ubuntu.com/security/CVE-2020-24586)
    -   [CVE-2021-33200](https://ubuntu.com/security/CVE-2021-33200)
    -   [CVE-2021-3609](https://ubuntu.com/security/CVE-2021-3609)
-   5.11
-   Basically the same set of fixes for all kernels, including a couple quite
    interesting ones:
    -   eBPF verifier bypass provides OOB write primitive, could allow a local
        attacker to perform code execution in the kernel -> privesc
    -   Race condition in CAN BCM networking protocol -> various UAFs -> code
        execution as well
-   Plus others -> Wifi FragAttack fixes, other eBPF verifier fixes, SCTP
    race condition -> UAF etc


### [[USN-4999-1](https://ubuntu.com/security/notices/USN-4999-1)] Linux kernel vulnerabilities [09:51] {#usn-4999-1-linux-kernel-vulnerabilities-09-51}

-   17 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-31829](https://ubuntu.com/security/CVE-2021-31829)
    -   [CVE-2021-31440](https://ubuntu.com/security/CVE-2021-31440)
    -   [CVE-2021-29155](https://ubuntu.com/security/CVE-2021-29155)
    -   [CVE-2021-23133](https://ubuntu.com/security/CVE-2021-23133)
    -   [CVE-2020-26147](https://ubuntu.com/security/CVE-2020-26147)
    -   [CVE-2020-26145](https://ubuntu.com/security/CVE-2020-26145)
    -   [CVE-2020-26141](https://ubuntu.com/security/CVE-2020-26141)
    -   [CVE-2020-26139](https://ubuntu.com/security/CVE-2020-26139)
    -   [CVE-2020-25673](https://ubuntu.com/security/CVE-2020-25673)
    -   [CVE-2020-25672](https://ubuntu.com/security/CVE-2020-25672)
    -   [CVE-2020-25671](https://ubuntu.com/security/CVE-2020-25671)
    -   [CVE-2020-25670](https://ubuntu.com/security/CVE-2020-25670)
    -   [CVE-2020-24588](https://ubuntu.com/security/CVE-2020-24588)
    -   [CVE-2020-24587](https://ubuntu.com/security/CVE-2020-24587)
    -   [CVE-2020-24586](https://ubuntu.com/security/CVE-2020-24586)
    -   [CVE-2021-33200](https://ubuntu.com/security/CVE-2021-33200)
    -   [CVE-2021-3609](https://ubuntu.com/security/CVE-2021-3609)
-   5.8 (groovy, focal hwe)


### [[USN-5000-1](https://ubuntu.com/security/notices/USN-5000-1)] Linux kernel vulnerabilities [10:08] {#usn-5000-1-linux-kernel-vulnerabilities-10-08}

-   15 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3506](https://ubuntu.com/security/CVE-2021-3506)
    -   [CVE-2021-33034](https://ubuntu.com/security/CVE-2021-33034)
    -   [CVE-2021-32399](https://ubuntu.com/security/CVE-2021-32399)
    -   [CVE-2021-31829](https://ubuntu.com/security/CVE-2021-31829)
    -   [CVE-2021-23134](https://ubuntu.com/security/CVE-2021-23134)
    -   [CVE-2021-23133](https://ubuntu.com/security/CVE-2021-23133)
    -   [CVE-2020-26147](https://ubuntu.com/security/CVE-2020-26147)
    -   [CVE-2020-26145](https://ubuntu.com/security/CVE-2020-26145)
    -   [CVE-2020-26141](https://ubuntu.com/security/CVE-2020-26141)
    -   [CVE-2020-26139](https://ubuntu.com/security/CVE-2020-26139)
    -   [CVE-2020-24588](https://ubuntu.com/security/CVE-2020-24588)
    -   [CVE-2020-24587](https://ubuntu.com/security/CVE-2020-24587)
    -   [CVE-2020-24586](https://ubuntu.com/security/CVE-2020-24586)
    -   [CVE-2021-33200](https://ubuntu.com/security/CVE-2021-33200)
    -   [CVE-2021-3609](https://ubuntu.com/security/CVE-2021-3609)
-   5.4 (focal, bionic hwe)


### [[USN-5001-1](https://ubuntu.com/security/notices/USN-5001-1)] Linux kernel (OEM) vulnerabilities {#usn-5001-1-linux-kernel--oem--vulnerabilities}

-   15 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-3543](https://ubuntu.com/security/CVE-2021-3543)
    -   [CVE-2021-3506](https://ubuntu.com/security/CVE-2021-3506)
    -   [CVE-2021-33034](https://ubuntu.com/security/CVE-2021-33034)
    -   [CVE-2021-32399](https://ubuntu.com/security/CVE-2021-32399)
    -   [CVE-2021-31440](https://ubuntu.com/security/CVE-2021-31440)
    -   [CVE-2021-23134](https://ubuntu.com/security/CVE-2021-23134)
    -   [CVE-2021-23133](https://ubuntu.com/security/CVE-2021-23133)
    -   [CVE-2020-26147](https://ubuntu.com/security/CVE-2020-26147)
    -   [CVE-2020-26145](https://ubuntu.com/security/CVE-2020-26145)
    -   [CVE-2020-26141](https://ubuntu.com/security/CVE-2020-26141)
    -   [CVE-2020-26139](https://ubuntu.com/security/CVE-2020-26139)
    -   [CVE-2020-24588](https://ubuntu.com/security/CVE-2020-24588)
    -   [CVE-2020-24587](https://ubuntu.com/security/CVE-2020-24587)
    -   [CVE-2020-24586](https://ubuntu.com/security/CVE-2020-24586)
    -   [CVE-2021-3609](https://ubuntu.com/security/CVE-2021-3609)
-   5.10


### [[USN-5002-1](https://ubuntu.com/security/notices/USN-5002-1)] Linux kernel (HWE) vulnerability [10:23] {#usn-5002-1-linux-kernel--hwe--vulnerability-10-23}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2021-3609](https://ubuntu.com/security/CVE-2021-3609)
-   5.3
-   CAN BCM


### [[USN-5003-1](https://ubuntu.com/security/notices/USN-5003-1)] Linux kernel vulnerabilities [10:35] {#usn-5003-1-linux-kernel-vulnerabilities-10-35}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-23133](https://ubuntu.com/security/CVE-2021-23133)
    -   [CVE-2021-3600](https://ubuntu.com/security/CVE-2021-3600)
    -   [CVE-2021-3609](https://ubuntu.com/security/CVE-2021-3609)
-   4.15 (bionic, xenial esm hwe, trusty esm azure)
-   CAN BCM and eBPF verifier OOB write


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### 2FA coming to Ubuntu One [11:04] {#2fa-coming-to-ubuntu-one-11-04}

-   <https://ubuntu.com/blog/two-factor-authentication-coming-to-ubuntu-one>
-   Used for access to discourse.ubuntu.com, Launchpad, ubuntuforums,
    publishers on the Snap Store etc
-   Allows to use a phone / desktop TOTP app as second factor, or Yubikey
    TOTP etc
-   Has actually been supported since 2014 but only available to a beta
    testing group plus for all Canonical employees, due to challenges in
    account recovery
    -   Since Ubuntu One purposefully doesn't store any real identifying
        information (name, email, username) we can't easily verify account
        holders if they lose the 2FA device
    -   The intent is to be robust even in the event that a users email address
        is compromised
-   Now have a comprehensive code recovery experience including printable
    backup codes and mechanisms in place to encourage users to exercise
    backup codes so that users can feel confident in using these if they need
    to (ie where did I put my backup codes again..?)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
