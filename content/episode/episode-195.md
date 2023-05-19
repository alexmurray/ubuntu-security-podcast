+++
title = "Episode 195"
description = """
  Alex and Camila discuss security update management strategies after a recent
  outage at Datadog was attributed to a security update for systemd on Ubuntu,
  plus we look at security vulnerabilities in the Linux kernel, OpenStack,
  Synapse, OpenJDK and more.
  """
date = 2023-05-19T09:39:00+09:30
lastmod = 2023-05-19T09:41:55+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E195.mp3"
podcast_duration = 1618
podcast_bytes = 27273549
permalink = "https://ubuntusecuritypodcast.org/episode-195/"
guid = "a08dd8d12c01bc0652459f58bb61c6e52a0ec5b82606c802c6634c05c951ff17eb91d3fe5a84c58a3c02d4b6dc0dc5786c401f358f087623cc3b8f71279fb2c3"
+++

## Overview {#overview}

Alex and Camila discuss security update management strategies after a recent
outage at Datadog was attributed to a security update for systemd on Ubuntu,
plus we look at security vulnerabilities in the Linux kernel, OpenStack,
Synapse, OpenJDK and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

66 unique CVEs addressed


### [[USN-6069-1](https://ubuntu.com/security/notices/USN-6069-1)] Linux kernel (Raspberry Pi) vulnerability (01:01) {#usn-6069-1-linux-kernel--raspberry-pi--vulnerability--01-01}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2023-1829](https://ubuntu.com/security/CVE-2023-1829) <!-- high -->
-   5.4 raspi in 20.04 / 18.04 HWE
-   [[USN-6058-1] Linux kernel vulnerability from Episode 194]({{< relref "episode-194#usn-6058-1-linux-kernel-vulnerability--05-45" >}})
-   UAF in Traffic-Control Index (TCINDEX) filter from April this year - fix
    simply removes this classifier from the kernel


