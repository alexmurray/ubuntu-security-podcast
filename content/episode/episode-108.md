+++
title = "Episode 108"
description = """
  This week we start preparing for 16.04 LTS to transition to Extended
  Security Maintenance, plus we look at security updates for OpenSSH, Python,
  the Linux kernel and more, as well as some currently open positions on our
  team.
  """
date = 2021-03-19T11:19:00+10:30
lastmod = 2022-05-15T18:06:14+09:30
draft = false
weight = 1052
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E108.mp3"
podcast_duration = "11:48"
podcast_bytes = 9207076
permalink = "https://ubuntusecuritypodcast.org/episode-108/"
guid = "2ed59ca5f6ca75f4929231262d6901fe2361440b506a9cc37c81784900dbf7be7c3eddbdb5af176645d4901011cba496e07a41f6689bbbed7c28f80852601598"
+++

## Overview {#overview}

This week we start preparing for 16.04 LTS to transition to Extended
Security Maintenance, plus we look at security updates for OpenSSH, Python,
the Linux kernel and more, as well as some currently open positions on our
team.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

28 unique CVEs addressed


### [[USN-4762-1](https://ubuntu.com/security/notices/USN-4762-1)] OpenSSH vulnerability [00:54] {#usn-4762-1-openssh-vulnerability-00-54}

