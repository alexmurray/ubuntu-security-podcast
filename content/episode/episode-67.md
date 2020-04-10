+++
title = "Episode 67"
description = """
  A big week in security updates, including the Linux kernel, Ceph, ICU,
  Firefox, Dino and more, plus Joe and Alex discuss tips for securely working
  from home in light of Coronavirus.
  """
date = 2020-03-19T20:25:00+10:30
lastmod = 2020-04-10T14:13:03+09:30
draft = false
weight = 1004
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E067.mp3"
podcast_duration = "24:14"
podcast_bytes = 23280026
permalink = "https://ubuntusecuritypodcast.org/episode-67/"
guid = "bfa68a8055be84e37f33b58058b37a06d58a906c34914c4d20cdf859da1359902bbd1b65f5c2ad56be4388ccef2b53856af22e8294b60148db4f92ce55864061"
+++

## Overview {#overview}

A big week in security updates, including the Linux kernel, Ceph, ICU,
Firefox, Dino and more, plus Joe and Alex discuss tips for securely working
from home in light of Coronavirus.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

38 unique CVEs addressed


### [[USN-4299-1](https://usn.ubuntu.com/4299-1/)] Firefox vulnerabilities [00:41] {#usn-4299-1-firefox-vulnerabilities-00-41}

-   12 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-6811](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6811) <!-- medium -->
    -   [CVE-2020-6809](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6809) <!-- medium -->
    -   [CVE-2020-6815](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6815) <!-- medium -->
    -   [CVE-2020-6814](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6814) <!-- medium -->
    -   [CVE-2020-6813](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6813) <!-- low -->
    -   [CVE-2020-6812](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6812) <!-- low -->
    -   [CVE-2020-6810](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6810) <!-- medium -->
    -   [CVE-2020-6808](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6808) <!-- medium -->
    -   [CVE-2020-6807](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6807) <!-- medium -->
    -   [CVE-2020-6806](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6806) <!-- medium -->
    -   [CVE-2020-6805](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6805) <!-- medium -->
    -   [CVE-2019-20503](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20503) <!-- medium -->
-   74.0 - usual sorts of fixes:
    -   Crafted website -> DoS, URL and other browser chrome spoofing, bypass
        content security policy protections, RCE etc
    -   Extensions with all-url permission could access local files
    -   Copy-as-cURL devtools feature failed to escape website-controlled
        data - possible command injection -> RCE if user tricked into using
        this on a crafted website


### [[USN-4300-1](https://usn.ubuntu.com/4300-1/)] Linux kernel vulnerabilities [02:02] {#usn-4300-1-linux-kernel-vulnerabilities-02-02}

-   11 CVEs addressed in Bionic, Eoan
    -   [CVE-2019-19068](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19068) <!-- low -->
    -   [CVE-2019-19066](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19066) <!-- low -->
    -   [CVE-2019-19064](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19064) <!-- low -->
    -   [CVE-2019-19059](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19059) <!-- low -->
    -   [CVE-2019-19058](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19058) <!-- low -->
    -   [CVE-2019-19056](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19056) <!-- low -->
    -   [CVE-2019-19053](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19053) <!-- low -->
    -   [CVE-2019-19043](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19043) <!-- low -->
    -   [CVE-2019-18809](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18809) <!-- low -->
    -   [CVE-2020-2732](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2732) <!-- medium -->
    -   [CVE-2019-3016](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3016) <!-- medium -->
-   5.3 eoan, bionic hwe
-   2 KVM issues
    -   Nested KVM guest could access resources of parent -> sensitive info
        disclosure
    -   Guest VM could read memory from another guest VM since would sometimes
        miss deferred TLB flushes when switching guests
-   Rest low priority
    -   Memory leaks in various network and other device drivers under
        particular error scenarios - not likely that a local or remote user
        could easily trigger these so hence low priority


### [[USN-4301-1](https://usn.ubuntu.com/4301-1/)] Linux kernel vulnerabilities [03:53] {#usn-4301-1-linux-kernel-vulnerabilities-03-53}

-   8 CVEs addressed in Bionic
    -   [CVE-2019-19068](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19068) <!-- low -->
    -   [CVE-2019-19066](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19066) <!-- low -->
    -   [CVE-2019-19059](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19059) <!-- low -->
    -   [CVE-2019-19058](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19058) <!-- low -->
    -   [CVE-2019-19056](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19056) <!-- low -->
    -   [CVE-2019-19053](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19053) <!-- low -->
    -   [CVE-2020-2732](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2732) <!-- medium -->
    -   [CVE-2019-3016](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3016) <!-- medium -->
