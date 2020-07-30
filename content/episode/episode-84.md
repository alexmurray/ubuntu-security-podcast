+++
title = "Episode 84"
description = """
  In a week when too many security updates are never enough, we cover the
  biggest one of them all for a while, BootHole, with an interview between
  Joe McManus and Alex Murray for some behind-the-scenes and in-depth
  coverage, plus we also look briefly at the other 100-odd CVEs for the week
  in FFmpeg, OpenJDK, LibVNCServer, ClamAV and more.
  """
date = 2020-07-30T16:00:00+09:30
lastmod = 2020-07-30T16:01:36+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E084.mp3"
podcast_duration = "25:21"
podcast_bytes = 24350838
permalink = "https://ubuntusecuritypodcast.org/episode-84/"
guid = "807af41d4da5799d608b734fc89b13875ca83d11da47e9eeeef806411511bc7b2b05cf77960cc27ac8da29566d0a69e2ddc07e9ef1e94fa7aa83068985ced03c"
+++

## Overview {#overview}

In a week when too many security updates are never enough, we cover the
biggest one of them all for a while, BootHole, with an interview between
Joe McManus and Alex Murray for some behind-the-scenes and in-depth
coverage, plus we also look briefly at the other 100-odd CVEs for the week
in FFmpeg, OpenJDK, LibVNCServer, ClamAV and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

109 unique CVEs addressed


### [[USN-4428-1](https://usn.ubuntu.com/4428-1/)] Python vulnerabilities [01:03] {#usn-4428-1-python-vulnerabilities-01-03}

-   4 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM),
    Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-14422](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14422) <!-- low -->
    -   [CVE-2019-9674](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9674) <!-- low -->
    -   [CVE-2019-20907](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20907) <!-- medium -->
    -   [CVE-2019-17514](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17514) <!-- low -->
-   CPU based DoS via infinite loop in parsing a crafted tar archive


### [[USN-4431-1](https://usn.ubuntu.com/4431-1/)] FFmpeg vulnerabilities [01:31] {#usn-4431-1-ffmpeg-vulnerabilities-01-31}

-   9 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04
    LTS)
    -   [CVE-2020-13904](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13904) <!-- medium -->
    -   [CVE-2020-12284](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12284) <!-- medium -->
    -   [CVE-2019-17542](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17542) <!-- medium -->
    -   [CVE-2019-17539](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17539) <!-- medium -->
    -   [CVE-2019-13390](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13390) <!-- low -->
    -   [CVE-2019-13312](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13312) <!-- medium -->
    -   [CVE-2019-12730](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12730) <!-- medium -->
    -   [CVE-2019-11338](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11338) <!-- low -->
    -   [CVE-2018-15822](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15822) <!-- low -->
-   UAF, use of uninitialised variables, heap buffer over-read, NULL pointer
    deref etc - most via oss-fuzz


### [[USN-4430-2](https://usn.ubuntu.com/4430-2/)] Pillow vulnerabilities [02:15] {#usn-4430-2-pillow-vulnerabilities-02-15}

-   5 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-11538](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11538) <!-- low -->
    -   [CVE-2020-10994](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10994) <!-- low -->
    -   [CVE-2020-10379](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10379) <!-- medium -->
    -   [CVE-2020-10378](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10378) <!-- low -->
    -   [CVE-2020-10177](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10177) <!-- low -->
-   2 buffer overflows in TIFF decoder


### [[USN-4433-1](https://usn.ubuntu.com/4433-1/)] OpenJDK vulnerabilities [02:33] {#usn-4433-1-openjdk-vulnerabilities-02-33}

-   8 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-14621](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14621) <!-- medium -->
    -   [CVE-2020-14593](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14593) <!-- medium -->
    -   [CVE-2020-14583](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14583) <!-- medium -->
    -   [CVE-2020-14581](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14581) <!-- medium -->
    -   [CVE-2020-14577](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14577) <!-- medium -->
    -   [CVE-2020-14573](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14573) <!-- medium -->
    -   [CVE-2020-14562](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14562) <!-- medium -->
    -   [CVE-2020-14556](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14556) <!-- medium -->
-   11.0.8 upstream release - thanks to Tiago from Foundations for preparing
    these
-   Usual mix of issues for Java - possible sandbox escape, crash in TIFF
    decoder, failure to properly validate TLS certs in some cases etc


### [[USN-4434-1](https://usn.ubuntu.com/4434-1/)] LibVNCServer vulnerabilities [03:11] {#usn-4434-1-libvncserver-vulnerabilities-03-11}

