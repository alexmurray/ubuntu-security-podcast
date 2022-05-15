+++
title = "Episode 93"
description = """
  This week we cover security updates for NTP, Brotli, Spice, the Linux
  kernel (including BleedingTooth) and a FreeType vulnerability which is
  being exploited in-the-wild, plus we talk about the NSAs report into the
  most exploited vulnerabilities as well as the release of Ubuntu 20.10
  Groovy Gorilla.
  """
date = 2020-10-23T15:08:00+10:30
lastmod = 2022-05-15T18:06:25+09:30
draft = false
weight = 1067
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E093.mp3"
podcast_duration = "15:43"
podcast_bytes = 15095549
permalink = "https://ubuntusecuritypodcast.org/episode-93/"
guid = "1ac321387c0aef00b14f8c8fd60b70318d77b029370cb95e2e236d7031d15008db7bb473b8fe8cfe573bc72c4718ef62ce565556e3b53d0a840dcd8d84b7e293"
+++

## Overview {#overview}

This week we cover security updates for NTP, Brotli, Spice, the Linux
kernel (including BleedingTooth) and a FreeType vulnerability which is
being exploited in-the-wild, plus we talk about the NSAs report into the
most exploited vulnerabilities as well as the release of Ubuntu 20.10
Groovy Gorilla.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

74 unique CVEs addressed


