+++
title = "Episode 126"
description = """
  This week Ubuntu 20.04 LTS was FIPS 140-2 certified plus the AppArmor
  project made some point releases, and we released security updates for
  Docker, Perl, c-ares, GPSd and more.
  """
date = 2021-08-13T15:04:00+09:30
lastmod = 2021-08-13T15:04:56+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E126.mp3"
podcast_duration = "12:39"
podcast_bytes = 9793922
permalink = "https://ubuntusecuritypodcast.org/episode-126/"
guid = "1cf7484a0aad93fdbfe137c475da46ef305fbc882d3d7013ecd12d939ba6f0e3580d61129d5a14f1f6137f57891a709825cb23530f87b89d7ee6cc1dc8867208"
+++

## Overview {#overview}

This week Ubuntu 20.04 LTS was FIPS 140-2 certified plus the AppArmor
project made some point releases, and we released security updates for
Docker, Perl, c-ares, GPSd and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

2 unique CVEs addressed


### [[USN-5031-1](https://ubuntu.com/security/notices/USN-5031-1)] openCryptoki vulnerability [00:54] {#usn-5031-1-opencryptoki-vulnerability-00-54}

-   Affecting Hirsute (21.04)
-   PKCS#11 daemon
-   Bug fix that was deemed to have security implications - so was going to
    be done via SRU for 21.04 but instead we published via -security to
    ensure all users received it
-   Thanks to Simon Chopin from Foundations team for preparing this update


### [[USN-5032-1](https://ubuntu.com/security/notices/USN-5032-1), [USN-5032-2](https://ubuntu.com/security/notices/USN-5032-2)] Docker vulnerabilities [02:29] {#usn-5032-1-usn-5032-2-docker-vulnerabilities-02-29}

-   Affecting Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
-   Backport of the 20.10.7 version from 21.10 to older releases - this
    includes a bunch of security fixes as well
-   Unfortunately as this is a version upgrade there are some changes that
    may break existing containers - in particular, drops support for the aufs
    storage driver so if you were using this you should upgrade your
    configuration to use the overlayfs2 storage driver instead -
    <https://docs.docker.com/storage/storagedriver/overlayfs-driver/> - this is
    a bit involved since you need to export your images, switch the storage
    driver, then load the images back one after another
-   Thanks for Lucas Kanashiro from Server team for preparing this update


### [[USN-5033-1](https://ubuntu.com/security/notices/USN-5033-1)] Perl vulnerability [03:32] {#usn-5033-1-perl-vulnerability-03-32}

-   1 CVEs addressed in Hirsute (21.04)
    -   [CVE-2021-36770](https://ubuntu.com/security/CVE-2021-36770)
-   Perl Encode library could end up running arbitrary Perl code from the
    current working directory - was introduced by a change in Encode 3.05 in
    perl 5.32/5.34 so only affected >= 21.04


### [[USN-5034-1](https://ubuntu.com/security/notices/USN-5034-1), [USN-5034-2](https://ubuntu.com/security/notices/USN-5034-2)] c-ares vulnerability [03:59] {#usn-5034-1-usn-5034-2-c-ares-vulnerability-03-59}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-3672](https://ubuntu.com/security/CVE-2021-3672)
-   Lib for async name resolution
-   Failed to properly validate certain hostnames returned from DNS servers -
    could allow a remote attacker to possibly perform domain hijacking
    attacks


### [[USN-5035-1](https://ubuntu.com/security/notices/USN-5035-1)] GPSd vulnerability [04:28] {#usn-5035-1-gpsd-vulnerability-04-28}

-   Affecting Focal (20.04 LTS), Hirsute (21.04)
-   incorrectly handled certain leap second events which would result in the
    time jumping back 1024 weeks on 2021-10-31
-   Upstream don't consider this a security issue per-se but given how
    pervasive gpsd is used for handling GPS receivers which are often used
    for high precision timing or positioning systems (self-driving cars?) -
    this could have real-world security implications
-   Backported the fix from upstream - note this only affected gpsd >= 3.20
    so older versions in 18.04 LTS etc were not affected
-   <https://lwn.net/Articles/865044/>


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### AppArmor 3.0.2 / 3.0.3 released [06:39] {#apparmor-3-dot-0-dot-2-3-dot-0-dot-3-released-06-39}

-   Includes bug fixes for various issues plus updates to the policies for
    things like PHP 8, widevine DRM in firefox, support reading of crypto
    policies for SSL-using applications
-   Expected to land 3.0.3 for Ubuntu 21.10 (impish) before FF next week
-   <https://gitlab.com/apparmor/apparmor/-/wikis/Release%5FNotes%5F3.0.2>
-   <https://gitlab.com/apparmor/apparmor/-/wikis/Release%5FNotes%5F3.0.3>


### FIPS 140-2 certification for Ubuntu 20.04 LTS! [07:44] {#fips-140-2-certification-for-ubuntu-20-dot-04-lts-07-44}

-   Enables organisations to run and develop applications and solutions for
    the US public sector and Federal government including regulated
    industries such as healthcare and finance
-   FIPS 140-2, Level 1 certification crypto modules in Ubuntu 20.04 LTS,
    including OpenSSL 1.1.1
    -   Linux kernel (crypto subsystem)
    -   OpenSSL
    -   Libgcrypt (used for LUKS for FDE so provides fully certified FDE
        implementation)
    -   StrongSwan (IPsec based VPN) \*under validation
-   Available through Ubuntu Advantage and Ubuntu Pro - On public clouds,
    Ubuntu Pro for AWS​ and ​Ubuntu Pro for Azure​ include subscriptions to
    Canonical’s FIPS 140-2 repositories, alongside expanded security and
    hardening.
-   Future is FIPS 140-3 - aligns with ISO/IEC 19790 (Security requirements
    for cryptographic modules)
    -   Existing certifications under FIPS 140-2 have a sunset date of five
        years from the validation date
    -   Canonical is preparing Ubuntu for the new certification, and intends
        to provide FIPS 140-3 certified cryptographic packages on a future
        release of Ubuntu.
-   <https://ubuntu.com/blog/fips-certification-ubuntu-20-04-lts>
-   Full list of certifications at <https://ubuntu.com/security/certifications>


### Ubuntu 20.04.3 LTS release delayed until August 26th [10:11] {#ubuntu-20-dot-04-dot-3-lts-release-delayed-until-august-26th-10-11}

-   Next point release for 20.04 LTS series - respin of install media with
    latest security updates etc - includes newest shim - this is now unified
    across various Ubuntu releases - installation media with this new version
    fails to boot on certain Dell and Sony Vaio machines - fix for this is in
    progress, plus the current RISC-V HWE kernel build PANIC's under certain
    scenarios
-   Release team decided to delay the release by 1 week to ensure these bugs
    can be fixed and new media spun up and tested adequetly before the
    release
-   <https://discourse.ubuntu.com/t/focal-fossa-20-04-3-lts-point-release-status-tracking/22948>


### Hiring [11:27] {#hiring-11-27}


#### Linux Cryptography and Security Engineer {#linux-cryptography-and-security-engineer}

-   <https://canonical.com/careers/2612092/linux-cryptography-and-security-engineer-remote>


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
