+++
title = "Episode 97"
description = """
  This week we look at vulnerabilities in MoinMoin, OpenLDAP, Kerberos,
  Raptor (including a discussion of CVE workflows and the oss-security
  mailing list) and more, whilst in community news we talk about the upcoming
  AppArmor webinar, migration of Ubuntu CVE information to ubuntu.com and
  reverse engineering of malware by the Canonical Sustaining Engineering
  team.
  """
date = 2020-11-21T12:13:00+10:30
lastmod = 2020-11-23T10:45:54+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E097.mp3"
podcast_duration = "15:11"
podcast_bytes = 11970527
permalink = "https://ubuntusecuritypodcast.org/episode-97/"
guid = "ef6d6a059883f9765e613e8aa454bd5672bcfb21bf7fc21d5b79d351f9580ef5236f6a56edd28508844570088da6ae46cc5fc38fb77b2e2b8399a890def30176"
+++

## Overview {#overview}

This week we look at vulnerabilities in MoinMoin, OpenLDAP, Kerberos,
Raptor (including a discussion of CVE workflows and the oss-security
mailing list) and more, whilst in community news we talk about the upcoming
AppArmor webinar, migration of Ubuntu CVE information to ubuntu.com and
reverse engineering of malware by the Canonical Sustaining Engineering
team.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

45 unique CVEs addressed


