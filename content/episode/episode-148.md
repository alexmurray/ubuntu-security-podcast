+++
title = "Episode 148"
description = """
  It's main vs universe as we take a deep dive into the Ubuntu archive and
  look at these components plus what goes into each and how the security team
  goes about reviewing software destined for main, plus we cover security
  updates for Django, BlueZ, NVIDIA Graphics Drivers and more.
  """
date = 2022-02-11T14:28:00+10:30
lastmod = 2022-02-11T14:29:48+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E148.mp3"
podcast_duration = "60:51"
podcast_bytes = 37491864
permalink = "https://ubuntusecuritypodcast.org/episode-148/"
guid = "ce857e7d7a09a0b56595d872e5549a8deb4fd7f8ac0327fc458e59e1bed0a03d97610c76b48f88a9c2a1fd70a8db50a1d95551bd38d0ae4fd521c76e2aee937f"
+++

## Overview {#overview}

It's main vs universe as we take a deep dive into the Ubuntu archive and
look at these components plus what goes into each and how the security team
goes about reviewing software destined for main, plus we cover security
updates for Django, BlueZ, NVIDIA Graphics Drivers and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

53 unique CVEs addressed


### [[USN-5265-1](https://ubuntu.com/security/notices/USN-5265-1)] Linux kernel vulnerabilities [01:19] {#usn-5265-1-linux-kernel-vulnerabilities-01-19}

