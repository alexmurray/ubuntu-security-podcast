+++
title = "Episode 109"
description = """
  This week we look at security updates for containerd, Ruby, the Linux
  kernel, Pygments and more, plus we cover some open positions within the
  team as well.
  """
date = 2021-03-26T21:38:00+10:30
lastmod = 2021-03-26T21:39:07+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E109.mp3"
podcast_duration = "08:16"
podcast_bytes = 6409765
permalink = "https://ubuntusecuritypodcast.org/episode-109/"
guid = "23a44745f686037a64e99f2db617828256373927f9e45bb2a6760f542bc6aaa6a78e7d0738bac74e3b5f98d767a562aa5d48934ea808a5039bbd9a6a8849b4a1"
+++

## Overview {#overview}

This week we look at security updates for containerd, Ruby, the Linux
kernel, Pygments and more, plus we cover some open positions within the
team as well.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

28 unique CVEs addressed


### [[USN-4881-1](https://ubuntu.com/security/notices/USN-4881-1)] containerd vulnerability [00:38] {#usn-4881-1-containerd-vulnerability-00-38}

-   1 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-21334](https://ubuntu.com/security/CVE-2021-21334)
-   When using the containerd CRI implementation (kubernetes container
    runtime interface) - would share environment variables etc between
    containers that shared the same image - so could allow an inadvertent
    info leak from one container to another - race condition so would be less
    likely to occur if not launching containers in rapid succession which
    share the same image


### [[USN-4882-1](https://ubuntu.com/security/notices/USN-4882-1)] Ruby vulnerabilities [01:27] {#usn-4882-1-ruby-vulnerabilities-01-27}

-   3 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-25613](https://ubuntu.com/security/CVE-2020-25613)
    -   [CVE-2020-10933](https://ubuntu.com/security/CVE-2020-10933)
    -   [CVE-2020-10663](https://ubuntu.com/security/CVE-2020-10663)
-   Crafted JSON could result in RCE - could create a malicious object within
    the interpreter
-   Possible info leak via unintialised memory across socket operations -
    heap info leak so could expose sensitive data from the interpreter
-   Failure to validate xfer encoding header - could bypass reverse proxy and
    so be vulnerable to HTTP request smuggling attacks


### [[USN-4883-1](https://ubuntu.com/security/notices/USN-4883-1)] Linux kernel vulnerabilities [02:32] {#usn-4883-1-linux-kernel-vulnerabilities-02-32}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2021-27364](https://ubuntu.com/security/CVE-2021-27364)
    -   [CVE-2021-27363](https://ubuntu.com/security/CVE-2021-27363)
    -   [CVE-2021-27365](https://ubuntu.com/security/CVE-2021-27365)
-   4.15 kernel for bionic + 4.4 kernel for xenial
-   3 iSCSI issues, most important was heap overflow that could be exploited
    by a local attacker -> code-exec as root
    -   Other 2 are info leak via kernel pointers being disclosed to userspace
        and a OOB read -> crash or possible infoleak


### [[USN-4884-1](https://ubuntu.com/security/notices/USN-4884-1)] Linux kernel (OEM) vulnerabilities [03:13] {#usn-4884-1-linux-kernel--oem--vulnerabilities-03-13}

-   3 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-3348](https://ubuntu.com/security/CVE-2021-3348)
    -   [CVE-2021-3347](https://ubuntu.com/security/CVE-2021-3347)
    -   [CVE-2021-20194](https://ubuntu.com/security/CVE-2021-20194)
-   OEM kernel - 5.10
    -   UAF in network block device driver - local attacker could exploit for
        crash/codexec


### [[USN-4885-1](https://ubuntu.com/security/notices/USN-4885-1)] Pygments vulnerability [03:36] {#usn-4885-1-pygments-vulnerability-03-36}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-20270](https://ubuntu.com/security/CVE-2021-20270)
-   infinite loop -> CPU based DoS when parsing crafted Standard ML files -
    input file containing just 'exception' would be enough to trigger this


### [[USN-4886-1](https://ubuntu.com/security/notices/USN-4886-1)] Privoxy vulnerabilities [04:18] {#usn-4886-1-privoxy-vulnerabilities-04-18}

-   14 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-20214](https://ubuntu.com/security/CVE-2021-20214)
    -   [CVE-2021-20211](https://ubuntu.com/security/CVE-2021-20211)
    -   [CVE-2021-20276](https://ubuntu.com/security/CVE-2021-20276)
    -   [CVE-2021-20212](https://ubuntu.com/security/CVE-2021-20212)
    -   [CVE-2021-20275](https://ubuntu.com/security/CVE-2021-20275)
    -   [CVE-2021-20273](https://ubuntu.com/security/CVE-2021-20273)
    -   [CVE-2021-20272](https://ubuntu.com/security/CVE-2021-20272)
    -   [CVE-2021-20217](https://ubuntu.com/security/CVE-2021-20217)
    -   [CVE-2021-20216](https://ubuntu.com/security/CVE-2021-20216)
    -   [CVE-2021-20215](https://ubuntu.com/security/CVE-2021-20215)
    -   [CVE-2021-20213](https://ubuntu.com/security/CVE-2021-20213)
    -   [CVE-2021-20210](https://ubuntu.com/security/CVE-2021-20210)
    -   [CVE-2021-20209](https://ubuntu.com/security/CVE-2021-20209)
    -   [CVE-2020-35502](https://ubuntu.com/security/CVE-2020-35502)
-   Privacy enhancing HTTP proxy
-   Incorrect handling of:
    -   CGI requests -> DoS/info-leak
    -   regexes -> DoS (crash + mem-leak)
    -   client tags -> DoS (memory leaks)


### [[USN-4887-1](https://ubuntu.com/security/notices/USN-4887-1)] Linux kernel vulnerabilities [05:03] {#usn-4887-1-linux-kernel-vulnerabilities-05-03}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-27364](https://ubuntu.com/security/CVE-2021-27364)
    -   [CVE-2021-27363](https://ubuntu.com/security/CVE-2021-27363)
    -   [CVE-2020-27170](https://ubuntu.com/security/CVE-2020-27170)
    -   [CVE-2020-27171](https://ubuntu.com/security/CVE-2020-27171)
    -   [CVE-2021-27365](https://ubuntu.com/security/CVE-2021-27365)
    -   [CVE-2021-3444](https://ubuntu.com/security/CVE-2021-3444)
-   BPF verifier failed to properly handle mod32 destination register
    truncation when source register was known to be 0 -> could be turned into
    an arbitrary memory read -> info-leak - and can't rule out arbitrary
    memory write -> RCE
-   Spectre mitigations for BPF were found to be insufficient - could allow
    an attacker to read entirety of kernel memory via speculative execution
    attack through BPF
-   iSCSI issues discussed earlier too


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Hiring [07:04] {#hiring-07-04}


#### AppArmor Security Engineer {#apparmor-security-engineer}

-   <https://canonical.com/careers/2114847/apparmor-security-engineer-remote>


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://canonical.com/careers/2612092/ubuntu-security-engineer-remote>
   


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>
    <!-- generalist, world wide -->


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
