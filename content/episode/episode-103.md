+++
title = "Episode 103"
description = """
  This week we take a deep dive look at 2 recent vulnerabilities in the
  popular application containerisation frameworks, snapd and flatpak, plus we
  cover security updates for MiniDLNA, PHP-PEAR, the Linux kernel and more.
  """
date = 2021-02-12T14:07:00+10:30
lastmod = 2021-02-12T14:08:11+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E103.mp3"
podcast_duration = "13:14"
podcast_bytes = 10686418
permalink = "https://ubuntusecuritypodcast.org/episode-103/"
guid = "a31dcf82f68470a08cc637ae5fa575f137f3c8d34cdf10b83cbd71865ed5a4d42d5be9fa6e363a42ee60d639fccdc0c2648a808bb9b08ea9034bde6bfe68fff8"
+++

## Overview {#overview}

This week we take a deep dive look at 2 recent vulnerabilities in the
popular application containerisation frameworks, snapd and flatpak, plus we
cover security updates for MiniDLNA, PHP-PEAR, the Linux kernel and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

26 unique CVEs addressed


### [[USN-4720-2](https://ubuntu.com/security/notices/USN-4720-2)] Apport vulnerabilities [00:53] {#usn-4720-2-apport-vulnerabilities-00-53}

-   3 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2021-25684](https://ubuntu.com/security/CVE-2021-25684)
    -   [CVE-2021-25683](https://ubuntu.com/security/CVE-2021-25683)
    -   [CVE-2021-25682](https://ubuntu.com/security/CVE-2021-25682)
-   [Episode 102](https://ubuntusecuritypodcast.org/episode-102/)


### [[USN-4721-1](https://ubuntu.com/security/notices/USN-4721-1)] Flatpak vulnerability [01:06] {#usn-4721-1-flatpak-vulnerability-01-06}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-21261](https://ubuntu.com/security/CVE-2021-21261)
-   Flatpak sandbox escape - Flatpak isolates applications inside their own
    mount / user / etc namespaces - allows sandboxed applications to
    communicate with the host via various portals - ie. open a file via a
    file chooser portal (aka powerbox)
-   Portal D-Bus service provides the ability to launch other subprocesses in
    a new sandbox instance, following a NNP model (ie same or less privileges
    as caller) (eg. used by sandboxed webbrowers to process untrusted content
    inside less privileged subprocesses)
-   Would previous allow a confined process to specify various environment
    variables which would then get passed to the \`flatpak run\` command to
    launch the new subprocess in its own sandbox - so fix is to sanitize
    environment variables


### [[USN-4722-1](https://ubuntu.com/security/notices/USN-4722-1)] ReadyMedia (MiniDLNA) vulnerabilities [01:11] {#usn-4722-1-readymedia--minidlna--vulnerabilities-01-11}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-28926](https://ubuntu.com/security/CVE-2020-28926)
    -   [CVE-2020-12695](https://ubuntu.com/security/CVE-2020-12695)
-   Possible RCE via malicious UPnP requests - could send with chunked
    encoding, this would exploit a signdness bug leading to a heap buffer
    overflow
-   [Episode 91](https://ubuntusecuritypodcast.org/episode-91/) - "CallStranger" - UPnP spec didn't forbid subscription
    requests with a URL on a different network segment - could allow an
    attacker to cause a miniDLNA server to DoS a different endpoint


### [[USN-4723-1](https://ubuntu.com/security/notices/USN-4723-1)] PEAR vulnerability [02:30] {#usn-4723-1-pear-vulnerability-02-30}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-36193](https://ubuntu.com/security/CVE-2020-36193)
-   Improper handling of symlinks in archives could result in arbitrary file
    overwrite via directory traversal - since PHP PEAR runs installer as
    root, could then overwrite arbitrary files as root and priv esc / code
    execution etc


### [[USN-4724-1](https://ubuntu.com/security/notices/USN-4724-1)] OpenLDAP vulnerabilities [03:14] {#usn-4724-1-openldap-vulnerabilities-03-14}

-   10 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-36230](https://ubuntu.com/security/CVE-2020-36230)
    -   [CVE-2020-36229](https://ubuntu.com/security/CVE-2020-36229)
    -   [CVE-2020-36228](https://ubuntu.com/security/CVE-2020-36228)
    -   [CVE-2020-36227](https://ubuntu.com/security/CVE-2020-36227)
    -   [CVE-2020-36223](https://ubuntu.com/security/CVE-2020-36223)
    -   [CVE-2020-36226](https://ubuntu.com/security/CVE-2020-36226)
    -   [CVE-2020-36225](https://ubuntu.com/security/CVE-2020-36225)
    -   [CVE-2020-36224](https://ubuntu.com/security/CVE-2020-36224)
    -   [CVE-2020-36222](https://ubuntu.com/security/CVE-2020-36222)
    -   [CVE-2020-36221](https://ubuntu.com/security/CVE-2020-36221)
-   Various issues


### [[USN-4725-1](https://ubuntu.com/security/notices/USN-4725-1)] QEMU vulnerabilities [03:20] {#usn-4725-1-qemu-vulnerabilities-03-20}

-   6 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-20181](https://ubuntu.com/security/CVE-2021-20181)
    -   [CVE-2020-29443](https://ubuntu.com/security/CVE-2020-29443)
    -   [CVE-2020-28916](https://ubuntu.com/security/CVE-2020-28916)
    -   [CVE-2020-27821](https://ubuntu.com/security/CVE-2020-27821)
    -   [CVE-2020-15859](https://ubuntu.com/security/CVE-2020-15859)
    -   [CVE-2020-11947](https://ubuntu.com/security/CVE-2020-11947)
-   Usual sorts of issues in device emulation etc resulting in info
    disclosure from host to guest or a crash of qemu host process etc


### [[USN-4717-2](https://ubuntu.com/security/notices/USN-4717-2)] Firefox regression [03:55] {#usn-4717-2-firefox-regression-03-55}

-   Affecting Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
-   Upstream Firefox regression - 85.0.1


### [[USN-4726-1](https://ubuntu.com/security/notices/USN-4726-1)] OpenJDK vulnerability [04:04] {#usn-4726-1-openjdk-vulnerability-04-04}

-   Affecting Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
-   Not much info from upstream on this one - "incorrectly handled direct
    buffering of characters" -> DoS or other unspecified impact


### [[USN-4713-2](https://ubuntu.com/security/notices/USN-4713-2)] Linux kernel vulnerability [04:22] {#usn-4713-2-linux-kernel-vulnerability-04-22}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2020-28374](https://ubuntu.com/security/CVE-2020-28374)
-   [Episode 102](https://ubuntusecuritypodcast.org/episode-102/) - LIO SCSI XCOPY issue


### [[USN-4727-1](https://ubuntu.com/security/notices/USN-4727-1)] Linux kernel vulnerability [04:36] {#usn-4727-1-linux-kernel-vulnerability-04-36}

-   1 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-26708](https://ubuntu.com/security/CVE-2021-26708)
-   AF\_VSOCK race conditions - local user could get code execution as root via memory corruption


### [[USN-4728-1](https://ubuntu.com/security/notices/USN-4728-1)] snapd vulnerability [05:11] {#usn-4728-1-snapd-vulnerability-05-11}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-27352](https://ubuntu.com/security/CVE-2020-27352)
-   Gilad Reti & Nimrod Stoler from CyberArk
-   Thanks to Ian Johnson from snapd team for working on the fix


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