-   5.0 "cloud" specific kernel (oracle, aws, gke, gcp etc)
-   Same issues as above just with a couple less of the driver memory leak
    fixes since these were already done in a previous update


### [[USN-4302-1](https://usn.ubuntu.com/4302-1/)] Linux kernel vulnerabilities [04:31] {#usn-4302-1-linux-kernel-vulnerabilities-04-31}

-   10 CVEs addressed in Xenial, Bionic
    -   [CVE-2019-15217](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15217) <!-- negligible -->
    -   [CVE-2019-19068](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19068) <!-- low -->
    -   [CVE-2019-19066](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19066) <!-- low -->
    -   [CVE-2019-19058](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19058) <!-- low -->
    -   [CVE-2019-19056](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19056) <!-- low -->
    -   [CVE-2019-19051](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19051) <!-- low -->
    -   [CVE-2019-19046](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19046) <!-- low -->
    -   [CVE-2020-8832](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8832) <!-- medium -->
    -   [CVE-2019-14615](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14615) <!-- medium -->
    -   [CVE-2020-2732](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2732) <!-- medium -->
-   4.15, bionic and xenial hwe
-   CVE-2020-8832 - Ubuntu Intel i915 specific issue due to previous fix for
    CVE-2020-14615 being incomplete - so not completely mitigated in this
    kernel as expected
-   KVM nested virt bug and various driver memory leak fixes (see above) and
    a NULL pointer deref if a malicious USB device was inserted to the system


### [[USN-4303-1](https://usn.ubuntu.com/4303-1/), [USN-4303-2](https://usn.ubuntu.com/4303-2/)] Linux kernel vulnerability [05:26] {#usn-4303-1-usn-4303-2-linux-kernel-vulnerability-05-26}

-   1 CVEs addressed in Xenial and Trusty ESM (HWE)
    -   [CVE-2020-2732](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2732) <!-- medium -->
-   Nested KVM virt issue


### [[USN-4304-1](https://usn.ubuntu.com/4304-1/)] Ceph vulnerability [05:48] {#usn-4304-1-ceph-vulnerability-05-48}

-   1 CVEs addressed in Bionic, Eoan
    -   [CVE-2020-1700](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1700) <!-- medium -->
-   DoS able to be triggered by an authenticated user causing an unexpected
    disconnect to radosgw - sockets pile up and eventually exhaust resources
    -> DoS


### [[USN-4305-1](https://usn.ubuntu.com/4305-1/)] ICU vulnerability [06:26] {#usn-4305-1-icu-vulnerability-06-26}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Eoan
    -   [CVE-2020-10531](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10531) <!-- medium -->
-   C/C++ library for unicode handling - integer overflow -> heap buffer
    overflow - DoS/RCE?


### [[USN-4306-1](https://usn.ubuntu.com/4306-1/)] Dino vulnerabilities [07:05] {#usn-4306-1-dino-vulnerabilities-07-05}

-   3 CVEs addressed in Bionic
    -   [CVE-2019-16237](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16237) <!-- medium -->
    -   [CVE-2019-16236](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16236) <!-- medium -->
    -   [CVE-2019-16235](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16235) <!-- medium -->
-   Thanks to Julian Andres Klode from Foundations
-   Fixes for multiple failures to validate inputs - remote attacker could
    use to obtain, inject or remove info
-   Also includes a change to accept IV of 12 bytes as well as 16 bytes since
    this is what a lo t of other OMEMO clients are using
    -   OMEMO (OMEMO Multi-End Message and Object Encryption) - XMPP extension
        for multiclient E2E - so allows messages to be synchronised across
        multiple clients, even if some are offline


### [[USN-4171-5](https://usn.ubuntu.com/4171-5/)] Apport regression [08:14] {#usn-4171-5-apport-regression-08-14}

-   5 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2019-15790](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15790) <!-- medium -->
    -   [CVE-2019-11485](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11485) <!-- medium -->
    -   [CVE-2019-11483](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11483) <!-- medium -->
    -   [CVE-2019-11482](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11482) <!-- medium -->
    -   [CVE-2019-11481](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11481) <!-- low -->
-   Thanks to Tiago Daitx and Michael Hudson-Doyle from Foundations Team
-   Previous security update broke some autopkgtests and broke python2
    compatibility for various parts of Apport


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe and Alex discuss securely working from home whilst avoiding Coronavirus [09:21] {#joe-and-alex-discuss-securely-working-from-home-whilst-avoiding-coronavirus-09-21}


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)