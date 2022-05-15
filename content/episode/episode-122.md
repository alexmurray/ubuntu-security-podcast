+++
title = "Episode 122"
description = """
  This week we look at some new Linux kernel security features including the
  Landlock LSM and Core Scheduling plus we cover security updates for
  RabbitMQ, Ceph, Thunderbird and more.
  """
date = 2021-07-02T16:14:00+09:30
lastmod = 2022-05-15T18:06:03+09:30
draft = false
weight = 1038
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E122.mp3"
podcast_duration = "10:23"
podcast_bytes = 8220673
permalink = "https://ubuntusecuritypodcast.org/episode-122/"
guid = "43c56fcd3783f92228384bee83e34fc2e0797191385e38aec46315a291f681f76d808ddee4ee6944a3c5bfdd5b3a3d8c29a7c1ab8b4f15e9fe1762b2acb7732d"
+++

## Overview {#overview}

This week we look at some new Linux kernel security features including the
Landlock LSM and Core Scheduling plus we cover security updates for
RabbitMQ, Ceph, Thunderbird and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

46 unique CVEs addressed


### [[USN-5004-1](https://ubuntu.com/security/notices/USN-5004-1)] RabbitMQ vulnerabilities [00:44] {#usn-5004-1-rabbitmq-vulnerabilities-00-44}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-22116](https://ubuntu.com/security/CVE-2021-22116) <!-- medium -->
    -   [CVE-2019-11287](https://ubuntu.com/security/CVE-2019-11287) <!-- low -->
-   AMQP server written in Erlang
-   Possible to cause the server to consume excessive memory by sending large
    values in the X-Reason HTTP header - resource exhaustion - DoS
-   Possible infinite loop - failed to perform sufficient validation - DoS


### [[USN-4998-1](https://ubuntu.com/security/notices/USN-4998-1)] Ceph vulnerabilities [01:38] {#usn-4998-1-ceph-vulnerabilities-01-38}

-   7 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-3531](https://ubuntu.com/security/CVE-2021-3531) <!-- medium -->
    -   [CVE-2021-3524](https://ubuntu.com/security/CVE-2021-3524) <!-- medium -->
    -   [CVE-2021-3509](https://ubuntu.com/security/CVE-2021-3509) <!-- medium -->
    -   [CVE-2021-20288](https://ubuntu.com/security/CVE-2021-20288) <!-- medium -->
    -   [CVE-2020-27839](https://ubuntu.com/security/CVE-2020-27839) <!-- medium -->
    -   [CVE-2020-27781](https://ubuntu.com/security/CVE-2020-27781) <!-- medium -->
    -   [CVE-2020-25678](https://ubuntu.com/security/CVE-2020-25678) <!-- low -->
-   May log passwords in clear
-   Exposure of user credentials to unprivileged users in particular
    configurations
-   2 different XSS in ceph-dashboard
-   Possible to authenticate as another user since could reuse session keys
-   Crash radosgw through malicious GET requests with crafted swift URLs -&gt;
    DoS


### [[USN-4995-2](https://ubuntu.com/security/notices/USN-4995-2)] Thunderbird vulnerabilities [02:22] {#usn-4995-2-thunderbird-vulnerabilities-02-22}

-   20 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2021-29957](https://ubuntu.com/security/CVE-2021-29957) <!-- medium -->
    -   [CVE-2021-29956](https://ubuntu.com/security/CVE-2021-29956) <!-- medium -->
    -   [CVE-2021-29949](https://ubuntu.com/security/CVE-2021-29949) <!-- low -->
    -   [CVE-2021-29948](https://ubuntu.com/security/CVE-2021-29948) <!-- low -->
    -   [CVE-2021-24002](https://ubuntu.com/security/CVE-2021-24002) <!-- medium -->
    -   [CVE-2021-23995](https://ubuntu.com/security/CVE-2021-23995) <!-- medium -->
    -   [CVE-2021-23993](https://ubuntu.com/security/CVE-2021-23993) <!-- medium -->
    -   [CVE-2021-23992](https://ubuntu.com/security/CVE-2021-23992) <!-- medium -->
    -   [CVE-2021-23991](https://ubuntu.com/security/CVE-2021-23991) <!-- medium -->
    -   [CVE-2021-23984](https://ubuntu.com/security/CVE-2021-23984) <!-- medium -->
    -   [CVE-2021-29967](https://ubuntu.com/security/CVE-2021-29967) <!-- medium -->
    -   [CVE-2021-29946](https://ubuntu.com/security/CVE-2021-29946) <!-- medium -->
    -   [CVE-2021-29945](https://ubuntu.com/security/CVE-2021-29945) <!-- medium -->
    -   [CVE-2021-23999](https://ubuntu.com/security/CVE-2021-23999) <!-- medium -->
    -   [CVE-2021-23998](https://ubuntu.com/security/CVE-2021-23998) <!-- medium -->
    -   [CVE-2021-23994](https://ubuntu.com/security/CVE-2021-23994) <!-- medium -->
    -   [CVE-2021-23987](https://ubuntu.com/security/CVE-2021-23987) <!-- medium -->
    -   [CVE-2021-23982](https://ubuntu.com/security/CVE-2021-23982) <!-- medium -->
    -   [CVE-2021-23981](https://ubuntu.com/security/CVE-2021-23981) <!-- medium -->
    -   [CVE-2021-23961](https://ubuntu.com/security/CVE-2021-23961) <!-- medium -->
-   [Episode 121](https://ubuntusecuritypodcast.org/episode-121/)
-   78.11.0


### [[USN-5000-2](https://ubuntu.com/security/notices/USN-5000-2)] Linux kernel (KVM) vulnerabilities [02:48] {#usn-5000-2-linux-kernel--kvm--vulnerabilities-02-48}

-   15 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-3506](https://ubuntu.com/security/CVE-2021-3506) <!-- medium -->
    -   [CVE-2021-33034](https://ubuntu.com/security/CVE-2021-33034) <!-- medium -->
    -   [CVE-2021-32399](https://ubuntu.com/security/CVE-2021-32399) <!-- medium -->
    -   [CVE-2021-31829](https://ubuntu.com/security/CVE-2021-31829) <!-- medium -->
    -   [CVE-2021-23134](https://ubuntu.com/security/CVE-2021-23134) <!-- medium -->
    -   [CVE-2021-23133](https://ubuntu.com/security/CVE-2021-23133) <!-- medium -->
    -   [CVE-2020-26147](https://ubuntu.com/security/CVE-2020-26147) <!-- medium -->
    -   [CVE-2020-26145](https://ubuntu.com/security/CVE-2020-26145) <!-- medium -->
    -   [CVE-2020-26141](https://ubuntu.com/security/CVE-2020-26141) <!-- medium -->
    -   [CVE-2020-26139](https://ubuntu.com/security/CVE-2020-26139) <!-- medium -->
    -   [CVE-2020-24588](https://ubuntu.com/security/CVE-2020-24588) <!-- medium -->
    -   [CVE-2020-24587](https://ubuntu.com/security/CVE-2020-24587) <!-- medium -->
    -   [CVE-2020-24586](https://ubuntu.com/security/CVE-2020-24586) <!-- medium -->
    -   [CVE-2021-33200](https://ubuntu.com/security/CVE-2021-33200) <!-- high -->
    -   [CVE-2021-3609](https://ubuntu.com/security/CVE-2021-3609) <!-- high -->
-   [Episode 121](https://ubuntusecuritypodcast.org/episode-121/)
-   KVM kernel for 20.04 LTS
-   2 high priority privesc issues fixed - CAN BCM UAFs, eBPF OOB write -
    plus various others too


### [[USN-4997-2](https://ubuntu.com/security/notices/USN-4997-2)] Linux kernel (KVM) vulnerabilities {#usn-4997-2-linux-kernel--kvm--vulnerabilities}

-   17 CVEs addressed in Hirsute (21.04)
    -   [CVE-2021-3543](https://ubuntu.com/security/CVE-2021-3543) <!-- medium -->
    -   [CVE-2021-3506](https://ubuntu.com/security/CVE-2021-3506) <!-- medium -->
    -   [CVE-2021-33034](https://ubuntu.com/security/CVE-2021-33034) <!-- medium -->
    -   [CVE-2021-32399](https://ubuntu.com/security/CVE-2021-32399) <!-- medium -->
    -   [CVE-2021-31829](https://ubuntu.com/security/CVE-2021-31829) <!-- medium -->
    -   [CVE-2021-31440](https://ubuntu.com/security/CVE-2021-31440) <!-- medium -->
    -   [CVE-2021-23134](https://ubuntu.com/security/CVE-2021-23134) <!-- medium -->
    -   [CVE-2021-23133](https://ubuntu.com/security/CVE-2021-23133) <!-- medium -->
    -   [CVE-2020-26147](https://ubuntu.com/security/CVE-2020-26147) <!-- medium -->
    -   [CVE-2020-26145](https://ubuntu.com/security/CVE-2020-26145) <!-- medium -->
    -   [CVE-2020-26141](https://ubuntu.com/security/CVE-2020-26141) <!-- medium -->
    -   [CVE-2020-26139](https://ubuntu.com/security/CVE-2020-26139) <!-- medium -->
    -   [CVE-2020-24588](https://ubuntu.com/security/CVE-2020-24588) <!-- medium -->
    -   [CVE-2020-24587](https://ubuntu.com/security/CVE-2020-24587) <!-- medium -->
    -   [CVE-2020-24586](https://ubuntu.com/security/CVE-2020-24586) <!-- medium -->
    -   [CVE-2021-33200](https://ubuntu.com/security/CVE-2021-33200) <!-- high -->
    -   [CVE-2021-3609](https://ubuntu.com/security/CVE-2021-3609) <!-- high -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Landlock released in 5.13 kernel [03:49] {#landlock-released-in-5-dot-13-kernel-03-49}

-   Allows unprivileged processes to sandbox themselves - currently only
    supports file paths - so can specify read/write of files/dirs etc
-   Took 34 revisions of the patch set and it evolved significantly over
    time - was originally based on attaching BPF programs to LSM hooks but
    given how fraught unprivileged BPF has been this was NACKd and instead
    went with a new approach based on a custom API with brand new system
    calls to support it
-   API is quite low-level compared to say how AppArmor policy is specified
    so will be interesting to see if there becomes a liblandlock in the
    future to make this kind of thing easier (cf. libseccomp for doing
    seccomp BPF programs etc)
-   <https://lwn.net/Articles/859908/>
-   <https://landlock.io/>


### Core Scheduling merged for 5.14 kernel [06:43] {#core-scheduling-merged-for-5-dot-14-kernel-06-43}

-   SMT siblings share lots of microarchitectural state like L1D cache etc -
    various micro-arch attacks could only be mitigated across different SMT
    cores - so processes which shared the same core could snoop on each other
    (eg. L1TF - in the context of virtualisation, a malicious guest VM could
    snoop on the L1D contents of another VM on the same SMT core) - so the
    only option was to disable SMT which brings a big performance hit
-   Solution is core scheduling - ie. make the schedular aware of and respect
    SMT threads on the same core
-   Tag processes via cgroups - this defines the trust boundaries - processes
    in the same tagged cgroup share a trust boundary and can be scheduled on
    sibling SMT cores - and by default all processes are in the same group
-   Uses prctl() to allow setting / copying these - and can only set these on
    processes which you can ptrace
-   <https://lwn.net/Articles/820321/>
-   <https://www.phoronix.com/scan.php?page=news_item&px=Core-Scheduling-Linux-Close>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)