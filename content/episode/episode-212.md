+++
title = "Episode 212"
description = """
  With the Ubuntu Summit just around the corner, we preview a couple talks by the
  Ubuntu Security team, plus we look at security updates for OpenSSL, Sofia-SIP,
  AOM, ncurses, the Linux kernel and more.
  """
date = 2023-10-27T17:17:00+10:30
lastmod = 2023-10-27T17:17:58+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E212.mp3"
podcast_duration = 1386
podcast_bytes = 23384181
permalink = "https://ubuntusecuritypodcast.org/episode-212/"
guid = "b9f124891c17e7d652b7b94fae7a87dd0cb6be867565f08732a23ffad217536db19c9b79a575d0c8b27f2b5919704db113f2b2dfd4fc98c0233e82a5360e32f6"
+++

## Overview {#overview}

With the Ubuntu Summit just around the corner, we preview a couple talks by the
Ubuntu Security team, plus we look at security updates for OpenSSL, Sofia-SIP,
AOM, ncurses, the Linux kernel and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

91 unique CVEs addressed


### [[USN-6437-1](https://ubuntu.com/security/notices/USN-6437-1)] VIPS vulnerabilities (00:35) {#usn-6437-1-vips-vulnerabilities--00-35}

-   5 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Jammy (22.04 LTS)
    -   [CVE-2023-40032](https://ubuntu.com/security/CVE-2023-40032) <!-- medium -->
    -   [CVE-2021-27847](https://ubuntu.com/security/CVE-2021-27847) <!-- low -->
    -   [CVE-2020-20739](https://ubuntu.com/security/CVE-2020-20739) <!-- medium -->
    -   [CVE-2019-6976](https://ubuntu.com/security/CVE-2019-6976) <!-- medium -->
    -   [CVE-2018-7998](https://ubuntu.com/security/CVE-2018-7998) <!-- medium -->
-   Image processing library / CLI tool
-   NULL ptr derefs + divide by zero -&gt; crash -&gt; DoS
-   info leak since would fail to clear memory and leak this in the generated image


### [[USN-6435-1](https://ubuntu.com/security/notices/USN-6435-1)] OpenSSL vulnerabilities (01:26) {#usn-6435-1-openssl-vulnerabilities--01-26}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-3817](https://ubuntu.com/security/CVE-2023-3817) <!-- low -->
    -   [CVE-2023-3446](https://ubuntu.com/security/CVE-2023-3446) <!-- low -->
-   CPU-based DoS via an execssively large DH modulus (`p` parameter) value (over 10,000 bits)
-   OpenSSL by default will try and validate if the modulus over 10,000 bits and
    raise an error - but before the error is raised it would still check other
    aspects of the supplied key / parameters which in turn could use the `p` value
    and hence take an excessive amount of time - fixed by checking this earlier
    and erroring out in that case
-   Then was found that the `q` parameter could also be abused in the same way -
    since the size of this has to be less than `p` was fixed by just checking it
    against this


### [[USN-6450-1](https://ubuntu.com/security/notices/USN-6450-1)] OpenSSL vulnerabilities {#usn-6450-1-openssl-vulnerabilities}

-   4 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-3817](https://ubuntu.com/security/CVE-2023-3817) <!-- low -->
    -   [CVE-2023-3446](https://ubuntu.com/security/CVE-2023-3446) <!-- low -->
    -   [CVE-2023-2975](https://ubuntu.com/security/CVE-2023-2975) <!-- low -->
    -   [CVE-2023-5363](https://ubuntu.com/security/CVE-2023-5363) <!-- medium -->
-   Two CPU-based DoS issues above plus
    -   Possible truncation / overrun during the initialisation of various ciphers if
        the key or IV lengths differ compared to when initially established - some
        ciphers allow a variable length IV (e.g. AES-GCM) and so it is possible that
        an application will use a non-standard IV length during the use of the cipher
        compared to when they initialise it
        -   The API for this was only "recently" introduced (3.x) - and in general not a
            lot of applications will be affected
    -   Issue specific to the AES-SIV (mode of AES that provides deterministic
        nonce-less key wrapping - used for key wrapping when transporting
        cryptographic keys; as well as nonce-based authenticated encryption that is
        resistant to nonce reuse)
        -   AES-SIV allows to perform authentication of data - and to do this the
            relevant OpenSSL API's should be called with an input buffer length of 0
            and a NULL ptr for the output buffer - BUT if the associated data to be
            authenticated was empty, in this case, OpenSSL would return success
            without doing any authentication
        -   In practice this is unlikely to be an issue since it doesn't not affect
            non-empty data authentication which is the vast majority of use-cases


### [[USN-6165-2](https://ubuntu.com/security/notices/USN-6165-2)] GLib vulnerabilities (07:57) {#usn-6165-2-glib-vulnerabilities--07-57}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-32665](https://ubuntu.com/security/CVE-2023-32665) <!-- medium -->
    -   [CVE-2023-32643](https://ubuntu.com/security/CVE-2023-32643) <!-- medium -->
    -   [CVE-2023-32636](https://ubuntu.com/security/CVE-2023-32636) <!-- medium -->
    -   [CVE-2023-32611](https://ubuntu.com/security/CVE-2023-32611) <!-- medium -->
    -   [CVE-2023-29499](https://ubuntu.com/security/CVE-2023-29499) <!-- medium -->
-   [[USN-6165-1] GLib vulnerabilities from Episode 199]({{< relref "episode-199#usn-6165-1-glib-vulnerabilities--11-07" >}})


### [[USN-6374-2](https://ubuntu.com/security/notices/USN-6374-2)] Mutt vulnerabilities (05:08) {#usn-6374-2-mutt-vulnerabilities--05-08}

-   2 CVEs addressed in Mantic (23.10)
    -   [CVE-2023-4875](https://ubuntu.com/security/CVE-2023-4875) <!-- medium -->
    -   [CVE-2023-4874](https://ubuntu.com/security/CVE-2023-4874) <!-- medium -->
-   [[USN-6374-1] Mutt vulnerabilities from Episode 210]({{< relref "episode-210#usn-6374-1-mutt-vulnerabilities--07-16" >}})


### [[USN-6438-1](https://ubuntu.com/security/notices/USN-6438-1), [USN-6438-2](https://ubuntu.com/security/notices/USN-6438-2), [USN-6427-2](https://ubuntu.com/security/notices/USN-6427-2)] .NET vulnerabilities (05:15) {#usn-6438-1-usn-6438-2-usn-6427-2-dot-net-vulnerabilities--05-15}

-   2 CVEs addressed in Mantic (23.10)
    -   [CVE-2023-44487](https://ubuntu.com/security/CVE-2023-44487) <!-- medium -->
    -   [CVE-2023-36799](https://ubuntu.com/security/CVE-2023-36799) <!-- medium -->
-   HTTP/2 Rapid Reset - DoS on server side by clients sending a large number of
    requests and immediately cancelling them many times over and over - exploited
    in the wild recently, achieving the largest DoS attack bandwidths seen -
    requires HTTP/2 implementations to essentially do heuristics over time to
    track allocated streams against connections and block the connection when too
    many are made or similar
    -   Fix for Kestrel web server in .NET


### [[USN-6362-2](https://ubuntu.com/security/notices/USN-6362-2)] .Net regressions {#usn-6362-2-dot-net-regressions}

-   1 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-36799](https://ubuntu.com/security/CVE-2023-36799) <!-- medium -->
-   [[USN-6362-1] .NET vulnerability from Episode 209]({{< relref "episode-209#usn-6362-1-dot-net-vulnerability--06-46" >}})
-   Fix for DoS in handling of X.509 certificates


### [[USN-6199-2](https://ubuntu.com/security/notices/USN-6199-2)] PHP vulnerability (06:31) {#usn-6199-2-php-vulnerability--06-31}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-3247](https://ubuntu.com/security/CVE-2023-3247) <!-- medium -->
-   [[USN-6199-1] PHP vulnerability from Episode 202]({{< relref "episode-202#usn-6199-1-php-vulnerability--10-35" >}})


### [[USN-6403-2](https://ubuntu.com/security/notices/USN-6403-2)] libvpx vulnerabilities (06:39) {#usn-6403-2-libvpx-vulnerabilities--06-39}

-   2 CVEs addressed in Bionic ESM (18.04 ESM)
    -   [CVE-2023-5217](https://ubuntu.com/security/CVE-2023-5217) <!-- medium -->
    -   [CVE-2023-44488](https://ubuntu.com/security/CVE-2023-44488) <!-- medium -->
-   WebM VP8/VP9 video en/decoder
-   Heap buffer overflow -&gt; DoS/RCE
-   OOB read -&gt; DoS


### [[USN-6408-2](https://ubuntu.com/security/notices/USN-6408-2)] libXpm vulnerabilities (07:00) {#usn-6408-2-libxpm-vulnerabilities--07-00}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-43789](https://ubuntu.com/security/CVE-2023-43789) <!-- medium -->
    -   [CVE-2023-43788](https://ubuntu.com/security/CVE-2023-43788) <!-- medium -->
    -   [CVE-2023-43787](https://ubuntu.com/security/CVE-2023-43787) <!-- medium -->
    -   [CVE-2023-43786](https://ubuntu.com/security/CVE-2023-43786) <!-- medium -->
-   Infinite recursion -&gt; stack exhaustion -&gt; crash -&gt; DoS
-   Integer overflow -&gt; heap buffer overflow -&gt; RCE/DoS
-   Two different OOB reads -&gt; crash -&gt; DoS


### [[USN-6448-1](https://ubuntu.com/security/notices/USN-6448-1)] Sofia-SIP vulnerability (09:01) {#usn-6448-1-sofia-sip-vulnerability--09-01}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-32307](https://ubuntu.com/security/CVE-2023-32307) <!-- medium -->
-   SIP user agent - integer overflows and resulting heap buffer overflows due to
    missing length checks in the STUN message parser -&gt; RCE
-   Also fixed a OOB read as well -&gt; DoS


### [[USN-6422-2](https://ubuntu.com/security/notices/USN-6422-2)] Ring vulnerabilities (09:17) {#usn-6422-2-ring-vulnerabilities--09-17}

-   20 CVEs addressed in Mantic (23.10)
    -   [CVE-2022-21722](https://ubuntu.com/security/CVE-2022-21722) <!-- medium -->
    -   [CVE-2022-39244](https://ubuntu.com/security/CVE-2022-39244) <!-- medium -->
    -   [CVE-2022-31031](https://ubuntu.com/security/CVE-2022-31031) <!-- medium -->
    -   [CVE-2022-24793](https://ubuntu.com/security/CVE-2022-24793) <!-- medium -->
    -   [CVE-2022-24764](https://ubuntu.com/security/CVE-2022-24764) <!-- medium -->
    -   [CVE-2022-24763](https://ubuntu.com/security/CVE-2022-24763) <!-- medium -->
    -   [CVE-2022-24754](https://ubuntu.com/security/CVE-2022-24754) <!-- medium -->
    -   [CVE-2022-23608](https://ubuntu.com/security/CVE-2022-23608) <!-- low -->
    -   [CVE-2022-23547](https://ubuntu.com/security/CVE-2022-23547) <!-- medium -->
    -   [CVE-2022-23537](https://ubuntu.com/security/CVE-2022-23537) <!-- medium -->
    -   [CVE-2022-21723](https://ubuntu.com/security/CVE-2022-21723) <!-- medium -->
    -   [CVE-2021-43845](https://ubuntu.com/security/CVE-2021-43845) <!-- medium -->
    -   [CVE-2021-43804](https://ubuntu.com/security/CVE-2021-43804) <!-- medium -->
    -   [CVE-2021-43303](https://ubuntu.com/security/CVE-2021-43303) <!-- medium -->
    -   [CVE-2021-43302](https://ubuntu.com/security/CVE-2021-43302) <!-- medium -->
    -   [CVE-2021-43301](https://ubuntu.com/security/CVE-2021-43301) <!-- medium -->
    -   [CVE-2021-43300](https://ubuntu.com/security/CVE-2021-43300) <!-- medium -->
    -   [CVE-2021-43299](https://ubuntu.com/security/CVE-2021-43299) <!-- medium -->
    -   [CVE-2023-27585](https://ubuntu.com/security/CVE-2023-27585) <!-- medium -->
    -   [CVE-2021-37706](https://ubuntu.com/security/CVE-2021-37706) <!-- medium -->
-   Voice / video and chat platform (now called Jami, contains embedded copy of
    PJSIP - library implementing various related protocols for remote
    communication like SIP, STUN, RTP, ICE and others)
-   Also missed various length checks, allowing possible integer underflow -&gt; crash / memory corruption -&gt; RCE
-   Buffer overflow when using the internal DNS resolver


### [[USN-6449-1](https://ubuntu.com/security/notices/USN-6449-1)] FFmpeg vulnerabilities (09:58) {#usn-6449-1-ffmpeg-vulnerabilities--09-58}

-   8 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-48434](https://ubuntu.com/security/CVE-2022-48434) <!-- medium -->
    -   [CVE-2021-38094](https://ubuntu.com/security/CVE-2021-38094) <!-- medium -->
    -   [CVE-2021-38093](https://ubuntu.com/security/CVE-2021-38093) <!-- medium -->
    -   [CVE-2021-38092](https://ubuntu.com/security/CVE-2021-38092) <!-- medium -->
    -   [CVE-2021-38091](https://ubuntu.com/security/CVE-2021-38091) <!-- medium -->
    -   [CVE-2021-38090](https://ubuntu.com/security/CVE-2021-38090) <!-- medium -->
    -   [CVE-2020-20898](https://ubuntu.com/security/CVE-2020-20898) <!-- medium -->
    -   [CVE-2020-22038](https://ubuntu.com/security/CVE-2020-22038) <!-- medium -->
-   Various memory leaks -&gt; DoS, plus some integer overflows -&gt; buffer overflows
    in various parsers for different media types


### [[USN-6447-1](https://ubuntu.com/security/notices/USN-6447-1)] AOM vulnerabilities (11:32) {#usn-6447-1-aom-vulnerabilities--11-32}

-   7 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-30475](https://ubuntu.com/security/CVE-2021-30475) <!-- medium -->
    -   [CVE-2021-30474](https://ubuntu.com/security/CVE-2021-30474) <!-- low -->
    -   [CVE-2021-30473](https://ubuntu.com/security/CVE-2021-30473) <!-- medium -->
    -   [CVE-2020-36135](https://ubuntu.com/security/CVE-2020-36135) <!-- medium -->
    -   [CVE-2020-36133](https://ubuntu.com/security/CVE-2020-36133) <!-- medium -->
    -   [CVE-2020-36131](https://ubuntu.com/security/CVE-2020-36131) <!-- medium -->
    -   [CVE-2020-36130](https://ubuntu.com/security/CVE-2020-36130) <!-- medium -->
-   AV1 Video Codec Library - used by things like gstreamer, libavcodec - in turn
    is used by a huge number of multimedia applications from blender, ffmpeg,
    kodi, mplayer, obs-studio, vlc and more
    -   Very much a case of [xkcd 2347 (Dependency)](https://xkcd.com/2347/)
-   Various buffer overflows, use-after-frees, stack buffer overflow, NULL ptr
    derefs etc.


### [[USN-6288-2](https://ubuntu.com/security/notices/USN-6288-2)] MySQL vulnerability (12:40) {#usn-6288-2-mysql-vulnerability--12-40}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-22053](https://ubuntu.com/security/CVE-2023-22053) <!-- medium -->
-   [[USN-6288-1] MySQL vulnerabilities from Episode 205]({{< relref "episode-205#usn-6288-1-mysql-vulnerabilities" >}})


### [[USN-6451-1](https://ubuntu.com/security/notices/USN-6451-1)] ncurses vulnerability (12:47) {#usn-6451-1-ncurses-vulnerability--12-47}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2020-19189](https://ubuntu.com/security/CVE-2020-19189) <!-- medium -->
-   Heap buffer overflow via crafted terminfo file - found by fuzzing `infotocap`
    -   terminfo files are usually trusted content so unlikely to be an issue in
        practice


### [[USN-6416-3](https://ubuntu.com/security/notices/USN-6416-3)] Linux kernel (Raspberry Pi) vulnerabilities (14:00) {#usn-6416-3-linux-kernel--raspberry-pi--vulnerabilities--14-00}

-   13 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-44466](https://ubuntu.com/security/CVE-2023-44466) <!-- medium -->
    -   [CVE-2023-4273](https://ubuntu.com/security/CVE-2023-4273) <!-- medium -->
    -   [CVE-2023-4194](https://ubuntu.com/security/CVE-2023-4194) <!-- medium -->
    -   [CVE-2023-4155](https://ubuntu.com/security/CVE-2023-4155) <!-- medium -->
    -   [CVE-2023-4132](https://ubuntu.com/security/CVE-2023-4132) <!-- low -->
    -   [CVE-2023-3866](https://ubuntu.com/security/CVE-2023-3866) <!-- medium -->
    -   [CVE-2023-3865](https://ubuntu.com/security/CVE-2023-3865) <!-- medium -->
    -   [CVE-2023-3863](https://ubuntu.com/security/CVE-2023-3863) <!-- medium -->
    -   [CVE-2023-38432](https://ubuntu.com/security/CVE-2023-38432) <!-- medium -->
    -   [CVE-2023-3338](https://ubuntu.com/security/CVE-2023-3338) <!-- medium -->
    -   [CVE-2023-2156](https://ubuntu.com/security/CVE-2023-2156) <!-- medium -->
    -   [CVE-2023-20569](https://ubuntu.com/security/CVE-2023-20569) <!-- high -->
    -   [CVE-2023-1206](https://ubuntu.com/security/CVE-2023-1206) <!-- medium -->
-   5.15 raspi for 22.04 LTS
-   Most interesting vuln fixed is AMD "INCEPTION" - [[USN-6319-1] AMD Microcode
    vulnerability from Episode 207]({{< relref "episode-207#usn-6319-1-amd-microcode-vulnerability--10-33" >}}) - speculative execution attack similar to the
    original Spectre
-   Have now added a mitigation within the kernel itself rather than having to
    rely on CPU microcode (particularly when that microcode only covers a subset
    of the affected CPUs)


### [[USN-6439-1](https://ubuntu.com/security/notices/USN-6439-1), [USN-6439-2](https://ubuntu.com/security/notices/USN-6439-2)] Linux kernel vulnerabilities (15:09) {#usn-6439-1-usn-6439-2-linux-kernel-vulnerabilities--15-09}

-   11 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2023-4921](https://ubuntu.com/security/CVE-2023-4921) <!-- high -->
    -   [CVE-2023-4881](https://ubuntu.com/security/CVE-2023-4881) <!-- high -->
    -   [CVE-2023-4623](https://ubuntu.com/security/CVE-2023-4623) <!-- high -->
    -   [CVE-2023-4622](https://ubuntu.com/security/CVE-2023-4622) <!-- high -->
    -   [CVE-2023-42755](https://ubuntu.com/security/CVE-2023-42755) <!-- high -->
    -   [CVE-2023-42753](https://ubuntu.com/security/CVE-2023-42753) <!-- high -->
    -   [CVE-2023-42752](https://ubuntu.com/security/CVE-2023-42752) <!-- high -->
    -   [CVE-2023-3772](https://ubuntu.com/security/CVE-2023-3772) <!-- medium -->
    -   [CVE-2023-34319](https://ubuntu.com/security/CVE-2023-34319) <!-- medium -->
    -   [CVE-2023-31083](https://ubuntu.com/security/CVE-2023-31083) <!-- low -->
    -   [CVE-2023-1206](https://ubuntu.com/security/CVE-2023-1206) <!-- medium -->
-   4.4 generic,low-latency,kvm,aws etc
-   includes various high priority fixes which we've covered in previous episodes


### [[USN-6440-1](https://ubuntu.com/security/notices/USN-6440-1), [USN-6440-2](https://ubuntu.com/security/notices/USN-6440-2)] Linux kernel vulnerabilities (15:40) {#usn-6440-1-usn-6440-2-linux-kernel-vulnerabilities--15-40}

-   12 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-4921](https://ubuntu.com/security/CVE-2023-4921) <!-- high -->
    -   [CVE-2023-4881](https://ubuntu.com/security/CVE-2023-4881) <!-- high -->
    -   [CVE-2023-4623](https://ubuntu.com/security/CVE-2023-4623) <!-- high -->
    -   [CVE-2023-4622](https://ubuntu.com/security/CVE-2023-4622) <!-- high -->
    -   [CVE-2023-42755](https://ubuntu.com/security/CVE-2023-42755) <!-- high -->
    -   [CVE-2023-42753](https://ubuntu.com/security/CVE-2023-42753) <!-- high -->
    -   [CVE-2023-42752](https://ubuntu.com/security/CVE-2023-42752) <!-- high -->
    -   [CVE-2023-3772](https://ubuntu.com/security/CVE-2023-3772) <!-- medium -->
    -   [CVE-2023-34319](https://ubuntu.com/security/CVE-2023-34319) <!-- medium -->
    -   [CVE-2023-31083](https://ubuntu.com/security/CVE-2023-31083) <!-- low -->
    -   [CVE-2023-1206](https://ubuntu.com/security/CVE-2023-1206) <!-- medium -->
    -   [CVE-2023-0597](https://ubuntu.com/security/CVE-2023-0597) <!-- medium -->
-   4.15
    -   kvm, gcp, aws, azure, generic, lowlatency on 18.04 / 16.04 HWE
    -   azure 14.04
-   same as above


### [[USN-6441-1](https://ubuntu.com/security/notices/USN-6441-1), [USN-6441-2](https://ubuntu.com/security/notices/USN-6441-2)] Linux kernel vulnerabilities (15:50) {#usn-6441-1-usn-6441-2-linux-kernel-vulnerabilities--15-50}

-   9 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-4921](https://ubuntu.com/security/CVE-2023-4921) <!-- high -->
    -   [CVE-2023-4881](https://ubuntu.com/security/CVE-2023-4881) <!-- high -->
    -   [CVE-2023-4623](https://ubuntu.com/security/CVE-2023-4623) <!-- high -->
    -   [CVE-2023-4622](https://ubuntu.com/security/CVE-2023-4622) <!-- high -->
    -   [CVE-2023-42756](https://ubuntu.com/security/CVE-2023-42756) <!-- high -->
    -   [CVE-2023-42755](https://ubuntu.com/security/CVE-2023-42755) <!-- high -->
    -   [CVE-2023-42753](https://ubuntu.com/security/CVE-2023-42753) <!-- high -->
    -   [CVE-2023-42752](https://ubuntu.com/security/CVE-2023-42752) <!-- high -->
    -   [CVE-2023-34319](https://ubuntu.com/security/CVE-2023-34319) <!-- medium -->
-   5.4 xilinx zyncmp, ibm, gkeop, kvm, oracle, aws, gcp, azure, generic, lowlatency


### [[USN-6442-1](https://ubuntu.com/security/notices/USN-6442-1)] Linux kernel (BlueField) vulnerabilities {#usn-6442-1-linux-kernel--bluefield--vulnerabilities}

-   10 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-4921](https://ubuntu.com/security/CVE-2023-4921) <!-- high -->
    -   [CVE-2023-4881](https://ubuntu.com/security/CVE-2023-4881) <!-- high -->
    -   [CVE-2023-4623](https://ubuntu.com/security/CVE-2023-4623) <!-- high -->
    -   [CVE-2023-4622](https://ubuntu.com/security/CVE-2023-4622) <!-- high -->
    -   [CVE-2023-42756](https://ubuntu.com/security/CVE-2023-42756) <!-- high -->
    -   [CVE-2023-42755](https://ubuntu.com/security/CVE-2023-42755) <!-- high -->
    -   [CVE-2023-42753](https://ubuntu.com/security/CVE-2023-42753) <!-- high -->
    -   [CVE-2023-42752](https://ubuntu.com/security/CVE-2023-42752) <!-- high -->
    -   [CVE-2023-4004](https://ubuntu.com/security/CVE-2023-4004) <!-- high -->
    -   [CVE-2023-34319](https://ubuntu.com/security/CVE-2023-34319) <!-- medium -->
-   5.4 bluefiled (same as above)


### [[USN-6443-1](https://ubuntu.com/security/notices/USN-6443-1)] Linux kernel (OEM) vulnerabilities (15:55) {#usn-6443-1-linux-kernel--oem--vulnerabilities--15-55}

-   6 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-5197](https://ubuntu.com/security/CVE-2023-5197) <!-- medium -->
    -   [CVE-2023-4881](https://ubuntu.com/security/CVE-2023-4881) <!-- high -->
    -   [CVE-2023-42756](https://ubuntu.com/security/CVE-2023-42756) <!-- high -->
    -   [CVE-2023-42755](https://ubuntu.com/security/CVE-2023-42755) <!-- high -->
    -   [CVE-2023-42752](https://ubuntu.com/security/CVE-2023-42752) <!-- high -->
    -   [CVE-2023-4244](https://ubuntu.com/security/CVE-2023-4244) <!-- high -->
-   6.1 oem


### [[USN-6444-1](https://ubuntu.com/security/notices/USN-6444-1), [USN-6444-2](https://ubuntu.com/security/notices/USN-6444-2)] Linux kernel vulnerabilities (16:46) {#usn-6444-1-usn-6444-2-linux-kernel-vulnerabilities--16-46}

-   11 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-5197](https://ubuntu.com/security/CVE-2023-5197) <!-- medium -->
    -   [CVE-2023-4921](https://ubuntu.com/security/CVE-2023-4921) <!-- high -->
    -   [CVE-2023-4881](https://ubuntu.com/security/CVE-2023-4881) <!-- high -->
    -   [CVE-2023-4623](https://ubuntu.com/security/CVE-2023-4623) <!-- high -->
    -   [CVE-2023-4622](https://ubuntu.com/security/CVE-2023-4622) <!-- high -->
    -   [CVE-2023-42756](https://ubuntu.com/security/CVE-2023-42756) <!-- high -->
    -   [CVE-2023-42755](https://ubuntu.com/security/CVE-2023-42755) <!-- high -->
    -   [CVE-2023-42753](https://ubuntu.com/security/CVE-2023-42753) <!-- high -->
    -   [CVE-2023-42752](https://ubuntu.com/security/CVE-2023-42752) <!-- high -->
    -   [CVE-2023-4244](https://ubuntu.com/security/CVE-2023-4244) <!-- high -->
    -   [CVE-2023-34319](https://ubuntu.com/security/CVE-2023-34319) <!-- medium -->
-   6.2 starfive, aws, oracle, azure, kvm, lowlatency, raspi, gcp, generic for 23.04


### [[USN-6445-1](https://ubuntu.com/security/notices/USN-6445-1), [USN-6445-2](https://ubuntu.com/security/notices/USN-6445-2)] Linux kernel (Intel IoTG) vulnerabilities {#usn-6445-1-usn-6445-2-linux-kernel--intel-iotg--vulnerabilities}

-   24 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-5197](https://ubuntu.com/security/CVE-2023-5197) <!-- medium -->
    -   [CVE-2023-4921](https://ubuntu.com/security/CVE-2023-4921) <!-- high -->
    -   [CVE-2023-4881](https://ubuntu.com/security/CVE-2023-4881) <!-- high -->
    -   [CVE-2023-4623](https://ubuntu.com/security/CVE-2023-4623) <!-- high -->
    -   [CVE-2023-4622](https://ubuntu.com/security/CVE-2023-4622) <!-- high -->
    -   [CVE-2023-44466](https://ubuntu.com/security/CVE-2023-44466) <!-- medium -->
    -   [CVE-2023-42756](https://ubuntu.com/security/CVE-2023-42756) <!-- high -->
    -   [CVE-2023-42755](https://ubuntu.com/security/CVE-2023-42755) <!-- high -->
    -   [CVE-2023-42753](https://ubuntu.com/security/CVE-2023-42753) <!-- high -->
    -   [CVE-2023-42752](https://ubuntu.com/security/CVE-2023-42752) <!-- high -->
    -   [CVE-2023-4273](https://ubuntu.com/security/CVE-2023-4273) <!-- medium -->
    -   [CVE-2023-4244](https://ubuntu.com/security/CVE-2023-4244) <!-- high -->
    -   [CVE-2023-4194](https://ubuntu.com/security/CVE-2023-4194) <!-- medium -->
    -   [CVE-2023-4155](https://ubuntu.com/security/CVE-2023-4155) <!-- medium -->
    -   [CVE-2023-4132](https://ubuntu.com/security/CVE-2023-4132) <!-- low -->
    -   [CVE-2023-3866](https://ubuntu.com/security/CVE-2023-3866) <!-- medium -->
    -   [CVE-2023-3865](https://ubuntu.com/security/CVE-2023-3865) <!-- medium -->
    -   [CVE-2023-3863](https://ubuntu.com/security/CVE-2023-3863) <!-- medium -->
    -   [CVE-2023-38432](https://ubuntu.com/security/CVE-2023-38432) <!-- medium -->
    -   [CVE-2023-34319](https://ubuntu.com/security/CVE-2023-34319) <!-- medium -->
    -   [CVE-2023-3338](https://ubuntu.com/security/CVE-2023-3338) <!-- medium -->
    -   [CVE-2023-2156](https://ubuntu.com/security/CVE-2023-2156) <!-- medium -->
    -   [CVE-2023-20569](https://ubuntu.com/security/CVE-2023-20569) <!-- high -->
    -   [CVE-2023-1206](https://ubuntu.com/security/CVE-2023-1206) <!-- medium -->
-   5.15 intel iotg


### [[USN-6446-1](https://ubuntu.com/security/notices/USN-6446-1), [USN-6446-2](https://ubuntu.com/security/notices/USN-6446-2)] Linux kernel vulnerabilities {#usn-6446-1-usn-6446-2-linux-kernel-vulnerabilities}

-   11 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-5197](https://ubuntu.com/security/CVE-2023-5197) <!-- medium -->
    -   [CVE-2023-4921](https://ubuntu.com/security/CVE-2023-4921) <!-- high -->
    -   [CVE-2023-4881](https://ubuntu.com/security/CVE-2023-4881) <!-- high -->
    -   [CVE-2023-4623](https://ubuntu.com/security/CVE-2023-4623) <!-- high -->
    -   [CVE-2023-4622](https://ubuntu.com/security/CVE-2023-4622) <!-- high -->
    -   [CVE-2023-42756](https://ubuntu.com/security/CVE-2023-42756) <!-- high -->
    -   [CVE-2023-42755](https://ubuntu.com/security/CVE-2023-42755) <!-- high -->
    -   [CVE-2023-42753](https://ubuntu.com/security/CVE-2023-42753) <!-- high -->
    -   [CVE-2023-42752](https://ubuntu.com/security/CVE-2023-42752) <!-- high -->
    -   [CVE-2023-4244](https://ubuntu.com/security/CVE-2023-4244) <!-- high -->
    -   [CVE-2023-34319](https://ubuntu.com/security/CVE-2023-34319) <!-- medium -->
-   5.15 gkeop, nvidia, ibm, raspi, gcp, gke, kvm, oracle, aws, azure, azure-fde


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Preparation for Riga Product Roadmap Sprint, Ubuntu Summit and Engineering Sprint (17:33) {#preparation-for-riga-product-roadmap-sprint-ubuntu-summit-and-engineering-sprint--17-33}

-   Ubuntu Summit
    -   <https://events.canonical.com/event/31/>
    -   Mark Esler will be presenting "Improving FOSS Security" - designed for FOSS
        maintainers who want to be proactive about security and protecting their
        users
    -   Tobias Heider will be presenting with Hector Martin on Asahi Linux and in
        particular Ubuntu Asahi - community project to bring the Asahi Linux work to
        Ubuntu (also was a great shout-out from Joe Ressington on the most recent
        [Late Night Linux](https://latenightlinux.com/late-night-linux-episode-252/) plus a good write-up on [omgubuntu](https://www.omgubuntu.co.uk/2023/10/ubuntu-ashai-for-apple-silicon))


### Goodbye and good luck to David Lane (21:31) {#goodbye-and-good-luck-to-david-lane--21-31}

-   Led the snap store reviewers work - much more streamlined process for folks
    interacting on the snapcraft forum
-   Great manager + engineer and a great friend
-   See you at b-sides cbr in 2024


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
