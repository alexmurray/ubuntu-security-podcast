+++
title = "Episode 147"
description = """
  We're back after a few weeks off to cover the launch of the Ubuntu Security
  Guide for DISA-STIG, plus we detail the latest vulnerabilities and updates
  for lxml, PolicyKit, the Linux Kernel, systemd, Samba and more.
  """
date = 2022-02-04T16:33:00+10:30
lastmod = 2022-02-04T16:35:45+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E147.mp3"
podcast_duration = "20:02"
podcast_bytes = 15241759
permalink = "https://ubuntusecuritypodcast.org/episode-147/"
guid = "6020d719c1b8146a445c7222c417200832c692f06a0b77a88f734f40a23ab0a633ba3fe62b561dfc1d5edabcf8ddb7ea5b1736e1976a9c0f9a47999d3ec73f25"
+++

## Overview {#overview}

We're back after a few weeks off to cover the launch of the Ubuntu Security
Guide for DISA-STIG, plus we detail the latest vulnerabilities and updates
for lxml, PolicyKit, the Linux Kernel, systemd, Samba and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

100 unique CVEs addressed


### [[USN-5225-1](https://ubuntu.com/security/notices/USN-5225-1)] lxml vulnerability [00:57] {#usn-5225-1-lxml-vulnerability-00-57}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-43818](https://ubuntu.com/security/CVE-2021-43818) <!-- medium -->
-   Python bindings for venerable libxml2 + libxslt - used by many other
    python packages for parsing XML etc
-   HTML cleaner module - designed to clean up HTML by removing embedded
    scripts, special tags, CSS style annotations and more.
-   Would allow crafted scripts to bypass the filter - same for SVG which
    could embed scripts via data URIs - code execution as a result -&gt; RCE


### [[USN-5210-2](https://ubuntu.com/security/notices/USN-5210-2)] Linux kernel regression [02:03] {#usn-5210-2-linux-kernel-regression-02-03}

