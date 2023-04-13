+++
title = "Episode 193"
description = """
  The release of Ubuntu 23.04 Lunar Lobster is nigh so we take a look at some of
  the things the security team has been doing along the way, plus it's our 6000th
  USN so we look back at the last 19 years of USNs whilst covering security
  updates for the Linux kernel, Emacs, Irssi, Sudo, Firefox and more.
  """
date = 2023-04-13T23:12:00+09:30
lastmod = 2023-04-13T23:14:37+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E193.mp3"
podcast_duration = 883
podcast_bytes = 14913983
permalink = "https://ubuntusecuritypodcast.org/episode-193/"
guid = "70e7fb923d4c039ab0a884687aa51c031dca7022501bfcd834ad27a6db9aa42077a72aafcfe14e157debbdda6ac68b5c5f714c31abbd0ca60d04d52e67f9a775"
+++

## Overview {#overview}

The release of Ubuntu 23.04 Lunar Lobster is nigh so we take a look at some of
the things the security team has been doing along the way, plus it's our 6000th
USN so we look back at the last 19 years of USNs whilst covering security
updates for the Linux kernel, Emacs, Irssi, Sudo, Firefox and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

109 unique CVEs addressed


### [[USN-5998-1](https://ubuntu.com/security/notices/USN-5998-1)] Apache Log4j vulnerabilities (01:00) {#usn-5998-1-apache-log4j-vulnerabilities--01-00}

