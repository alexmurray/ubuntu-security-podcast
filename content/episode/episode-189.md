+++
title = "Episode 189"
description = """
  This week we dive into the BlackLotus UEFI bootkit teardown and find out how
  this malware has some roots in the FOSS ecosystem, plus we look at security
  updates for the Linux kernel, DCMTK, ZoneMinder, Python, tar and more.
  """
date = 2023-03-03T22:22:00+10:30
lastmod = 2023-03-03T22:23:10+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E189.mp3"
podcast_duration = 1034
podcast_bytes = 17986383
permalink = "https://ubuntusecuritypodcast.org/episode-189/"
guid = "bca2d45a7516db688f25bebc16bb75c7a06eacc9a37fbdc7b2f6cc73d8eafed0e4fc6a51b00f536b4ebd6d5fd5e1bc66bc27b902217989e68fcef5c045dc861f"
+++

## Overview {#overview}

This week we dive into the BlackLotus UEFI bootkit teardown and find out how
this malware has some roots in the FOSS ecosystem, plus we look at security
updates for the Linux kernel, DCMTK, ZoneMinder, Python, tar and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

111 unique CVEs addressed


### [[USN-5739-2](https://ubuntu.com/security/notices/USN-5739-2)] MariaDB regression [00:48] {#usn-5739-2-mariadb-regression-00-48}

-   Affecting Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
-   Latest point release had various memory and performance regressions


### [[USN-5883-1](https://ubuntu.com/security/notices/USN-5883-1)] Linux kernel (HWE) vulnerabilities [01:05] {#usn-5883-1-linux-kernel--hwe--vulnerabilities-01-05}