-   7 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-43389](https://ubuntu.com/security/CVE-2021-43389) <!-- low -->
    -   [CVE-2021-43056](https://ubuntu.com/security/CVE-2021-43056) <!-- medium -->
    -   [CVE-2021-41864](https://ubuntu.com/security/CVE-2021-41864) <!-- low -->
    -   [CVE-2021-3760](https://ubuntu.com/security/CVE-2021-3760) <!-- medium -->
    -   [CVE-2021-20321](https://ubuntu.com/security/CVE-2021-20321) <!-- medium -->
    -   [CVE-2020-26541](https://ubuntu.com/security/CVE-2020-26541) <!-- medium -->
    -   [CVE-2021-4002](https://ubuntu.com/security/CVE-2021-4002) <!-- high -->
-   [Episode 136](https://ubuntusecuritypodcast.org/episode-136/) - [[USN-5210-1](https://ubuntu.com/security/notices/USN-5210-1)] - caused boot failure on machines that had AMD
    Secure Encrypted Virtualisation enabled


### [[USN-5223-1](https://ubuntu.com/security/notices/USN-5223-1)] Apache Log4j 1.2 vulnerability [02:21] {#usn-5223-1-apache-log4j-1-dot-2-vulnerability-02-21}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-4104](https://ubuntu.com/security/CVE-2021-4104) <!-- medium -->
-   JMS Appender module in Log4j 1.2 - requires the attacker to be able to
    first modify the Log4j config - but can then get code execution - similar
    to the original Log4Shell [CVE-2021-44228](https://ubuntu.com/security/CVE-2021-44228) but not as severe


### [[USN-5224-2](https://ubuntu.com/security/notices/USN-5224-2)] Ghostscript vulnerabilities [02:57] {#usn-5224-2-ghostscript-vulnerabilities-02-57}

-   2 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-45949](https://ubuntu.com/security/CVE-2021-45949) <!-- medium -->
    -   [CVE-2021-45944](https://ubuntu.com/security/CVE-2021-45944) <!-- medium -->
-   [Episode 146](https://ubuntusecuritypodcast.org/episode-146/)


### [[USN-5227-1](https://ubuntu.com/security/notices/USN-5227-1), [USN-5227-2](https://ubuntu.com/security/notices/USN-5227-2)] Pillow vulnerabilities [03:06] {#usn-5227-1-usn-5227-2-pillow-vulnerabilities-03-06}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2022-22817](https://ubuntu.com/security/CVE-2022-22817) <!-- medium -->
    -   [CVE-2022-22816](https://ubuntu.com/security/CVE-2022-22816) <!-- low -->
    -   [CVE-2022-22815](https://ubuntu.com/security/CVE-2022-22815) <!-- medium -->
    -   [CVE-2021-34552](https://ubuntu.com/security/CVE-2021-34552) <!-- low -->
    -   [CVE-2021-23437](https://ubuntu.com/security/CVE-2021-23437) <!-- low -->
-   Various DoS / possible RCE via crafted image files


### [[USN-5229-1](https://ubuntu.com/security/notices/USN-5229-1)] Firefox vulnerabilities [03:27] {#usn-5229-1-firefox-vulnerabilities-03-27}

-   13 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2022-22752](https://ubuntu.com/security/CVE-2022-22752) <!-- medium -->
    -   [CVE-2022-22751](https://ubuntu.com/security/CVE-2022-22751) <!-- medium -->
    -   [CVE-2022-22748](https://ubuntu.com/security/CVE-2022-22748) <!-- medium -->
    -   [CVE-2022-22747](https://ubuntu.com/security/CVE-2022-22747) <!-- low -->
    -   [CVE-2022-22745](https://ubuntu.com/security/CVE-2022-22745) <!-- medium -->
    -   [CVE-2022-22743](https://ubuntu.com/security/CVE-2022-22743) <!-- medium -->
    -   [CVE-2022-22742](https://ubuntu.com/security/CVE-2022-22742) <!-- medium -->
    -   [CVE-2022-22741](https://ubuntu.com/security/CVE-2022-22741) <!-- medium -->
    -   [CVE-2022-22740](https://ubuntu.com/security/CVE-2022-22740) <!-- medium -->
    -   [CVE-2022-22739](https://ubuntu.com/security/CVE-2022-22739) <!-- low -->
    -   [CVE-2022-22738](https://ubuntu.com/security/CVE-2022-22738) <!-- medium -->
    -   [CVE-2022-22737](https://ubuntu.com/security/CVE-2022-22737) <!-- medium -->
    -   [CVE-2021-4140](https://ubuntu.com/security/CVE-2021-4140) <!-- medium -->
-   96.0
-   Usual mix of web issues with standard consequences -&gt; DoS / spoof browser
    UI, bypass security / content restrictions, info leak, RCE


### [[USN-5233-1](https://ubuntu.com/security/notices/USN-5233-1), [USN-5233-2](https://ubuntu.com/security/notices/USN-5233-2)] ClamAV vulnerability [03:59] {#usn-5233-1-usn-5233-2-clamav-vulnerability-03-59}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2022-20698](https://ubuntu.com/security/CVE-2022-20698) <!-- medium -->
-   OOB read when using the `CL_SCAN_GENERAL_COLLECT_METADATA` option and
    handling OOXML files - remote attacker could supply an input file which
    could trigger this -&gt; crash


### [[USN-5235-1](https://ubuntu.com/security/notices/USN-5235-1)] Ruby vulnerabilities [04:24] {#usn-5235-1-ruby-vulnerabilities-04-24}

-   3 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-41819](https://ubuntu.com/security/CVE-2021-41819) <!-- medium -->
    -   [CVE-2021-41817](https://ubuntu.com/security/CVE-2021-41817) <!-- medium -->
    -   [CVE-2021-41816](https://ubuntu.com/security/CVE-2021-41816) <!-- medium -->


### [[USN-5234-1](https://ubuntu.com/security/notices/USN-5234-1)] Byobu vulnerability [04:25] {#usn-5234-1-byobu-vulnerability-04-25}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2019-7306](https://ubuntu.com/security/CVE-2019-7306) <!-- low -->
-   Apport hook for Byobu would upload the local `.screenrc` file which could
    possibly contain private info


### [[USN-5240-1](https://ubuntu.com/security/notices/USN-5240-1)] Linux kernel vulnerability [05:09] {#usn-5240-1-linux-kernel-vulnerability-05-09}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2022-0185](https://ubuntu.com/security/CVE-2022-0185) <!-- high -->
-   Integer underflow -&gt; OOB write when parsing file system properties -
    possible code execution -&gt; requires root privileges to trigger BUT can
    also be done from a user namespace - ie where a local user can masquerade
    as root


### [[LSN-0084-1](https://ubuntu.com/security/notices/LSN-0084-1)] Linux kernel vulnerability {#lsn-0084-1-linux-kernel-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-0185](https://ubuntu.com/security/CVE-2022-0185) <!-- high -->
-   Livepatch for the above issue


### [[USN-5242-1](https://ubuntu.com/security/notices/USN-5242-1)] Open vSwitch vulnerability [06:16] {#usn-5242-1-open-vswitch-vulnerability-06-16}

-   1 CVEs addressed in Impish (21.10)
    -   [CVE-2021-3905](https://ubuntu.com/security/CVE-2021-3905) <!-- medium -->
-   Memory leak when handling fragmented packets - only affects most recent
    versions of Open vSwitch so LTS releases etc not affected


### [[USN-5243-1](https://ubuntu.com/security/notices/USN-5243-1), [USN-5243-2](https://ubuntu.com/security/notices/USN-5243-2)] AIDE vulnerability [06:34] {#usn-5243-1-usn-5243-2-aide-vulnerability-06-34}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-45417](https://ubuntu.com/security/CVE-2021-45417) <!-- medium -->
-   Advanced Intrusion Detection Environment
    -   checks integrity of files - common security tool
-   Heap buffer overflow when performing various base64 operations, as done
    when handling XFS extended attributes or tmpfs ACLs - local privesc


### [[USN-5246-1](https://ubuntu.com/security/notices/USN-5246-1)] Thunderbird vulnerabilities [07:21] {#usn-5246-1-thunderbird-vulnerabilities-07-21}

-   26 CVEs addressed in Impish (21.10)
    -   [CVE-2021-43546](https://ubuntu.com/security/CVE-2021-43546) <!-- medium -->
    -   [CVE-2021-4126](https://ubuntu.com/security/CVE-2021-4126) <!-- medium -->
    -   [CVE-2021-44538](https://ubuntu.com/security/CVE-2021-44538) <!-- medium -->
    -   [CVE-2021-43528](https://ubuntu.com/security/CVE-2021-43528) <!-- low -->
    -   [CVE-2022-22751](https://ubuntu.com/security/CVE-2022-22751) <!-- medium -->
    -   [CVE-2022-22748](https://ubuntu.com/security/CVE-2022-22748) <!-- medium -->
    -   [CVE-2022-22747](https://ubuntu.com/security/CVE-2022-22747) <!-- low -->
    -   [CVE-2022-22745](https://ubuntu.com/security/CVE-2022-22745) <!-- medium -->
    -   [CVE-2022-22743](https://ubuntu.com/security/CVE-2022-22743) <!-- medium -->
    -   [CVE-2022-22742](https://ubuntu.com/security/CVE-2022-22742) <!-- medium -->
    -   [CVE-2022-22741](https://ubuntu.com/security/CVE-2022-22741) <!-- medium -->
    -   [CVE-2022-22740](https://ubuntu.com/security/CVE-2022-22740) <!-- medium -->
    -   [CVE-2022-22739](https://ubuntu.com/security/CVE-2022-22739) <!-- low -->
    -   [CVE-2022-22738](https://ubuntu.com/security/CVE-2022-22738) <!-- medium -->
    -   [CVE-2022-22737](https://ubuntu.com/security/CVE-2022-22737) <!-- medium -->
    -   [CVE-2021-43656](https://ubuntu.com/security/CVE-2021-43656) <!--  -->
    -   [CVE-2021-43545](https://ubuntu.com/security/CVE-2021-43545) <!-- medium -->
    -   [CVE-2021-43543](https://ubuntu.com/security/CVE-2021-43543) <!-- medium -->
    -   [CVE-2021-43542](https://ubuntu.com/security/CVE-2021-43542) <!-- medium -->
    -   [CVE-2021-43541](https://ubuntu.com/security/CVE-2021-43541) <!-- medium -->
    -   [CVE-2021-43539](https://ubuntu.com/security/CVE-2021-43539) <!-- medium -->
    -   [CVE-2021-43538](https://ubuntu.com/security/CVE-2021-43538) <!-- medium -->
    -   [CVE-2021-43537](https://ubuntu.com/security/CVE-2021-43537) <!-- medium -->
    -   [CVE-2021-43536](https://ubuntu.com/security/CVE-2021-43536) <!-- medium -->
    -   [CVE-2021-4140](https://ubuntu.com/security/CVE-2021-4140) <!-- medium -->
    -   [CVE-2021-4129](https://ubuntu.com/security/CVE-2021-4129) <!-- low -->
-   91.5
-   Usual web framework issues plus some TB specific ones
    -   JS interpreter was enabled in composition window - so if an attacker
        could exploit some other vuln to then be able to inject content into
        the composition window could get code execution
    -   Buffer overflow in Matrix chat client lib
    -   Mishandling of PGP/MIME - would only look at signature on inner signed
        message even if was contained in another signed message - so would show
        whole message as valid


### [[USN-5248-1](https://ubuntu.com/security/notices/USN-5248-1)] Thunderbird vulnerabilities {#usn-5248-1-thunderbird-vulnerabilities}

-   45 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-43546](https://ubuntu.com/security/CVE-2021-43546) <!-- medium -->
    -   [CVE-2021-4126](https://ubuntu.com/security/CVE-2021-4126) <!-- medium -->
    -   [CVE-2021-44538](https://ubuntu.com/security/CVE-2021-44538) <!-- medium -->
    -   [CVE-2021-43528](https://ubuntu.com/security/CVE-2021-43528) <!-- low -->
    -   [CVE-2021-38502](https://ubuntu.com/security/CVE-2021-38502) <!-- medium -->
    -   [CVE-2022-22751](https://ubuntu.com/security/CVE-2022-22751) <!-- medium -->
    -   [CVE-2022-22748](https://ubuntu.com/security/CVE-2022-22748) <!-- medium -->
    -   [CVE-2022-22747](https://ubuntu.com/security/CVE-2022-22747) <!-- low -->
    -   [CVE-2022-22745](https://ubuntu.com/security/CVE-2022-22745) <!-- medium -->
    -   [CVE-2022-22743](https://ubuntu.com/security/CVE-2022-22743) <!-- medium -->
    -   [CVE-2022-22742](https://ubuntu.com/security/CVE-2022-22742) <!-- medium -->
    -   [CVE-2022-22741](https://ubuntu.com/security/CVE-2022-22741) <!-- medium -->
    -   [CVE-2022-22740](https://ubuntu.com/security/CVE-2022-22740) <!-- medium -->
    -   [CVE-2022-22739](https://ubuntu.com/security/CVE-2022-22739) <!-- low -->
    -   [CVE-2022-22738](https://ubuntu.com/security/CVE-2022-22738) <!-- medium -->
    -   [CVE-2022-22737](https://ubuntu.com/security/CVE-2022-22737) <!-- medium -->
    -   [CVE-2021-43656](https://ubuntu.com/security/CVE-2021-43656) <!--  -->
    -   [CVE-2021-43545](https://ubuntu.com/security/CVE-2021-43545) <!-- medium -->
    -   [CVE-2021-43543](https://ubuntu.com/security/CVE-2021-43543) <!-- medium -->
    -   [CVE-2021-43542](https://ubuntu.com/security/CVE-2021-43542) <!-- medium -->
    -   [CVE-2021-43541](https://ubuntu.com/security/CVE-2021-43541) <!-- medium -->
    -   [CVE-2021-43539](https://ubuntu.com/security/CVE-2021-43539) <!-- medium -->
    -   [CVE-2021-43538](https://ubuntu.com/security/CVE-2021-43538) <!-- medium -->
    -   [CVE-2021-43537](https://ubuntu.com/security/CVE-2021-43537) <!-- medium -->
    -   [CVE-2021-43536](https://ubuntu.com/security/CVE-2021-43536) <!-- medium -->
    -   [CVE-2021-43535](https://ubuntu.com/security/CVE-2021-43535) <!-- medium -->
    -   [CVE-2021-43534](https://ubuntu.com/security/CVE-2021-43534) <!-- medium -->
    -   [CVE-2021-38509](https://ubuntu.com/security/CVE-2021-38509) <!-- medium -->
    -   [CVE-2021-38508](https://ubuntu.com/security/CVE-2021-38508) <!-- medium -->
    -   [CVE-2021-38507](https://ubuntu.com/security/CVE-2021-38507) <!-- medium -->
    -   [CVE-2021-38506](https://ubuntu.com/security/CVE-2021-38506) <!-- medium -->
    -   [CVE-2021-38504](https://ubuntu.com/security/CVE-2021-38504) <!-- medium -->
    -   [CVE-2021-38503](https://ubuntu.com/security/CVE-2021-38503) <!-- medium -->
    -   [CVE-2021-38501](https://ubuntu.com/security/CVE-2021-38501) <!-- medium -->
    -   [CVE-2021-38500](https://ubuntu.com/security/CVE-2021-38500) <!-- medium -->
    -   [CVE-2021-38498](https://ubuntu.com/security/CVE-2021-38498) <!-- medium -->
    -   [CVE-2021-38497](https://ubuntu.com/security/CVE-2021-38497) <!-- medium -->
    -   [CVE-2021-38496](https://ubuntu.com/security/CVE-2021-38496) <!-- medium -->
    -   [CVE-2021-38495](https://ubuntu.com/security/CVE-2021-38495) <!-- medium -->
    -   [CVE-2021-29991](https://ubuntu.com/security/CVE-2021-29991) <!-- medium -->
    -   [CVE-2021-29987](https://ubuntu.com/security/CVE-2021-29987) <!-- medium -->
    -   [CVE-2021-29982](https://ubuntu.com/security/CVE-2021-29982) <!-- low -->
    -   [CVE-2021-29981](https://ubuntu.com/security/CVE-2021-29981) <!-- medium -->
    -   [CVE-2021-4140](https://ubuntu.com/security/CVE-2021-4140) <!-- medium -->
    -   [CVE-2021-4129](https://ubuntu.com/security/CVE-2021-4129) <!-- low -->


### [[USN-5249-1](https://ubuntu.com/security/notices/USN-5249-1)] USBView vulnerability [08:52] {#usn-5249-1-usbview-vulnerability-08-52}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-23220](https://ubuntu.com/security/CVE-2022-23220) <!-- high -->
-   Failed to properly configure policykit to enforce proper restrictions -
    could allow a local user to execute arbitrary code by causing USBView to
    load other modules
-   Future versions of USBView won't run as root


### [[USN-5250-1](https://ubuntu.com/security/notices/USN-5250-1)] strongSwan vulnerability [09:59] {#usn-5250-1-strongswan-vulnerability-09-59}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-45079](https://ubuntu.com/security/CVE-2021-45079) <!-- medium -->


### [[USN-5252-1](https://ubuntu.com/security/notices/USN-5252-1), [USN-5252-2](https://ubuntu.com/security/notices/USN-5252-2)] PolicyKit vulnerability [10:06] {#usn-5252-1-usn-5252-2-policykit-vulnerability-10-06}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-4034](https://ubuntu.com/security/CVE-2021-4034) <!-- high -->
-   Mishandling of argv in pkexec
-   Normally, when an application runs, gets given argv + argc - argv[0] is
    the name of the application and arguments follow that - BUT this is only
    a convention - can fork/exec another binary and specify NULL argv
-   pkexec in that case would then try and parse arguments outside of the
    valid argv array - generally env follows argv - so would process env as
    argv
-   since pkexec is setuid root glibc sanitises env - BUT pkexec modifies
    it's own argv when processing arguments - so ends up modifying env - with
    a crafted env input can trick pkexec to modify it's own env to then
    inject say a malicious `LD_PRELOAD` value to cause arbitrary code to be
    executed as root
-   Great find by Qualys


### [[USN-5226-1](https://ubuntu.com/security/notices/USN-5226-1)] systemd vulnerability [13:50] {#usn-5226-1-systemd-vulnerability-13-50}

-   1 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-3997](https://ubuntu.com/security/CVE-2021-3997) <!-- medium -->
-   Uncontrolled recursion in systemd-tmpfiles - local user could create a
    deeply nested directory structure, cause systemd-tmpfiles to overflow
    it's own stack by recursively calling the same function over and over
    again -&gt; crash -&gt; DoS


### [[USN-5193-2](https://ubuntu.com/security/notices/USN-5193-2)] X.Org X Server vulnerabilities [14:58] {#usn-5193-2-x-dot-org-x-server-vulnerabilities-14-58}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2021-4011](https://ubuntu.com/security/CVE-2021-4011) <!-- medium -->
    -   [CVE-2021-4009](https://ubuntu.com/security/CVE-2021-4009) <!-- medium -->
    -   [CVE-2021-4008](https://ubuntu.com/security/CVE-2021-4008) <!-- medium -->
-   [Episode 142](https://ubuntusecuritypodcast.org/episode-142/)


### [[USN-5247-1](https://ubuntu.com/security/notices/USN-5247-1)] Vim vulnerabilities [15:07] {#usn-5247-1-vim-vulnerabilities-15-07}

-   5 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-4069](https://ubuntu.com/security/CVE-2021-4069) <!-- medium -->
    -   [CVE-2021-4019](https://ubuntu.com/security/CVE-2021-4019) <!-- medium -->
    -   [CVE-2021-3984](https://ubuntu.com/security/CVE-2021-3984) <!-- medium -->
    -   [CVE-2021-3974](https://ubuntu.com/security/CVE-2021-3974) <!-- low -->
    -   [CVE-2021-3973](https://ubuntu.com/security/CVE-2021-3973) <!-- low -->
-   Various memory corruption vulns when handling different files - DoS /
    code execution
-   All found by fuzzing vim with ASan - participates in bug bounty - [want some bug cash?](https://huntr.dev/bounties/disclose?target=https%3A%2F%2Fgithub.com%2Fvim%2Fvim&validSearch=true)


### [[USN-5254-1](https://ubuntu.com/security/notices/USN-5254-1)] shadow vulnerabilities [15:54] {#usn-5254-1-shadow-vulnerabilities-15-54}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2018-7169](https://ubuntu.com/security/CVE-2018-7169) <!-- low -->
    -   [CVE-2017-12424](https://ubuntu.com/security/CVE-2017-12424) <!-- low -->


### [[USN-5255-1](https://ubuntu.com/security/notices/USN-5255-1)] WebKitGTK vulnerabilities [16:03] {#usn-5255-1-webkitgtk-vulnerabilities-16-03}

-   7 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-30984](https://ubuntu.com/security/CVE-2021-30984) <!-- medium -->
    -   [CVE-2021-30954](https://ubuntu.com/security/CVE-2021-30954) <!-- medium -->
    -   [CVE-2021-30953](https://ubuntu.com/security/CVE-2021-30953) <!-- medium -->
    -   [CVE-2021-30952](https://ubuntu.com/security/CVE-2021-30952) <!-- medium -->
    -   [CVE-2021-30951](https://ubuntu.com/security/CVE-2021-30951) <!-- medium -->
    -   [CVE-2021-30936](https://ubuntu.com/security/CVE-2021-30936) <!-- medium -->
    -   [CVE-2021-30934](https://ubuntu.com/security/CVE-2021-30934) <!-- medium -->


### [[USN-5257-1](https://ubuntu.com/security/notices/USN-5257-1)] ldns vulnerabilities [16:18] {#usn-5257-1-ldns-vulnerabilities-16-18}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2020-19861](https://ubuntu.com/security/CVE-2020-19861) <!-- medium -->
    -   [CVE-2020-19860](https://ubuntu.com/security/CVE-2020-19860) <!-- medium -->


### [[USN-5260-1](https://ubuntu.com/security/notices/USN-5260-1), USN-5260-2] Samba vulnerabilities [16:19] {#usn-5260-1-usn-5260-2-samba-vulnerabilities-16-19}

-   3 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-0336](https://ubuntu.com/security/CVE-2022-0336) <!-- medium -->
    -   [CVE-2021-43566](https://ubuntu.com/security/CVE-2021-43566) <!-- low -->
    -   [CVE-2021-44142](https://ubuntu.com/security/CVE-2021-44142) <!-- high -->
-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2021-44142](https://ubuntu.com/security/CVE-2021-44142) <!-- high -->
-   Most interesting vuln:
    -   Heap OOB read/write in VFS fruit module - codeexec
    -   Used to provide enhanced compatibility with Apple SMB clients and others
    -   Not enabled by default but likely enabled in a bunch of different envs
    -   Occurs when parsing extattr metadata - requires a user to be able to
        modify a files xattrs but this is common in lots of envs


### [[USN-5259-1](https://ubuntu.com/security/notices/USN-5259-1)] Cron vulnerabilities [17:01] {#usn-5259-1-cron-vulnerabilities-17-01}

-   4 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2019-9706](https://ubuntu.com/security/CVE-2019-9706) <!-- low -->
    -   [CVE-2019-9705](https://ubuntu.com/security/CVE-2019-9705) <!-- low -->
    -   [CVE-2019-9704](https://ubuntu.com/security/CVE-2019-9704) <!-- low -->
    -   [CVE-2017-9525](https://ubuntu.com/security/CVE-2017-9525) <!-- low -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu Security Guide tooling released for DISA-STIG compliance [17:11] {#ubuntu-security-guide-tooling-released-for-disa-stig-compliance-17-11}

-   DISA-STIG is a U.S. Department of Defense security configuration standard
    consisting of configuration guidelines for hardening systems to improve a
    system’s security posture.
-   It can be seen as a checklist for securing protocols, services, or
    servers to improve the overall security by reducing the attack
    surface.
-   The Ubuntu Security Guide (USG) brings simplicity by integrating the
    experience of several teams working on compliance. It enables the audit,
    fixing, and customisation of a system while enabling a system-wide
    configuration for compliance, making management by diverse people in a
    DevOps team significantly easier.

-   The DISA-STIG automated configuration tooling for Ubuntu 20.04 LTS is
    available with Ubuntu Advantage subscriptions and Ubuntu Pro, alongside
    additional open source security and support services.
-   <https://ubuntu.com/blog/ubuntu-introduces-the-ubuntu-security-guide-to-ease-disa-stig-compliance>
-   <https://ubuntu.com/advantage>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)