-   4 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-23307](https://ubuntu.com/security/CVE-2022-23307) <!-- medium -->
    -   [CVE-2022-23305](https://ubuntu.com/security/CVE-2022-23305) <!-- medium -->
    -   [CVE-2022-23302](https://ubuntu.com/security/CVE-2022-23302) <!-- low -->
    -   [CVE-2019-17571](https://ubuntu.com/security/CVE-2019-17571) <!-- medium -->
-   A bunch of older vulnerabilities, some discovered in the wake of log4shell but
    not deemed as critical


### [[USN-6000-1](https://ubuntu.com/security/notices/USN-6000-1)] Linux kernel (BlueField) vulnerabilities (01:37) {#usn-6000-1-linux-kernel--bluefield--vulnerabilities--01-37}

-   23 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-28328](https://ubuntu.com/security/CVE-2023-28328) <!-- medium -->
    -   [CVE-2023-26607](https://ubuntu.com/security/CVE-2023-26607) <!-- low -->
    -   [CVE-2023-23455](https://ubuntu.com/security/CVE-2023-23455) <!-- medium -->
    -   [CVE-2023-23454](https://ubuntu.com/security/CVE-2023-23454) <!-- medium -->
    -   [CVE-2023-20938](https://ubuntu.com/security/CVE-2023-20938) <!-- medium -->
    -   [CVE-2023-1382](https://ubuntu.com/security/CVE-2023-1382) <!-- medium -->
    -   [CVE-2023-0394](https://ubuntu.com/security/CVE-2023-0394) <!-- medium -->
    -   [CVE-2023-0266](https://ubuntu.com/security/CVE-2023-0266) <!-- medium -->
    -   [CVE-2023-0045](https://ubuntu.com/security/CVE-2023-0045) <!-- low -->
    -   [CVE-2022-47929](https://ubuntu.com/security/CVE-2022-47929) <!-- medium -->
    -   [CVE-2022-47520](https://ubuntu.com/security/CVE-2022-47520) <!-- medium -->
    -   [CVE-2022-42329](https://ubuntu.com/security/CVE-2022-42329) <!-- medium -->
    -   [CVE-2022-42328](https://ubuntu.com/security/CVE-2022-42328) <!-- medium -->
    -   [CVE-2022-4139](https://ubuntu.com/security/CVE-2022-4139) <!-- medium -->
    -   [CVE-2022-41218](https://ubuntu.com/security/CVE-2022-41218) <!-- low -->
    -   [CVE-2022-36280](https://ubuntu.com/security/CVE-2022-36280) <!-- medium -->
    -   [CVE-2022-3623](https://ubuntu.com/security/CVE-2022-3623) <!-- medium -->
    -   [CVE-2022-3545](https://ubuntu.com/security/CVE-2022-3545) <!-- medium -->
    -   [CVE-2022-3521](https://ubuntu.com/security/CVE-2022-3521) <!-- medium -->
    -   [CVE-2022-3435](https://ubuntu.com/security/CVE-2022-3435) <!-- medium -->
    -   [CVE-2022-3424](https://ubuntu.com/security/CVE-2022-3424) <!-- medium -->
    -   [CVE-2022-3169](https://ubuntu.com/security/CVE-2022-3169) <!-- medium -->
    -   [CVE-2023-0461](https://ubuntu.com/security/CVE-2023-0461) <!-- high -->
-   NVIDIA BlueField specific kernel (5.4)
-   Most high priority CVE UAF in Upper Level Protocol (mentioned in the last few
    episodes)
-   6000th USN published by the Ubuntu Security team - this one by Rodrigo Zaiden
-   Out of interest:
    -   [USN-5000-1](https://ubuntu.com/security/notices/USN-6000-1) - also a kernel USN in June 2021 (Steve Beattie)
    -   [USN-4000-1](https://ubuntu.com/security/notices/USN-4000-1) - corosync in May 2019 (Leo Barbosa)
    -   [USN-3000-1](https://ubuntu.com/security/notices/USN-3000-1) - kernel (utopic HWE backported to trusty) in June 2016 (John Johansen)
    -   [USN-2000-1](https://ubuntu.com/security/notices/USN-2000-1) - nova in October 2013 (Jamie Strandboge)
    -   [USN-1000-1](https://ubuntu.com/security/notices/USN-1000-1) - kernel again in October 2010 (Kees Cook)
    -   [USN-1-1](https://ubuntu.com/security/notices/USN-1-1) - libpng again in October 2004 (Matt Zimmerman)


### [[USN-6001-1](https://ubuntu.com/security/notices/USN-6001-1)] Linux kernel (AWS) vulnerabilities (04:18) {#usn-6001-1-linux-kernel--aws--vulnerabilities--04-18}

-   51 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-26607](https://ubuntu.com/security/CVE-2023-26607) <!-- low -->
    -   [CVE-2023-26545](https://ubuntu.com/security/CVE-2023-26545) <!-- medium -->
    -   [CVE-2023-23455](https://ubuntu.com/security/CVE-2023-23455) <!-- medium -->
    -   [CVE-2023-1095](https://ubuntu.com/security/CVE-2023-1095) <!-- medium -->
    -   [CVE-2023-1074](https://ubuntu.com/security/CVE-2023-1074) <!-- medium -->
    -   [CVE-2023-0394](https://ubuntu.com/security/CVE-2023-0394) <!-- medium -->
    -   [CVE-2022-47929](https://ubuntu.com/security/CVE-2022-47929) <!-- medium -->
    -   [CVE-2022-4662](https://ubuntu.com/security/CVE-2022-4662) <!-- low -->
    -   [CVE-2022-41850](https://ubuntu.com/security/CVE-2022-41850) <!-- low -->
    -   [CVE-2022-41849](https://ubuntu.com/security/CVE-2022-41849) <!-- low -->
    -   [CVE-2022-41218](https://ubuntu.com/security/CVE-2022-41218) <!-- low -->
    -   [CVE-2022-39188](https://ubuntu.com/security/CVE-2022-39188) <!-- medium -->
    -   [CVE-2022-3903](https://ubuntu.com/security/CVE-2022-3903) <!-- low -->
    -   [CVE-2022-36879](https://ubuntu.com/security/CVE-2022-36879) <!-- medium -->
    -   [CVE-2022-3646](https://ubuntu.com/security/CVE-2022-3646) <!-- medium -->
    -   [CVE-2022-36280](https://ubuntu.com/security/CVE-2022-36280) <!-- medium -->
    -   [CVE-2022-3628](https://ubuntu.com/security/CVE-2022-3628) <!-- medium -->
    -   [CVE-2022-3303](https://ubuntu.com/security/CVE-2022-3303) <!-- medium -->
    -   [CVE-2022-3111](https://ubuntu.com/security/CVE-2022-3111) <!-- medium -->
    -   [CVE-2022-3061](https://ubuntu.com/security/CVE-2022-3061) <!-- medium -->
    -   [CVE-2022-2991](https://ubuntu.com/security/CVE-2022-2991) <!-- medium -->
    -   [CVE-2022-2663](https://ubuntu.com/security/CVE-2022-2663) <!-- medium -->
    -   [CVE-2022-2380](https://ubuntu.com/security/CVE-2022-2380) <!-- low -->
    -   [CVE-2022-2318](https://ubuntu.com/security/CVE-2022-2318) <!-- medium -->
    -   [CVE-2022-2503](https://ubuntu.com/security/CVE-2022-2503) <!-- medium -->
    -   [CVE-2022-20572](https://ubuntu.com/security/CVE-2022-20572) <!-- medium -->
    -   [CVE-2022-20132](https://ubuntu.com/security/CVE-2022-20132) <!-- low -->
    -   [CVE-2022-1975](https://ubuntu.com/security/CVE-2022-1975) <!-- low -->
    -   [CVE-2022-1974](https://ubuntu.com/security/CVE-2022-1974) <!-- low -->
    -   [CVE-2022-1516](https://ubuntu.com/security/CVE-2022-1516) <!-- medium -->
    -   [CVE-2022-1462](https://ubuntu.com/security/CVE-2022-1462) <!-- medium -->
    -   [CVE-2022-1205](https://ubuntu.com/security/CVE-2022-1205) <!-- medium -->
    -   [CVE-2022-1195](https://ubuntu.com/security/CVE-2022-1195) <!-- low -->
    -   [CVE-2022-1016](https://ubuntu.com/security/CVE-2022-1016) <!-- medium -->
    -   [CVE-2022-0617](https://ubuntu.com/security/CVE-2022-0617) <!-- low -->
    -   [CVE-2022-0494](https://ubuntu.com/security/CVE-2022-0494) <!-- low -->
    -   [CVE-2022-0487](https://ubuntu.com/security/CVE-2022-0487) <!-- medium -->
    -   [CVE-2021-45868](https://ubuntu.com/security/CVE-2021-45868) <!-- medium -->
    -   [CVE-2021-4203](https://ubuntu.com/security/CVE-2021-4203) <!-- medium -->
    -   [CVE-2021-4149](https://ubuntu.com/security/CVE-2021-4149) <!-- medium -->
    -   [CVE-2021-3772](https://ubuntu.com/security/CVE-2021-3772) <!-- low -->
    -   [CVE-2021-3732](https://ubuntu.com/security/CVE-2021-3732) <!-- medium -->
    -   [CVE-2021-3669](https://ubuntu.com/security/CVE-2021-3669) <!-- low -->
    -   [CVE-2021-3659](https://ubuntu.com/security/CVE-2021-3659) <!-- medium -->
    -   [CVE-2021-3428](https://ubuntu.com/security/CVE-2021-3428) <!-- low -->
    -   [CVE-2021-28713](https://ubuntu.com/security/CVE-2021-28713) <!-- low -->
    -   [CVE-2021-28712](https://ubuntu.com/security/CVE-2021-28712) <!-- low -->
    -   [CVE-2021-28711](https://ubuntu.com/security/CVE-2021-28711) <!-- low -->
    -   [CVE-2021-26401](https://ubuntu.com/security/CVE-2021-26401) <!-- medium -->
    -   [CVE-2020-36516](https://ubuntu.com/security/CVE-2020-36516) <!-- medium -->
-   4.4 kernel - wins the prize for the most number of CVEs fixed in a single
    update this week - thanks as always to the kernel team for all their work on
    these


### [[USN-6004-1](https://ubuntu.com/security/notices/USN-6004-1)] Linux kernel (Intel IoTG) vulnerabilities (04:42) {#usn-6004-1-linux-kernel--intel-iotg--vulnerabilities--04-42}

-   15 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-28328](https://ubuntu.com/security/CVE-2023-28328) <!-- medium -->
    -   [CVE-2023-26606](https://ubuntu.com/security/CVE-2023-26606) <!-- medium -->
    -   [CVE-2023-23559](https://ubuntu.com/security/CVE-2023-23559) <!-- medium -->
    -   [CVE-2023-23455](https://ubuntu.com/security/CVE-2023-23455) <!-- medium -->
    -   [CVE-2023-23454](https://ubuntu.com/security/CVE-2023-23454) <!-- medium -->
    -   [CVE-2023-0266](https://ubuntu.com/security/CVE-2023-0266) <!-- medium -->
    -   [CVE-2023-0210](https://ubuntu.com/security/CVE-2023-0210) <!-- medium -->
    -   [CVE-2023-0045](https://ubuntu.com/security/CVE-2023-0045) <!-- low -->
    -   [CVE-2022-48424](https://ubuntu.com/security/CVE-2022-48424) <!-- low -->
    -   [CVE-2022-48423](https://ubuntu.com/security/CVE-2022-48423) <!-- medium -->
    -   [CVE-2022-4382](https://ubuntu.com/security/CVE-2022-4382) <!-- low -->
    -   [CVE-2022-41218](https://ubuntu.com/security/CVE-2022-41218) <!-- low -->
    -   [CVE-2022-36280](https://ubuntu.com/security/CVE-2022-36280) <!-- medium -->
    -   [CVE-2022-3424](https://ubuntu.com/security/CVE-2022-3424) <!-- medium -->
    -   [CVE-2022-2196](https://ubuntu.com/security/CVE-2022-2196) <!-- medium -->
-   5.15 kernel


### [[USN-6007-1](https://ubuntu.com/security/notices/USN-6007-1)] Linux kernel (GCP) vulnerabilities (04:51) {#usn-6007-1-linux-kernel--gcp--vulnerabilities--04-51}

-   20 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-26607](https://ubuntu.com/security/CVE-2023-26607) <!-- low -->
    -   [CVE-2022-43750](https://ubuntu.com/security/CVE-2022-43750) <!-- medium -->
    -   [CVE-2022-42895](https://ubuntu.com/security/CVE-2022-42895) <!-- medium -->
    -   [CVE-2022-42329](https://ubuntu.com/security/CVE-2022-42329) <!-- medium -->
    -   [CVE-2022-42328](https://ubuntu.com/security/CVE-2022-42328) <!-- medium -->
    -   [CVE-2022-41850](https://ubuntu.com/security/CVE-2022-41850) <!-- low -->
    -   [CVE-2022-41849](https://ubuntu.com/security/CVE-2022-41849) <!-- low -->
    -   [CVE-2022-39842](https://ubuntu.com/security/CVE-2022-39842) <!-- low -->
    -   [CVE-2022-3649](https://ubuntu.com/security/CVE-2022-3649) <!-- medium -->
    -   [CVE-2022-3646](https://ubuntu.com/security/CVE-2022-3646) <!-- medium -->
    -   [CVE-2022-3640](https://ubuntu.com/security/CVE-2022-3640) <!-- medium -->
    -   [CVE-2022-3628](https://ubuntu.com/security/CVE-2022-3628) <!-- medium -->
    -   [CVE-2022-3545](https://ubuntu.com/security/CVE-2022-3545) <!-- medium -->
    -   [CVE-2022-3521](https://ubuntu.com/security/CVE-2022-3521) <!-- medium -->
    -   [CVE-2022-29901](https://ubuntu.com/security/CVE-2022-29901) <!-- medium -->
    -   [CVE-2022-29900](https://ubuntu.com/security/CVE-2022-29900) <!-- medium -->
    -   [CVE-2022-2663](https://ubuntu.com/security/CVE-2022-2663) <!-- medium -->
    -   [CVE-2022-26373](https://ubuntu.com/security/CVE-2022-26373) <!-- medium -->
    -   [CVE-2022-20369](https://ubuntu.com/security/CVE-2022-20369) <!-- medium -->
    -   [CVE-2023-0461](https://ubuntu.com/security/CVE-2023-0461) <!-- high -->
-   4.15 (backported from 18.04 LTS)


### [[USN-6009-1](https://ubuntu.com/security/notices/USN-6009-1)] Linux kernel (GCP) vulnerabilities {#usn-6009-1-linux-kernel--gcp--vulnerabilities}

-   11 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-28328](https://ubuntu.com/security/CVE-2023-28328) <!-- medium -->
    -   [CVE-2023-23559](https://ubuntu.com/security/CVE-2023-23559) <!-- medium -->
    -   [CVE-2023-23455](https://ubuntu.com/security/CVE-2023-23455) <!-- medium -->
    -   [CVE-2023-0394](https://ubuntu.com/security/CVE-2023-0394) <!-- medium -->
    -   [CVE-2023-0266](https://ubuntu.com/security/CVE-2023-0266) <!-- medium -->
    -   [CVE-2023-0045](https://ubuntu.com/security/CVE-2023-0045) <!-- low -->
    -   [CVE-2022-47929](https://ubuntu.com/security/CVE-2022-47929) <!-- medium -->
    -   [CVE-2022-41218](https://ubuntu.com/security/CVE-2022-41218) <!-- low -->
    -   [CVE-2022-36280](https://ubuntu.com/security/CVE-2022-36280) <!-- medium -->
    -   [CVE-2022-3424](https://ubuntu.com/security/CVE-2022-3424) <!-- medium -->
    -   [CVE-2021-3669](https://ubuntu.com/security/CVE-2021-3669) <!-- low -->
-   follow-up kernel update including a bunch more fixes


### [[USN-6003-1](https://ubuntu.com/security/notices/USN-6003-1)] Emacs vulnerability (05:03) {#usn-6003-1-emacs-vulnerability--05-03}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-28617](https://ubuntu.com/security/CVE-2023-28617) <!-- medium -->
-   Similar to [[USN-5955-1] Emacs vulnerability [00:50]​]({{< relref "episode-191#usn-5955-1-emacs-vulnerability-00-50" >}}) from Episode 191 - again
    if used org-mode to output to a latex document which included other documents
    that had shell metacharacters in their filenames, could get code execution as
    the user running Emacs


### [[USN-6002-1](https://ubuntu.com/security/notices/USN-6002-1)] Irssi vulnerability (05:45) {#usn-6002-1-irssi-vulnerability--05-45}

-   1 CVEs addressed in Kinetic (22.10)
    -   [CVE-2023-29132](https://ubuntu.com/security/CVE-2023-29132) <!-- medium -->
-   IRC client - UAF when outputting a line which was not formatted whilst also
    outputting a line that was formatted - only likely to be able to be triggered
    by various scripts - was discovered after a recent update to GLib 2.75 which
    stopped using it's own internal memory allocator and instead switched to
    regular `malloc()` / `free()` - would then trigger the memory checking of libc
    which detected this


### [[USN-6005-1](https://ubuntu.com/security/notices/USN-6005-1)] Sudo vulnerabilities (07:25) {#usn-6005-1-sudo-vulnerabilities--07-25}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-28487](https://ubuntu.com/security/CVE-2023-28487) <!-- medium -->
    -   [CVE-2023-28486](https://ubuntu.com/security/CVE-2023-28486) <!-- medium -->
-   Failed to escape control characters in both the log output and `sudoreplay` (can
    be used to list or play back the commands executed in a sudo session) - and so
    could allow an attacker to get code execution as the user running `sudoreplay`
    by injecting terminal control characters


### [[USN-6010-1](https://ubuntu.com/security/notices/USN-6010-1)] Firefox vulnerabilities (08:45) {#usn-6010-1-firefox-vulnerabilities--08-45}

-   15 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2023-29541](https://ubuntu.com/security/CVE-2023-29541) <!--  -->
    -   [CVE-2023-29539](https://ubuntu.com/security/CVE-2023-29539) <!--  -->
    -   [CVE-2023-29538](https://ubuntu.com/security/CVE-2023-29538) <!--  -->
    -   [CVE-2023-29536](https://ubuntu.com/security/CVE-2023-29536) <!--  -->
    -   [CVE-2023-29535](https://ubuntu.com/security/CVE-2023-29535) <!--  -->
    -   [CVE-2023-29533](https://ubuntu.com/security/CVE-2023-29533) <!--  -->
    -   [CVE-2023-29551](https://ubuntu.com/security/CVE-2023-29551) <!--  -->
    -   [CVE-2023-29550](https://ubuntu.com/security/CVE-2023-29550) <!--  -->
    -   [CVE-2023-29549](https://ubuntu.com/security/CVE-2023-29549) <!--  -->
    -   [CVE-2023-29548](https://ubuntu.com/security/CVE-2023-29548) <!--  -->
    -   [CVE-2023-29547](https://ubuntu.com/security/CVE-2023-29547) <!--  -->
    -   [CVE-2023-29544](https://ubuntu.com/security/CVE-2023-29544) <!--  -->
    -   [CVE-2023-29543](https://ubuntu.com/security/CVE-2023-29543) <!--  -->
    -   [CVE-2023-29540](https://ubuntu.com/security/CVE-2023-29540) <!--  -->
    -   [CVE-2023-29537](https://ubuntu.com/security/CVE-2023-29537) <!--  -->
-   112.0 - one Linux specific vuln in particular around the handling of
    downloaded `.desktop` files - could allow an attacker to get code execution as
    the user running firefox - interesting to note that as a snap, firefox is
    confined by default and cannot execute arbitrary commands from the host
    system - can only use binaries from within the `firefox` snap itself or the
    user's `$HOME` which makes exploitation of such an issue harder since less
    LOLBins to make use of


### [[USN-6011-1](https://ubuntu.com/security/notices/USN-6011-1)] Json-smart vulnerabilities (10:00) {#usn-6011-1-json-smart-vulnerabilities--10-00}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-1370](https://ubuntu.com/security/CVE-2023-1370) <!-- medium -->
    -   [CVE-2021-31684](https://ubuntu.com/security/CVE-2021-31684) <!-- medium -->
-   Small and fast JSON parser for Java - two similar issues, one in handling of
    unclosed quotes and the other in unclosed brackets - both could allow an
    attacker to DoS the application through crafted input


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Preparing for the release of Ubuntu 23.04 (Lunar Lobster) (10:36) {#preparing-for-the-release-of-ubuntu-23-dot-04--lunar-lobster----10-36}

-   Team has been busy finishing various items from the development roadmap for
    this cycle:
    -   SBOM specification
    -   improvements to how we distribute OVAL data
    -   evaluation of dbus-broker integration with AppArmor to possibly replace
        dbus-daemon in a future Ubuntu release
    -   Testing unprivileged user namespace restrictions via AppArmor
    -   `io_uring` mediation support in AppArmor
    -   Working with the snapd team on integrating `dm-verity` within snapd for
        improved integrity of snaps
    -   Usual maintenance items as well:
        -   all the normal CVE patching
        -   a heap of MIR security reviews
        -   snap store reviews
        -   AppArmor upstream project maintenance
    -   and more


### Ubuntu Security Podcast on 2 weeks break {#ubuntu-security-podcast-on-2-weeks-break}

-   Alex on leave next week and the following week is the 23.10 start-of-cycle
    product roadmap sprint in Prague
-   Expect the podcast to be back the week ending 5th May


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
