+++
title = "Episode 90"
description = """
  This week we look at security updates for the X server, the Linux kernel
  and GnuTLS plus we preview the upcoming AppArmor3 release that is slated
  for Ubuntu 20.10 (Groovy Gorilla).
  """
date = 2020-09-11T15:26:00+09:30
lastmod = 2022-05-15T18:06:28+09:30
draft = false
weight = 1070
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E090.mp3"
podcast_duration = "11:27"
podcast_bytes = 11004565
permalink = "https://ubuntusecuritypodcast.org/episode-90/"
guid = "3ae0b20ef4b38177e2d75e9f68ae9349990e62570dcf63a6ec394a68491e3b6d70560d3c47c2bfc6dcccb88d7c04edde4733c242d787e7c6700b730febf14622"
+++

## Overview {#overview}

This week we look at security updates for the X server, the Linux kernel
and GnuTLS plus we preview the upcoming AppArmor3 release that is slated
for Ubuntu 20.10 (Groovy Gorilla).


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

20 unique CVEs addressed


### [[USN-4487-1](https://usn.ubuntu.com/4487-1/), [USN-4487-2](https://usn.ubuntu.com/4487-2/)] libx11 vulnerabilities [00:58] {#usn-4487-1-usn-4487-2-libx11-vulnerabilities-00-58}

-   2 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-14363](https://ubuntu.com/security/CVE-2020-14363) <!-- medium -->
    -   [CVE-2020-14344](https://ubuntu.com/security/CVE-2020-14344) <!-- medium -->
-   2 privilege escalation attacks
    -   integer overflow -&gt; double free -&gt; memory corruption
    -   integer overflow -&gt; heap buffer overflow
    -   privilege escalation may be possible since in both cases could cause
        arbitrary code exec with a binary that is using libX11 and running with
        root privileges (setuid / sudo etc) - this is why we often advise don't
        run graphical applications via sudo etc


### [[USN-4488-1](https://usn.ubuntu.com/4488-1/), [USN-4490-1](https://usn.ubuntu.com/4490-1/)] X.Org X Server vulnerabilities [02:29] {#usn-4488-1-usn-4490-1-x-dot-org-x-server-vulnerabilities-02-29}

-   4 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-14362](https://ubuntu.com/security/CVE-2020-14362) <!-- medium -->
    -   [CVE-2020-14361](https://ubuntu.com/security/CVE-2020-14361) <!-- medium -->
    -   [CVE-2020-14347](https://ubuntu.com/security/CVE-2020-14347) <!-- low -->
    -   [CVE-2020-14346](https://ubuntu.com/security/CVE-2020-14346) <!-- medium -->
    -   [CVE-2020-14345](https://ubuntu.com/security/CVE-2020-14345) <!-- medium -->
-   Various memory corruption vulnerabilities all discovered by Jan-Niklas
    Sohn - on some older releases (xenial and earlier) X server runs as root


### [[USN-4449-2](https://usn.ubuntu.com/4449-2/)] Apport vulnerabilities [03:28] {#usn-4449-2-apport-vulnerabilities-03-28}

-   3 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2020-15702](https://ubuntu.com/security/CVE-2020-15702) <!-- medium -->
    -   [CVE-2020-15701](https://ubuntu.com/security/CVE-2020-15701) <!-- medium -->
    -   [CVE-2020-11936](https://ubuntu.com/security/CVE-2020-11936) <!-- medium -->
-   [Episode 85](https://ubuntusecuritypodcast.org/episode-85/)


### [[USN-4474-2](https://usn.ubuntu.com/4474-2/)] Firefox regressions [03:38] {#usn-4474-2-firefox-regressions-03-38}

-   8 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-15668](https://ubuntu.com/security/CVE-2020-15668) <!-- low -->
    -   [CVE-2020-6829](https://ubuntu.com/security/CVE-2020-6829) <!-- medium -->
    -   [CVE-2020-12401](https://ubuntu.com/security/CVE-2020-12401) <!-- medium -->
    -   [CVE-2020-12400](https://ubuntu.com/security/CVE-2020-12400) <!-- medium -->
    -   [CVE-2020-15670](https://ubuntu.com/security/CVE-2020-15670) <!-- medium -->
    -   [CVE-2020-15666](https://ubuntu.com/security/CVE-2020-15666) <!-- low -->
    -   [CVE-2020-15665](https://ubuntu.com/security/CVE-2020-15665) <!-- medium -->
    -   [CVE-2020-15664](https://ubuntu.com/security/CVE-2020-15664) <!-- medium -->
-   [Episode 89](https://ubuntusecuritypodcast.org/episode-89/)
-   80.0.1 - upstream release to fix regressions in 80.0 release -&gt; crashes
    on GPU resets, WebGL rendering issues, performance issue in processing CA
    certs &amp;c


### [[USN-4489-1](https://usn.ubuntu.com/4489-1/)] Linux kernel vulnerability [04:09] {#usn-4489-1-linux-kernel-vulnerability-04-09}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-14386](https://ubuntu.com/security/CVE-2020-14386) <!-- high -->
-   AF_PACKET (layer 2) socket did not perform bounds checks in some places -
    requires CAP_NET_RAW or root - BUT can be root in a user namespace and
    these are enabled by default in Ubuntu and other Linux distros -&gt; can
    disable by sysctl \`kernel.unprivileged_userns_clone=0\`


### [[USN-4491-1](https://usn.ubuntu.com/4491-1/)] GnuTLS vulnerability [06:01] {#usn-4491-1-gnutls-vulnerability-06-01}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-24659](https://ubuntu.com/security/CVE-2020-24659) <!-- medium -->
-   Malicious server can trigger a NULL ptr deref in client during TLS 1.3
    negotiation - DoS


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### AppArmor3 slated for Ubuntu 20.10 [06:32] {#apparmor3-slated-for-ubuntu-20-dot-10-06-32}

-   Beta version of AppArmor3 is being prepared for Ubuntu 20.10 Groovy
    Gorilla - should land in -proposed next week and then main soon after
-   Provides ABI feature pinning - so upgrading to kernels with newer
    additional features will not break existing profiles
-   Rewrites of a number of tools into different languages to make their use
    and packaging easier
-   Support for new kernel features such as v8 ABI network socket rules,
    xattr attachment conditionals, PERFMON and BPF capabilities
-   Improved compilar warnings and semantic checks
-   Improved support for kernels that support LSM stacking
-   Profile modes - enforce (default), kill and unconfined


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)