+++
title = "Episode 54"
description = """
  Security updates for DPDK, Linux kernel, QEMU, ImageMagick, Ghostscript and
  more, plus Joe and Alex talk about how to get into information security.
  """
date = 2019-11-24T10:16:00+10:30
lastmod = 2020-05-15T16:39:01+09:30
draft = false
weight = 1021
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E054.mp3"
podcast_duration = "26:43"
podcast_bytes = 35735459
permalink = "https://ubuntusecuritypodcast.org/episode-54/"
guid = "e0abd272be0b26357bb4c2a077b96b83dc1a5fd44d91d5d817b0328423aa96543ed9eeae8f12644903e9825e9b31712f5291b1333114a285c89df4393df9b10b"
+++

## Overview {#overview}

Security updates for DPDK, Linux kernel, QEMU, ImageMagick, Ghostscript and
more, plus Joe and Alex talk about how to get into information security.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

89 unique CVEs addressed


### [[USN-4189-1](https://usn.ubuntu.com/4189-1/)] DPDK vulnerability [01:00] {#usn-4189-1-dpdk-vulnerability-01-00}

-   1 CVEs addressed in Bionic, Disco, Eoan
    -   [CVE-2019-14818](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14818)
-   Data Plane Development Kit - Memory and file-descriptor leak, able to be
    triggered by a malicious master or a container with access to the
    vhost\_user socket


### [[USN-4190-1](https://usn.ubuntu.com/4190-1/)] libjpeg-turbo vulnerabilities [01:41] {#usn-4190-1-libjpeg-turbo-vulnerabilities-01-41}

-   4 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-2201](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2201)
    -   [CVE-2018-20330](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20330)
    -   [CVE-2018-19664](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19664)
    -   [CVE-2018-14498](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14498)
-   2 x heap-buffer overflow - crash or possible RCE
-   2 x heap-buffer overread - crash


### [[USN-4183-2](https://usn.ubuntu.com/4183-2/)] Linux kernel vulnerability [02:48] {#usn-4183-2-linux-kernel-vulnerability-02-48}

-   9 CVEs addressed in Eoan
    -   [CVE-2019-17666](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17666)
    -   [CVE-2019-16746](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16746)
    -   [CVE-2019-15793](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15793)
    -   [CVE-2019-15792](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15792)
    -   [CVE-2019-15791](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15791)
    -   [CVE-2019-0154](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0154)
    -   [CVE-2018-12207](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12207)
    -   [CVE-2019-11135](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11135)
    -   [CVE-2019-0155](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0155)
