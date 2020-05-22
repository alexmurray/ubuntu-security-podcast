+++
title = "Episode 75"
description = """
  In episode 75 we look at security updates for APT, json-c, Bind, the Linux
  kernel and more, plus Joe and Alex discuss recent phishing attacks and the
  Wired biopic of Marcus Hutchins.
  """
date = 2020-05-22T16:55:00+09:30
lastmod = 2020-05-22T16:56:28+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E075.mp3"
podcast_duration = "29:40"
podcast_bytes = 28486126
permalink = "https://ubuntusecuritypodcast.org/episode-75/"
guid = "3c3059786dd7267589452b1f4ea3e9d9cb3e9990f3b29732c53c4868a7a4619ff09c074f3e5b257a2e481a7fa27c86f9ef72778829029ea20ee4ed7e7dc85338"
+++

## Overview {#overview}

In episode 75 we look at security updates for APT, json-c, Bind, the Linux
kernel and more, plus Joe and Alex discuss recent phishing attacks and the
Wired biopic of Marcus Hutchins.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

26 unique CVEs addressed


### [[USN-4358-1](https://usn.ubuntu.com/4358-1/)] libexif vulnerabilities [00:44] {#usn-4358-1-libexif-vulnerabilities-00-44}

-   2 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-12767](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12767) <!-- medium -->
    -   [CVE-2018-20030](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20030) <!-- low -->
-   Divide by zero and a CPU infinite loop (DoS) for handling crafted exif
    content


### [[USN-4359-1](https://usn.ubuntu.com/4359-1/)] APT vulnerability [01:19] {#usn-4359-1-apt-vulnerability-01-19}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-3810](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3810) <!-- medium -->
-   Own ar archive handling code
-   Stack buffer OOB read for ar archive members with specially crafted
    names - tried to handle spaces etc in names but if the name was all
    spaces would overrun the name and read past the end of it


### [[USN-4360-1](https://usn.ubuntu.com/4360-1/)] json-c vulnerability [02:04] {#usn-4360-1-json-c-vulnerability-02-04}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-12762](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12762) <!-- medium -->
-   Integer overflow -> OOB write from a large json file


### [[USN-4360-2](https://usn.ubuntu.com/4360-2/), USN-4360-3] json-c regression [02:27] {#usn-4360-2-usn-4360-3-json-c-regression-02-27}

-   Affecting Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
-   Upstream fix had a bug where logic for trying to handle integer overflow
    was inverted and so would cause INT\_MAX (2GB) memory to be allocated
-   On machines with a small amount of memory this could exhaust all and
    trigger OOM killer
-   Part of logic of the package is to trigger a rexec of upstart (which
    serialises itself via libjson) - so this could cause upstart to consume
    all memory, get killed to OOM killer and cause fail to boot etc
-   upstart not used as default init on xenial+ and initial update was
    delayed for ESM so only a small number of users would be affected (those
    running 16.04 LTS/xenial who had manually configured upstart as init)


### [[USN-4361-1](https://usn.ubuntu.com/4361-1/)] Dovecot vulnerabilities [04:13] {#usn-4361-1-dovecot-vulnerabilities-04-13}

-   3 CVEs addressed in Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-10958](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10958) <!-- medium -->
    -   [CVE-2020-10967](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10967) <!-- medium -->
    -   [CVE-2020-10957](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10957) <!-- medium -->
-   3 issues discovered by Philippe Antoine
    -   UAF sending command is followed by a sufficient number of newlines -> crash
    -   Sending with empty quoted localpart or malformed NOOP commands -> crash


### [[USN-4362-1](https://usn.ubuntu.com/4362-1/)] DPDK vulnerabilities [04:47] {#usn-4362-1-dpdk-vulnerabilities-04-47}

-   5 CVEs addressed in Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-10726](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10726) <!-- medium -->
    -   [CVE-2020-10725](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10725) <!-- medium -->
    -   [CVE-2020-10724](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10724) <!-- medium -->
    -   [CVE-2020-10723](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10723) <!-- medium -->
    -   [CVE-2020-10722](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10722) <!-- medium -->
-   Data-plane development kit (provides TCP offloading to userspace to
    accelerate package processing workloads)
-   Used by openvswitch for OpenStack software defined networking
-   Memory leak and file-descriptor leak -> DoS
-   Guest to host crash via a missing check on an address in an io descriptor
-   Failure to validate key lengths
-   Integer overflow on host from guest -> crash


