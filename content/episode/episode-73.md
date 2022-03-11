+++
title = "Episode 73"
description = """
  After the recent release of Ubuntu 20.04 LTS, we look at security fixes for
  OpenJDK, CUPS, the Linux kernel, Samba and more, plus Joe and Alex discuss
  robot kits and the Kaiji botnet.
  """
date = 2020-05-08T16:33:00+09:30
lastmod = 2020-05-15T16:38:16+09:30
draft = false
weight = 1002
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E073.mp3"
podcast_duration = "30:38"
podcast_bytes = 29423608
permalink = "https://ubuntusecuritypodcast.org/episode-73/"
guid = "c039a9d53dff1addccd7b08a29a0cffd93bea47f1168e91cf96eadc479d09b30da4127061ee5d83517e4be02f217f34bc3e70c115f23e45fd11a57b6db5b976d"
+++

## Overview {#overview}

After the recent release of Ubuntu 20.04 LTS, we look at security fixes for
OpenJDK, CUPS, the Linux kernel, Samba and more, plus Joe and Alex discuss
robot kits and the Kaiji botnet.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

86 unique CVEs addressed


### [[USN-4337-1](https://usn.ubuntu.com/4337-1/)] OpenJDK vulnerabilities [01:21] {#usn-4337-1-openjdk-vulnerabilities-01-21}

-   13 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-2830](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2830)
    -   [CVE-2020-2816](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2816)
    -   [CVE-2020-2805](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2805)
    -   [CVE-2020-2803](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2803)
    -   [CVE-2020-2800](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2800)
    -   [CVE-2020-2781](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2781)
    -   [CVE-2020-2778](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2778)
    -   [CVE-2020-2773](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2773)
    -   [CVE-2020-2767](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2767)
    -   [CVE-2020-2757](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2757)
    -   [CVE-2020-2756](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2756)
    -   [CVE-2020-2755](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2755)
    -   [CVE-2020-2754](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2754)
-   openjdk 11.0.7 and 8u252b09-1
-   Errors in regex handling and XML handling -> DoS
-   Various issues in TLS handshake handling -> bypass certification
    verification or allow to compromise secure connections
-   Insecure handling of CRLF in HTTP headers -> info disclosure via
    bypassing access controls
-   Possible sandbox bypass


### [[USN-4338-1](https://usn.ubuntu.com/4338-1/), [USN-4338-2](https://usn.ubuntu.com/4338-2/)] re2c vulnerability [02:26] {#usn-4338-1-usn-4338-2-re2c-vulnerability-02-26}

-   1 CVEs addressed in Eoan, Focal
    -   [CVE-2020-11958](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11958)
-   Used to generate fast C code for parsing regular expressions
-   Heap buffer overflow if parsing a very long input due to incorrect length
    checks


### [[USN-4339-1](https://usn.ubuntu.com/4339-1/)] OpenEXR vulnerabilities [02:59] {#usn-4339-1-openexr-vulnerabilities-02-59}

-   12 CVEs addressed in Xenial, Bionic, Eoan, Focal
    -   [CVE-2020-11765](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11765)
    -   [CVE-2020-11764](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11764)
    -   [CVE-2020-11763](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11763)
    -   [CVE-2020-11762](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11762)
    -   [CVE-2020-11761](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11761)
    -   [CVE-2020-11760](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11760)
    -   [CVE-2020-11759](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11759)
    -   [CVE-2020-11758](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11758)
    -   [CVE-2018-18444](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18444)
    -   [CVE-2017-9115](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9115)
    -   [CVE-2017-9113](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9113)
    -   [CVE-2017-9111](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9111)
