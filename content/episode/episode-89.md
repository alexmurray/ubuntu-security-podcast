+++
title = "Episode 89"
description = """
  This week we farewell Joe McManus plus we look at security updates for
  Firefox, Chrony, Squid, Django, the Linux kernel and more.
  """
date = 2020-09-03T17:20:00+09:30
lastmod = 2022-05-15T18:06:28+09:30
draft = false
weight = 1071
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E089.mp3"
podcast_duration = "10:59"
podcast_bytes = 10554841
permalink = "https://ubuntusecuritypodcast.org/episode-89/"
guid = "eaad6772979ced6825b11a497941a1b76c5a1d65b4e2d6d684aac06554cc4c3207588d025bcf438c5eb5cce2a1c2cf137f747927da22b487e5833ddb1393d480"
+++

## Overview {#overview}

This week we farewell Joe McManus plus we look at security updates for
Firefox, Chrony, Squid, Django, the Linux kernel and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

59 unique CVEs addressed


### [[USN-4473-1](https://usn.ubuntu.com/4473-1/)] libmysofa vulnerabilities [01:01] {#usn-4473-1-libmysofa-vulnerabilities-01-01}

-   5 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-16095](https://ubuntu.com/security/CVE-2019-16095) <!-- medium -->
    -   [CVE-2019-16094](https://ubuntu.com/security/CVE-2019-16094) <!-- medium -->
    -   [CVE-2019-16093](https://ubuntu.com/security/CVE-2019-16093) <!-- medium -->
    -   [CVE-2019-16092](https://ubuntu.com/security/CVE-2019-16092) <!-- medium -->
    -   [CVE-2019-16091](https://ubuntu.com/security/CVE-2019-16091) <!-- medium -->
-   OOB, NULL ptr deref, heap buffer overflow etc -&gt; DoS


### [[USN-4474-1](https://usn.ubuntu.com/4474-1/)] Firefox vulnerabilities [01:30] {#usn-4474-1-firefox-vulnerabilities-01-30}

-   8 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-15668](https://ubuntu.com/security/CVE-2020-15668) <!-- low -->
    -   [CVE-2020-6829](https://ubuntu.com/security/CVE-2020-6829) <!-- medium -->
    -   [CVE-2020-12401](https://ubuntu.com/security/CVE-2020-12401) <!-- medium -->
    -   [CVE-2020-12400](https://ubuntu.com/security/CVE-2020-12400) <!-- medium -->
    -   [CVE-2020-15670](https://ubuntu.com/security/CVE-2020-15670) <!-- medium -->
    -   [CVE-2020-15666](https://ubuntu.com/security/CVE-2020-15666) <!-- low -->
    -   [CVE-2020-15665](https://ubuntu.com/security/CVE-2020-15665) <!-- medium -->
    -   [CVE-2020-15664](https://ubuntu.com/security/CVE-2020-15664) <!-- medium -->
-   80.0
-   Attacker controlled website -&gt; DoS, install malicious extension, spoof
    URL bar, leak sensitive info across origins, RCE etc
-   NSS side-channel attacks etc
-   Race condition when importing a cert into the trust store (unspec impact)


### [[USN-4446-2](https://usn.ubuntu.com/4446-2/)] Squid regression [02:31] {#usn-4446-2-squid-regression-02-31}

-   4 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2019-18676](https://ubuntu.com/security/CVE-2019-18676) <!-- medium -->
    -   [CVE-2019-12524](https://ubuntu.com/security/CVE-2019-12524) <!-- medium -->
    -   [CVE-2019-12523](https://ubuntu.com/security/CVE-2019-12523) <!-- medium -->
    -   [CVE-2019-12520](https://ubuntu.com/security/CVE-2019-12520) <!-- medium -->
-   Regression in recent squid update would cause issues if using icap or
    ecap protocols to do content adaptation


### [[USN-4475-1](https://usn.ubuntu.com/4475-1/)] Chrony vulnerability [02:51] {#usn-4475-1-chrony-vulnerability-02-51}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-14367](https://ubuntu.com/security/CVE-2020-14367) <!-- medium -->
-   pid file is created as root before drops privileges and was susceptible
    to a symlink attack -&gt; could be used to overwrite arbitrary files on the
    system


### [[USN-4476-1](https://usn.ubuntu.com/4476-1/)] NSS vulnerability [03:45] {#usn-4476-1-nss-vulnerability-03-45}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-12403](https://ubuntu.com/security/CVE-2020-12403) <!-- medium -->
-   OOB read for CHACHA20 decryption with undersized tag


### [[USN-4477-1](https://usn.ubuntu.com/4477-1/)] Squid vulnerabilities {#usn-4477-1-squid-vulnerabilities}

-   3 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-24606](https://ubuntu.com/security/CVE-2020-24606) <!-- medium -->
    -   [CVE-2020-15811](https://ubuntu.com/security/CVE-2020-15811) <!-- low -->
    -   [CVE-2020-15810](https://ubuntu.com/security/CVE-2020-15810) <!-- medium -->
-   HTTP request smuggling


### [[USN-4478-1](https://usn.ubuntu.com/4478-1/)] Python-RSA vulnerability [04:15] {#usn-4478-1-python-rsa-vulnerability-04-15}

-   1 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2020-13757](https://ubuntu.com/security/CVE-2020-13757) <!-- medium -->
-   Ignores leading NUL/zero byte in decryption of ciphertext - fixed to
    check length matches block size


### [[USN-4479-1](https://usn.ubuntu.com/4479-1/)] Django vulnerabilities [04:40] {#usn-4479-1-django-vulnerabilities-04-40}

-   2 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-24584](https://ubuntu.com/security/CVE-2020-24584) <!-- medium -->
    -   [CVE-2020-24583](https://ubuntu.com/security/CVE-2020-24583) <!-- medium -->
-   Incorrect handling of permissions on directories in caches - caused by a
    behavioural change in python 3.7 - so only affects Python Django when
    used with python 3.7 and hence say bionic (which uses python 3.6) is not
    affected


### [[USN-4480-1](https://usn.ubuntu.com/4480-1/)] OpenStack Keystone vulnerabilities [05:25] {#usn-4480-1-openstack-keystone-vulnerabilities-05-25}

-   4 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-12692](https://ubuntu.com/security/CVE-2020-12692) <!-- medium -->
    -   [CVE-2020-12690](https://ubuntu.com/security/CVE-2020-12690) <!-- medium -->
    -   [CVE-2020-12691](https://ubuntu.com/security/CVE-2020-12691) <!-- medium -->
    -   [CVE-2020-12689](https://ubuntu.com/security/CVE-2020-12689) <!-- medium -->
-   Incorrect handling of EC2 permissions could allow an authenticated
    attacker to create EC2 credentials with elevated permissions
-   Incorrect handling of OAUTH1 roles could give an authenticated attacker
    more role assignments than intended
-   Incorrect handling of EC2 signature TTL checks could allow reuse of
    authorisation headers


### [[USN-4471-2](https://usn.ubuntu.com/4471-2/)] Net-SNMP regression [05:51] {#usn-4471-2-net-snmp-regression-05-51}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-15862](https://ubuntu.com/security/CVE-2020-15862) <!-- medium -->
    -   [CVE-2020-15861](https://ubuntu.com/security/CVE-2020-15861) <!-- medium -->
-   Previous update ([Episode 87](https://ubuntusecuritypodcast.org/episode-87/)) caused \`nsExtendCacheTime\` to be not
    settable as MIB attribute - instead add cacheTime feature flag to set
    this


### [[USN-4481-1](https://usn.ubuntu.com/4481-1/)] FreeRDP vulnerabilities [06:23] {#usn-4481-1-freerdp-vulnerabilities-06-23}

-   10 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-4033](https://ubuntu.com/security/CVE-2020-4033) <!-- low -->
    -   [CVE-2020-4032](https://ubuntu.com/security/CVE-2020-4032) <!-- medium -->
    -   [CVE-2020-4031](https://ubuntu.com/security/CVE-2020-4031) <!-- medium -->
    -   [CVE-2020-4030](https://ubuntu.com/security/CVE-2020-4030) <!-- medium -->
    -   [CVE-2020-15103](https://ubuntu.com/security/CVE-2020-15103) <!-- - -->
    -   [CVE-2020-11099](https://ubuntu.com/security/CVE-2020-11099) <!-- medium -->
    -   [CVE-2020-11098](https://ubuntu.com/security/CVE-2020-11098) <!-- medium -->
    -   [CVE-2020-11097](https://ubuntu.com/security/CVE-2020-11097) <!-- medium -->
    -   [CVE-2020-11096](https://ubuntu.com/security/CVE-2020-11096) <!-- medium -->
    -   [CVE-2020-11095](https://ubuntu.com/security/CVE-2020-11095) <!-- medium -->
-   Various memory corruption and handling issues -&gt; OOB reads / writes, UAF
    etc -&gt; crash / RCE


### [[USN-4482-1](https://usn.ubuntu.com/4482-1/)] Ark vulnerability [06:54] {#usn-4482-1-ark-vulnerability-06-54}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-24654](https://ubuntu.com/security/CVE-2020-24654) <!-- medium -->
-   Crafted TAR with symlinks outside of working directory -&gt; overwrite or
    creation of arbitrary files (zipslip but for tar - tarslip?)


### [[USN-4483-1](https://usn.ubuntu.com/4483-1/)] Linux kernel vulnerabilities [07:22] {#usn-4483-1-linux-kernel-vulnerabilities-07-22}

-   13 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-12656](https://ubuntu.com/security/CVE-2020-12656) <!-- negligible -->
    -   [CVE-2020-24394](https://ubuntu.com/security/CVE-2020-24394) <!-- medium -->
    -   [CVE-2020-15393](https://ubuntu.com/security/CVE-2020-15393) <!-- low -->
    -   [CVE-2020-14356](https://ubuntu.com/security/CVE-2020-14356) <!-- medium -->
    -   [CVE-2020-13974](https://ubuntu.com/security/CVE-2020-13974) <!-- low -->
    -   [CVE-2020-12771](https://ubuntu.com/security/CVE-2020-12771) <!-- low -->
    -   [CVE-2020-12655](https://ubuntu.com/security/CVE-2020-12655) <!-- medium -->
    -   [CVE-2020-10781](https://ubuntu.com/security/CVE-2020-10781) <!-- low -->
    -   [CVE-2020-10768](https://ubuntu.com/security/CVE-2020-10768) <!-- medium -->
    -   [CVE-2020-10767](https://ubuntu.com/security/CVE-2020-10767) <!-- medium -->
    -   [CVE-2020-10766](https://ubuntu.com/security/CVE-2020-10766) <!-- medium -->
    -   [CVE-2020-10757](https://ubuntu.com/security/CVE-2020-10757) <!-- medium -->
    -   [CVE-2019-20810](https://ubuntu.com/security/CVE-2019-20810) <!-- low -->
-   5.4 kernel - focal - raspi / aws / gcp / oracle / azure / gcp etc for
    bionic
-   Memory leak in USB audio and USB testing drivers, DAX mremap, Speculative
    Store Bypass Disable (SSBD), Indirect Branch Predictor Barrier (IBPB) &amp;
    Indirect Branch Speculation mitigation bypasses, crafted XFS metadata
    DoS, cgroupv2 reference count -&gt; NULL ptr deref etc


### [[USN-4484-1](https://usn.ubuntu.com/4484-1/)] Linux kernel vulnerability {#usn-4484-1-linux-kernel-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-14356](https://ubuntu.com/security/CVE-2020-14356) <!-- medium -->
-   5.3 gke/HWE kernel
-   cgroupv2 issue


### [[USN-4485-1](https://usn.ubuntu.com/4485-1/)] Linux kernel vulnerabilities {#usn-4485-1-linux-kernel-vulnerabilities}

-   14 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-12656](https://ubuntu.com/security/CVE-2020-12656) <!-- negligible -->
    -   [CVE-2020-24394](https://ubuntu.com/security/CVE-2020-24394) <!-- medium -->
    -   [CVE-2020-15393](https://ubuntu.com/security/CVE-2020-15393) <!-- low -->
    -   [CVE-2020-13974](https://ubuntu.com/security/CVE-2020-13974) <!-- low -->
    -   [CVE-2020-12771](https://ubuntu.com/security/CVE-2020-12771) <!-- low -->
    -   [CVE-2020-12655](https://ubuntu.com/security/CVE-2020-12655) <!-- medium -->
    -   [CVE-2020-10781](https://ubuntu.com/security/CVE-2020-10781) <!-- low -->
    -   [CVE-2020-10768](https://ubuntu.com/security/CVE-2020-10768) <!-- medium -->
    -   [CVE-2020-10767](https://ubuntu.com/security/CVE-2020-10767) <!-- medium -->
    -   [CVE-2020-10766](https://ubuntu.com/security/CVE-2020-10766) <!-- medium -->
    -   [CVE-2020-10732](https://ubuntu.com/security/CVE-2020-10732) <!-- low -->
    -   [CVE-2019-20810](https://ubuntu.com/security/CVE-2019-20810) <!-- low -->
    -   [CVE-2019-19947](https://ubuntu.com/security/CVE-2019-19947) <!-- low -->
    -   [CVE-2018-20669](https://ubuntu.com/security/CVE-2018-20669) <!-- low -->
-   4.15 (bionic / xenial hwe / trusty esm azure)
-   Mostly same as above


### [[USN-4486-1](https://usn.ubuntu.com/4486-1/)] Linux kernel vulnerability {#usn-4486-1-linux-kernel-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2018-10323](https://ubuntu.com/security/CVE-2018-10323) <!-- low -->
-   4.4 (xenial / trusy esm hwe)
-   XFS metadata DoS


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Farewell Joe McManus [09:04] {#farewell-joe-mcmanus-09-04}

-   Thanks for being the best co-host a bloke could wish for


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)