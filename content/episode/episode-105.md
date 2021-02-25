+++
title = "Episode 105"
description = """
  This week we discuss security updates in Linux Mint, Google funding Linux
  kernel security development and details for security updates in BIND,
  OpenSSL, Jackson, OpenLDAP and more.
  """
date = 2021-02-25T15:38:00+10:30
lastmod = 2021-02-25T15:39:12+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E105.mp3"
podcast_duration = "17:03"
podcast_bytes = 13486792
permalink = "https://ubuntusecuritypodcast.org/episode-105/"
guid = "d7e05c6a419fcf89029f94175d43fffa4b8846d99a3c112920035f23f76ad445ed7fec71a0e75e70b61b4fb73114f4341cce4426f1cd4c1da49dc2a7f7cce45a"
+++

## Overview {#overview}

This week we discuss security updates in Linux Mint, Google funding Linux
kernel security development and details for security updates in BIND,
OpenSSL, Jackson, OpenLDAP and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

14 unique CVEs addressed


### [[USN-4737-1](https://ubuntu.com/security/notices/USN-4737-1)] Bind vulnerability [00:45] {#usn-4737-1-bind-vulnerability-00-45}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-8625](https://ubuntu.com/security/CVE-2020-8625) <!-- medium -->
-   If using GSS-TSIG could be vulnerable to a DoS or possible RCE - this
    option is not enabled by default BUT is often used when bind is
    integrated with Samba or with a AD-DC. In Ubuntu we confine BIND with an
    AppArmor profile by default isolates BIND quite tightly so helps to
    mitigate any affect a possible RCE attack could have.
    -   Was interesting to see upstream released [2](https://www.openwall.com/lists/oss-security/2021/02/19/1) [advisories](https://www.openwall.com/lists/oss-security/2021/02/20/2) that some of
        their upstream version updates (e.g. 9.16.12) for this caused some
        regressions as this included some new as well features - and they
        specifically ended up recommended downstreams ship the prior version
        (9.16.11) with just the fix for this backported - this is what we do in
        Ubuntu precisely for this reason, to minimise the chance of introducing
        regressions in our security updates by only backporting the patch for
        the particularly vulnerability


### [[USN-4738-1](https://ubuntu.com/security/notices/USN-4738-1)] OpenSSL vulnerabilities [02:13] {#usn-4738-1-openssl-vulnerabilities-02-13}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-23841](https://ubuntu.com/security/CVE-2021-23841) <!-- medium -->
    -   [CVE-2021-23840](https://ubuntu.com/security/CVE-2021-23840) <!-- low -->
-   NULL ptr deref when parsing malicious issuer fields in X509
    certificates - crash, DoS
-   Possible buffer overflow if some library functions were used in an
    unlikely manner - had to specify an input length that was close to the
    bounds of an integer size of the platform - so only if calling with a
    buffer of INT\_MAX or similar could this be an issue


### [[USN-4745-1](https://ubuntu.com/security/notices/USN-4745-1)] OpenSSL vulnerabilities [02:56] {#usn-4745-1-openssl-vulnerabilities-02-56}

-   2 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM)
    -   [CVE-2021-23841](https://ubuntu.com/security/CVE-2021-23841) <!-- medium -->
    -   [CVE-2020-1971](https://ubuntu.com/security/CVE-2020-1971) <!-- high -->
-   NULL ptr deref above plus separate NULL pointer deref in handling of
    EDIPartyNames as discussed in [Episode 100](https://ubuntusecuritypodcast.org/episode-100/)


### [[USN-4739-1](https://ubuntu.com/security/notices/USN-4739-1)] WebKitGTK vulnerability [03:25] {#usn-4739-1-webkitgtk-vulnerability-03-25}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-13558](https://ubuntu.com/security/CVE-2020-13558) <!-- medium -->
-   UAF in audio handling - specially crafted webpage could cause an RCE on
    local machine


### [[USN-4741-1](https://ubuntu.com/security/notices/USN-4741-1)] Jackson vulnerabilities [03:40] {#usn-4741-1-jackson-vulnerabilities-03-40}

-   3 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2019-10172](https://ubuntu.com/security/CVE-2019-10172) <!-- medium -->
    -   [CVE-2017-7525](https://ubuntu.com/security/CVE-2017-7525) <!-- medium -->
    -   [CVE-2017-15095](https://ubuntu.com/security/CVE-2017-15095) <!-- medium -->
-   JSON processor for Java - allows to map JSON to Java objects
-   Flaws in (de)serialization could expose various classes to being mapped
    to the resulting input and hence allow a remote code execution attack -
    fix is to deny various classes being mapped as a result
-   Also fixed an XML external entity issue that could also result in RCE


### [[USN-4740-1](https://ubuntu.com/security/notices/USN-4740-1)] Apache Shiro vulnerabilities [04:20] {#usn-4740-1-apache-shiro-vulnerabilities-04-20}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-1957](https://ubuntu.com/security/CVE-2020-1957) <!-- medium -->
    -   [CVE-2020-11989](https://ubuntu.com/security/CVE-2020-11989) <!-- medium -->
-   2 different possible authentication bypass issues when using with Spring
    dynamic controllers


### [[USN-4742-1](https://ubuntu.com/security/notices/USN-4742-1)] Django vulnerability [04:33] {#usn-4742-1-django-vulnerability-04-33}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-23336](https://ubuntu.com/security/CVE-2021-23336) <!-- medium -->
-   Possible web-cache poisoning attack - due to difference in handling of
    requests between the proxy and the server - malicious requests can be
    cached as they look like safe ones due to difference in interpretation


### [[USN-4743-1](https://ubuntu.com/security/notices/USN-4743-1)] GDK-PixBuf vulnerability [05:06] {#usn-4743-1-gdk-pixbuf-vulnerability-05-06}

-   1 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-20240](https://ubuntu.com/security/CVE-2021-20240) <!-- medium -->
-   Integer underflow in GIF loader - code execution?


### [[USN-4744-1](https://ubuntu.com/security/notices/USN-4744-1)] OpenLDAP vulnerability [05:27] {#usn-4744-1-openldap-vulnerability-05-27}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-27212](https://ubuntu.com/security/CVE-2021-27212) <!-- medium -->
-   Assertion failure could be triggered by crafted timestamp content -> crash, DoS


### [[USN-4467-3](https://ubuntu.com/security/notices/USN-4467-3)] QEMU regression [05:46] {#usn-4467-3-qemu-regression-05-46}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-13754](https://ubuntu.com/security/CVE-2020-13754) <!-- medium -->
-   In patching previous vulnerabilities in QEMU, we backported various
    patches but missed some related to riscv emulation so would cause a
    possible crash in this case - fixed to add missing patches to resolve
    this crash issue


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Linux Mint users being slow with security updates, running old versions [06:33] {#linux-mint-users-being-slow-with-security-updates-running-old-versions-06-33}

-   <https://www.zdnet.com/article/top-linux-distro-tells-users-stop-using-out-of-date-versions-update-your-software-now/>
-   <https://www.theregister.com/2021/02/23/linux%5Fmint%5Fteam%5Fberates%5Fusers/>
-   <https://blog.linuxmint.com/?p=4030>
-   Blog post from lead developer Clem (Clement Lefebvre) discussing how
    Linux Mint users seem to not be installing updates
-   Linux Mint is a Ubuntu derivative - uses the Ubuntu archives plus some of
    their own repos - so in general all security updates for Ubuntu get
    propagated to Linux Mint - cf. relationship between Ubuntu and Debian.
-   Interesting history in regards to security
    -   In Febrary 2016, website was hacked and the link to the installer ISO
        was modified to point to a malicious one with a backdoor -
        <https://blog.linuxmint.com/?p=2994>
    -   Recommend to turn of UEFI Secure Boot since their shim is not signed by
        Microsoft
    -   Update Manager would offer security updates but would rate them in
        supposed terms of safety - so would in essence deter users from
        installing some security updates - and also would not select to install
        some updates which they deemed as more risky - but how did they assign
        this safety level? Based more on if a component was critical to boot
        (kernel/firmware would get rated as more risky) than anything to do
        with the actual update itself. So was intended to help guide users BUT
        created a system where users believed they were "safer" in terms of
        stability, but in fact were less safe in terms of security.
    -   This created an impression that Linux Mint either blocked security
        updates or actively discouraged users from installing them -
        <https://distrowatch.com/weekly.php?issue=20170320#myth>
    -   These levels were removed in the 19.2 release but it seems users are
        still wary
-   30% of users apply updates in less than a week (based on recent Firefox update)
-   30% of users are still running 17.x - EOLd in April 2019 - (based on
    Ubuntu 14.04)
-   So it is not really surprising given their past history that their
    userbase is wary of security updates and are perhaps putting themselves
    at risk as a result by delaying installing security updates
-   But good to see they are now actively encouraging users to install
    security updates
-   Use of timeshift is interesting as a mitigation against possible issues
    with security updates
-   Also was interesting to see they published an emergency update just for
    Firefox for the 17.x release to upgrade this from 66.0 to 78 ESR - so
    this gives some protection but perhaps again lessens the incentive for
    these users to upgrade to a newer supported release of Linux Mint


### Google funds Linux kernel developers to work exclusively on security [14:20] {#google-funds-linux-kernel-developers-to-work-exclusively-on-security-14-20}

-   <https://www.linuxfoundation.org/en/press-release/google-funds-linux-kernel-developers-to-focus-exclusively-on-security/>
-   Gustavo Silva and Nathan Chancellor
-   Chancellor - Triaging and fixing bugs found via Clang/LLVM, CI systems
    -   Already leading a lot of the upstream ClangBuiltLinux work
-   Silva - KSPP related work on eliminating bug classes - VLAs etc


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
