+++
title = "Episode 87"
description = """
  This week we look at the Drovorub Linux malware outed by the NSA/FBI plus
  we detail security updates for Dovecot, Apache, Salt, the Linux kernel and
  more.
  """
date = 2020-08-21T14:10:00+09:30
lastmod = 2022-05-15T18:06:30+09:30
draft = false
weight = 1073
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E087.mp3"
podcast_duration = "23:13"
podcast_bytes = 22290299
permalink = "https://ubuntusecuritypodcast.org/episode-87/"
guid = "262336c80ff54cdb101bcf7724029f4aea578e701671e2aadb5373055d3b6e2b2e4ccacfa1ad0be2d837b00dcccb19a6ffcd8bc1f066c67e3f04989f49931396"
+++

## Overview {#overview}

This week we look at the Drovorub Linux malware outed by the NSA/FBI plus
we detail security updates for Dovecot, Apache, Salt, the Linux kernel and
more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

24 unique CVEs addressed


### [[USN-4456-1](https://usn.ubuntu.com/4456-1/), [USN-4456-2](https://usn.ubuntu.com/4456-2/)] Dovecot vulnerabilities [00:46] {#usn-4456-1-usn-4456-2-dovecot-vulnerabilities-00-46}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-12674](https://ubuntu.com/security/CVE-2020-12674) <!-- medium -->
    -   [CVE-2020-12673](https://ubuntu.com/security/CVE-2020-12673) <!-- medium -->
    -   [CVE-2020-12100](https://ubuntu.com/security/CVE-2020-12100) <!-- medium -->
-   3 DoS issues - nested MIME -&gt; resource exhaustion, Compuserve RPA auth
    mechanism (rare) -&gt; zero length message -&gt; assert fail, NTLM missing
    length check -&gt; buffer over read -&gt; crash


### [[USN-4457-1](https://usn.ubuntu.com/4457-1/), [USN-4457-2](https://usn.ubuntu.com/4457-2/)] Software Properties vulnerability [01:39] {#usn-4457-1-usn-4457-2-software-properties-vulnerability-01-39}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-15709](https://ubuntu.com/security/CVE-2020-15709) <!-- medium -->
-   add-apt-repository ANSI escape sequence display from launchpad PPA
    description


### [[USN-4458-1](https://usn.ubuntu.com/4458-1/)] Apache HTTP Server vulnerabilities [02:27] {#usn-4458-1-apache-http-server-vulnerabilities-02-27}

-   5 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-11993](https://ubuntu.com/security/CVE-2020-11993) <!-- medium -->
    -   [CVE-2020-11984](https://ubuntu.com/security/CVE-2020-11984) <!-- medium -->
    -   [CVE-2020-9490](https://ubuntu.com/security/CVE-2020-9490) <!-- medium -->
    -   [CVE-2020-1934](https://ubuntu.com/security/CVE-2020-1934) <!-- low -->
    -   [CVE-2020-1927](https://ubuntu.com/security/CVE-2020-1927) <!-- low -->
-   mod_rewrite could be tricked into redirecting to an unexpected URL via
    newlines encoded into the request URL
-   use of uninitialized memory when proxying to a malicious FTP server -&gt;
    info leak
-   2 HTTP/2 issues - improper handling of Cache-Digest headers and certain
    logging statements -&gt; crash, DoS
-   buffer overflow in mod_proxy_uwsgi - crash / code exec


### [[USN-4459-1](https://usn.ubuntu.com/4459-1/)] Salt vulnerabilities [03:18] {#usn-4459-1-salt-vulnerabilities-03-18}

-   5 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-11652](https://ubuntu.com/security/CVE-2020-11652) <!-- medium -->
    -   [CVE-2020-11651](https://ubuntu.com/security/CVE-2020-11651) <!-- medium -->
    -   [CVE-2019-17361](https://ubuntu.com/security/CVE-2019-17361) <!-- medium -->
    -   [CVE-2018-15751](https://ubuntu.com/security/CVE-2018-15751) <!-- medium -->
    -   [CVE-2018-15750](https://ubuntu.com/security/CVE-2018-15750) <!-- medium -->
-   File enumeration on remote server -&gt; info leak
-   Authentication bypass
-   Command injection from unauthenticated users -&gt; code exec on salt-api host
-   Failure to validate method calls and sanitize paths - access control
    bypass


### [[USN-4460-1](https://usn.ubuntu.com/4460-1/)] Oniguruma vulnerabilities [03:58] {#usn-4460-1-oniguruma-vulnerabilities-03-58}

-   4 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2019-19246](https://ubuntu.com/security/CVE-2019-19246) <!-- medium -->
    -   [CVE-2019-19204](https://ubuntu.com/security/CVE-2019-19204) <!-- medium -->
    -   [CVE-2019-19012](https://ubuntu.com/security/CVE-2019-19012) <!-- medium -->
    -   [CVE-2019-16163](https://ubuntu.com/security/CVE-2019-16163) <!-- medium -->
-   regex library used by PHP and Ruby -&gt; various issues leading to DoS /
    info leak etc


### [[USN-4461-1](https://usn.ubuntu.com/4461-1/)] Ark vulnerability [04:20] {#usn-4461-1-ark-vulnerability-04-20}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-16116](https://ubuntu.com/security/CVE-2020-16116) <!-- medium -->
-   KDE archive handler - malicious ZIP files could contain files outside the
    working directory (zip-slip)


### [[USN-4465-1](https://usn.ubuntu.com/4465-1/)] Linux kernel vulnerabilities [04:50] {#usn-4465-1-linux-kernel-vulnerabilities-04-50}

-   3 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-15393](https://ubuntu.com/security/CVE-2020-15393) <!-- low -->
    -   [CVE-2020-12771](https://ubuntu.com/security/CVE-2020-12771) <!-- low -->
    -   [CVE-2020-12655](https://ubuntu.com/security/CVE-2020-12655) <!-- medium -->
-   5.3 (hwe)
-   Memory leak in USB testing driver on disconnect - so physical attacker
    could add / remove device and eventually exhaust memory
-   bcache deadlock -&gt; DoS
-   Crafted XFS metadata could cause a sync of excessive duration -&gt; DoS


### [[USN-4462-1](https://usn.ubuntu.com/4462-1/)] Linux kernel vulnerability [05:53] {#usn-4462-1-linux-kernel-vulnerability-05-53}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-12771](https://ubuntu.com/security/CVE-2020-12771) <!-- low -->
-   5.0 (gke / oem)
-   bcache deadlock -&gt; DoS


### [[USN-4463-1](https://usn.ubuntu.com/4463-1/)] Linux kernel vulnerabilities [06:06] {#usn-4463-1-linux-kernel-vulnerabilities-06-06}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2020-15393](https://ubuntu.com/security/CVE-2020-15393) <!-- low -->
    -   [CVE-2020-12771](https://ubuntu.com/security/CVE-2020-12771) <!-- low -->
-   4.4 (xenial / trusy esm hwe)
-   bcache deadlock
-   usb testing driver memory leak


### [[USN-4464-1](https://usn.ubuntu.com/4464-1/)] GNOME Shell vulnerability [06:24] {#usn-4464-1-gnome-shell-vulnerability-06-24}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-17489](https://ubuntu.com/security/CVE-2020-17489) <!-- medium -->
-   Could show the login password when logging out **if had set it visible
    during login**


### [[USN-4466-1](https://usn.ubuntu.com/4466-1/)] curl vulnerability [06:53] {#usn-4466-1-curl-vulnerability-06-53}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-8231](https://ubuntu.com/security/CVE-2020-8231) <!-- low -->
-   libcurl - improper handling of the CURLOPT_CONNECT_ONLY option -&gt; could
    connect to wrong destination and so expose sensitive info


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe and Alex discuss Drovorub Linux malware [07:24] {#joe-and-alex-discuss-drovorub-linux-malware-07-24}

-   <https://media.defense.gov/2020/Aug/13/2002476465/-1/-1/0/CSA_DROVORUB_RUSSIAN_GRU_MALWARE_AUG_2020.PDF>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)