-   19 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-0461](https://ubuntu.com/security/CVE-2023-0461) <!-- high -->
    -   [CVE-2022-43750](https://ubuntu.com/security/CVE-2022-43750) <!-- medium -->
    -   [CVE-2022-42895](https://ubuntu.com/security/CVE-2022-42895) <!-- medium -->
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
    -   [CVE-2022-4378](https://ubuntu.com/security/CVE-2022-4378) <!-- high -->
-   4.15 kernel backported from 18.04LTS to 16.04ESM
-   sysctl stack buffer overflow [discussed last week]({{< relref "episode-188#usn-5877-1-linux-kernel--gke--vulnerabilities-01-06" >}}) plus a range of other kernel
    vulns


### [[USN-5884-1](https://ubuntu.com/security/notices/USN-5884-1)] Linux kernel (AWS) vulnerabilities [01:26] {#usn-5884-1-linux-kernel--aws--vulnerabilities-01-26}

-   6 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-23559](https://ubuntu.com/security/CVE-2023-23559) <!-- medium -->
    -   [CVE-2023-0045](https://ubuntu.com/security/CVE-2023-0045) <!-- low -->
    -   [CVE-2022-42895](https://ubuntu.com/security/CVE-2022-42895) <!-- medium -->
    -   [CVE-2022-41858](https://ubuntu.com/security/CVE-2022-41858) <!-- medium -->
    -   [CVE-2022-20566](https://ubuntu.com/security/CVE-2022-20566) <!-- medium -->
    -   [CVE-2021-4155](https://ubuntu.com/security/CVE-2021-4155) <!-- medium -->
-   4.4 GA kernel from 16.04


### [[USN-5882-1](https://ubuntu.com/security/notices/USN-5882-1)] DCMTK vulnerabilities [01:36] {#usn-5882-1-dcmtk-vulnerabilities-01-36}

-   10 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-43272](https://ubuntu.com/security/CVE-2022-43272) <!-- low -->
    -   [CVE-2022-2121](https://ubuntu.com/security/CVE-2022-2121) <!-- low -->
    -   [CVE-2022-2120](https://ubuntu.com/security/CVE-2022-2120) <!-- medium -->
    -   [CVE-2022-2119](https://ubuntu.com/security/CVE-2022-2119) <!-- medium -->
    -   [CVE-2021-41690](https://ubuntu.com/security/CVE-2021-41690) <!-- low -->
    -   [CVE-2021-41689](https://ubuntu.com/security/CVE-2021-41689) <!-- medium -->
    -   [CVE-2021-41688](https://ubuntu.com/security/CVE-2021-41688) <!-- low -->
    -   [CVE-2021-41687](https://ubuntu.com/security/CVE-2021-41687) <!-- low -->
    -   [CVE-2019-1010228](https://ubuntu.com/security/CVE-2019-1010228) <!-- medium -->
    -   [CVE-2015-8979](https://ubuntu.com/security/CVE-2015-8979) <!-- medium -->
-   libraries and utils for handling DICOM (Digital Imaging and Communications in
    Medicine) image files (used for radiology etc)
-   various memory corruption issues -&gt; DoS / code execution


### [[USN-5885-1](https://ubuntu.com/security/notices/USN-5885-1)] APR vulnerability [02:29] {#usn-5885-1-apr-vulnerability-02-29}

-   1 CVEs addressed in Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-24963](https://ubuntu.com/security/CVE-2022-24963) <!-- medium -->
-   Integer overflow -&gt; memory corruption -&gt; DoS / code exec


### [[USN-5886-1](https://ubuntu.com/security/notices/USN-5886-1)] Intel Microcode vulnerabilities [02:44] {#usn-5886-1-intel-microcode-vulnerabilities-02-44}

-   4 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-38090](https://ubuntu.com/security/CVE-2022-38090) <!-- medium -->
    -   [CVE-2022-33972](https://ubuntu.com/security/CVE-2022-33972) <!-- medium -->
    -   [CVE-2022-33196](https://ubuntu.com/security/CVE-2022-33196) <!-- medium -->
    -   [CVE-2022-21216](https://ubuntu.com/security/CVE-2022-21216) <!-- medium -->
-   latest upstream release from Intel
-   Various issues in SGX and out-of-band management - particularly on Intel Xeon
    processors - allow require privileged access in the first place (ie admin) but
    could allow to then say bypass SGX protections and the like


### [[USN-5887-1](https://ubuntu.com/security/notices/USN-5887-1)] ClamAV vulnerabilities [03:27] {#usn-5887-1-clamav-vulnerabilities-03-27}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-20052](https://ubuntu.com/security/CVE-2023-20052) <!-- medium -->
    -   [CVE-2023-20032](https://ubuntu.com/security/CVE-2023-20032) <!-- medium -->
-   latest upstream point release - 0.103.8
-   one in HFS+ and the other in the DMG parsers - both different filesystem
    formats for Apple


### [[USN-5889-1](https://ubuntu.com/security/notices/USN-5889-1)] ZoneMinder vulnerabilities [03:49] {#usn-5889-1-zoneminder-vulnerabilities-03-49}

-   13 CVEs addressed in Xenial ESM (16.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-29806](https://ubuntu.com/security/CVE-2022-29806) <!-- high -->
    -   [CVE-2019-7331](https://ubuntu.com/security/CVE-2019-7331) <!-- medium -->
    -   [CVE-2019-7332](https://ubuntu.com/security/CVE-2019-7332) <!-- medium -->
    -   [CVE-2019-7330](https://ubuntu.com/security/CVE-2019-7330) <!-- medium -->
    -   [CVE-2019-7328](https://ubuntu.com/security/CVE-2019-7328) <!-- medium -->
    -   [CVE-2019-7327](https://ubuntu.com/security/CVE-2019-7327) <!-- medium -->
    -   [CVE-2019-7326](https://ubuntu.com/security/CVE-2019-7326) <!-- medium -->
    -   [CVE-2019-7329](https://ubuntu.com/security/CVE-2019-7329) <!-- medium -->
    -   [CVE-2019-7325](https://ubuntu.com/security/CVE-2019-7325) <!-- medium -->
    -   [CVE-2019-6991](https://ubuntu.com/security/CVE-2019-6991) <!-- medium -->
    -   [CVE-2019-6992](https://ubuntu.com/security/CVE-2019-6992) <!-- medium -->
    -   [CVE-2019-6990](https://ubuntu.com/security/CVE-2019-6990) <!-- medium -->
    -   [CVE-2019-6777](https://ubuntu.com/security/CVE-2019-6777) <!-- medium -->
-   Video surveillance software system - includes a web interface so has usual
    types of issues and then some
-   Various XSS issues plus a stack buffer overflow in handling of username /
    passwords as would use a fixed size buffer for these (what year is this?) and
    a upload file handling issue resulting in possible remote code execution


### [[USN-5890-1](https://ubuntu.com/security/notices/USN-5890-1)] Open vSwitch vulnerabilities [04:27] {#usn-5890-1-open-vswitch-vulnerabilities-04-27}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-4338](https://ubuntu.com/security/CVE-2022-4338) <!-- medium -->
    -   [CVE-2022-4337](https://ubuntu.com/security/CVE-2022-4337) <!-- medium -->


### [[USN-5891-1](https://ubuntu.com/security/notices/USN-5891-1), [USN-5894-1](https://ubuntu.com/security/notices/USN-5894-1)] curl vulnerabilities {#usn-5891-1-usn-5894-1-curl-vulnerabilities}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-23916](https://ubuntu.com/security/CVE-2023-23916) <!-- medium -->
    -   [CVE-2023-23915](https://ubuntu.com/security/CVE-2023-23915) <!-- low -->
    -   [CVE-2023-23914](https://ubuntu.com/security/CVE-2023-23914) <!-- low -->
-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-43552](https://ubuntu.com/security/CVE-2022-43552) <!-- medium -->
    -   [CVE-2021-22925](https://ubuntu.com/security/CVE-2021-22925) <!-- medium -->
    -   [CVE-2021-22898](https://ubuntu.com/security/CVE-2021-22898) <!-- low -->


### [[USN-5892-1](https://ubuntu.com/security/notices/USN-5892-1)] NSS vulnerabilities {#usn-5892-1-nss-vulnerabilities}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-0767](https://ubuntu.com/security/CVE-2023-0767) <!-- medium -->
    -   [CVE-2022-3479](https://ubuntu.com/security/CVE-2022-3479) <!-- low -->


### [[USN-5893-1](https://ubuntu.com/security/notices/USN-5893-1)] WebKitGTK vulnerabilities [04:34] {#usn-5893-1-webkitgtk-vulnerabilities-04-34}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-23529](https://ubuntu.com/security/CVE-2023-23529) <!-- high -->
-   type confusion in webkit - Apple says that they had seen reports that this had
    been actively exploited in the wild


### [[USN-5896-1](https://ubuntu.com/security/notices/USN-5896-1)] Rack vulnerabilities {#usn-5896-1-rack-vulnerabilities}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-30123](https://ubuntu.com/security/CVE-2022-30123) <!-- medium -->
    -   [CVE-2022-30122](https://ubuntu.com/security/CVE-2022-30122) <!-- medium -->


### [[USN-5895-1](https://ubuntu.com/security/notices/USN-5895-1)] MPlayer vulnerabilities {#usn-5895-1-mplayer-vulnerabilities}

-   10 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-38861](https://ubuntu.com/security/CVE-2022-38861) <!-- medium -->
    -   [CVE-2022-38866](https://ubuntu.com/security/CVE-2022-38866) <!-- medium -->
    -   [CVE-2022-38864](https://ubuntu.com/security/CVE-2022-38864) <!-- medium -->
    -   [CVE-2022-38863](https://ubuntu.com/security/CVE-2022-38863) <!-- medium -->
    -   [CVE-2022-38858](https://ubuntu.com/security/CVE-2022-38858) <!-- medium -->
    -   [CVE-2022-38855](https://ubuntu.com/security/CVE-2022-38855) <!-- medium -->
    -   [CVE-2022-38851](https://ubuntu.com/security/CVE-2022-38851) <!-- medium -->
    -   [CVE-2022-38865](https://ubuntu.com/security/CVE-2022-38865) <!-- medium -->
    -   [CVE-2022-38860](https://ubuntu.com/security/CVE-2022-38860) <!-- medium -->
    -   [CVE-2022-38850](https://ubuntu.com/security/CVE-2022-38850) <!-- medium -->


### [[USN-5897-1](https://ubuntu.com/security/notices/USN-5897-1)] OpenJDK vulnerabilities [04:55] {#usn-5897-1-openjdk-vulnerabilities-04-55}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-21843](https://ubuntu.com/security/CVE-2023-21843) <!-- low -->
    -   [CVE-2023-21835](https://ubuntu.com/security/CVE-2023-21835) <!-- medium -->
-   openjdk 11 (aka lts), 17, 18
-   latest upstream point releases


### [[USN-5898-1](https://ubuntu.com/security/notices/USN-5898-1)] OpenJDK vulnerabilities [05:05] {#usn-5898-1-openjdk-vulnerabilities-05-05}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-21843](https://ubuntu.com/security/CVE-2023-21843) <!-- low -->
    -   [CVE-2023-21830](https://ubuntu.com/security/CVE-2023-21830) <!-- medium -->
-   openjdk 8 - also latest upstream point release


### [[USN-5888-1](https://ubuntu.com/security/notices/USN-5888-1)] Python vulnerabilities [05:09] {#usn-5888-1-python-vulnerabilities-05-09}

-   6 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-24329](https://ubuntu.com/security/CVE-2023-24329) <!-- medium -->
    -   [CVE-2022-45061](https://ubuntu.com/security/CVE-2022-45061) <!-- medium -->
    -   [CVE-2022-42919](https://ubuntu.com/security/CVE-2022-42919) <!-- high -->
    -   [CVE-2022-37454](https://ubuntu.com/security/CVE-2022-37454) <!-- medium -->
    -   [CVE-2021-28861](https://ubuntu.com/security/CVE-2021-28861) <!-- low -->
    -   [CVE-2015-20107](https://ubuntu.com/security/CVE-2015-20107) <!-- low -->
-   python3.9 - esm-apps
-   high priority - vuln in multiprocessing module - if used with forkserver on
    Linux would allow pickles to be deserialized from any user on the same machine
    in the same network namespace - therefore as one local user can easily get
    code execution as another user on the same machine


### [[USN-5899-1](https://ubuntu.com/security/notices/USN-5899-1)] AWStats vulnerability {#usn-5899-1-awstats-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-46391](https://ubuntu.com/security/CVE-2022-46391) <!-- low -->


### [[USN-5901-1](https://ubuntu.com/security/notices/USN-5901-1)] GnuTLS vulnerability {#usn-5901-1-gnutls-vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-0361](https://ubuntu.com/security/CVE-2023-0361) <!-- medium -->


### [[USN-5902-1](https://ubuntu.com/security/notices/USN-5902-1)] PHP vulnerabilities {#usn-5902-1-php-vulnerabilities}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-0662](https://ubuntu.com/security/CVE-2023-0662) <!-- medium -->
    -   [CVE-2023-0568](https://ubuntu.com/security/CVE-2023-0568) <!-- medium -->
    -   [CVE-2023-0567](https://ubuntu.com/security/CVE-2023-0567) <!-- medium -->


### [[USN-5821-3](https://ubuntu.com/security/notices/USN-5821-3)] pip regression {#usn-5821-3-pip-regression}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-40898](https://ubuntu.com/security/CVE-2022-40898) <!-- medium -->


### [[USN-5903-1](https://ubuntu.com/security/notices/USN-5903-1)] lighttpd vulnerabilities {#usn-5903-1-lighttpd-vulnerabilities}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-41556](https://ubuntu.com/security/CVE-2022-41556) <!-- medium -->
    -   [CVE-2022-22707](https://ubuntu.com/security/CVE-2022-22707) <!-- low -->


### [[USN-5638-4](https://ubuntu.com/security/notices/USN-5638-4)] Expat vulnerabilities {#usn-5638-4-expat-vulnerabilities}

-   2 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2022-43680](https://ubuntu.com/security/CVE-2022-43680) <!-- medium -->
    -   [CVE-2022-40674](https://ubuntu.com/security/CVE-2022-40674) <!-- medium -->


### [[USN-5900-1](https://ubuntu.com/security/notices/USN-5900-1)] tar vulnerability [06:15] {#usn-5900-1-tar-vulnerability-06-15}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-48303](https://ubuntu.com/security/CVE-2022-48303) <!-- medium -->
-   1-byte OOB read - although as yet no evidence this can be used to gain control
    flow hence really only a possible DoS


### [[USN-5880-2](https://ubuntu.com/security/notices/USN-5880-2)] Firefox regressions [06:42] {#usn-5880-2-firefox-regressions-06-42}

-   15 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2023-25745](https://ubuntu.com/security/CVE-2023-25745) <!-- medium -->
    -   [CVE-2023-25744](https://ubuntu.com/security/CVE-2023-25744) <!-- medium -->
    -   [CVE-2023-25742](https://ubuntu.com/security/CVE-2023-25742) <!-- medium -->
    -   [CVE-2023-25741](https://ubuntu.com/security/CVE-2023-25741) <!-- medium -->
    -   [CVE-2023-25737](https://ubuntu.com/security/CVE-2023-25737) <!-- medium -->
    -   [CVE-2023-25736](https://ubuntu.com/security/CVE-2023-25736) <!-- medium -->
    -   [CVE-2023-25733](https://ubuntu.com/security/CVE-2023-25733) <!-- medium -->
    -   [CVE-2023-25731](https://ubuntu.com/security/CVE-2023-25731) <!-- medium -->
    -   [CVE-2023-25739](https://ubuntu.com/security/CVE-2023-25739) <!-- medium -->
    -   [CVE-2023-25735](https://ubuntu.com/security/CVE-2023-25735) <!-- medium -->
    -   [CVE-2023-25732](https://ubuntu.com/security/CVE-2023-25732) <!-- medium -->
    -   [CVE-2023-25730](https://ubuntu.com/security/CVE-2023-25730) <!-- medium -->
    -   [CVE-2023-25729](https://ubuntu.com/security/CVE-2023-25729) <!-- medium -->
    -   [CVE-2023-25728](https://ubuntu.com/security/CVE-2023-25728) <!-- medium -->
    -   [CVE-2023-0767](https://ubuntu.com/security/CVE-2023-0767) <!-- medium -->
-   110.0.1 - biggest regression was that if chose to clear recent cookies it
    would clear **all** cookies - plus a webgl crash when running under vmware on
    Linux


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### BlackLotus UEFI bootkit teardown [07:23] {#blacklotus-uefi-bootkit-teardown-07-23}

-   <https://www.welivesecurity.com/2023/03/01/blacklotus-uefi-bootkit-myth-confirmed/>
-   <https://github.com/Wack0/CVE-2022-21894>
-   Teardown of the first in-the-wild UEFI bootkit that bypasses UEFI Secure Boot
    by eset
-   Appears to be [BlackLotus](https://www.bleepingcomputer.com/news/security/malware-dev-claims-to-sell-new-blacklotus-windows-uefi-bootkit/) which has been sold on hacking and criminal forums
    since atleast October 2022
-   At that time no sample was available so security researchers could not verify
    the claims of the malware author, namely:
    -   very small - only 80kb, has anti-debug / obfuscation to help avoid RE
    -   bypasses Windows UAC + Secure Boot and can load unsigned drivers
    -   disables HVCI (hypervisor protected code integrity - a feature designed to
        protect the Windows kernel from modification at runtime), BitLocker and
        Windows Defender
    -   persists in UEFI and is able to protect itself from being unloaded
    -   uses a signed boot loader so can work on machines with Secure Boot enabled
-   Of these, the most interesting part for Linux users is the UEFI Secure Boot
    bypass - this is something which we theorised was possible via all the
    previously disclosed shim and [grub vulnerabilities]({{< relref "episode-84#alex-and-joe-take-an-in-depth-and-behind-the-scenes-look-at-boothole-grub-2-08-14" >}})
    -   And in particular, they way they go about this is by using a copy of `shim`
        and `grub` - but not because they are exploiting any vulnerabilities in them,
        but since they are very useful components if you want to boot your own
        bootkit
    -   they also exploit a vulnerability in the Windows Boot Manager UEFI binary
        which allows them to subvert the Secure Boot process and load their own code
        to bypass Secure Boot and gain persistence on future boots
    -   they way they do this is to install their own UEFI binaries into the EFI
        partition (including `shim` and `grub`) - but also a copy of a vulnerable
        version of the Windows Boot Manager UEFI binary plus their own custom boot
        configuration data - and since they have disabled BitLocker already these
        will happily be loaded at next boot without the usual integrity checks etc
    -   when the machine reboots, their vulnerable Windows Boot Manager binary is
        loaded, along with their custom boot configuration data which allows them to
        exploit the vulnerability and to then load additional binaries into the boot
        process
    -   those binaries then go on to modify the secure boot configuration by
        enrolling a new key in the machine owners keyring (aka MOK) db
        -   normally enrolling a new key like this would require a system admin to be
            physically present to confirm the operation - but since they bypasses the
            normal Secure Boot protections this can be done without any knowledge of
            the sysadmin
    -   their `grub` is signed using this key whilst the `shim` is Red Hat's `shim` -
        unmodified and signed by Microsoft and hence trusted - this will then trust
        their malicious `grub` as it is signed by the key they just enrolled in the
        MOK
    -   whilst their `shim` is an unmodified copy, their `grub` is not - and is actually
        malicious
    -   `shim` then goes on to boot this malicious `grub` which starts Windows but also
        installs a bunch of UEFI memory hooks to be able to subvert further stages
        of the boot process and eventually Windows itself
-   There are lots more details in the teardown article, particularly about how
    the various components are installed into Windows and how they are able to
    then load additional drivers etc into Windows, plus the further components of
    the malware that are able to download additional binaries, how the C2 and
    anti-analysis etc works - but this is the USP so we won't cover those here
-   But what is interesting for Linux is that this is reusing components that were
    ostensibly designed to boot Linux on machines that were originally designed to
    boot Windows
    -   one member of our team wondered if Microsoft might become more hesitant
        about signing `shim` in the future - perhaps, but it is not really `shim` that
        is at fault here - the issue is the original vulnerability in the Windows
        Boot Manager - `shim` just helps to make loading additional parts of their
        bootkit easier (along with `grub`) - so hopefully Microsoft don't go down that
        path
    -   and the reason this can be exploited in the first place is that Microsoft
        have not revoked their vulnerable Windows Boot Manager binary
        -   back in the original BootHole vulns, various `shim`'s did get revoked - but
            revoking this Microsoft binary would mean many older systems may fail to
            boot, including their recovery images and install media etc
        -   ideally Microsoft would revoke this to stop further exploitation
-   Another interesting wrinkle is that their UEFI exploit apparently appears to
    come directly from a [PoC](https://github.com/Wack0/CVE-2022-21894) that was uploaded to Github in August 2022 - will
    likely restart the usual discussions around public PoCs being a "bad thing" as
    they can be used for actual malicious purposes
    -   interesting to note the PoC has had additional code added to it in the last
        24 hours which allow it to operate on older versions of Windows 10
    -   even more reason for Microsoft to perhaps revoke this old binary


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
