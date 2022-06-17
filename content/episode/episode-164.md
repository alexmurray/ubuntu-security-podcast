+++
title = "Episode 164"
description = """
  More Intel CPU issues, including Hertzbleed and MMIO stale data, plus we
  cover security vulnerabilities and updates for ca-certificates, Varnish
  Cache, FFmpeg, Firefox, PHP and more.
  """
date = 2022-06-17T19:17:00+09:30
lastmod = 2022-06-17T19:17:39+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E164.mp3"
podcast_duration = 710
podcast_bytes = 8622745
permalink = "https://ubuntusecuritypodcast.org/episode-164/"
guid = "3ae25f6f37c5cadc9898038d54b3f94bb44ae39757365c96ff47956f056a7290c39fdf2e8f4565751021bb25e3698f5221352c86135c1866d88aa4a3a45d7ec2"
+++

## Overview {#overview}

More Intel CPU issues, including Hertzbleed and MMIO stale data, plus we
cover security vulnerabilities and updates for ca-certificates, Varnish
Cache, FFmpeg, Firefox, PHP and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

64 unique CVEs addressed


### [[USN-5473-1](https://ubuntu.com/security/notices/USN-5473-1)] ca-certificates update [00:41] {#usn-5473-1-ca-certificates-update-00-41}

-   Affecting Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
-   Updates to the latest 2.50 version of the Mozilla CA bundle - in
    particular this removes a bunch of expired certs plus an old (but still
    valid) GeoTrust certificate and others - also adds some new CA certs from
    GlobalTrust, Certum, GlobalSign too


