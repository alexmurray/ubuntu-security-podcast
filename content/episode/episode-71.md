+++
title = "Episode 71"
description = """
  This week Joe discusses Ubuntu's involvement in ZDI's Pwn2Own with special
  guests Steve Beattie and Marc Deslauriers from the Ubuntu Security team,
  plus we do the usual roundup of fixed vulnerabilities including libssh,
  Thunderbird, Git and a kernel Livepatch.
  """
date = 2020-04-16T12:57:00+09:30
lastmod = 2020-05-08T16:34:26+09:30
draft = false
weight = 1003
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E071.mp3"
podcast_duration = "24:19"
podcast_bytes = 23359020
permalink = "https://ubuntusecuritypodcast.org/episode-71/"
guid = "288617260ae91cbf53afa10554396a1111971666f1ee68ec94a5ac16e3b7c294c82facbbfef6e94ec83423aa57bb5593dd84883068fc9094f80395cb14ec4766"
+++

## Overview {#overview}

This week Joe discusses Ubuntu's involvement in ZDI's Pwn2Own with special
guests Steve Beattie and Marc Deslauriers from the Ubuntu Security team,
plus we do the usual roundup of fixed vulnerabilities including libssh,
Thunderbird, Git and a kernel Livepatch.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

38 unique CVEs addressed


### [[USN-4325-1](https://usn.ubuntu.com/4325-1/)] Linux kernel vulnerabilities [00:59] {#usn-4325-1-linux-kernel-vulnerabilities-00-59}

-   2 CVEs addressed in Bionic
    -   [CVE-2020-8428](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8428) <!-- medium -->
    -   [CVE-2019-19046](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19046) <!-- low -->
-   5.0 (bionic clouds / oem - oracle, gke, gcp, azure, etc)
-   VFS UAF and IPMI memory leak - [Episode 70](https://ubuntusecuritypodcast.org/episode-70/)


### [[USN-4326-1](https://usn.ubuntu.com/4326-1/)] libiberty vulnerabilities [01:46] {#usn-4326-1-libiberty-vulnerabilities-01-46}

-   14 CVEs addressed in Xenial, Bionic
    -   [CVE-2019-9071](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9071) <!-- low -->
    -   [CVE-2019-9070](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9070) <!-- low -->
    -   [CVE-2019-14250](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14250) <!-- medium -->
    -   [CVE-2018-9138](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-9138) <!-- low -->
    -   [CVE-2018-18701](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18701) <!-- low -->
    -   [CVE-2018-18700](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18700) <!-- low -->
    -   [CVE-2018-18484](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18484) <!-- low -->
    -   [CVE-2018-18483](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18483) <!-- low -->
    -   [CVE-2018-17985](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17985) <!-- low -->
    -   [CVE-2018-17794](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17794) <!-- low -->
    -   [CVE-2018-12934](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12934) <!-- low -->
    -   [CVE-2018-12698](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12698) <!-- low -->
    -   [CVE-2018-12697](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12697) <!-- low -->
    -   [CVE-2018-12641](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12641) <!-- low -->
-   libib - collection of subroutines used by other libraries / applications
    -   primarily binutils for parsing binary formats (ELF executables etc)
-   Mostly low priority issues (DoS via memory leak / NULL ptr dereference in
    say objdump etc)
-   1 medium - integer overflow -> heap buffer overflow in parsing a crafted
    ELF file


### [[USN-4327-1](https://usn.ubuntu.com/4327-1/)] libssh vulnerability [02:57] {#usn-4327-1-libssh-vulnerability-02-57}

-   1 CVEs addressed in Bionic, Eoan
    -   [CVE-2020-1730](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1730) <!-- medium -->
-   Malicious client / server could crash other end when using AES-CTR
    ciphers - error in memory handling on cleanup of cipher context when
    closing the connection -> DoS


### [[LSN-0065-1](https://lists.ubuntu.com/archives/ubuntu-security-announce/2020-April/005391.html)] Linux kernel vulnerability [03:41] {#lsn-0065-1-linux-kernel-vulnerability-03-41}

-   3 CVEs addressed in Xenial, Bionic
    -   [CVE-2020-8428](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8428) <!-- medium -->
    -   [CVE-2019-3016](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3016) <!-- medium -->
    -   [CVE-2013-1798](https://people.canonical.com/~ubuntu-security/cve/CVE-2013-1798) <!-- medium -->
-   Livepatch for VFS UAF, fix a possible SpectreV1/L1TF gadget introduced
    back in 2013 for a KVM IOAPIC issue, KVM TLB flush ([Episode 67](https://ubuntusecuritypodcast.org/episode-67/))


### [[USN-4328-1](https://usn.ubuntu.com/4328-1/)] Thunderbird vulnerabilities [04:31] {#usn-4328-1-thunderbird-vulnerabilities-04-31}

-   18 CVEs addressed in Bionic, Eoan
    -   [CVE-2020-6811](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6811) <!-- medium -->
    -   [CVE-2020-6825](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6825) <!-- medium -->
    -   [CVE-2020-6821](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6821) <!-- medium -->
    -   [CVE-2020-6820](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6820) <!-- high -->
    -   [CVE-2020-6819](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6819) <!-- high -->
    -   [CVE-2020-6814](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6814) <!-- medium -->
    -   [CVE-2020-6812](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6812) <!-- low -->
    -   [CVE-2020-6807](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6807) <!-- medium -->
    -   [CVE-2020-6806](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6806) <!-- medium -->
    -   [CVE-2020-6805](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6805) <!-- medium -->
    -   [CVE-2020-6800](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6800) <!-- medium -->
    -   [CVE-2020-6798](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6798) <!-- medium -->
    -   [CVE-2019-20503](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20503) <!-- medium -->
    -   [CVE-2020-6794](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6794) <!-- medium -->
    -   [CVE-2020-6822](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6822) <!-- medium -->
    -   [CVE-2020-6795](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6795) <!-- medium -->
    -   [CVE-2020-6793](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6793) <!-- medium -->
    -   [CVE-2020-6792](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6792) <!-- low -->
-   68.7.0
-   Includes various fixes for issues previously covered in Firefox updates


### [[USN-4329-1](https://usn.ubuntu.com/4329-1/)] Git vulnerability [05:11] {#usn-4329-1-git-vulnerability-05-11}

-   1 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-5260](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-5260) <!-- medium -->
-   Would not properly handle URLs that include newlines - and would possibly
    send credentials to the wrong host as a result - fixed by forbidding a
    newline in any part of credential handling


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe discusses Ubuntu's participation in ZDI's Pwn2Own with Steve Beattie and Marc Deslauriers [06:25] {#joe-discusses-ubuntu-s-participation-in-zdi-s-pwn2own-with-steve-beattie-and-marc-deslauriers-06-25}

-   <https://www.thezdi.com/blog/2020/3/19/pwn2own-2020-day-one-results>
-   <https://www.zdnet.com/article/windows-ubuntu-macos-virtualbox-fall-at-pwn2own-hacking-contest/>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)