### [[USN-4367-1](https://usn.ubuntu.com/4367-1/)] Linux kernel vulnerabilities [05:51] {#usn-4367-1-linux-kernel-vulnerabilities-05-51}

-   3 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-12657](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12657) <!-- medium -->
    -   [CVE-2020-11565](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11565) <!-- medium -->
    -   [CVE-2019-19377](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19377) <!-- low -->
-   5.4 kernel
-   UAF due to a race-condition in bfq block io scheduler in block subsystem
-   Bug in parsing of mount options for tmpfs -> stack overflow (need root
    privileges etc to specify mount options)
-   UAF in btrfs when handling a specially crafted file-system image


### [[USN-4363-1](https://usn.ubuntu.com/4363-1/)] Linux kernel vulnerabilities [06:42] {#usn-4363-1-linux-kernel-vulnerabilities-06-42}

-   4 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-12657](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12657) <!-- medium -->
    -   [CVE-2020-11669](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11669) <!-- medium -->
    -   [CVE-2020-11565](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11565) <!-- medium -->
    -   [CVE-2020-11494](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11494) <!-- medium -->
-   4.15 kernel
-   block io scheduler UAF
-   PowerPC specific guest -> host VM crash on save / restore of authority
    mask registers
-   tmpfs mount option parsing
-   Serial CAN driver did not initialise stack data so could leak stack
    memory to userspace etc


### [[USN-4364-1](https://usn.ubuntu.com/4364-1/)] Linux kernel vulnerabilities [07:30] {#usn-4364-1-linux-kernel-vulnerabilities-07-30}

-   7 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2020-11668](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11668) <!-- medium -->
    -   [CVE-2020-11609](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11609) <!-- medium -->
    -   [CVE-2020-11608](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11608) <!-- medium -->
    -   [CVE-2020-11565](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11565) <!-- medium -->
    -   [CVE-2020-11494](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11494) <!-- medium -->
    -   [CVE-2020-10942](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10942) <!-- medium -->
    -   [CVE-2019-19060](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19060) <!-- low -->
-   4.4 kernel
-   USB camera drivers fail to validate device metadata -> NULL ptr deref etc (crash)
-   tmpfs & serial CAN above


### [[USN-4368-1](https://usn.ubuntu.com/4368-1/)] Linux kernel vulnerabilities [07:59] {#usn-4368-1-linux-kernel-vulnerabilities-07-59}

-   8 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-12657](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12657) <!-- medium -->
    -   [CVE-2020-11669](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11669) <!-- medium -->
    -   [CVE-2020-11668](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11668) <!-- medium -->
    -   [CVE-2020-11609](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11609) <!-- medium -->
    -   [CVE-2020-11608](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11608) <!-- medium -->
    -   [CVE-2020-11565](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11565) <!-- medium -->
    -   [CVE-2020-11494](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11494) <!-- medium -->
    -   [CVE-2019-19769](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19769) <!-- medium -->
-   5.0 gke/eom (based off Ubuntu 19.04 disco kernel)
-   block io scheduler UAF
-   ppc specific guest -> host VM crash on save / restore of authority mask
    registers
-   USB camera drivers fail to validate device metadata
-   tmpfs & serial CAN above


### [[USN-4365-1](https://usn.ubuntu.com/4365-1/)] Bind vulnerabilities [08:31] {#usn-4365-1-bind-vulnerabilities-08-31}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-8617](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8617) <!-- medium -->
    -   [CVE-2020-8616](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8616) <!-- medium -->
-   DNS refelection attack via recursive resolution -
    <http://www.nxnsattack.com/>


### [[USN-4366-1](https://usn.ubuntu.com/4366-1/)] Exim vulnerability [09:14] {#usn-4366-1-exim-vulnerability-09-14}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-12783](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12783) <!-- medium -->
-   OOB read in Secure Password Authentication (SPA, also known as NTLM)
    authenticator, could result in SPA/NTLM auth bypass


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe discuss recent trends in phishing attacks and Marcus Hutchins (aka MalwareTech) [09:43] {#alex-and-joe-discuss-recent-trends-in-phishing-attacks-and-marcus-hutchins--aka-malwaretech--09-43}

-   <https://www.wired.com/story/confessions-marcus-hutchins-hacker-who-saved-the-internet/>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