-   10 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-42739](https://ubuntu.com/security/CVE-2021-42739) <!-- medium -->
    -   [CVE-2021-42327](https://ubuntu.com/security/CVE-2021-42327) <!-- low -->
    -   [CVE-2021-4202](https://ubuntu.com/security/CVE-2021-4202) <!-- medium -->
    -   [CVE-2021-4093](https://ubuntu.com/security/CVE-2021-4093) <!-- medium -->
    -   [CVE-2021-4090](https://ubuntu.com/security/CVE-2021-4090) <!-- medium -->
    -   [CVE-2021-4001](https://ubuntu.com/security/CVE-2021-4001) <!-- medium -->
    -   [CVE-2021-3772](https://ubuntu.com/security/CVE-2021-3772) <!-- low -->
    -   [CVE-2021-3752](https://ubuntu.com/security/CVE-2021-3752) <!-- medium -->
    -   [CVE-2021-3640](https://ubuntu.com/security/CVE-2021-3640) <!-- medium -->
    -   [CVE-2020-27820](https://ubuntu.com/security/CVE-2020-27820) <!-- low -->
-   5.13 impish + focal hwe + 5.11 focal cloud kernel (gcp/aws/oracle/azure)


### [[USN-5266-1](https://ubuntu.com/security/notices/USN-5266-1)] Linux kernel (GKE) vulnerabilities {#usn-5266-1-linux-kernel--gke--vulnerabilities}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-42739](https://ubuntu.com/security/CVE-2021-42739) <!-- medium -->
    -   [CVE-2021-22600](https://ubuntu.com/security/CVE-2021-22600) <!-- medium -->
-   5.4 gke


### [[USN-5267-1](https://ubuntu.com/security/notices/USN-5267-1)] Linux kernel vulnerabilities {#usn-5267-1-linux-kernel-vulnerabilities}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-42739](https://ubuntu.com/security/CVE-2021-42739) <!-- medium -->
    -   [CVE-2021-3752](https://ubuntu.com/security/CVE-2021-3752) <!-- medium -->
    -   [CVE-2021-3640](https://ubuntu.com/security/CVE-2021-3640) <!-- medium -->
-   5.4 focal + bionic hwe


### [[USN-5268-1](https://ubuntu.com/security/notices/USN-5268-1)] Linux kernel vulnerabilities {#usn-5268-1-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-42739](https://ubuntu.com/security/CVE-2021-42739) <!-- medium -->
    -   [CVE-2021-3752](https://ubuntu.com/security/CVE-2021-3752) <!-- medium -->
    -   [CVE-2021-3640](https://ubuntu.com/security/CVE-2021-3640) <!-- medium -->
    -   [CVE-2021-20322](https://ubuntu.com/security/CVE-2021-20322) <!-- medium -->
-   4.15 bionic + 16.04 hwe + 14.04 azure


### [[USN-5260-3](https://ubuntu.com/security/notices/USN-5260-3)] Samba vulnerability [02:29] {#usn-5260-3-samba-vulnerability-02-29}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2021-44142](https://ubuntu.com/security/CVE-2021-44142) <!-- high -->
-   [Episode 147](https://ubuntusecuritypodcast.org/episode-147/) - `vfs_fruit` RCE


### [[USN-5269-1](https://ubuntu.com/security/notices/USN-5269-1), [USN-5269-2](https://ubuntu.com/security/notices/USN-5269-2)] Django vulnerabilities [03:00] {#usn-5269-1-usn-5269-2-django-vulnerabilities-03-00}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-23833](https://ubuntu.com/security/CVE-2022-23833) <!-- medium -->
    -   [CVE-2022-22818](https://ubuntu.com/security/CVE-2022-22818) <!-- medium -->
-   XSS via incorrect handling of the `{% debug %}` template tag - failed to
    properly encode the current context
-   Possible infinite loop when parsing multipart forms as used when doing
    file uploads


### [[USN-5270-1](https://ubuntu.com/security/notices/USN-5270-1), [USN-5270-2](https://ubuntu.com/security/notices/USN-5270-2)] MySQL vulnerabilities [03:38] {#usn-5270-1-usn-5270-2-mysql-vulnerabilities-03-38}

-   26 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-21379](https://ubuntu.com/security/CVE-2022-21379) <!-- medium -->
    -   [CVE-2022-21378](https://ubuntu.com/security/CVE-2022-21378) <!-- medium -->
    -   [CVE-2022-21374](https://ubuntu.com/security/CVE-2022-21374) <!-- medium -->
    -   [CVE-2022-21372](https://ubuntu.com/security/CVE-2022-21372) <!-- medium -->
    -   [CVE-2022-21370](https://ubuntu.com/security/CVE-2022-21370) <!-- medium -->
    -   [CVE-2022-21368](https://ubuntu.com/security/CVE-2022-21368) <!-- medium -->
    -   [CVE-2022-21367](https://ubuntu.com/security/CVE-2022-21367) <!-- medium -->
    -   [CVE-2022-21362](https://ubuntu.com/security/CVE-2022-21362) <!-- medium -->
    -   [CVE-2022-21358](https://ubuntu.com/security/CVE-2022-21358) <!-- medium -->
    -   [CVE-2022-21351](https://ubuntu.com/security/CVE-2022-21351) <!-- medium -->
    -   [CVE-2022-21348](https://ubuntu.com/security/CVE-2022-21348) <!-- medium -->
    -   [CVE-2022-21344](https://ubuntu.com/security/CVE-2022-21344) <!-- medium -->
    -   [CVE-2022-21342](https://ubuntu.com/security/CVE-2022-21342) <!-- medium -->
    -   [CVE-2022-21339](https://ubuntu.com/security/CVE-2022-21339) <!-- medium -->
    -   [CVE-2022-21304](https://ubuntu.com/security/CVE-2022-21304) <!-- medium -->
    -   [CVE-2022-21303](https://ubuntu.com/security/CVE-2022-21303) <!-- medium -->
    -   [CVE-2022-21302](https://ubuntu.com/security/CVE-2022-21302) <!-- medium -->
    -   [CVE-2022-21301](https://ubuntu.com/security/CVE-2022-21301) <!-- medium -->
    -   [CVE-2022-21270](https://ubuntu.com/security/CVE-2022-21270) <!-- medium -->
    -   [CVE-2022-21265](https://ubuntu.com/security/CVE-2022-21265) <!-- medium -->
    -   [CVE-2022-21264](https://ubuntu.com/security/CVE-2022-21264) <!-- medium -->
    -   [CVE-2022-21256](https://ubuntu.com/security/CVE-2022-21256) <!-- medium -->
    -   [CVE-2022-21254](https://ubuntu.com/security/CVE-2022-21254) <!-- medium -->
    -   [CVE-2022-21253](https://ubuntu.com/security/CVE-2022-21253) <!-- medium -->
    -   [CVE-2022-21249](https://ubuntu.com/security/CVE-2022-21249) <!-- medium -->
    -   [CVE-2022-21245](https://ubuntu.com/security/CVE-2022-21245) <!-- medium -->
-   6 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-21367](https://ubuntu.com/security/CVE-2022-21367) <!-- medium -->
    -   [CVE-2022-21344](https://ubuntu.com/security/CVE-2022-21344) <!-- medium -->
    -   [CVE-2022-21304](https://ubuntu.com/security/CVE-2022-21304) <!-- medium -->
    -   [CVE-2022-21303](https://ubuntu.com/security/CVE-2022-21303) <!-- medium -->
    -   [CVE-2022-21270](https://ubuntu.com/security/CVE-2022-21270) <!-- medium -->
    -   [CVE-2022-21245](https://ubuntu.com/security/CVE-2022-21245) <!-- medium -->
-   8.0.23 for Ubuntu 20.04 LTS and 21.10
-   5.7.37 for Ubuntu 18.04 LTS and Ubuntu 16.04 ESM


### [[USN-5030-2](https://ubuntu.com/security/notices/USN-5030-2)] Perl DBI module vulnerabilities [04:11] {#usn-5030-2-perl-dbi-module-vulnerabilities-04-11}

-   2 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2020-14393](https://ubuntu.com/security/CVE-2020-14393) <!-- low -->
    -   [CVE-2014-10402](https://ubuntu.com/security/CVE-2014-10402) <!-- medium -->
-   [Episode 125](https://ubuntusecuritypodcast.org/episode-125/)


### [[USN-5262-1](https://ubuntu.com/security/notices/USN-5262-1)] GPT fdisk vulnerabilities {#usn-5262-1-gpt-fdisk-vulnerabilities}

-   2 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-0308](https://ubuntu.com/security/CVE-2021-0308) <!-- low -->
    -   [CVE-2020-0256](https://ubuntu.com/security/CVE-2020-0256) <!-- low -->


### [[USN-5264-1](https://ubuntu.com/security/notices/USN-5264-1)] Graphviz vulnerabilities {#usn-5264-1-graphviz-vulnerabilities}

-   3 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2020-18032](https://ubuntu.com/security/CVE-2020-18032) <!-- medium -->
    -   [CVE-2019-11023](https://ubuntu.com/security/CVE-2019-11023) <!-- low -->
    -   [CVE-2018-10196](https://ubuntu.com/security/CVE-2018-10196) <!-- low -->


### [[USN-5275-1](https://ubuntu.com/security/notices/USN-5275-1)] BlueZ vulnerability [04:25] {#usn-5275-1-bluez-vulnerability-04-25}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-0204](https://ubuntu.com/security/CVE-2022-0204) <!-- medium -->
-   Heap buffer overflow in gatt-server implementation since failed to check
    lengths of incoming packets - could allow a remote attacker to DoS or RCE


### [[USN-4754-5](https://ubuntu.com/security/notices/USN-4754-5)] Python vulnerability [04:53] {#usn-4754-5-python-vulnerability-04-53}

-   2 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2020-27619](https://ubuntu.com/security/CVE-2020-27619) <!-- low -->
    -   [CVE-2021-3177](https://ubuntu.com/security/CVE-2021-3177) <!-- medium -->
-   Reinstate fix for CVE-2021-3177 which was previously removed due to a
    regression


### [[USN-5276-1](https://ubuntu.com/security/notices/USN-5276-1)] NVIDIA graphics drivers vulnerabilities [05:15] {#usn-5276-1-nvidia-graphics-drivers-vulnerabilities-05-15}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-21814](https://ubuntu.com/security/CVE-2022-21814) <!-- medium -->
    -   [CVE-2022-21813](https://ubuntu.com/security/CVE-2022-21813) <!-- medium -->
-   Various issues around handling of permissions within the kernel - could
    allow a local user to write to protected memory in the kernel and DoS
    machine


### [[USN-5267-2](https://ubuntu.com/security/notices/USN-5267-2)] Linux kernel regression [05:52] {#usn-5267-2-linux-kernel-regression-05-52}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-42739](https://ubuntu.com/security/CVE-2021-42739) <!-- medium -->
    -   [CVE-2021-3752](https://ubuntu.com/security/CVE-2021-3752) <!-- medium -->
    -   [CVE-2021-3640](https://ubuntu.com/security/CVE-2021-3640) <!-- medium -->
-   5.4 focal + bionic hwe
-   Inadvertent DoS when accessing CIFS shares - kernel hang - fixed by
    reverting various CIFS related patches


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Main vs Universe with Camila {#main-vs-universe-with-camila}

-   Camila discusses the different software repository components in Ubuntu -
    what they are, how they compare and what you can expect to find in each,
    as well as the process for moving packages from universe to main to be
    supported by Canonical, in particular focusing on the security team's
    role in performing security audits of each software package along the
    way.


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)