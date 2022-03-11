+++
title = "Episode 87"
description = """
  This week we look at the Drovorub Linux malware outed by the NSA/FBI plus
  we detail security updates for Dovecot, Apache, Salt, the Linux kernel and
  more.
  """
date = 2020-08-21T14:10:00+09:30
lastmod = 2020-08-21T14:10:58+09:30
draft = false
weight = 1001
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
    -   [CVE-2020-12674](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12674)
    -   [CVE-2020-12673](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12673)
    -   [CVE-2020-12100](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12100)
-   3 DoS issues - nested MIME -> resource exhaustion, Compuserve RPA auth
    mechanism (rare) -> zero length message -> assert fail, NTLM missing
    length check -> buffer over read -> crash


### [[USN-4457-1](https://usn.ubuntu.com/4457-1/), [USN-4457-2](https://usn.ubuntu.com/4457-2/)] Software Properties vulnerability [01:39] {#usn-4457-1-usn-4457-2-software-properties-vulnerability-01-39}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-15709](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15709)
-   add-apt-repository ANSI escape sequence display from launchpad PPA
    description


### [[USN-4458-1](https://usn.ubuntu.com/4458-1/)] Apache HTTP Server vulnerabilities [02:27] {#usn-4458-1-apache-http-server-vulnerabilities-02-27}

-   5 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-11993](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11993)
    -   [CVE-2020-11984](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11984)
    -   [CVE-2020-9490](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9490)
    -   [CVE-2020-1934](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1934)
    -   [CVE-2020-1927](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1927)
-   mod\_rewrite could be tricked into redirecting to an unexpected URL via
    newlines encoded into the request URL
-   use of uninitialized memory when proxying to a malicious FTP server ->
    info leak
-   2 HTTP/2 issues - improper handling of Cache-Digest headers and certain
    logging statements -> crash, DoS
-   buffer overflow in mod\_proxy\_uwsgi - crash / code exec


### [[USN-4459-1](https://usn.ubuntu.com/4459-1/)] Salt vulnerabilities [03:18] {#usn-4459-1-salt-vulnerabilities-03-18}

-   5 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-11652](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11652)
    -   [CVE-2020-11651](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11651)
    -   [CVE-2019-17361](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17361)
    -   [CVE-2018-15751](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15751)
    -   [CVE-2018-15750](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15750)
-   File enumeration on remote server -> info leak
-   Authentication bypass
-   Command injection from unauthenticated users -> code exec on salt-api host
-   Failure to validate method calls and sanitize paths - access control
    bypass


### [[USN-4460-1](https://usn.ubuntu.com/4460-1/)] Oniguruma vulnerabilities [03:58] {#usn-4460-1-oniguruma-vulnerabilities-03-58}

-   4 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2019-19246](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19246)
    -   [CVE-2019-19204](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19204)
    -   [CVE-2019-19012](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19012)
    -   [CVE-2019-16163](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16163)
-   regex library used by PHP and Ruby -> various issues leading to DoS /
    info leak etc


### [[USN-4461-1](https://usn.ubuntu.com/4461-1/)] Ark vulnerability [04:20] {#usn-4461-1-ark-vulnerability-04-20}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-16116](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16116)
-   KDE archive handler - malicious ZIP files could contain files outside the
    working directory (zip-slip)


### [[USN-4465-1](https://usn.ubuntu.com/4465-1/)] Linux kernel vulnerabilities [04:50] {#usn-4465-1-linux-kernel-vulnerabilities-04-50}

-   3 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-15393](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15393)
    -   [CVE-2020-12771](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12771)
    -   [CVE-2020-12655](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12655)
-   5.3 (hwe)
-   Memory leak in USB testing driver on disconnect - so physical attacker
    could add / remove device and eventually exhaust memory
-   bcache deadlock -> DoS
-   Crafted XFS metadata could cause a sync of excessive duration -> DoS


### [[USN-4462-1](https://usn.ubuntu.com/4462-1/)] Linux kernel vulnerability [05:53] {#usn-4462-1-linux-kernel-vulnerability-05-53}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-12771](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12771)
-   5.0 (gke / oem)
-   bcache deadlock -> DoS


### [[USN-4463-1](https://usn.ubuntu.com/4463-1/)] Linux kernel vulnerabilities [06:06] {#usn-4463-1-linux-kernel-vulnerabilities-06-06}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2020-15393](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15393)
    -   [CVE-2020-12771](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12771)
-   4.4 (xenial / trusy esm hwe)
-   bcache deadlock
-   usb testing driver memory leak


### [[USN-4464-1](https://usn.ubuntu.com/4464-1/)] GNOME Shell vulnerability [06:24] {#usn-4464-1-gnome-shell-vulnerability-06-24}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-17489](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-17489)
-   Could show the login password when logging out **if had set it visible
    during login**


### [[USN-4466-1](https://usn.ubuntu.com/4466-1/)] curl vulnerability [06:53] {#usn-4466-1-curl-vulnerability-06-53}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-8231](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8231)
-   libcurl - improper handling of the CURLOPT\_CONNECT\_ONLY option -> could
    connect to wrong destination and so expose sensitive info


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe and Alex discuss Drovorub Linux malware [07:24] {#joe-and-alex-discuss-drovorub-linux-malware-07-24}

-   <https://media.defense.gov/2020/Aug/13/2002476465/-1/-1/0/CSA%5FDROVORUB%5FRUSSIAN%5FGRU%5FMALWARE%5FAUG%5F2020.PDF>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
