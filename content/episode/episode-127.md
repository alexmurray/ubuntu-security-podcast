+++
title = "Episode 127"
description = """
  This week we look at security updates for Firefox, PostgreSQL, MariaDB,
  HAProxy, the Linux kernel and more, plus we cover some current openings on
  the team - come join us ☺
  """
date = 2021-08-20T12:47:00+09:30
lastmod = 2021-08-20T12:48:18+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E127.mp3"
podcast_duration = "10:43"
podcast_bytes = 8237529
permalink = "https://ubuntusecuritypodcast.org/episode-127/"
guid = "a455c6ad897495c52bbbe528b6ea7bc35fc2166a5624cd68dfeca95b2489d84a229a7ccdd644177960f967b9f590878167bc91b714c383156ee9fbc872cd3964"
+++

## Overview {#overview}

This week we look at security updates for Firefox, PostgreSQL, MariaDB,
HAProxy, the Linux kernel and more, plus we cover some current openings on
the team - come join us ☺


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

35 unique CVEs addressed


### [[USN-5037-1](https://ubuntu.com/security/notices/USN-5037-1)] Firefox vulnerabilities [00:39] {#usn-5037-1-firefox-vulnerabilities-00-39}

-   10 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-29990](https://ubuntu.com/security/CVE-2021-29990) <!-- medium -->
    -   [CVE-2021-29989](https://ubuntu.com/security/CVE-2021-29989) <!-- medium -->
    -   [CVE-2021-29988](https://ubuntu.com/security/CVE-2021-29988) <!-- medium -->
    -   [CVE-2021-29987](https://ubuntu.com/security/CVE-2021-29987) <!-- medium -->
    -   [CVE-2021-29986](https://ubuntu.com/security/CVE-2021-29986) <!-- medium -->
    -   [CVE-2021-29985](https://ubuntu.com/security/CVE-2021-29985) <!-- medium -->
    -   [CVE-2021-29984](https://ubuntu.com/security/CVE-2021-29984) <!-- medium -->
    -   [CVE-2021-29982](https://ubuntu.com/security/CVE-2021-29982) <!-- low -->
    -   [CVE-2021-29981](https://ubuntu.com/security/CVE-2021-29981) <!-- medium -->
    -   [CVE-2021-29980](https://ubuntu.com/security/CVE-2021-29980) <!-- medium -->
-   91.0
    -   Better support for clearing cookies to stop possible hidden data leaks as part of the Total Cookie Protection
    -   Private browsing to use attempt HTTPS by default than fallback to HTTP
    -   Various security fixes:
        -   race condition on DNS resolution specific to Linux -> memory
            corruption -> crash / RCE
        -   also specific to Linux - subsequent permissions dialogs would accept
            input in the location of the original one - so could possibly trick a
            user into accepting a permission without their direct knowledge
        -   various other memory corruption issues in JIT etc


### [[USN-3809-2](https://ubuntu.com/security/notices/USN-3809-2)] OpenSSH regression [02:54] {#usn-3809-2-openssh-regression-02-54}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2016-10708](https://ubuntu.com/security/CVE-2016-10708) <!-- low -->
    -   [CVE-2018-15473](https://ubuntu.com/security/CVE-2018-15473) <!-- low -->
-   [Episode 11](https://ubuntusecuritypodcast.org/episode-11/) - possible user enumeration since as a result of patching
    [CVE-2018-15473](https://ubuntu.com/security/CVE-2018-15473) the behaviour when trying to log in changed depending on
    whether the specific user account existed or not - due to a mistake made
    when backporting the upstream patch


### [[USN-5038-1](https://ubuntu.com/security/notices/USN-5038-1)] PostgreSQL vulnerabilities [03:38] {#usn-5038-1-postgresql-vulnerabilities-03-38}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-3449](https://ubuntu.com/security/CVE-2021-3449) <!-- high -->
    -   [CVE-2021-3677](https://ubuntu.com/security/CVE-2021-3677) <!-- medium -->
-   2 possible remote crasher bugs - one through just sending a crafted TLS
    ClientHello message -> NULL ptr deref -> crash, the other via the planner
    which is used to try and optimise SQL queries - possible OOB read


### [[USN-5022-2](https://ubuntu.com/security/notices/USN-5022-2)] MariaDB vulnerabilities [04:19] {#usn-5022-2-mariadb-vulnerabilities-04-19}

-   2 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-2389](https://ubuntu.com/security/CVE-2021-2389) <!-- medium -->
    -   [CVE-2021-2372](https://ubuntu.com/security/CVE-2021-2372) <!-- medium -->
-   [Episode 124](https://ubuntusecuritypodcast.org/episode-124/) in MySQL - only 2 of these also were relevant to MariaDB
-   Like MySQL, update to latest point release in each series - 10.5.12 for
    hirsute, 10.3.31 for focal - includes both bug **and** security fixes


### [[USN-5042-1](https://ubuntu.com/security/notices/USN-5042-1)] HAProxy vulnerabilities [05:07] {#usn-5042-1-haproxy-vulnerabilities-05-07}

-   Affecting Focal (20.04 LTS), Hirsute (21.04)
-   HTTP/2 handling issues in HAProxy
-   [Researchers](https://portswigger.net/research/http2) investigated HTTP/2 handling in various gateway / proxies and
    found multiple issues - HTTP/2 desync attacks - allow to possibly hijack
    clients, poison caches, and steal credentials
-   [Initially HAProxy upstream](https://www.mail-archive.com/haproxy@formilux.org/msg41041.html) thought they were safe but then found after
    more analysis they were vulnerable to a few of the possible issues
    -   Can be mitigated by disabling HTTP/2 or just install these updates :)


### [[USN-5043-1](https://ubuntu.com/security/notices/USN-5043-1)] Exiv2 vulnerabilities [06:04] {#usn-5043-1-exiv2-vulnerabilities-06-04}

-   11 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-37623](https://ubuntu.com/security/CVE-2021-37623) <!-- medium -->
    -   [CVE-2021-37621](https://ubuntu.com/security/CVE-2021-37621) <!-- medium -->
    -   [CVE-2021-37619](https://ubuntu.com/security/CVE-2021-37619) <!-- medium -->
    -   [CVE-2021-37618](https://ubuntu.com/security/CVE-2021-37618) <!-- medium -->
    -   [CVE-2021-37616](https://ubuntu.com/security/CVE-2021-37616) <!-- medium -->
    -   [CVE-2021-37615](https://ubuntu.com/security/CVE-2021-37615) <!-- medium -->
    -   [CVE-2021-34335](https://ubuntu.com/security/CVE-2021-34335) <!-- medium -->
    -   [CVE-2021-37622](https://ubuntu.com/security/CVE-2021-37622) <!-- medium -->
    -   [CVE-2021-37620](https://ubuntu.com/security/CVE-2021-37620) <!-- medium -->
    -   [CVE-2021-34334](https://ubuntu.com/security/CVE-2021-34334) <!-- medium -->
    -   [CVE-2021-32815](https://ubuntu.com/security/CVE-2021-32815) <!-- medium -->
-   Slew of issues discovered by Kevin Backhouse from Github security team
-   C++ - so usual mix of issues - OOB read, NULL ptr deref, floating point
    exception (div/0), infinte loop, assertion failure - all DoS


### [[USN-5039-1](https://ubuntu.com/security/notices/USN-5039-1)] Linux kernel vulnerability [06:49] {#usn-5039-1-linux-kernel-vulnerability-06-49}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2021-22555](https://ubuntu.com/security/CVE-2021-22555) <!-- high -->
-   netfilter setsockopt()


### [[LSN-0080-1](https://ubuntu.com/security/notices/LSN-0080-1)] Linux kernel vulnerability [07:08] {#lsn-0080-1-linux-kernel-vulnerability-07-08}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-22555](https://ubuntu.com/security/CVE-2021-22555) <!-- high -->


### [[USN-5044-1](https://ubuntu.com/security/notices/USN-5044-1)] Linux kernel vulnerabilities [07:39] {#usn-5044-1-linux-kernel-vulnerabilities-07-39}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-3587](https://ubuntu.com/security/CVE-2021-3587) <!-- medium -->
    -   [CVE-2021-3573](https://ubuntu.com/security/CVE-2021-3573) <!-- medium -->
    -   [CVE-2021-3564](https://ubuntu.com/security/CVE-2021-3564) <!-- medium -->
-   4.15 bionic + ESM HWE
-   2 bluetooth UAF and 1 NFC NULL ptr deref


### [[USN-5045-1](https://ubuntu.com/security/notices/USN-5045-1)] Linux kernel vulnerabilities [08:06] {#usn-5045-1-linux-kernel-vulnerabilities-08-06}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3587](https://ubuntu.com/security/CVE-2021-3587) <!-- medium -->
    -   [CVE-2021-3573](https://ubuntu.com/security/CVE-2021-3573) <!-- medium -->
    -   [CVE-2021-3564](https://ubuntu.com/security/CVE-2021-3564) <!-- medium -->
    -   [CVE-2021-34693](https://ubuntu.com/security/CVE-2021-34693) <!-- low -->
-   5.4 focal + bionic hwe
-   same as above plus CAN BCM uninitialised memory - info leak to local
    attacker


### [[USN-5046-1](https://ubuntu.com/security/notices/USN-5046-1)] Linux kernel vulnerabilities [08:31] {#usn-5046-1-linux-kernel-vulnerabilities-08-31}

-   6 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-3587](https://ubuntu.com/security/CVE-2021-3587) <!-- medium -->
    -   [CVE-2021-3573](https://ubuntu.com/security/CVE-2021-3573) <!-- medium -->
    -   [CVE-2021-3564](https://ubuntu.com/security/CVE-2021-3564) <!-- medium -->
    -   [CVE-2021-28691](https://ubuntu.com/security/CVE-2021-28691) <!-- medium -->
    -   [CVE-2021-0129](https://ubuntu.com/security/CVE-2021-0129) <!-- medium -->
    -   [CVE-2020-26558](https://ubuntu.com/security/CVE-2020-26558) <!-- medium -->
-   5.11 hirsute + focal hwe
-   bluetooth UAF, NFC NULL ptr deref, access control issue in bluetooth -
    could allow a local attacker in range to expose info, xen PV issue -
    attacker in guest could DoS/RCE on host


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Hiring [09:10] {#hiring-09-10}


#### Linux Cryptography and Security Engineer {#linux-cryptography-and-security-engineer}

-   <https://canonical.com/careers/2612092/linux-cryptography-and-security-engineer-remote>


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
