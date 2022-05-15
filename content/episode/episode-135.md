+++
title = "Episode 135"
description = """
  Ubuntu 20.04 LTS targeted at Tianfu Cup 2021 plus we cover security
  updates for Linux kernel, nginx, Ardour and strongSwan.
  """
date = 2021-10-22T14:51:00+10:30
lastmod = 2022-05-15T18:05:53+09:30
draft = false
weight = 1025
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E135.mp3"
podcast_duration = "11:43"
podcast_bytes = 9298436
permalink = "https://ubuntusecuritypodcast.org/episode-135/"
guid = "32f8190b01c40c620025da2d4df15636208c8728b25e10afb830cf123d6fb5df88a73581388ee3c82e7b96ea0f7f00b2fb20cce5404c49a4229f6853b8d921cd"
+++

## Overview {#overview}

Ubuntu 20.04 LTS targeted at Tianfu Cup 2021 plus we cover security
updates for Linux kernel, nginx, Ardour and strongSwan.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

24 unique CVEs addressed


### [[USN-5091-3](https://ubuntu.com/security/notices/USN-5091-3)] Linux kernel (Azure) regression {#usn-5091-3-linux-kernel--azure--regression}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-38204](https://ubuntu.com/security/CVE-2021-38204) <!-- low -->
    -   [CVE-2021-38199](https://ubuntu.com/security/CVE-2021-38199) <!-- medium -->
    -   [CVE-2021-38160](https://ubuntu.com/security/CVE-2021-38160) <!-- medium -->
    -   [CVE-2021-37576](https://ubuntu.com/security/CVE-2021-37576) <!-- medium -->
    -   [CVE-2021-3679](https://ubuntu.com/security/CVE-2021-3679) <!-- low -->
    -   [CVE-2021-33624](https://ubuntu.com/security/CVE-2021-33624) <!-- medium -->


### [[USN-5092-3](https://ubuntu.com/security/notices/USN-5092-3)] Linux kernel (Azure) regression [00:50] {#usn-5092-3-linux-kernel--azure--regression-00-50}

-   12 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-38205](https://ubuntu.com/security/CVE-2021-38205) <!-- low -->
    -   [CVE-2021-38204](https://ubuntu.com/security/CVE-2021-38204) <!-- low -->
    -   [CVE-2021-38201](https://ubuntu.com/security/CVE-2021-38201) <!-- medium -->
    -   [CVE-2021-38199](https://ubuntu.com/security/CVE-2021-38199) <!-- medium -->
    -   [CVE-2021-38160](https://ubuntu.com/security/CVE-2021-38160) <!-- medium -->
    -   [CVE-2021-37576](https://ubuntu.com/security/CVE-2021-37576) <!-- medium -->
    -   [CVE-2021-37159](https://ubuntu.com/security/CVE-2021-37159) <!-- low -->
    -   [CVE-2021-3679](https://ubuntu.com/security/CVE-2021-3679) <!-- low -->
    -   [CVE-2021-35477](https://ubuntu.com/security/CVE-2021-35477) <!-- medium -->
    -   [CVE-2021-34556](https://ubuntu.com/security/CVE-2021-34556) <!-- medium -->
    -   [CVE-2021-33624](https://ubuntu.com/security/CVE-2021-33624) <!-- medium -->
    -   [CVE-2021-41073](https://ubuntu.com/security/CVE-2021-41073) <!-- high -->
-   Failure to boot on large Azure instance types - caused by a patch that
    got backported to the 5.14 upstream stable kernel that was purported to
    head off possible future problems, but itself caused issues on say the
    `Standard_D48_v3` instance (48 vCPUs, 192GB RAM, 1.2TB storage) - dropped
    that patch to resolve the issue


### [[USN-5109-1](https://ubuntu.com/security/notices/USN-5109-1)] nginx vulnerability [01:44] {#usn-5109-1-nginx-vulnerability-01-44}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2017-20005](https://ubuntu.com/security/CVE-2017-20005) <!-- medium -->
-   Buffer overflow when handling files with modification dates a long time
    in the past - ie. 1969 or very far in the future - integer overflow in
    the autoindex module


### [[USN-5110-1](https://ubuntu.com/security/notices/USN-5110-1)] Ardour vulnerability [02:22] {#usn-5110-1-ardour-vulnerability-02-22}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-22617](https://ubuntu.com/security/CVE-2020-22617) <!-- medium -->
-   UAF in handling of crafted XML files - if using attacker provided files
    could DoS / RCE


### [[USN-5111-1](https://ubuntu.com/security/notices/USN-5111-1), [USN-5111-2](https://ubuntu.com/security/notices/USN-5111-2)] strongSwan vulnerabilities [02:39] {#usn-5111-1-usn-5111-2-strongswan-vulnerabilities-02-39}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2021-41991](https://ubuntu.com/security/CVE-2021-41991) <!-- medium -->
    -   [CVE-2021-41990](https://ubuntu.com/security/CVE-2021-41990) <!-- medium --> <!-- LTS only, not ESM -->
-   Integer overflow when replacing certs in cache - if can send many
    requests with different certs can fill cache and then cause replacement
    of cache entries when gets full - LRU algorithm could then cause integer
    overflow and hence OOB write as a result
-   Integer overflow in gmp plugin - crafted RSASSA-PSS signature in say a
    self-signed CA cert sent by an initiation


### [[USN-5113-1](https://ubuntu.com/security/notices/USN-5113-1)] Linux kernel vulnerabilities [04:13] {#usn-5113-1-linux-kernel-vulnerabilities-04-13}

-   8 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-42008](https://ubuntu.com/security/CVE-2021-42008) <!-- low -->
    -   [CVE-2021-40490](https://ubuntu.com/security/CVE-2021-40490) <!-- medium -->
    -   [CVE-2021-38166](https://ubuntu.com/security/CVE-2021-38166) <!-- medium -->
    -   [CVE-2021-3753](https://ubuntu.com/security/CVE-2021-3753) <!-- medium -->
    -   [CVE-2021-3743](https://ubuntu.com/security/CVE-2021-3743) <!-- medium -->
    -   [CVE-2021-3739](https://ubuntu.com/security/CVE-2021-3739) <!-- low -->
    -   [CVE-2021-3732](https://ubuntu.com/security/CVE-2021-3732) <!-- medium -->
    -   [CVE-2020-3702](https://ubuntu.com/security/CVE-2020-3702) <!-- medium -->
-   5.11 hirsute kernel (20.04 HWE)
-   overlayfs perms handling issue, race condition -&gt; OOB read in VT
    subsystem, integer overflow in hashtable implementation in BPF, ext4
    xattrs race -&gt; UAF, ath9k race condition -&gt; info leak


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Tianfu Cup 2021 [05:30] {#tianfu-cup-2021-05-30}

-   <https://www.tianfucup.com/en>
-   16-17th October - China's own Pwn2Own
-   Teams required to use original vulns to hack target platforms - 1.5m USD
    total reward
-   Targets
    -   Docker-CE on Ubuntu 20.04 w generic kernel running a Ubuntu 20.04
        desktop container with ssh access as root to the container running
        unprivileged w/o uidmap, volume mount and default bridge network - 60k
        USD price
    -   Ubuntu 20.04 / Centos 8 running in VMWare Workstation - unprivileged
        user to escalate to root - 40k USD
    -   Ubuntu + qemu-kvm - 20.04 desktop host, running 20.04 server in qemu -
        VM escape w/o sandbox escape - 60k USD, w/ sandbox escape 150k USD
-   3 5 minute attempts to run their exploits
-   According [to](https://therecord.media/windows-10-ios-15-ubuntu-chrome-fall-at-chinas-tianfu-hacking-contest/) [media](https://thehackernews.com/2021/10/windows-10-linux-ios-chrome-and-many.html) [reports](https://securityaffairs.co/wordpress/123476/hacking/tianfu-cup-2021-hacking-contest.html) - Ubuntu 20.04 root privesc - 4 times,
    Docker-CE and qemu VM - once
-   Also iPhone 13 Pro was hacked using a no-interaction RCE attack, plus
    Google Chrome to get kernel privesc on Windows as well
-   Also according to one media outlet "details unknown but vendors are
    expected to release patches in coming weeks" - so far no contact /
    details have been provided to us...
-   Same has happened in previous years - no details get provided to vendors
    so issues don't get patched - in the past, exploits which have been
    showcased at Tianfu have then [allegedly](https://www.technologyreview.com/2021/05/06/1024621/china-apple-spy-uyghur-hacker-tianfu/) gone on to be used in hacking
    campaigns by the Chinese government
-   Contrast with Pwn2Own - we are invited by organisers to watch and verify
    attempts in real-time to help judge whether exploits used are actually
    unique and new, and then ZDI provide details immediately regarding the
    vulns along with PoCs so we can patch them ASAP


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)