-   Last mentioned back in [Episode 49](https://ubuntusecuritypodcast.org/episode-49/) - handles image format developed by ILM
    with a high definition range for computer imaging applications - used by
    opencv, gimp and others
-   Project Zero fuzzing OpenEXR - usual types of issues in large C++ code
    base - OOB reads / writes - usual effects -> crashes, info leaks, RCE


### [[USN-4340-1](https://usn.ubuntu.com/4340-1/)] CUPS vulnerabilities [04:09] {#usn-4340-1-cups-vulnerabilities-04-09}

-   2 CVEs addressed in Xenial, Bionic, Eoan, Focal
    -   [CVE-2020-3898](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3898)
    -   [CVE-2019-2228](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2228)
-   Heap buffer overflow when parsing ppd files - so if added a printer with
    a crafted ppd file could crash / RCE - since cupsd runs as root could be
    possible RCE as root
-   OOB read -> info leak / crash


### [[USN-4341-1](https://usn.ubuntu.com/4341-1/), [USN-4341-2](https://usn.ubuntu.com/4341-2/), [USN-4341-3](https://usn.ubuntu.com/4341-3/)] Samba vulnerabilities [05:11] {#usn-4341-1-usn-4341-2-usn-4341-3-samba-vulnerabilities-05-11}

-   2 CVEs addressed in Trusty ESM, Xenial, Bionic, Eoan, Focal
    -   [CVE-2020-10704](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10704)
    -   [CVE-2020-10700](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10700)
-   Stack overflow able to be triggered by an unauthenticated user when Samba
    is acting as an AD DC -> crash, code exec?
-   UAF in Samba AD DC LDAP server


### [[USN-4342-1](https://usn.ubuntu.com/4342-1/)] Linux kernel vulnerabilities [06:02] {#usn-4342-1-linux-kernel-vulnerabilities-06-02}

-   7 CVEs addressed in Bionic, Eoan
    -   [CVE-2020-9383](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9383)
    -   [CVE-2020-8992](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8992)
    -   [CVE-2020-8648](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8648)
    -   [CVE-2020-10942](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10942)
    -   [CVE-2019-19768](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19768)
    -   [CVE-2019-16234](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16234)
    -   [CVE-2020-11884](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11884)
-   5.3 kernel for eoan + bionic hwe
-   s390 specific race-condition in page table handling -> local attacker arbitrary
    code exec
-   race-condition -> UAF in block io tracing -> OOB read -> info leak / crash
-   stack buffer overflow in vhost-net driver -> able to be triggered by a
    local attacker via ioctl() on /dev/vhost-net
-   race-condition -> UAF in tty (virtual terminal) subsystem
-   low priority (DoS etc via crafted file-systems)


### [[USN-4344-1](https://usn.ubuntu.com/4344-1/)] Linux kernel vulnerabilities [07:58] {#usn-4344-1-linux-kernel-vulnerabilities-07-58}

-   7 CVEs addressed in Bionic
    -   [CVE-2020-9383](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9383)
    -   [CVE-2020-8992](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8992)
    -   [CVE-2020-8648](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8648)
    -   [CVE-2020-10942](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10942)
    -   [CVE-2019-19768](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19768)
    -   [CVE-2019-19051](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19051)
    -   [CVE-2019-16234](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16234)
-   5.0 gke / oem kernel
-   Same issues reported earlier


### [[USN-4343-1](https://usn.ubuntu.com/4343-1/)] Linux kernel vulnerability [08:13] {#usn-4343-1-linux-kernel-vulnerability-08-13}

-   1 CVEs addressed in Focal
    -   [CVE-2020-11884](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11884)
-   5.4 kernel
-   s390 page-table issue


### [[USN-4345-1](https://usn.ubuntu.com/4345-1/)] Linux kernel vulnerabilities [08:25] {#usn-4345-1-linux-kernel-vulnerabilities-08-25}

-   9 CVEs addressed in Xenial, Bionic
    -   [CVE-2020-9383](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9383)
    -   [CVE-2020-8648](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8648)
    -   [CVE-2020-11668](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11668)
    -   [CVE-2020-11609](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11609)
    -   [CVE-2020-11608](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11608)
    -   [CVE-2020-10942](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10942)
    -   [CVE-2019-19768](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19768)
    -   [CVE-2019-16234](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16234)
    -   [CVE-2020-11884](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11884)
-   4.15 kernel - xenial hwe + bionic
-   Same as above plus a few OOBs read when handing invalid USB camera device
    descriptors in various drivers - so a local attacker could cause a crash
    etc


### [[USN-4346-1](https://usn.ubuntu.com/4346-1/)] Linux kernel vulnerabilities [09:00] {#usn-4346-1-linux-kernel-vulnerabilities-09-00}

-   5 CVEs addressed in Trusty ESM, Xenial
    -   [CVE-2020-9383](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9383)
    -   [CVE-2020-8648](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8648)
    -   [CVE-2019-19768](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19768)
    -   [CVE-2019-16234](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16234)
    -   [CVE-2019-16233](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16233)
-   4.4 kernel - trusty hwe + xenial
-   tty and blk io subsystem race-conditions -> UAFs


### [[USN-4347-1](https://usn.ubuntu.com/4347-1/)] WebKitGTK vulnerability [09:26] {#usn-4347-1-webkitgtk-vulnerability-09-26}

-   1 CVEs addressed in Bionic, Eoan, Focal
    -   [CVE-2020-3899](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3899)


### [[USN-4348-1](https://usn.ubuntu.com/4348-1/)] Mailman vulnerabilities [09:47] {#usn-4348-1-mailman-vulnerabilities-09-47}

-   3 CVEs addressed in Xenial, Bionic
    -   [CVE-2020-12137](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12137)
    -   [CVE-2018-13796](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13796)
    -   [CVE-2018-0618](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-0618)
-   Possible XSS when viewing list archives since mailman does not track the
    mime-type of attachments -> so HTTP reply may lack a MIME type and so the
    receiving browser may assume that content-type is text/html and so
    execute contained Javascript code


### [[USN-4349-1](https://usn.ubuntu.com/4349-1/)] EDK II vulnerabilities [10:36] {#usn-4349-1-edk-ii-vulnerabilities-10-36}

-   9 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2019-14587](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14587)
    -   [CVE-2019-14586](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14586)
    -   [CVE-2019-14575](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14575)
    -   [CVE-2019-14563](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14563)
    -   [CVE-2019-14559](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14559)
    -   [CVE-2019-14558](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14558)
    -   [CVE-2018-12181](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12181)
    -   [CVE-2018-12180](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12180)
    -   [CVE-2018-12178](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12178)