-   [Episode 53](https://ubuntusecuritypodcast.org/episode-53/) - Extra update for [CVE-2019-0155 (i915 blitter command streamer)](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0155) - previous
    one was based on an in-flight patch that got changed at the last minute
    before the CRD - part of this fix is to whitelist certain commands to the
    command-streamer, and this is done via a bitmask - this used a memset()
    to zero it out but assumed the size of the underlying data was 32-bit -
    so on 64-bit platforms this becomes a 64-bit size and so half the bitmask
    is not zeroed out - meaning the whitelist may be able to be bypassed -
    this fix includes the final upstream fix


### [[USN-4184-2](https://usn.ubuntu.com/4184-2/)] Linux kernel vulnerability and regression [04:37] {#usn-4184-2-linux-kernel-vulnerability-and-regression-04-37}

-   14 CVEs addressed in Bionic (HWE), Disco
    -   [CVE-2019-17666](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17666)
    -   [CVE-2019-17056](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17056)
    -   [CVE-2019-17055](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17055)
    -   [CVE-2019-17054](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17054)
    -   [CVE-2019-17053](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17053)
    -   [CVE-2019-17052](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17052)
    -   [CVE-2019-15793](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15793)
    -   [CVE-2019-15792](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15792)
    -   [CVE-2019-15791](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15791)
    -   [CVE-2019-15098](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15098)
    -   [CVE-2019-0154](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0154)
    -   [CVE-2018-12207](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12207)
    -   [CVE-2019-11135](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11135)
    -   [CVE-2019-0155](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0155)
-   See above (i915 vuln) - but also includes a fix for a regression that was
    introduced in last week's kernel - KVM guests would fail to launch if
    extended page tables were disabled or not supported.


### [[USN-4185-3](https://usn.ubuntu.com/4185-3/)] Linux kernel vulnerability and regression [05:05] {#usn-4185-3-linux-kernel-vulnerability-and-regression-05-05}

-   11 CVEs addressed in Xenial (HWE), Bionic
    -   [CVE-2019-17666](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17666)
    -   [CVE-2019-17056](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17056)
    -   [CVE-2019-17055](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17055)
    -   [CVE-2019-17054](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17054)
    -   [CVE-2019-17053](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17053)
    -   [CVE-2019-17052](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17052)
    -   [CVE-2019-15098](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15098)
    -   [CVE-2019-0154](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0154)
    -   [CVE-2018-12207](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12207)
    -   [CVE-2019-11135](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11135)
    -   [CVE-2019-0155](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0155)
-   See above (both i915 vuln and KVM regression)


### [[USN-4186-3](https://usn.ubuntu.com/4186-3/)] Linux kernel vulnerability [05:22] {#usn-4186-3-linux-kernel-vulnerability-05-22}

-   13 CVEs addressed in Xenial
    -   [CVE-2019-2215](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2215)
    -   [CVE-2019-17666](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17666)
    -   [CVE-2019-17056](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17056)
    -   [CVE-2019-17055](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17055)
    -   [CVE-2019-17054](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17054)
    -   [CVE-2019-17053](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17053)
    -   [CVE-2019-17052](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17052)
    -   [CVE-2019-16746](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16746)
    -   [CVE-2019-15098](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15098)
    -   [CVE-2019-0154](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0154)
    -   [CVE-2018-12207](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12207)
    -   [CVE-2019-11135](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11135)
    -   [CVE-2019-0155](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0155)
-   i915 vuln


### [[USN-4191-1](https://usn.ubuntu.com/4191-1/), USN-4191-2] QEMU vulnerabilities [05:32] {#usn-4191-1-usn-4191-2-qemu-vulnerabilities-05-32}

-   5 CVEs addressed in Trusty ESM, Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-15890](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15890)
    -   [CVE-2019-14378](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14378)
    -   [CVE-2019-13164](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13164)
    -   [CVE-2019-12155](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12155)
    -   [CVE-2019-12068](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12068)
-   Heap buffer overflow and UAF in SLiRP networking implementation - DoS +
    possible code exec
-   Bridge helper didn't validate interface names to be within IFNAMSIZ -
    could be used to bypass ACL restrictions
-   NULL pointer dereference in qxl paravirtual graphics driver - DoS
-   Possible CPU based DoS via an infinite loop able to be triggered in the
    LSI SCSI adaptor emulator


### [[USN-4192-1](https://usn.ubuntu.com/4192-1/)] ImageMagick vulnerabilities [06:48] {#usn-4192-1-imagemagick-vulnerabilities-06-48}

-   30 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-16713](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16713)
    -   [CVE-2019-16711](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16711)
    -   [CVE-2019-16710](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16710)
    -   [CVE-2019-16709](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16709)
    -   [CVE-2019-16708](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16708)
    -   [CVE-2019-15140](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15140)
    -   [CVE-2019-15139](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15139)
    -   [CVE-2019-14981](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14981)
    -   [CVE-2019-13454](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13454)
    -   [CVE-2019-13391](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13391)
    -   [CVE-2019-13311](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13311)
    -   [CVE-2019-13310](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13310)
    -   [CVE-2019-13309](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13309)
    -   [CVE-2019-13308](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13308)
    -   [CVE-2019-13307](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13307)
    -   [CVE-2019-13306](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13306)
    -   [CVE-2019-13305](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13305)
    -   [CVE-2019-13304](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13304)
    -   [CVE-2019-13301](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13301)
    -   [CVE-2019-13300](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13300)
    -   [CVE-2019-13297](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13297)
    -   [CVE-2019-13295](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13295)
    -   [CVE-2019-13137](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13137)
    -   [CVE-2019-13135](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13135)
    -   [CVE-2019-12979](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12979)
    -   [CVE-2019-12978](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12978)
    -   [CVE-2019-12977](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12977)
    -   [CVE-2019-12976](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12976)
    -   [CVE-2019-12975](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12975)
    -   [CVE-2019-12974](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12974)