-   1 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-28041](https://ubuntu.com/security/CVE-2021-28041) <!-- medium -->
-   Double free in ssh-agent - so only affects openssh-client and where the
    ssh-agent socket is able to be accessed by other users etc - on moderns
    systems the socket is only accessible by the owner so would need to have
    forwarded the ssh-agent to an attacker controlled host perhaps to be
    vulnerable..


### [[USN-4763-1](https://ubuntu.com/security/notices/USN-4763-1)] Pillow vulnerabilities [01:50] {#usn-4763-1-pillow-vulnerabilities-01-50}

-   8 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-27923](https://ubuntu.com/security/CVE-2021-27923) <!-- medium -->
    -   [CVE-2021-27922](https://ubuntu.com/security/CVE-2021-27922) <!-- medium -->
    -   [CVE-2021-27921](https://ubuntu.com/security/CVE-2021-27921) <!-- medium -->
    -   [CVE-2021-25293](https://ubuntu.com/security/CVE-2021-25293) <!-- medium -->
    -   [CVE-2021-25292](https://ubuntu.com/security/CVE-2021-25292) <!-- medium -->
    -   [CVE-2021-25290](https://ubuntu.com/security/CVE-2021-25290) <!-- medium -->
    -   [CVE-2021-25291](https://ubuntu.com/security/CVE-2021-25291) <!-- medium -->
    -   [CVE-2021-25289](https://ubuntu.com/security/CVE-2021-25289) <!-- medium -->
-   Python imaging library - uses C libraries like libjpeg for actual image
    handling so ends up with usual mix of C memory corruption issues - OOB
    read/write etc - crash, code exec


### [[USN-4754-3](https://ubuntu.com/security/notices/USN-4754-3)] Python vulnerabilities [02:50] {#usn-4754-3-python-vulnerabilities-02-50}

-   7 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3177](https://ubuntu.com/security/CVE-2021-3177) <!-- medium -->
    -   [CVE-2020-27619](https://ubuntu.com/security/CVE-2020-27619) <!-- low -->
    -   [CVE-2020-26116](https://ubuntu.com/security/CVE-2020-26116) <!-- medium -->
    -   [CVE-2020-8492](https://ubuntu.com/security/CVE-2020-8492) <!-- low -->
    -   [CVE-2019-20907](https://ubuntu.com/security/CVE-2019-20907) <!-- medium -->
    -   [CVE-2019-17514](https://ubuntu.com/security/CVE-2019-17514) <!-- negligible -->
    -   [CVE-2019-9674](https://ubuntu.com/security/CVE-2019-9674) <!-- low -->
-   Good illustration of main vs universe split - multiple python
    versions in different releases - 2.7 in main X+B, but universe in F+G,
    3.5 in X, 3.6 in B, 3.8 in F+G - but we still have 2.7 in universe on
    those releases as well - so this update addresses the same vulns in
    universe


### [[USN-4764-1](https://ubuntu.com/security/notices/USN-4764-1)] GLib vulnerability [04:57] {#usn-4764-1-glib-vulnerability-04-57}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-28153](https://ubuntu.com/security/CVE-2021-28153) <!-- medium -->
-   g_file_replace() on a dangling symlink would also create the target of
    the symlink as an empty file (but only if did not already exist)


### [[USN-4876-1](https://ubuntu.com/security/notices/USN-4876-1)] Linux kernel vulnerabilities [05:49] {#usn-4876-1-linux-kernel-vulnerabilities-05-49}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2021-3178](https://ubuntu.com/security/CVE-2021-3178) <!-- negligible -->
    -   [CVE-2020-36158](https://ubuntu.com/security/CVE-2020-36158) <!-- medium -->
    -   [CVE-2020-29569](https://ubuntu.com/security/CVE-2020-29569) <!-- low -->
-   4.4 (xenial + trusty esm)


### [[USN-4877-1](https://ubuntu.com/security/notices/USN-4877-1)] Linux kernel vulnerabilities {#usn-4877-1-linux-kernel-vulnerabilities}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2021-3178](https://ubuntu.com/security/CVE-2021-3178) <!-- negligible -->
    -   [CVE-2020-36158](https://ubuntu.com/security/CVE-2020-36158) <!-- medium -->
-   4.15


### [[USN-4878-1](https://ubuntu.com/security/notices/USN-4878-1)] Linux kernel vulnerabilities {#usn-4878-1-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3178](https://ubuntu.com/security/CVE-2021-3178) <!-- negligible -->
    -   [CVE-2021-3347](https://ubuntu.com/security/CVE-2021-3347) <!-- medium -->
    -   [CVE-2021-20239](https://ubuntu.com/security/CVE-2021-20239) <!-- low -->
    -   [CVE-2020-36158](https://ubuntu.com/security/CVE-2020-36158) <!-- medium -->
-   5.4


### [[USN-4879-1](https://ubuntu.com/security/notices/USN-4879-1)] Linux kernel vulnerabilities {#usn-4879-1-linux-kernel-vulnerabilities}

-   2 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-20194](https://ubuntu.com/security/CVE-2021-20194) <!-- low -->
    -   [CVE-2020-36158](https://ubuntu.com/security/CVE-2020-36158) <!-- medium -->
-   5.8
-   Marvell wifi driver buffer overflow - could be triggered by a malicious
    remote device sending a overly long ad-hoc SSID value - DoS, RCE


### [[USN-4880-1](https://ubuntu.com/security/notices/USN-4880-1)] OpenJPEG vulnerabilities [07:00] {#usn-4880-1-openjpeg-vulnerabilities-07-00}

-   5 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2020-27845](https://ubuntu.com/security/CVE-2020-27845) <!-- medium -->
    -   [CVE-2020-27841](https://ubuntu.com/security/CVE-2020-27841) <!-- low -->
    -   [CVE-2020-27824](https://ubuntu.com/security/CVE-2020-27824) <!-- medium -->
    -   [CVE-2020-27823](https://ubuntu.com/security/CVE-2020-27823) <!-- medium -->
    -   [CVE-2020-27814](https://ubuntu.com/security/CVE-2020-27814) <!-- medium -->
-   Various memory corruption issues fixed in openjpeg - DoS, RCE etc


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Preparing for 16.04 ESM transition [07:35] {#preparing-for-16-dot-04-esm-transition-07-35}

-   <https://wiki.ubuntu.com/SecurityTeam/ESM/16.04>
-   <https://ubuntu.com/blog/ubuntu-16-04-lts-upgrade-vs-esm>
-   <https://ubuntu.com/engage/16-04-ESM-webinar>
    -   Lech Sandecki and Rick Harding discuss key concerns for preparing for
        16.04 to move to ESM


### Hiring [10:17] {#hiring-10-17}


#### AppArmor Security Engineer {#apparmor-security-engineer}

-   <https://canonical.com/careers/2114847/apparmor-security-engineer-remote>


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://canonical.com/careers/2612092/ubuntu-security-engineer-remote>
    <!-- certifications -->


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>
    <!-- generalist, world wide -->


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)