-   UEFI firmware stack for x86-64 virtual machines - huge amount of code with a
    large attack surface -> network stack, disk device and file-system
    handling, cryptographic signature parsing etc
-   Buffer overflow in network stack and block io system
-   stack overflow, fail to clear memory containing passwords, memory leaks,
    failure to properly check EFI signatures, memory corruption via a double
    free etc


### [[USN-4350-1](https://usn.ubuntu.com/4350-1/)] MySQL vulnerabilities [12:05] {#usn-4350-1-mysql-vulnerabilities-12-05}

-   25 CVEs addressed in Xenial, Bionic, Eoan, Focal
    -   [CVE-2020-2930](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2930)
    -   [CVE-2020-2928](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2928)
    -   [CVE-2020-2926](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2926)
    -   [CVE-2020-2925](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2925)
    -   [CVE-2020-2924](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2924)
    -   [CVE-2020-2923](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2923)
    -   [CVE-2020-2922](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2922)
    -   [CVE-2020-2921](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2921)
    -   [CVE-2020-2904](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2904)
    -   [CVE-2020-2903](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2903)
    -   [CVE-2020-2901](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2901)
    -   [CVE-2020-2898](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2898)
    -   [CVE-2020-2897](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2897)
    -   [CVE-2020-2896](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2896)
    -   [CVE-2020-2895](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2895)
    -   [CVE-2020-2893](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2893)
    -   [CVE-2020-2892](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2892)
    -   [CVE-2020-2812](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2812)
    -   [CVE-2020-2804](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2804)
    -   [CVE-2020-2780](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2780)
    -   [CVE-2020-2765](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2765)
    -   [CVE-2020-2763](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2763)
    -   [CVE-2020-2762](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2762)
    -   [CVE-2020-2760](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2760)
    -   [CVE-2020-2759](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2759)
-   Latest upstream point releases - 8.0.80 for eoan + focal, 5.7.30 for
    xenial and bionic
-   <https://dev.mysql.com/doc/relnotes/mysql/5.7/en/news-5-7-30.html>
-   <https://dev.mysql.com/doc/relnotes/mysql/8.0/en/news-8-0-20.html>
-   <https://www.oracle.com/security-alerts/cpuapr2020.html>


### [[USN-4330-2](https://usn.ubuntu.com/4330-2/)] PHP vulnerabilities [12:46] {#usn-4330-2-php-vulnerabilities-12-46}

-   3 CVEs addressed in Focal
    -   [CVE-2020-7066](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7066)
    -   [CVE-2020-7065](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7065)
    -   [CVE-2020-7064](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7064)
-   See [Episode 72](https://ubuntusecuritypodcast.org/episode-72/)


### [[USN-4332-2](https://usn.ubuntu.com/4332-2/)] File Roller vulnerability [13:05] {#usn-4332-2-file-roller-vulnerability-13-05}

-   1 CVEs addressed in Focal
    -   [CVE-2020-11736](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11736)
-   See [Episode 72](https://ubuntusecuritypodcast.org/episode-72/)


### [[USN-4333-2](https://usn.ubuntu.com/4333-2/)] Python vulnerabilities [13:06] {#usn-4333-2-python-vulnerabilities-13-06}

-   2 CVEs addressed in Focal
    -   [CVE-2020-8492](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8492)
    -   [CVE-2019-18348](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18348)
-   See [Episode 72](https://ubuntusecuritypodcast.org/episode-72/)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Release of Ubuntu 20.04 LTS (Focal Fossa) [13:16] {#release-of-ubuntu-20-dot-04-lts--focal-fossa--13-16}

-   Supported as LTS for 5 years and as ESM for 5 years -> 10 years of
    security support
-   Kernel changes -> based on upstream 5.4 LTS kernel, includes Lockdown
    LSM, Wireguard as built-in to the kernel
-   SSH client / server supports hardware based 2 factor auth (like Yubikeys) OOTB
-   More stringent TLS default parameters to blacklist insecure ciphers /
    key-lengths etc


### Joe and Alex discuss Kaiji Botnet targeting Linux IoT devices [16:00] {#joe-and-alex-discuss-kaiji-botnet-targeting-linux-iot-devices-16-00}

-   <https://threatpost.com/kaiji-botnet-iot-linux-devices/155463/>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)