-   12 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04
    LTS)
    -   [CVE-2020-14405](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14405) <!-- medium -->
    -   [CVE-2020-14404](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14404) <!-- medium -->
    -   [CVE-2020-14403](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14403) <!-- medium -->
    -   [CVE-2020-14402](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14402) <!-- medium -->
    -   [CVE-2020-14401](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14401) <!-- medium -->
    -   [CVE-2020-14400](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14400) <!-- medium -->
    -   [CVE-2020-14399](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14399) <!-- medium -->
    -   [CVE-2020-14398](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14398) <!-- medium -->
    -   [CVE-2020-14397](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14397) <!-- medium -->
    -   [CVE-2020-14396](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14396) <!-- medium -->
    -   [CVE-2019-20840](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20840) <!-- medium -->
    -   [CVE-2019-20839](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20839) <!-- medium -->
-   2 NULL ptr deref, infinite loop -> DoS when closing connection,
    misaligned data access leading to possible crash, integer overflow, OOB
    read etc


### [[USN-4435-1](https://usn.ubuntu.com/4435-1/), [USN-4435-2](https://usn.ubuntu.com/4435-2/)] ClamAV vulnerabilities [04:03] {#usn-4435-1-usn-4435-2-clamav-vulnerabilities-04-03}

-   3 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM),
    Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-3481](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3481) <!-- medium -->
    -   [CVE-2020-3350](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3350) <!-- medium -->
    -   [CVE-2020-3327](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3327) <!-- medium -->
-   0.102.4 release
-   NULL ptr deref on crafted EGG, race condition where could replace target
    dir with a symlink and get clamscan to remove that target, OOB read in
    ARJ decoder (previous fix [Episode 76](https://ubuntusecuritypodcast.org/episode-76/) was incomplete)


### [[USN-4436-1](https://usn.ubuntu.com/4436-1/), [USN-4436-2](https://usn.ubuntu.com/4436-2/)] librsvg vulnerabilities / regression [04:55] {#usn-4436-1-usn-4436-2-librsvg-vulnerabilities-regression-04-55}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2019-20446](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20446) <!-- low -->
    -   [CVE-2017-11464](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-11464) <!-- low -->
-   Update caused a regression since it removed a symbol - backed out,
    waiting for a more complete fix from upstream


### [[USN-4437-1](https://usn.ubuntu.com/4437-1/)] libslirp vulnerability [05:26] {#usn-4437-1-libslirp-vulnerability-05-26}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-10756](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10756) <!-- medium -->
-   OOB read in icmp6 echo reply - guest leaks contents of host memory  ->
    info disclosure


### [[USN-4438-1](https://usn.ubuntu.com/4438-1/)] SQLite vulnerability [05:45] {#usn-4438-1-sqlite-vulnerability-05-45}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-15358](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15358) <!-- medium -->
-   Heap buffer overflow


### [[USN-4439-1](https://usn.ubuntu.com/4439-1/)] Linux kernel vulnerabilities [05:51] {#usn-4439-1-linux-kernel-vulnerabilities-05-51}

-   14 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-15780](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15780) <!-- medium -->
    -   [CVE-2019-20908](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20908) <!-- medium -->
    -   [CVE-2019-12380](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12380) <!-- negligible -->
    -   [CVE-2020-13974](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13974) <!-- low -->
    -   [CVE-2020-11935](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11935) <!-- medium -->
    -   [CVE-2020-10768](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10768) <!-- medium -->
    -   [CVE-2020-10767](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10767) <!-- medium -->
    -   [CVE-2020-10766](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10766) <!-- medium -->
    -   [CVE-2020-10757](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10757) <!-- medium -->
    -   [CVE-2020-10732](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10732) <!-- low -->
    -   [CVE-2019-20810](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20810) <!-- low -->
    -   [CVE-2019-19462](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19462) <!-- medium -->
    -   [CVE-2019-19036](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19036) <!-- low -->
    -   [CVE-2019-16089](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16089) <!-- low -->
    -   5.0 (gke/oem)


### [[USN-4440-1](https://usn.ubuntu.com/4440-1/)] Linux kernel vulnerabilities [06:05] {#usn-4440-1-linux-kernel-vulnerabilities-06-05}

-   12 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-15780](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15780) <!-- medium -->
    -   [CVE-2020-13974](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13974) <!-- low -->
    -   [CVE-2020-11935](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11935) <!-- medium -->
    -   [CVE-2020-10768](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10768) <!-- medium -->
    -   [CVE-2020-10767](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10767) <!-- medium -->
    -   [CVE-2020-10766](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10766) <!-- medium -->
    -   [CVE-2020-10757](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10757) <!-- medium -->
    -   [CVE-2020-10732](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10732) <!-- low -->
    -   [CVE-2019-20908](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20908) <!-- medium -->
    -   [CVE-2019-20810](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20810) <!-- low -->
    -   [CVE-2019-19462](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19462) <!-- medium -->
    -   [CVE-2019-16089](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16089) <!-- low -->
-   5.3 (hwe / azure / gcp / gke / oracle)


### [[USN-4441-1](https://usn.ubuntu.com/4441-1/)] MySQL vulnerabilities [06:17] {#usn-4441-1-mysql-vulnerabilities-06-17}