### [[USN-6070-1](https://ubuntu.com/security/notices/USN-6070-1)] Linux kernel vulnerabilities (01:37) {#usn-6070-1-linux-kernel-vulnerabilities--01-37}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-1872](https://ubuntu.com/security/CVE-2023-1872) <!-- medium -->
    -   [CVE-2023-1829](https://ubuntu.com/security/CVE-2023-1829) <!-- high -->
-   5.15 raspi in 22.04, Azure FDE in 20.04
-   TCINDEX UAF plus UAF in `io_uring`


### [[USN-6071-1](https://ubuntu.com/security/notices/USN-6071-1)] Linux kernel (OEM) vulnerabilities (01:58) {#usn-6071-1-linux-kernel--oem--vulnerabilities--01-58}

-   12 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-26545](https://ubuntu.com/security/CVE-2023-26545) <!-- medium -->
    -   [CVE-2023-23455](https://ubuntu.com/security/CVE-2023-23455) <!-- medium -->
    -   [CVE-2023-1859](https://ubuntu.com/security/CVE-2023-1859) <!-- medium -->
    -   [CVE-2022-4662](https://ubuntu.com/security/CVE-2022-4662) <!-- low -->
    -   [CVE-2022-4095](https://ubuntu.com/security/CVE-2022-4095) <!-- medium -->
    -   [CVE-2022-40307](https://ubuntu.com/security/CVE-2022-40307) <!-- medium -->
    -   [CVE-2022-3586](https://ubuntu.com/security/CVE-2022-3586) <!-- medium -->
    -   [CVE-2022-3303](https://ubuntu.com/security/CVE-2022-3303) <!-- medium -->
    -   [CVE-2022-2590](https://ubuntu.com/security/CVE-2022-2590) <!-- high -->
    -   [CVE-2023-0386](https://ubuntu.com/security/CVE-2023-0386) <!-- high -->
    -   [CVE-2023-0468](https://ubuntu.com/security/CVE-2023-0468) <!-- high -->
    -   [CVE-2023-1829](https://ubuntu.com/security/CVE-2023-1829) <!-- high -->
-   5.17
-   UAFs in TCINDEX, `io_uring`, logic issue in OverlayFS
    ([[USN-6057-1] Linux kernel
    (Intel IoTG) vulnerabilities from Episode 194]({{< relref "episode-194#usn-6057-1-linux-kernel--intel-iotg--vulnerabilities--03-31" >}})), race-condition in handling
    of handling of copy-on-write read-only shared memory mappings - unpriv user
    could then get write on these read-only mappings -&gt; privesc


### [[USN-6072-1](https://ubuntu.com/security/notices/USN-6072-1)] Linux kernel (OEM) vulnerabilities (02:31) {#usn-6072-1-linux-kernel--oem--vulnerabilities--02-31}

-   6 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-26545](https://ubuntu.com/security/CVE-2023-26545) <!-- medium -->
    -   [CVE-2023-23455](https://ubuntu.com/security/CVE-2023-23455) <!-- medium -->
    -   [CVE-2023-1859](https://ubuntu.com/security/CVE-2023-1859) <!-- medium -->
    -   [CVE-2023-0386](https://ubuntu.com/security/CVE-2023-0386) <!-- high -->
    -   [CVE-2023-0468](https://ubuntu.com/security/CVE-2023-0468) <!-- high -->
    -   [CVE-2023-1829](https://ubuntu.com/security/CVE-2023-1829) <!-- high -->
-   6.0
-   UAFs in TCINDEX, `io_uring`, logic issue in OverlayFS


### [[USN-6079-1](https://ubuntu.com/security/notices/USN-6079-1)] Linux kernel vulnerabilities (02:49) {#usn-6079-1-linux-kernel-vulnerabilities--02-49}

-   25 CVEs addressed in Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-26544](https://ubuntu.com/security/CVE-2023-26544) <!-- medium -->
    -   [CVE-2023-23455](https://ubuntu.com/security/CVE-2023-23455) <!-- medium -->
    -   [CVE-2023-23454](https://ubuntu.com/security/CVE-2023-23454) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-21106](https://ubuntu.com/security/CVE-2023-21106) <!-- medium -->
    -   [CVE-2023-21102](https://ubuntu.com/security/CVE-2023-21102) <!-- medium -->
    -   [CVE-2023-1652](https://ubuntu.com/security/CVE-2023-1652) <!-- medium -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-1078](https://ubuntu.com/security/CVE-2023-1078) <!-- medium -->
    -   [CVE-2023-1075](https://ubuntu.com/security/CVE-2023-1075) <!-- medium -->
    -   [CVE-2023-1074](https://ubuntu.com/security/CVE-2023-1074) <!-- medium -->
    -   [CVE-2023-1073](https://ubuntu.com/security/CVE-2023-1073) <!-- medium -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
    -   [CVE-2023-0458](https://ubuntu.com/security/CVE-2023-0458) <!-- medium -->
    -   [CVE-2023-0394](https://ubuntu.com/security/CVE-2023-0394) <!-- medium -->
    -   [CVE-2023-0210](https://ubuntu.com/security/CVE-2023-0210) <!-- medium -->
    -   [CVE-2022-48424](https://ubuntu.com/security/CVE-2022-48424) <!-- low -->
    -   [CVE-2022-48423](https://ubuntu.com/security/CVE-2022-48423) <!-- medium -->
    -   [CVE-2022-4842](https://ubuntu.com/security/CVE-2022-4842) <!-- medium -->
    -   [CVE-2022-4129](https://ubuntu.com/security/CVE-2022-4129) <!-- medium -->
    -   [CVE-2022-3707](https://ubuntu.com/security/CVE-2022-3707) <!-- medium -->
    -   [CVE-2022-36280](https://ubuntu.com/security/CVE-2022-36280) <!-- medium -->
    -   [CVE-2022-27672](https://ubuntu.com/security/CVE-2022-27672) <!-- medium -->
-   5.19 22.10 / 22.04 Azure


### [[USN-6080-1](https://ubuntu.com/security/notices/USN-6080-1)] Linux kernel vulnerabilities (02:55) {#usn-6080-1-linux-kernel-vulnerabilities--02-55}

-   10 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-20938](https://ubuntu.com/security/CVE-2023-20938) <!-- medium -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-1078](https://ubuntu.com/security/CVE-2023-1078) <!-- medium -->
    -   [CVE-2023-1075](https://ubuntu.com/security/CVE-2023-1075) <!-- medium -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
    -   [CVE-2022-3707](https://ubuntu.com/security/CVE-2022-3707) <!-- medium -->
    -   [CVE-2022-27672](https://ubuntu.com/security/CVE-2022-27672) <!-- medium -->
-   5.15 22.04 / 20.04 HWE


### [[USN-6081-1](https://ubuntu.com/security/notices/USN-6081-1)] Linux kernel vulnerabilities (03:02) {#usn-6081-1-linux-kernel-vulnerabilities--03-02}

-   5 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
-   4.15 18.04 GA / 16.04 AWS (Ubuntu Pro)


### [[USN-6073-1](https://ubuntu.com/security/notices/USN-6073-1), [USN-6073-2](https://ubuntu.com/security/notices/USN-6073-2), USN-6073-3, [USN-6073-4](https://ubuntu.com/security/notices/USN-6073-4)] Cinder, Glance Store, Nova, os-brick vulnerability (03:14) {#usn-6073-1-usn-6073-2-usn-6073-3-usn-6073-4-cinder-glance-store-nova-os-brick-vulnerability--03-14}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-2088](https://ubuntu.com/security/CVE-2023-2088) <!-- medium -->
-   Inconsistency between Cinder (block storage service of OpenStack) and Nova
    (compute / virtual server provisioning) could result in storage volumes being
    attached to the wrong compute instances - would happen when trying to detach a
    volume from an instance
-   Lots of interacting components, all need a consistent view of the system etc


### [[USN-6073-5](https://ubuntu.com/security/notices/USN-6073-5)] Nova regression {#usn-6073-5-nova-regression}

-   Affecting Focal (20.04 LTS)
-   Above update meant that in some circumstances Nova would be unable to detach
    volumes from instances


### [[USN-6074-1](https://ubuntu.com/security/notices/USN-6074-1)] Firefox vulnerabilities (04:15) {#usn-6074-1-firefox-vulnerabilities--04-15}

-   11 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2023-32209](https://ubuntu.com/security/CVE-2023-32209) <!-- medium -->
    -   [CVE-2023-32208](https://ubuntu.com/security/CVE-2023-32208) <!-- medium -->
    -   [CVE-2023-32206](https://ubuntu.com/security/CVE-2023-32206) <!-- medium -->
    -   [CVE-2023-32216](https://ubuntu.com/security/CVE-2023-32216) <!-- medium -->
    -   [CVE-2023-32215](https://ubuntu.com/security/CVE-2023-32215) <!-- medium -->
    -   [CVE-2023-32213](https://ubuntu.com/security/CVE-2023-32213) <!-- medium -->
    -   [CVE-2023-32212](https://ubuntu.com/security/CVE-2023-32212) <!-- medium -->
    -   [CVE-2023-32211](https://ubuntu.com/security/CVE-2023-32211) <!-- medium -->
    -   [CVE-2023-32210](https://ubuntu.com/security/CVE-2023-32210) <!-- medium -->
    -   [CVE-2023-32207](https://ubuntu.com/security/CVE-2023-32207) <!-- medium -->
    -   [CVE-2023-32205](https://ubuntu.com/security/CVE-2023-32205) <!-- medium -->
-   113.0


### [[USN-6074-2](https://ubuntu.com/security/notices/USN-6074-2)] Firefox regressions (04:27) {#usn-6074-2-firefox-regressions--04-27}

-   11 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2023-32209](https://ubuntu.com/security/CVE-2023-32209) <!-- medium -->
    -   [CVE-2023-32208](https://ubuntu.com/security/CVE-2023-32208) <!-- medium -->
    -   [CVE-2023-32206](https://ubuntu.com/security/CVE-2023-32206) <!-- medium -->
    -   [CVE-2023-32216](https://ubuntu.com/security/CVE-2023-32216) <!-- medium -->
    -   [CVE-2023-32215](https://ubuntu.com/security/CVE-2023-32215) <!-- medium -->
    -   [CVE-2023-32213](https://ubuntu.com/security/CVE-2023-32213) <!-- medium -->
    -   [CVE-2023-32212](https://ubuntu.com/security/CVE-2023-32212) <!-- medium -->
    -   [CVE-2023-32211](https://ubuntu.com/security/CVE-2023-32211) <!-- medium -->
    -   [CVE-2023-32210](https://ubuntu.com/security/CVE-2023-32210) <!-- medium -->
    -   [CVE-2023-32207](https://ubuntu.com/security/CVE-2023-32207) <!-- medium -->
    -   [CVE-2023-32205](https://ubuntu.com/security/CVE-2023-32205) <!-- medium -->
-   113.0.1 from upstream


### [[USN-6075-1](https://ubuntu.com/security/notices/USN-6075-1)] Thunderbird vulnerabilities (04:36) {#usn-6075-1-thunderbird-vulnerabilities--04-36}

-   7 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-32206](https://ubuntu.com/security/CVE-2023-32206) <!-- medium -->
    -   [CVE-2023-32215](https://ubuntu.com/security/CVE-2023-32215) <!-- medium -->
    -   [CVE-2023-32213](https://ubuntu.com/security/CVE-2023-32213) <!-- medium -->
    -   [CVE-2023-32212](https://ubuntu.com/security/CVE-2023-32212) <!-- medium -->
    -   [CVE-2023-32211](https://ubuntu.com/security/CVE-2023-32211) <!-- medium -->
    -   [CVE-2023-32207](https://ubuntu.com/security/CVE-2023-32207) <!-- medium -->
    -   [CVE-2023-32205](https://ubuntu.com/security/CVE-2023-32205) <!-- medium -->
-   102.11.0


### [[USN-6060-3](https://ubuntu.com/security/notices/USN-6060-3)] MySQL regression (05:02) {#usn-6060-3-mysql-regression--05-02}

-   Affecting Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
-   [[USN-6060-1, USN-6060-2] MySQL vulnerabilities from Episode 194]({{< relref "episode-194#usn-6060-1-usn-6060-2-mysql-vulnerabilities--07-40" >}})
-   Latest upstream release 8.0.33 introduced a regression on 32-bit ARM (armhf) -
    would crash on startup - to fix, reverted an upstream commit which was
    introduced to help with performance of atomic operations


### [[USN-6076-1](https://ubuntu.com/security/notices/USN-6076-1)] Synapse vulnerabilities (05:39) {#usn-6076-1-synapse-vulnerabilities--05-39}

-   7 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2018-16515](https://ubuntu.com/security/CVE-2018-16515) <!-- medium -->
    -   [CVE-2019-5885](https://ubuntu.com/security/CVE-2019-5885) <!-- medium -->
    -   [CVE-2018-12423](https://ubuntu.com/security/CVE-2018-12423) <!-- low -->
    -   [CVE-2019-11842](https://ubuntu.com/security/CVE-2019-11842) <!-- medium -->
    -   [CVE-2018-10657](https://ubuntu.com/security/CVE-2018-10657) <!-- medium -->
    -   [CVE-2018-12291](https://ubuntu.com/security/CVE-2018-12291) <!-- medium -->
    -   [CVE-2019-18835](https://ubuntu.com/security/CVE-2019-18835) <!-- medium -->
-   Matrix homeserver
-   Various issues - signature checking on APIs, failure to properly apply event
    visibility rules, DoS - exploited in the wild, insufficient randomness when
    generating random IDs made them guessable, ability for unauthorised users to
    hijack rooms, more predictable randomness which could allow remote attackers
    to impersonate users, event spoofing due to improper signature validation -
    some of these require to be the admin of a room or to have a malicious server
    etc - but since Matrix is federated, this is not so implausible


### [[USN-6078-1](https://ubuntu.com/security/notices/USN-6078-1)] libwebp vulnerability (06:38) {#usn-6078-1-libwebp-vulnerability--06-38}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-1999](https://ubuntu.com/security/CVE-2023-1999) <!-- medium -->
-   Double free when handling crafted content


### [[USN-6077-1](https://ubuntu.com/security/notices/USN-6077-1)] OpenJDK vulnerabilities (06:45) {#usn-6077-1-openjdk-vulnerabilities--06-45}

-   7 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-21968](https://ubuntu.com/security/CVE-2023-21968) <!-- medium -->
    -   [CVE-2023-21967](https://ubuntu.com/security/CVE-2023-21967) <!-- medium -->
    -   [CVE-2023-21954](https://ubuntu.com/security/CVE-2023-21954) <!-- medium -->
    -   [CVE-2023-21939](https://ubuntu.com/security/CVE-2023-21939) <!-- medium -->
    -   [CVE-2023-21938](https://ubuntu.com/security/CVE-2023-21938) <!-- medium -->
    -   [CVE-2023-21937](https://ubuntu.com/security/CVE-2023-21937) <!-- medium -->
    -   [CVE-2023-21930](https://ubuntu.com/security/CVE-2023-21930) <!-- medium -->
-   Latest upstream point releases
    -   Most Ubuntu releases support more then 1 version of OpenJDK - this update is
        for OpenJDK versions 20, 17, 11 and 8 across the various Ubuntu releases


### [[USN-6082-1](https://ubuntu.com/security/notices/USN-6082-1)] EventSource vulnerability (07:02) {#usn-6082-1-eventsource-vulnerability--07-02}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-1650](https://ubuntu.com/security/CVE-2022-1650) <!-- medium -->
-   EventSource client for NodeJS - info leak - could leak cookies and
    authorisation headers to third party applications - but should have been
    sanitising headers to avoid this as per same-origin-policy


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Datadog outage and management of security updates (07:32) {#datadog-outage-and-management-of-security-updates--07-32}

-   <https://newsletter.pragmaticengineer.com/p/inside-the-datadog-outage>
-   Alex and Camila discuss a recent outage at Datadog on their Ubuntu systems
    that was triggered by a security update for systemd and the pros and cons of
    automatic security updates plus other approaches which can be taken to allow
    updates to be applied in a more controlled manner
-   <https://ubuntu.com/blog/3-ways-to-apply-security-patches-in-linux>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