### [[USN-4559-1](https://usn.ubuntu.com/4559-1/)] Samba update [01:04] {#usn-4559-1-samba-update-01-04}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-1472](https://ubuntu.com/security/CVE-2020-1472) <!-- medium -->
-   Follow up to [USN-4510-1](https://usn.ubuntu.com/4510-1/) for "ZeroLogon" - that updated changed default to
    enable secure channel - this one adds support for specifying per-machine
    insecure netlogon usage plus additional hardening to check for possible
    attacks from the client-specified challenge if have manually enabled
    insecure channel in configuration


### [[USN-4563-1](https://usn.ubuntu.com/4563-1/)] NTP vulnerability [01:48] {#usn-4563-1-ntp-vulnerability-01-48}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-8936](https://ubuntu.com/security/CVE-2019-8936) <!-- medium -->
    -   [CVE-2018-7182](https://ubuntu.com/security/CVE-2018-7182) <!-- medium -->
-   Fix for previous [CVE-2018-7182](https://ubuntu.com/security/CVE-2018-7182) introduced a possible NULL ptr deref that
    could be triggered by a malicious client -&gt; DoS


### [[USN-4568-1](https://usn.ubuntu.com/4568-1/)] Brotli vulnerability [02:12] {#usn-4568-1-brotli-vulnerability-02-12}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-8927](https://ubuntu.com/security/CVE-2020-8927) <!-- medium -->
-   Compression library / tool from Google designed for text compression,
    especially for web fonts etc
-   Buffer overflow due to an integer overflow when using the one-shot
    decompression option on attacker controlled data


### [[USN-4570-1](https://usn.ubuntu.com/4570-1/)] urllib3 vulnerability [03:00] {#usn-4570-1-urllib3-vulnerability-03-00}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-26137](https://ubuntu.com/security/CVE-2020-26137) <!-- medium -->
-   Possible CRLF injection if an attacker can control the request method
    used in a call to urllib3 - can specify additional parameters such as
    Host and Remainder after an injected CRLF to cause the request to
    misbehave


### [[USN-4572-1](https://usn.ubuntu.com/4572-1/), [USN-4572-2](https://usn.ubuntu.com/4572-2/)] Spice vulnerability [03:41] {#usn-4572-1-usn-4572-2-spice-vulnerability-03-41}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-14355](https://ubuntu.com/security/CVE-2020-14355) <!-- medium -->
-   Protocol for doing remote VM access - multiple buffer overflows in
    decoding of QUIC image compression algorithm - and this affected both the
    client and server side - DoS, RCE etc


### [[USN-4576-1](https://usn.ubuntu.com/4576-1/)] Linux kernel vulnerabilities [04:36] {#usn-4576-1-linux-kernel-vulnerabilities-04-36}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-25641](https://ubuntu.com/security/CVE-2020-25641) <!-- medium -->
    -   [CVE-2020-25285](https://ubuntu.com/security/CVE-2020-25285) <!-- low -->
    -   [CVE-2020-16120](https://ubuntu.com/security/CVE-2020-16120) <!-- medium -->
    -   [CVE-2020-14385](https://ubuntu.com/security/CVE-2020-14385) <!-- low -->
    -   [CVE-2020-14314](https://ubuntu.com/security/CVE-2020-14314) <!-- medium -->
    -   [CVE-2020-16119](https://ubuntu.com/security/CVE-2020-16119) <!-- high -->


### [[USN-4577-1](https://usn.ubuntu.com/4577-1/)] Linux kernel vulnerabilities {#usn-4577-1-linux-kernel-vulnerabilities}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-16120](https://ubuntu.com/security/CVE-2020-16120) <!-- medium -->
    -   [CVE-2020-16119](https://ubuntu.com/security/CVE-2020-16119) <!-- high -->


### [[USN-4578-1](https://usn.ubuntu.com/4578-1/)] Linux kernel vulnerabilities {#usn-4578-1-linux-kernel-vulnerabilities}

-   7 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-26088](https://ubuntu.com/security/CVE-2020-26088) <!-- medium -->
    -   [CVE-2020-25212](https://ubuntu.com/security/CVE-2020-25212) <!-- medium -->
    -   [CVE-2020-16120](https://ubuntu.com/security/CVE-2020-16120) <!-- medium -->
    -   [CVE-2020-14314](https://ubuntu.com/security/CVE-2020-14314) <!-- medium -->
    -   [CVE-2019-19448](https://ubuntu.com/security/CVE-2019-19448) <!-- low -->
    -   [CVE-2018-10322](https://ubuntu.com/security/CVE-2018-10322) <!-- low -->
    -   [CVE-2020-16119](https://ubuntu.com/security/CVE-2020-16119) <!-- high -->


### [[USN-4579-1](https://usn.ubuntu.com/4579-1/)] Linux kernel vulnerabilities {#usn-4579-1-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2020-25285](https://ubuntu.com/security/CVE-2020-25285) <!-- low -->
    -   [CVE-2020-14314](https://ubuntu.com/security/CVE-2020-14314) <!-- medium -->
    -   [CVE-2018-10322](https://ubuntu.com/security/CVE-2018-10322) <!-- low -->
    -   [CVE-2020-16119](https://ubuntu.com/security/CVE-2020-16119) <!-- high -->


### [[USN-4580-1](https://usn.ubuntu.com/4580-1/)] Linux kernel vulnerability {#usn-4580-1-linux-kernel-vulnerability}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM)
    -   [CVE-2020-16119](https://ubuntu.com/security/CVE-2020-16119) <!-- high -->

-   DCCP protocol mishandled reuse of sockets, leading to a UAF - since can
    be done by a local user could lead to root code execution, priv esc etc -
    was reported to Canonical and we worked with upstream kernel devs on
    resolving this etc


### [[LSN-0072-1](https://lists.ubuntu.com/archives/ubuntu-security-announce/2020-October/005694.html)] Linux kernel vulnerability {#lsn-0072-1-linux-kernel-vulnerability}

-   7 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-16120](https://ubuntu.com/security/CVE-2020-16120) <!-- medium -->
    -   [CVE-2020-16119](https://ubuntu.com/security/CVE-2020-16119) <!-- high -->
    -   [CVE-2020-14386](https://ubuntu.com/security/CVE-2020-14386) <!-- high -->
    -   [CVE-2020-12114](https://ubuntu.com/security/CVE-2020-12114) <!-- medium -->
    -   [CVE-2020-11935](https://ubuntu.com/security/CVE-2020-11935) <!-- medium -->
    -   [CVE-2020-11494](https://ubuntu.com/security/CVE-2020-11494) <!-- medium -->
    -   [CVE-2020-0067](https://ubuntu.com/security/CVE-2020-0067) <!-- medium -->
-   DCCP UAF
-   AF_PACKET buffer overflow ([Episode 90](https://ubuntusecuritypodcast.org/episode-90/))
-   Livepatched in the following kernels:
    -   Ubuntu 18.04 LTS
        -   aws - 72.1
        -   generic - 72.1
        -   lowlatency - 72.1
        -   oem - 72.1
    -   Ubuntu 20.04 LTS
        -   aws - 72.1
        -   aws - 72.2
        -   azure - 72.1
        -   azure - 72.2
        -   gcp - 72.1
        -   gcp - 72.2
        -   generic - 72.1
        -   generic - 72.2
        -   lowlatency - 72.1
        -   lowlatency - 72.2
    -   Ubuntu 16.04 LTS
        -   aws - 72.1
        -   generic - 72.1
        -   lowlatency - 72.1
    -   Ubuntu 14.04 ESM
        -   generic - 72.1
        -   lowlatency - 72.1


### [[USN-4591-1](https://usn.ubuntu.com/4591-1/)] Linux kernel vulnerabilities [06:20] {#usn-4591-1-linux-kernel-vulnerabilities-06-20}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-12352](https://ubuntu.com/security/CVE-2020-12352) <!-- medium -->
    -   [CVE-2020-12351](https://ubuntu.com/security/CVE-2020-12351) <!-- high -->


### [[USN-4592-1](https://usn.ubuntu.com/4592-1/)] Linux kernel vulnerabilities {#usn-4592-1-linux-kernel-vulnerabilities}

-   3 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-24490](https://ubuntu.com/security/CVE-2020-24490) <!-- medium -->
    -   [CVE-2020-12352](https://ubuntu.com/security/CVE-2020-12352) <!-- medium -->
    -   [CVE-2020-12351](https://ubuntu.com/security/CVE-2020-12351) <!-- high -->
-   BleedingTooth vulnerability
-   Announced by Intel, discovered by a security researcher at Google - not
    much heads up to distros, kernel team worked quickly to respin affected
    kernels (&gt;= 4.8) over the weekend
-   Originally was mention on twitter that Google were going to publish a
    blog post with more details but this got held back to give time for
    distros etc to patch


### [[USN-4593-1](https://usn.ubuntu.com/4593-1/)] FreeType vulnerability [07:30] {#usn-4593-1-freetype-vulnerability-07-30}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-15999](https://ubuntu.com/security/CVE-2020-15999) <!-- high -->
-   Integer overflow -&gt; heap buffer overflow
-   Reported by Google to Freetype upstream with the comment that it was
    being exploited in the wild
-   The patch simply moves a check that was added originally to fix another
    CVE a few lines higher since it still provided the chance of an integer
    overflow -&gt; heap buffer overflow
-   Update released for Ubuntu within 16h of the original report to the
    upstream FreeType developers


### [[USN-4558-1](https://usn.ubuntu.com/4558-1/)] libapreq2 vulnerabilities {#usn-4558-1-libapreq2-vulnerabilities}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-12412](https://ubuntu.com/security/CVE-2019-12412) <!-- medium -->


### [[USN-4557-1](https://usn.ubuntu.com/4557-1/)] Tomcat vulnerabilities {#usn-4557-1-tomcat-vulnerabilities}

-   7 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2016-8735](https://ubuntu.com/security/CVE-2016-8735) <!-- low -->
    -   [CVE-2016-6816](https://ubuntu.com/security/CVE-2016-6816) <!-- medium -->
    -   [CVE-2016-6797](https://ubuntu.com/security/CVE-2016-6797) <!-- low -->
    -   [CVE-2016-6796](https://ubuntu.com/security/CVE-2016-6796) <!-- low -->
    -   [CVE-2016-6794](https://ubuntu.com/security/CVE-2016-6794) <!-- low -->
    -   [CVE-2016-5018](https://ubuntu.com/security/CVE-2016-5018) <!-- medium -->
    -   [CVE-2016-0762](https://ubuntu.com/security/CVE-2016-0762) <!-- low -->


### [[USN-4560-1](https://usn.ubuntu.com/4560-1/)] Gon gem vulnerability {#usn-4560-1-gon-gem-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-25739](https://ubuntu.com/security/CVE-2020-25739) <!-- medium -->


### [[USN-4561-1](https://usn.ubuntu.com/4561-1/)] Rack vulnerabilities {#usn-4561-1-rack-vulnerabilities}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-8184](https://ubuntu.com/security/CVE-2020-8184) <!-- medium -->
    -   [CVE-2020-8161](https://ubuntu.com/security/CVE-2020-8161) <!-- low -->


### [[USN-4562-1](https://usn.ubuntu.com/4562-1/)] kramdown vulnerability {#usn-4562-1-kramdown-vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-14001](https://ubuntu.com/security/CVE-2020-14001) <!-- medium -->


### [[USN-4569-1](https://usn.ubuntu.com/4569-1/)] Yaws vulnerabilities {#usn-4569-1-yaws-vulnerabilities}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-24916](https://ubuntu.com/security/CVE-2020-24916) <!-- medium -->
    -   [CVE-2020-24379](https://ubuntu.com/security/CVE-2020-24379) <!-- medium -->


### [[USN-4571-1](https://usn.ubuntu.com/4571-1/)] rack-cors vulnerability {#usn-4571-1-rack-cors-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2019-18978](https://ubuntu.com/security/CVE-2019-18978) <!-- medium -->


### [[USN-4564-1](https://usn.ubuntu.com/4564-1/)] Apache Tika vulnerabilities {#usn-4564-1-apache-tika-vulnerabilities}

-   2 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2020-1951](https://ubuntu.com/security/CVE-2020-1951) <!-- low -->
    -   [CVE-2020-1950](https://ubuntu.com/security/CVE-2020-1950) <!-- medium -->


### [[USN-4565-1](https://usn.ubuntu.com/4565-1/)] OpenConnect vulnerability {#usn-4565-1-openconnect-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-16239](https://ubuntu.com/security/CVE-2019-16239) <!-- medium -->


### [[USN-4566-1](https://usn.ubuntu.com/4566-1/)] Cyrus IMAP Server vulnerabilities {#usn-4566-1-cyrus-imap-server-vulnerabilities}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-19783](https://ubuntu.com/security/CVE-2019-19783) <!-- medium -->
    -   [CVE-2019-11356](https://ubuntu.com/security/CVE-2019-11356) <!-- medium -->


### [[USN-4567-1](https://usn.ubuntu.com/4567-1/)] OpenDMARC vulnerability {#usn-4567-1-opendmarc-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-16378](https://ubuntu.com/security/CVE-2019-16378) <!-- medium -->


### [[USN-4573-1](https://usn.ubuntu.com/4573-1/)] Vino vulnerabilities {#usn-4573-1-vino-vulnerabilities}

-   7 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-14404](https://ubuntu.com/security/CVE-2020-14404) <!-- medium -->
    -   [CVE-2020-14403](https://ubuntu.com/security/CVE-2020-14403) <!-- medium -->
    -   [CVE-2020-14402](https://ubuntu.com/security/CVE-2020-14402) <!-- medium -->
    -   [CVE-2020-14397](https://ubuntu.com/security/CVE-2020-14397) <!-- medium -->
    -   [CVE-2019-15681](https://ubuntu.com/security/CVE-2019-15681) <!-- low -->
    -   [CVE-2018-7225](https://ubuntu.com/security/CVE-2018-7225) <!-- medium -->
    -   [CVE-2014-6053](https://ubuntu.com/security/CVE-2014-6053) <!-- medium -->


### [[USN-4574-1](https://usn.ubuntu.com/4574-1/)] libseccomp-golang vulnerability {#usn-4574-1-libseccomp-golang-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2017-18367](https://ubuntu.com/security/CVE-2017-18367) <!-- medium -->


### [[USN-4575-1](https://usn.ubuntu.com/4575-1/)] dom4j vulnerability {#usn-4575-1-dom4j-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2020-10683](https://ubuntu.com/security/CVE-2020-10683) <!-- medium -->


### [[USN-4581-1](https://usn.ubuntu.com/4581-1/)] Python vulnerability {#usn-4581-1-python-vulnerability}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-26116](https://ubuntu.com/security/CVE-2020-26116) <!-- medium -->


### [[USN-4582-1](https://usn.ubuntu.com/4582-1/)] Vim vulnerabilities {#usn-4582-1-vim-vulnerabilities}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2019-20807](https://ubuntu.com/security/CVE-2019-20807) <!-- low -->
    -   [CVE-2017-17087](https://ubuntu.com/security/CVE-2017-17087) <!-- low -->


### [[USN-4583-1](https://usn.ubuntu.com/4583-1/)] PHP vulnerabilities {#usn-4583-1-php-vulnerabilities}

-   2 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-7070](https://ubuntu.com/security/CVE-2020-7070) <!-- medium -->
    -   [CVE-2020-7069](https://ubuntu.com/security/CVE-2020-7069) <!-- medium -->


### [[USN-4589-1](https://usn.ubuntu.com/4589-1/)] containerd vulnerability {#usn-4589-1-containerd-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2020-15157](https://ubuntu.com/security/CVE-2020-15157) <!-- medium -->


### [[USN-4589-2](https://usn.ubuntu.com/4589-2/)] Docker vulnerability {#usn-4589-2-docker-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-15157](https://ubuntu.com/security/CVE-2020-15157) <!-- medium -->


### [[USN-4585-1](https://usn.ubuntu.com/4585-1/)] Newsbeuter vulnerabilities {#usn-4585-1-newsbeuter-vulnerabilities}

-   2 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2017-14500](https://ubuntu.com/security/CVE-2017-14500) <!-- medium -->
    -   [CVE-2017-12904](https://ubuntu.com/security/CVE-2017-12904) <!-- medium -->


### [[USN-4584-1](https://usn.ubuntu.com/4584-1/)] HtmlUnit vulnerability {#usn-4584-1-htmlunit-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2020-5529](https://ubuntu.com/security/CVE-2020-5529) <!-- medium -->


### [[USN-4546-2](https://usn.ubuntu.com/4546-2/)] Firefox regressions {#usn-4546-2-firefox-regressions}

-   Affecting Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)


### [[USN-4590-1](https://usn.ubuntu.com/4590-1/)] Collabtive vulnerability {#usn-4590-1-collabtive-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2015-0258](https://ubuntu.com/security/CVE-2015-0258) <!-- medium -->


### [[USN-4586-1](https://usn.ubuntu.com/4586-1/)] PHP ImageMagick vulnerability {#usn-4586-1-php-imagemagick-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-11037](https://ubuntu.com/security/CVE-2019-11037) <!-- medium -->


### [[USN-4594-1](https://usn.ubuntu.com/4594-1/)] Quassel vulnerabilities {#usn-4594-1-quassel-vulnerabilities}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2018-1000179](https://ubuntu.com/security/CVE-2018-1000179) <!-- low -->
    -   [CVE-2018-1000178](https://ubuntu.com/security/CVE-2018-1000178) <!-- medium -->


### [[USN-4595-1](https://usn.ubuntu.com/4595-1/)] Grunt vulnerability {#usn-4595-1-grunt-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-7729](https://ubuntu.com/security/CVE-2020-7729) <!-- medium -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### NSA Report on 25 most exploited CVEs by Chinese State-Sponsored Actors [09:51] {#nsa-report-on-25-most-exploited-cves-by-chinese-state-sponsored-actors-09-51}

-   <https://twitter.com/NSACyber/status/1318568065769132035>
-   <https://media.defense.gov/2020/Oct/20/2002519884/-1/-1/0/CSA_CHINESE_EXPLOIT_VULNERABILITIES_UOO179811.PDF>
-   Most apply to appliances (network gateway devices) or Windows
-   Only 1 applies open source software for Linux
    -   CVE-2018-6789 - Exim 4.90.1 - CVE was public [7 February 2018](https://www.openwall.com/lists/oss-security/2018/02/07/2), [patched
        in affected Ubuntu releases](https://ubuntu.com/security/notices/USN-3565-1) 5 days later on 12 February 2018
    -   oss-security posting claims 'unsure of severity, an exploit is difficult'
    -   The researcher which found it provided a very detailed write-up about
        the low-level details to exploit it on [6th March 2018](https://devco.re/blog/2018/03/06/exim-off-by-one-RCE-exploiting-CVE-2018-6789-en/) but without an
        actual PoC (although all details are there to reconstruct one)
    -   First public PoC seems to be on [2 May 2018](https://medium.com/@straightblast426/my-poc-walk-through-for-cve-2018-6789-2e402e4ff588) - there have been others
        since ([exploitdb](https://www.exploit-db.com/exploits/45671), github etc)
    -   So why does this one get exploited over others?
        -   Availability of multiple PoC?
        -   Have other distros not patched?
        -   Are there lots of installs that are from source and have never been
            updated?
        -   Lots of old docker images of various exim with lots of Pulls
            (although the [most popular one](https://hub.docker.com/r/tianon/exim4) was updated 9 days ago)
        -   Shows should always get your open source from a trusted, maintained
            downstream like Ubuntu


### Ubuntu 20.10 Groovy Gorilla Release [13:50] {#ubuntu-20-dot-10-groovy-gorilla-release-13-50}

-   <https://lists.ubuntu.com/archives/ubuntu-announce/2020-October/000263.html>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)