### [[USN-4629-1](https://ubuntu.com/security/notices/USN-4629-1)] MoinMoin vulnerabilities [00:50] {#usn-4629-1-moinmoin-vulnerabilities-00-50}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-15275](https://ubuntu.com/security/CVE-2020-15275) <!-- medium -->
    -   [CVE-2020-25074](https://ubuntu.com/security/CVE-2020-25074) <!-- high -->
-   RCE via attachment upload - can upload an attachment which is then
    cached - a subsequent crafted request can exploit a vulnerability in the
    cache handling code to achieve directory traversal and a subsequent RCE


### [[USN-4630-1](https://ubuntu.com/security/notices/USN-4630-1)] Raptor vulnerability [01:40] {#usn-4630-1-raptor-vulnerability-01-40}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2017-18926](https://ubuntu.com/security/CVE-2017-18926) <!-- medium -->
-   <https://www.openwall.com/lists/oss-security/2017/06/07/1>
-   Old vulnerability, recently rediscovered that triggered various
    discussions on oss-security mailing list
    -   <https://www.openwall.com/lists/oss-security/2020/11/13/1>
    -   Discussion covered value of CVEs, how distros try and stay on top of
        the constant stream of CVEs etc
-   Shows the value of a CVE - many distros use these as essentially work
    items - if a CVE doesn't exist, the vulnerability won't get patched


### [[USN-4622-2](https://ubuntu.com/security/notices/USN-4622-2)] OpenLDAP vulnerability [03:43] {#usn-4622-2-openldap-vulnerability-03-43}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM)
    -   [CVE-2020-25692](https://ubuntu.com/security/CVE-2020-25692) <!-- medium -->
-   [Episode 96](https://ubuntusecuritypodcast.org/episode-96/) - NULL ptr deref for a remote unauthenticated user in slapd
-   Upstream dispute this as a real CVE - say that only unintended info
    disclosure is a security issue (what about RCE?)


### [[USN-4628-2](https://ubuntu.com/security/notices/USN-4628-2)] Intel Microcode regression [04:29] {#usn-4628-2-intel-microcode-regression-04-29}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-8698](https://ubuntu.com/security/CVE-2020-8698) <!-- medium -->
    -   [CVE-2020-8696](https://ubuntu.com/security/CVE-2020-8696) <!-- low -->
    -   [CVE-2020-8695](https://ubuntu.com/security/CVE-2020-8695) <!-- medium -->
-   [Episode 96](https://ubuntusecuritypodcast.org/episode-96/) - Failed to boot on new Tiger Lake platforms
-   We took the decision to remove this MCU once we saw the regression and
    had updates out within 24h of initial release
-   Intel have now reverted this themselves upstream in a [fixup release
    20201118](https://github.com/intel/Intel-Linux-Processor-Microcode-Data-Files/tree/microcode-20201118)


### [[USN-4171-6](https://ubuntu.com/security/notices/USN-4171-6)] Apport regression [05:40] {#usn-4171-6-apport-regression-05-40}

-   5 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2019-15790](https://ubuntu.com/security/CVE-2019-15790) <!-- medium -->
    -   [CVE-2019-11485](https://ubuntu.com/security/CVE-2019-11485) <!-- medium -->
    -   [CVE-2019-11483](https://ubuntu.com/security/CVE-2019-11483) <!-- medium -->
    -   [CVE-2019-11482](https://ubuntu.com/security/CVE-2019-11482) <!-- medium -->
    -   [CVE-2019-11481](https://ubuntu.com/security/CVE-2019-11481) <!-- low -->
-   Previous update could possibly be used to crash Apport itself due to
    mishandling of dropping permissions when reading the user's config file
    (note these don't normally exist unless you manually create one so in
    general is not an issue) - this fixes that and introduces some more
    hardening measures to try and ensure permissions are always dropped
    correctly and this is more robust overall


### [[USN-4631-1](https://ubuntu.com/security/notices/USN-4631-1)] libmaxminddb vulnerability [06:50] {#usn-4631-1-libmaxminddb-vulnerability-06-50}

-   1 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-28241](https://ubuntu.com/security/CVE-2020-28241) <!-- medium -->
-   Heap based buffer overread -> DoS


### [[USN-4632-1](https://ubuntu.com/security/notices/USN-4632-1)] SLiRP vulnerabilities [07:03] {#usn-4632-1-slirp-vulnerabilities-07-03}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-8608](https://ubuntu.com/security/CVE-2020-8608) <!-- medium -->
    -   [CVE-2020-7039](https://ubuntu.com/security/CVE-2020-7039) <!-- medium -->
-   2 different buffer overflows - 1 due to improper use of return value from
    snprintf() - the other due to mishandling of pointer arithmetic -> DoS,
    RCE?


### [[USN-4607-2](https://ubuntu.com/security/notices/USN-4607-2)] OpenJDK regressions {#usn-4607-2-openjdk-regressions}

-   8 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-14803](https://ubuntu.com/security/CVE-2020-14803) <!-- medium -->
    -   [CVE-2020-14798](https://ubuntu.com/security/CVE-2020-14798) <!-- medium -->
    -   [CVE-2020-14797](https://ubuntu.com/security/CVE-2020-14797) <!-- medium -->
    -   [CVE-2020-14796](https://ubuntu.com/security/CVE-2020-14796) <!-- medium -->
    -   [CVE-2020-14792](https://ubuntu.com/security/CVE-2020-14792) <!-- medium -->
    -   [CVE-2020-14782](https://ubuntu.com/security/CVE-2020-14782) <!-- medium -->
    -   [CVE-2020-14781](https://ubuntu.com/security/CVE-2020-14781) <!-- medium -->
    -   [CVE-2020-14779](https://ubuntu.com/security/CVE-2020-14779) <!-- medium -->


### [[USN-4633-1](https://ubuntu.com/security/notices/USN-4633-1)] PostgreSQL vulnerabilities [07:42] {#usn-4633-1-postgresql-vulnerabilities-07-42}

-   3 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-25696](https://ubuntu.com/security/CVE-2020-25696) <!-- medium -->
    -   [CVE-2020-25695](https://ubuntu.com/security/CVE-2020-25695) <!-- medium -->
    -   [CVE-2020-25694](https://ubuntu.com/security/CVE-2020-25694) <!-- medium -->
-   1 RCE, 1 arbitrary SQL execution but need to be an authenticated user and
    1 DoS via dropping of connection


### [[USN-4634-1](https://ubuntu.com/security/notices/USN-4634-1)] OpenLDAP vulnerabilities [08:03] {#usn-4634-1-openldap-vulnerabilities-08-03}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-25710](https://ubuntu.com/security/CVE-2020-25710) <!-- medium -->
    -   [CVE-2020-25709](https://ubuntu.com/security/CVE-2020-25709) <!-- medium -->
-   2 more DoS bugs against OpenLDAP - both assertion failures able to be
    triggered by a remote attacker


### [[USN-4635-1](https://ubuntu.com/security/notices/USN-4635-1)] Kerberos vulnerability [08:29] {#usn-4635-1-kerberos-vulnerability-08-29}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-28196](https://ubuntu.com/security/CVE-2020-28196) <!-- medium -->
-   DoS via unbounded recursion in parsing of ASN.1 encoded message - BER can
    specify an indefinite length - so this was parsed recursively but since
    it never placed any limit on this if the nesting was deep enough, could
    overrun the stack an trigger an abort.


### [[USN-4636-1](https://ubuntu.com/security/notices/USN-4636-1)] LibVNCServer, Vino vulnerability [09:05] {#usn-4636-1-libvncserver-vino-vulnerability-09-05}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-25708](https://ubuntu.com/security/CVE-2020-25708) <!-- medium -->
-   Divide by zero -> DoS


### [[USN-4637-1](https://ubuntu.com/security/notices/USN-4637-1)] Firefox vulnerabilities [09:18] {#usn-4637-1-firefox-vulnerabilities-09-18}

-   15 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-26969](https://ubuntu.com/security/CVE-2020-26969) <!-- medium -->
    -   [CVE-2020-26968](https://ubuntu.com/security/CVE-2020-26968) <!-- medium -->
    -   [CVE-2020-26967](https://ubuntu.com/security/CVE-2020-26967) <!-- low -->
    -   [CVE-2020-26965](https://ubuntu.com/security/CVE-2020-26965) <!-- low -->
    -   [CVE-2020-26963](https://ubuntu.com/security/CVE-2020-26963) <!-- low -->
    -   [CVE-2020-26962](https://ubuntu.com/security/CVE-2020-26962) <!-- low -->
    -   [CVE-2020-26961](https://ubuntu.com/security/CVE-2020-26961) <!-- medium -->
    -   [CVE-2020-26960](https://ubuntu.com/security/CVE-2020-26960) <!-- medium -->
    -   [CVE-2020-26959](https://ubuntu.com/security/CVE-2020-26959) <!-- medium -->
    -   [CVE-2020-26958](https://ubuntu.com/security/CVE-2020-26958) <!-- medium -->
    -   [CVE-2020-26956](https://ubuntu.com/security/CVE-2020-26956) <!-- medium -->
    -   [CVE-2020-26953](https://ubuntu.com/security/CVE-2020-26953) <!-- medium -->
    -   [CVE-2020-26952](https://ubuntu.com/security/CVE-2020-26952) <!-- medium -->
    -   [CVE-2020-26951](https://ubuntu.com/security/CVE-2020-26951) <!-- medium -->
    -   [CVE-2020-16012](https://ubuntu.com/security/CVE-2020-16012) <!-- medium -->
-   83.0


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Migration of Ubuntu CVE information from people.canonical.com to ubuntu.com [09:37] {#migration-of-ubuntu-cve-information-from-people-dot-canonical-dot-com-to-ubuntu-dot-com-09-37}

-   Long time in the making - worked with the design team at Canonical to
    design and prototype display of CVEs in a more human friendly format (for
    machine friendly we have OVAL etc)
-   ubuntu.com/security/CVE-XXXX-XXXX
-   Still includes CVE description, priority, status per-release and other
    details - but focusses on the most salient ones rather than the more
    engineering style of the old ones
-   Redirects in place for old people.canonical.com URLs


### Securing Linux Machines with AppArmor Webinar [11:18] {#securing-linux-machines-with-apparmor-webinar-11-18}

-   <https://www.brighttalk.com/webcast/6793/440491/securing-linux-machines-with-apparmor>
-   2020-11-24 16:00 UTC
-   Presented by Mike Salvatore - who also wrote the [Introduction to AppArmor whitepaper](https://ubuntu.com/engage/apparmor-intro)
-   Will cover:
    -   Why a ‘defence in depth’ strategy should be employed to mitigate the
        potential damage caused by a breach
    -   An explanation of AppArmor, its key features and why the principle of
        least privilege is recommended
    -   The use of AppArmor in Ubuntu and snaps
-   Good overview of why and how to apply AppArmor as well as a demo of how
    to generate a profile to confine an application with [\`aa-genprof\`](http://manpages.ubuntu.com/manpages/focal/man8/aa-genprof.8.html)


### Analysis of the dovecat and hy4 Linux Malware [12:36] {#analysis-of-the-dovecat-and-hy4-linux-malware-12-36}

-   <https://ruffell.nz/reverse-engineering/writeups/2020/10/27/analysis-of-the-dovecat-and-hy4-linux-malware.html>
-   By Matthew Ruffell from the Sustaining Engineering team at Canonical
-   Previously maintained his own Linux distro (Dapper Linux) where he
    manually forward-ported the grsecurity patch set - topic of his LCA 2019
    talk [Maintaining the Unmaintainable: Picking up the Baton of a Secure
    Kernel Patchset](https://2019.linux.conf.au/schedule/presentation/180/)
-   Walks through how he root-caused strange behaviour on a system down to
    some suspicious processes, and then reverse engineering those to
    demonstrate they were malware, and explaining what the malware did, how
    it operated etc - great teardown


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