### [[USN-5396-2](https://ubuntu.com/security/notices/USN-5396-2)] Ghostscript vulnerability [01:30] {#usn-5396-2-ghostscript-vulnerability-01-30}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2019-25059](https://ubuntu.com/security/CVE-2019-25059) <!-- medium -->
-   [Episode 158](https://ubuntusecuritypodcast.org/episode-158/)


### [[USN-5474-1](https://ubuntu.com/security/notices/USN-5474-1)] Varnish Cache vulnerabilities [01:41] {#usn-5474-1-varnish-cache-vulnerabilities-01-41}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-23959](https://ubuntu.com/security/CVE-2022-23959) <!-- medium -->
    -   [CVE-2021-36740](https://ubuntu.com/security/CVE-2021-36740) <!-- medium -->
    -   [CVE-2020-11653](https://ubuntu.com/security/CVE-2020-11653) <!-- low -->
    -   [CVE-2019-20637](https://ubuntu.com/security/CVE-2019-20637) <!-- medium -->
-   Thanks to Luís Infante da Câmara for preparing, testing and providing the
    debdiff's for these updates
    -   Possible HTTP/1 and HTTP/2 request smuggling attacks
    -   DoS via triggering an assertion failure
    -   Pointer of one client reused on the next if both share the same
        connection - can expose info from the old client to the new one


### [[USN-5472-1](https://ubuntu.com/security/notices/USN-5472-1)] FFmpeg vulnerabilities [02:30] {#usn-5472-1-ffmpeg-vulnerabilities-02-30}

-   35 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2021-38291](https://ubuntu.com/security/CVE-2021-38291) <!-- medium -->
    -   [CVE-2020-22025](https://ubuntu.com/security/CVE-2020-22025) <!-- medium -->
    -   [CVE-2022-1475](https://ubuntu.com/security/CVE-2022-1475) <!-- medium -->
    -   [CVE-2021-38171](https://ubuntu.com/security/CVE-2021-38171) <!-- medium -->
    -   [CVE-2021-38114](https://ubuntu.com/security/CVE-2021-38114) <!-- medium -->
    -   [CVE-2020-35965](https://ubuntu.com/security/CVE-2020-35965) <!-- medium -->
    -   [CVE-2020-22037](https://ubuntu.com/security/CVE-2020-22037) <!-- medium -->
    -   [CVE-2020-22035](https://ubuntu.com/security/CVE-2020-22035) <!-- medium -->
    -   [CVE-2020-22030](https://ubuntu.com/security/CVE-2020-22030) <!-- medium -->
    -   [CVE-2020-22029](https://ubuntu.com/security/CVE-2020-22029) <!-- medium -->
    -   [CVE-2020-22027](https://ubuntu.com/security/CVE-2020-22027) <!-- medium -->
    -   [CVE-2020-22033](https://ubuntu.com/security/CVE-2020-22033) <!-- medium -->
    -   [CVE-2020-22021](https://ubuntu.com/security/CVE-2020-22021) <!-- medium -->
    -   [CVE-2020-22019](https://ubuntu.com/security/CVE-2020-22019) <!-- medium -->
    -   [CVE-2020-22042](https://ubuntu.com/security/CVE-2020-22042) <!-- medium -->
    -   [CVE-2020-22036](https://ubuntu.com/security/CVE-2020-22036) <!-- medium -->
    -   [CVE-2020-22034](https://ubuntu.com/security/CVE-2020-22034) <!-- medium -->
    -   [CVE-2020-22032](https://ubuntu.com/security/CVE-2020-22032) <!-- medium -->
    -   [CVE-2020-22031](https://ubuntu.com/security/CVE-2020-22031) <!-- medium -->
    -   [CVE-2020-22028](https://ubuntu.com/security/CVE-2020-22028) <!-- medium -->
    -   [CVE-2020-22026](https://ubuntu.com/security/CVE-2020-22026) <!-- medium -->
    -   [CVE-2022-22025](https://ubuntu.com/security/CVE-2022-22025) <!--  -->
    -   [CVE-2020-22023](https://ubuntu.com/security/CVE-2020-22023) <!-- medium -->
    -   [CVE-2020-22022](https://ubuntu.com/security/CVE-2020-22022) <!-- medium -->
    -   [CVE-2020-22020](https://ubuntu.com/security/CVE-2020-22020) <!-- medium -->
    -   [CVE-2020-22017](https://ubuntu.com/security/CVE-2020-22017) <!-- medium -->
    -   [CVE-2020-22016](https://ubuntu.com/security/CVE-2020-22016) <!-- medium -->
    -   [CVE-2020-22015](https://ubuntu.com/security/CVE-2020-22015) <!-- medium -->
    -   [CVE-2020-21697](https://ubuntu.com/security/CVE-2020-21697) <!-- medium -->
    -   [CVE-2020-21688](https://ubuntu.com/security/CVE-2020-21688) <!-- medium -->
    -   [CVE-2020-21041](https://ubuntu.com/security/CVE-2020-21041) <!-- medium -->
    -   [CVE-2020-20450](https://ubuntu.com/security/CVE-2020-20450) <!-- low -->
    -   [CVE-2020-20453](https://ubuntu.com/security/CVE-2020-20453) <!-- low -->
    -   [CVE-2020-20446](https://ubuntu.com/security/CVE-2020-20446) <!-- low -->
    -   [CVE-2020-20445](https://ubuntu.com/security/CVE-2020-20445) <!-- low -->
-   Thanks to Luís Infante da Câmara for preparing, testing and providing the
    debdiff's for these updates
-   Updates ffmpeg to latest upstream bug-fix releases
    -   4.4.2 for 21.10, 22.04 LTS
    -   4.2.7 for 20.04 LTS
    -   3.4.11 for 18.04 LTS


### [[USN-5475-1](https://ubuntu.com/security/notices/USN-5475-1)] Firefox vulnerabilities [03:04] {#usn-5475-1-firefox-vulnerabilities-03-04}

-   12 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-31748](https://ubuntu.com/security/CVE-2022-31748) <!-- medium -->
    -   [CVE-2022-31747](https://ubuntu.com/security/CVE-2022-31747) <!-- medium -->
    -   [CVE-2022-31745](https://ubuntu.com/security/CVE-2022-31745) <!-- medium -->
    -   [CVE-2022-31744](https://ubuntu.com/security/CVE-2022-31744) <!-- medium -->
    -   [CVE-2022-31743](https://ubuntu.com/security/CVE-2022-31743) <!-- medium -->
    -   [CVE-2022-31742](https://ubuntu.com/security/CVE-2022-31742) <!-- medium -->
    -   [CVE-2022-31741](https://ubuntu.com/security/CVE-2022-31741) <!-- medium -->
    -   [CVE-2022-31740](https://ubuntu.com/security/CVE-2022-31740) <!-- medium -->
    -   [CVE-2022-31738](https://ubuntu.com/security/CVE-2022-31738) <!-- medium -->
    -   [CVE-2022-31737](https://ubuntu.com/security/CVE-2022-31737) <!-- medium -->
    -   [CVE-2022-31736](https://ubuntu.com/security/CVE-2022-31736) <!-- medium -->
    -   [CVE-2022-1919](https://ubuntu.com/security/CVE-2022-1919) <!-- medium -->
-   101.0.1
-   Usual mix of web browser / framework issues fixed - specially crafted
    website -&gt; could exploit to cause DoS, info leak, spoof the browser UI,
    conduct XSS attacks, bypass content security policy (CSP) restrictions,
    or execute arbitrary code


### [[USN-5476-1](https://ubuntu.com/security/notices/USN-5476-1)] Liblouis vulnerabilities [03:54] {#usn-5476-1-liblouis-vulnerabilities-03-54}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-31783](https://ubuntu.com/security/CVE-2022-31783) <!-- medium -->
    -   [CVE-2022-26981](https://ubuntu.com/security/CVE-2022-26981) <!-- low -->
-   Braille translation library + utils
-   Buffer overflow -&gt; crash -&gt; DoS
-   OOB write -&gt; crash -&gt; DoS / RCE


### [[USN-5359-2](https://ubuntu.com/security/notices/USN-5359-2)] rsync vulnerability [04:27] {#usn-5359-2-rsync-vulnerability-04-27}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2018-25032](https://ubuntu.com/security/CVE-2018-25032) <!-- medium -->
-   [Episode 156](https://ubuntusecuritypodcast.org/episode-156/) (zlib memory corruption issue when compressing input data)


### [[USN-5477-1](https://ubuntu.com/security/notices/USN-5477-1)] ncurses vulnerabilities [04:54] {#usn-5477-1-ncurses-vulnerabilities-04-54}

-   6 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-29458](https://ubuntu.com/security/CVE-2022-29458) <!-- negligible -->
    -   [CVE-2021-39537](https://ubuntu.com/security/CVE-2021-39537) <!-- negligible -->
    -   [CVE-2019-17595](https://ubuntu.com/security/CVE-2019-17595) <!-- negligible -->
    -   [CVE-2019-17594](https://ubuntu.com/security/CVE-2019-17594) <!-- negligible -->
    -   [CVE-2018-19211](https://ubuntu.com/security/CVE-2018-19211) <!-- low -->
    -   [CVE-2017-16879](https://ubuntu.com/security/CVE-2017-16879) <!-- negligible -->
-   Various memory corruption vulns fixed - requires to process crafted input
    files (e.g. termcap - but this is usually trusted so hence negligible
    rating for most of these CVEs)


### [[USN-5478-1](https://ubuntu.com/security/notices/USN-5478-1)] util-linux vulnerability [05:28] {#usn-5478-1-util-linux-vulnerability-05-28}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2016-5011](https://ubuntu.com/security/CVE-2016-5011) <!-- low -->
-   Memory leak in libblkid when parsing crafted MSDOS partition table


### [[USN-5479-1](https://ubuntu.com/security/notices/USN-5479-1)] PHP vulnerabilities [05:40] {#usn-5479-1-php-vulnerabilities-05-40}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-31626](https://ubuntu.com/security/CVE-2022-31626) <!-- medium -->
    -   [CVE-2022-31625](https://ubuntu.com/security/CVE-2022-31625) <!-- medium -->
-   both issues in handling of crafted inputs into database drivers - 1 for
    postgres and 1 for mysql
    -   uninitialised var in pg driver -&gt; UAF in certain error scenario -&gt; RCE
    -   buffer overflow in password handler for mysqlnd (native driver) - rogue
        MySQL server could trigger this to get RCE


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### News on latest Intel security issues [06:33] {#news-on-latest-intel-security-issues-06-33}

-   Hertzbleed &amp; MMIO stale data both disclosed this week
-   Hertzbleed - interesting new crypto side-channel attack demonstrated
    against SIKE (Supersingular Isogeny Key Encapsulation - post-quantum key
    encapsulation mechanism)
    -   Turns a frequency side-channel into a timing side-channel such that
        code which was previously assumed to be constant time can still leak
        information about the key, allowing it to be recovered by mounting a
        chosen cipher-text attack from a client, observing the timing response
        of the server and then inferring the secret key as a result
    -   Acknowledged by both Intel and AMD but likely all modern processors
        which employ dynamic voltage and frequency scaling are affected
    -   Intel have released guidance for how to harden crypto implementations
        against this attack
    -   No changes/fixes for this in kernel/microcode/toolchain etc - instead
        will be up to individual libraries to assess if they may be affected
        and then refactor accordindly
-   MMIO stale-data
    -   Vulns in memory mapped I/O - generally only applicable to
        virtualisation when untrusted guest have access to MMIO
        -   not transient execution attacks themselves **but** since these vulns
            allow stale data to persist, can then be inferred by a TEA (think
            Spectre etc)
    -   consists of a series of different issues for various microarchitectural
        buffers / registers where stale data is left after being copied /
        moved - then can be sampled via a TEA to infer the value
    -   different processor models have different microarchitectural buffers so
        some may or may not be affected
    -   3 separate vulns (CVEs) identified based on the microarchitectural
        buffer affected and the technique used to read from it
    -   Fixes required in both kernel and intel-microcode packages
        -   Kernels will have already been released by the time you hear this
        -   Microcode is currently being released via the -updates pocket of the
            archive - will then publish to -security once fully phased to all
            users
            -   Likely early on Monday next week
-   More details in next week's episode


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)