-   30 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04
    LTS)
    -   [CVE-2020-14702](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14702) <!-- medium -->
    -   [CVE-2020-14697](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14697) <!-- medium -->
    -   [CVE-2020-14680](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14680) <!-- medium -->
    -   [CVE-2020-14678](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14678) <!-- medium -->
    -   [CVE-2020-14663](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14663) <!-- medium -->
    -   [CVE-2020-14656](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14656) <!-- medium -->
    -   [CVE-2020-14654](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14654) <!-- medium -->
    -   [CVE-2020-14651](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14651) <!-- medium -->
    -   [CVE-2020-14643](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14643) <!-- medium -->
    -   [CVE-2020-14641](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14641) <!-- medium -->
    -   [CVE-2020-14634](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14634) <!-- medium -->
    -   [CVE-2020-14633](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14633) <!-- medium -->
    -   [CVE-2020-14632](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14632) <!-- medium -->
    -   [CVE-2020-14631](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14631) <!-- medium -->
    -   [CVE-2020-14624](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14624) <!-- medium -->
    -   [CVE-2020-14623](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14623) <!-- medium -->
    -   [CVE-2020-14620](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14620) <!-- medium -->
    -   [CVE-2020-14619](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14619) <!-- medium -->
    -   [CVE-2020-14597](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14597) <!-- medium -->
    -   [CVE-2020-14591](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14591) <!-- medium -->
    -   [CVE-2020-14586](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14586) <!-- medium -->
    -   [CVE-2020-14576](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14576) <!-- medium -->
    -   [CVE-2020-14575](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14575) <!-- medium -->
    -   [CVE-2020-14568](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14568) <!-- medium -->
    -   [CVE-2020-14559](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14559) <!-- medium -->
    -   [CVE-2020-14553](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14553) <!-- medium -->
    -   [CVE-2020-14550](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14550) <!-- medium -->
    -   [CVE-2020-14547](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14547) <!-- medium -->
    -   [CVE-2020-14540](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14540) <!-- medium -->
    -   [CVE-2020-14539](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14539) <!-- medium -->
-   8.0.21 (focal)
-   5.7.31 (bionic / xenial)


### [[USN-4442-1](https://usn.ubuntu.com/4442-1/)] Sympa vulnerabilities [06:54] {#usn-4442-1-sympa-vulnerabilities-06-54}

-   3 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2020-10936](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10936) <!-- high -->
    -   [CVE-2018-1000671](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000671) <!-- medium -->
    -   [CVE-2018-1000550](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000550) <!-- medium -->
-   Mailing list manager - possible privesc via injection of environment
    variables to run setuid wrappers arbitrary code


### [[USN-4443-1](https://usn.ubuntu.com/4443-1/)] Firefox vulnerabilities [07:27] {#usn-4443-1-firefox-vulnerabilities-07-27}

-   9 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04
    LTS)
    -   [CVE-2020-15655](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15655) <!-- medium -->
    -   [CVE-2020-15659](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15659) <!-- medium -->
    -   [CVE-2020-15658](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15658) <!-- low -->
    -   [CVE-2020-15656](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15656) <!-- medium -->
    -   [CVE-2020-15654](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15654) <!-- low -->
    -   [CVE-2020-15653](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15653) <!-- medium -->
    -   [CVE-2020-15652](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15652) <!-- medium -->
    -   [CVE-2020-6514](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6514) <!-- medium -->
    -   [CVE-2020-6463](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6463) <!-- medium -->
-   79.0


### [[USN-4432-1](https://usn.ubuntu.com/4432-1/)] GRUB 2 vulnerabilities [07:39] {#usn-4432-1-grub-2-vulnerabilities-07-39}

-   8 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-15707](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15707) <!-- medium -->
    -   [CVE-2020-15705](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15705) <!-- medium -->
    -   [CVE-2020-14308](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14308) <!-- high -->
    -   [CVE-2020-14311](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14311) <!-- high -->
    -   [CVE-2020-14310](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14310) <!-- high -->
    -   [CVE-2020-14309](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14309) <!-- high -->
    -   [CVE-2020-15706](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15706) <!-- high -->
    -   [CVE-2020-10713](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10713) <!-- high -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe take an in-depth and behind-the-scenes look at BootHole / GRUB 2 [08:14] {#alex-and-joe-take-an-in-depth-and-behind-the-scenes-look-at-boothole-grub-2-08-14}

-   <https://ubuntu.com/blog/mitigating-boothole-theres-a-hole-in-the-boot-cve-2020-10713-and-related-vulnerabilities>
-   <https://eclypsium.com/2020/07/29/theres-a-hole-in-the-boot/>
-   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/GRUB2SecureBootBypass>


### Alex hints at pending future secureboot-db update [23:55] {#alex-hints-at-pending-future-secureboot-db-update-23-55}

-   <https://uefi.org/revocationlistfile>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