-   Usual raft of issues - DoS, RCE etc - in various image decoders etc - so
    just need to display or process a malicious image via ImageMagick to
    trigger - interestingly, seems to be noticed - some applications ([Emacs](https://lists.gnu.org/archive/html/emacs-devel/2018-12/msg00036.html))
    [chose **not** to automatically link against and use ImageMagick now](https://emba.gnu.org/emacs/emacs/commit/d2dea70415ca7ec390a2de11b224ab4cbb2c6b55) as a
    result of all the various vulnerablilties which keep being found in it...


### [[USN-4193-1](https://usn.ubuntu.com/4193-1/)] Ghostscript vulnerability [08:13] {#usn-4193-1-ghostscript-vulnerability-08-13}

-   1 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-14869](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14869)
-   Another -dSAFER bypass - newest Ghostscript is not affected since it
    rewrote the SAFER sandbox - but older versions are - allows a malicious
    postscript file to bypass the sandbox and access files or execute
    commands etc.


### [[USN-4194-1](https://usn.ubuntu.com/4194-1/)] postgresql-common vulnerability [09:17] {#usn-4194-1-postgresql-common-vulnerability-09-17}

-   1 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-3466](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3466)
-   Privesc via arbitrary directory creation through the pg\_ctlcluster
    command - allows to create a dir as postgres user - say
    /usr/lib/sudo/haswell - then dump a shared lib there which will be loaded
    by sudo to gain a root shell - by specifying this as the
    stats\_temp\_directory in the config
-   Interesting but requires ability to configure and run as postgres


### [[USN-4195-1](https://usn.ubuntu.com/4195-1/)] MySQL vulnerabilities [11:07] {#usn-4195-1-mysql-vulnerabilities-11-07}

-   29 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-3018](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3018)
    -   [CVE-2019-3011](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3011)
    -   [CVE-2019-3009](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3009)
    -   [CVE-2019-3004](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3004)
    -   [CVE-2019-3003](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3003)
    -   [CVE-2019-2998](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2998)
    -   [CVE-2019-2997](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2997)
    -   [CVE-2019-2993](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2993)
    -   [CVE-2019-2991](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2991)
    -   [CVE-2019-2982](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2982)
    -   [CVE-2019-2974](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2974)
    -   [CVE-2019-2969](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2969)
    -   [CVE-2019-2968](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2968)
    -   [CVE-2019-2967](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2967)
    -   [CVE-2019-2966](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2966)
    -   [CVE-2019-2963](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2963)
    -   [CVE-2019-2960](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2960)
    -   [CVE-2019-2957](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2957)
    -   [CVE-2019-2950](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2950)
    -   [CVE-2019-2948](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2948)
    -   [CVE-2019-2946](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2946)
    -   [CVE-2019-2938](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2938)
    -   [CVE-2019-2924](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2924)
    -   [CVE-2019-2923](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2923)
    -   [CVE-2019-2922](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2922)
    -   [CVE-2019-2920](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2920)
    -   [CVE-2019-2914](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2914)
    -   [CVE-2019-2911](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2911)
    -   [CVE-2019-2910](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2910)
-   Multiple issues fixed in MySQL - updated to 8.0.18 in eoan, whilst in
    xenial, bionic and disco - 5.7.28 - for more details see upstream notices
    -   <https://dev.mysql.com/doc/relnotes/mysql/5.7/en/news-5-7-28.html>
    -   <https://dev.mysql.com/doc/relnotes/mysql/8.0/en/news-8-0-18.html>
    -   <https://www.oracle.com/security-alerts/cpuoct2019.html>


### [[USN-4196-1](https://usn.ubuntu.com/4196-1/)] python-ecdsa vulnerabilities [11:42] {#usn-4196-1-python-ecdsa-vulnerabilities-11-42}

-   2 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-14859](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14859)
    -   [CVE-2019-14853](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14853)
-   Issues in handling DER encoding of signatures - failed to verify proper
    DER encoding but also might raise exceptions unexpectedly on valid input
    so would cause a DoS


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe and Alex discuss how to get into infosec [12:18] {#joe-and-alex-discuss-how-to-get-into-infosec-12-18}


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)