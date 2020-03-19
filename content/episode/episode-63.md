+++
title = "Episode 63"
description = """
  Security updates for Firefox, QEMU, Linux kernel, ClamAV and more, plus we
  discuss our recommended reading list for getting into infosec and farewell
  long-time member of the Ubuntu Security Team / community Tyler Hicks.
  """
date = 2020-02-20T15:51:00+10:30
lastmod = 2020-03-19T20:21:52+10:30
draft = false
weight = 1005
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E063.mp3"
podcast_duration = "26:51"
podcast_bytes = 25786539
permalink = "https://ubuntusecuritypodcast.org/episode-63/"
guid = "fbd2de403377ec5c3488d937ebbff935b1a9ed374a20c2404f6d69862b28a26e62003bcc630474425c1caa2382b0f0ada22a4cf2462cb3f34f43b32e424f2671"
+++

## Overview {#overview}

Security updates for Firefox, QEMU, Linux kernel, ClamAV and more, plus we
discuss our recommended reading list for getting into infosec and farewell
long-time member of the Ubuntu Security Team / community Tyler Hicks.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

54 unique CVEs addressed


### [[USN-4278-1](https://usn.ubuntu.com/4278-1/)] Firefox vulnerabilities [00:55] {#usn-4278-1-firefox-vulnerabilities-00-55}

-   4 CVEs addressed in Bionic, Eoan
    -   [CVE-2020-6801](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6801) <!-- medium -->
    -   [CVE-2020-6800](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6800) <!-- medium -->
    -   [CVE-2020-6798](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6798) <!-- medium -->
    -   [CVE-2020-6796](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6796) <!-- medium -->
-   Firefox 73.0
    -   Various memory safety issues
    -   Possible XSS if a site used a <template> tag within a <select> tag
        since could allow subsequent JavaScript parsing and execution


### [[USN-4279-1](https://usn.ubuntu.com/4279-1/)] PHP vulnerabilities [01:26] {#usn-4279-1-php-vulnerabilities-01-26}

-   3 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Eoan
    -   [CVE-2020-7060](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7060) <!-- medium -->
    -   [CVE-2020-7059](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7059) <!-- medium -->
    -   [CVE-2015-9253](https://people.canonical.com/~ubuntu-security/cve/CVE-2015-9253) <!-- low -->
-   Buffer overread when converting multibyte characters via mbstring
    functions and when reading data whilst stripping tags via fgetss() -
    crash / info disc
-   Fix for a CPU and disk-based DoS when PHP FPM (FastCGI Process Manager)
    would endlessly restart a child process - busy CPU loop and large error
    logs -> DoS


### [[USN-4280-1](https://usn.ubuntu.com/4280-1/), [USN-4280-2](https://usn.ubuntu.com/4280-2/)] ClamAV vulnerability [02:27] {#usn-4280-1-usn-4280-2-clamav-vulnerability-02-27}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Eoan
    -   [CVE-2020-3123](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3123) <!-- medium -->
-   OOB read in Data-Loss-Prevention (DLP) module (scans for CC or social
    security numbers) - crafted email would cause OOB read -> crash -> DoS


### [[USN-4281-1](https://usn.ubuntu.com/4281-1/)] WebKitGTK+ vulnerabilities [03:04] {#usn-4281-1-webkitgtk-plus-vulnerabilities-03-04}

-   5 CVEs addressed in Bionic, Eoan
    -   [CVE-2020-3868](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3868) <!-- medium -->
    -   [CVE-2020-3867](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3867) <!-- medium -->
    -   [CVE-2020-3865](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3865) <!-- medium -->
    -   [CVE-2020-3864](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3864) <!-- medium -->
    -   [CVE-2020-3862](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3862) <!-- medium -->
-   Various issues able to be triggered by malicious websites
    -   DoS via poor memory handling
    -   Wrong secrity origin for particular DOM objects
    -   Top-level DOM object incorrectly considered secure
    -   Logic issue leading to a universal XSS flaw
    -   Poor memory handling leading to RCE


### [[USN-4282-1](https://usn.ubuntu.com/4282-1/)] PostgreSQL vulnerability [03:50] {#usn-4282-1-postgresql-vulnerability-03-50}

-   1 CVEs addressed in Bionic, Eoan
    -   [CVE-2020-1720](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1720) <!-- medium -->
-   Missing authorization checks on ALTER ... DEPENDS ON EXTENSION
    sub-commands - could allow unprivileged users to drop any function,
    procedure, index etc under certain conditions


### [[USN-4283-1](https://usn.ubuntu.com/4283-1/)] QEMU vulnerabilities [04:10] {#usn-4283-1-qemu-vulnerabilities-04-10}

-   3 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-8608](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8608) <!-- medium -->
    -   [CVE-2020-7039](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7039) <!-- medium -->
    -   [CVE-2020-1711](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1711) <!-- medium -->
-   Buffer overflow in libslirp tcp emulation due to misuse of snprintf()
    return value - assumed snprintf() returns the number of bytes written -
    BUT returns the number of bytes which would have been written if the dest
    buffer was big enough - so if buffer is too small then returns a value
    larger than the buffer - so if that returned size is used later in a
    memcpy() or similar would overflow the buffer - so instead need to
    carefully track the return value if it is larger than the dest buffer
-   Separate buffer overflow in libslirp tcp emulation code due to missing
    size checks
-   Heap buffer OOB write in iSCSI block driver - malicious iSCSI server
    could trigger this and crash or possibly get code execution on QEMU host


### [[USN-4284-1](https://usn.ubuntu.com/4284-1/)] Linux kernel vulnerabilities [05:21] {#usn-4284-1-linux-kernel-vulnerabilities-05-21}

-   23 CVEs addressed in Bionic, Eoan
    -   [CVE-2019-15291](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15291) <!-- negligible -->
    -   [CVE-2019-19965](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19965) <!-- medium -->
    -   [CVE-2019-19947](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19947) <!-- low -->
    -   [CVE-2019-19767](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19767) <!-- low -->
    -   [CVE-2019-19602](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19602) <!-- medium -->
    -   [CVE-2019-19332](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19332) <!-- medium -->
    -   [CVE-2019-19252](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19252) <!-- medium -->
    -   [CVE-2019-19241](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19241) <!-- medium -->
    -   [CVE-2019-19082](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19082) <!-- low -->
    -   [CVE-2019-19078](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19078) <!-- low -->
    -   [CVE-2019-19077](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19077) <!-- low -->
    -   [CVE-2019-19071](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19071) <!-- low -->
    -   [CVE-2019-19063](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19063) <!-- low -->
    -   [CVE-2019-19057](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19057) <!-- low -->
    -   [CVE-2019-19062](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19062) <!-- medium -->
    -   [CVE-2019-19050](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19050) <!-- medium -->
    -   [CVE-2019-18811](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18811) <!-- low -->
    -   [CVE-2019-18786](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18786) <!-- low -->
    -   [CVE-2019-18683](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18683) <!-- low -->
    -   [CVE-2019-16232](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16232) <!-- low -->
    -   [CVE-2019-16229](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16229) <!-- low -->
    -   [CVE-2019-15099](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15099) <!-- medium -->
    -   [CVE-2019-14615](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14615) <!-- medium -->
-   5.3 kernel (eoan, bionic hwe)
-   Fix for Intel GPU state leak
-   Atheros Wifi NULL pointer dereference
-   2x Crypto subsystem memory leak
-   io\_uring operations missing credentials checks - unprivileged user could
    say add an address to the loopback interface as a result
-   Virtual console drivers missing checks on writes
-   OOB write in KVM (need access to /dev/kvm)
-   Memory corruption on x86 platforms due to a race in caching of floating
    point registers between processors
-   NULL pointer dererefence in SCSI SAS Class driver due to a PHY down
    race-condition during discovery


### [[USN-4285-1](https://usn.ubuntu.com/4285-1/)] Linux kernel vulnerabilities [07:58] {#usn-4285-1-linux-kernel-vulnerabilities-07-58}

-   12 CVEs addressed in Bionic
    -   [CVE-2020-7053](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7053) <!-- medium -->
    -   [CVE-2019-5108](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5108) <!-- medium -->
    -   [CVE-2019-20096](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20096) <!-- medium -->
    -   [CVE-2019-19965](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19965) <!-- medium -->
    -   [CVE-2019-19947](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19947) <!-- low -->
    -   [CVE-2019-19063](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19063) <!-- low -->
    -   [CVE-2019-19057](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19057) <!-- low -->
    -   [CVE-2019-18809](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18809) <!-- low -->
    -   [CVE-2019-18786](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18786) <!-- low -->
    -   [CVE-2019-16232](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16232) <!-- low -->
    -   [CVE-2019-16229](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16229) <!-- low -->
    -   [CVE-2019-14615](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14615) <!-- medium -->
-   5.0 kernel (orace, aws, gke, gcp, azure etc)
-   UAF in Intel i915 driver - crash / code exec
-   Wifi-based DoS when used in AP mode - could get AP to send location
    updates to clients before a new client had finished authentication - so
    then as an unauthenticated station could DoS other connected stations
-   Memory leak in Datagram Congestion Control Protocol (DCCP) - DoS
-   2 from above:
    -   NULL ptr deref in SCSI SAS
    -   Intel GPU info leak


### [[USN-4287-1](https://usn.ubuntu.com/4287-1/), [USN-4287-2](https://usn.ubuntu.com/4287-2/)] Linux kernel vulnerabilities [08:46] {#usn-4287-1-usn-4287-2-linux-kernel-vulnerabilities-08-46}

-   22 CVEs addressed in Xenial, Bionic, Trusty ESM (Azure)
    -   [CVE-2019-15291](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15291) <!-- negligible -->
    -   [CVE-2020-7053](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7053) <!-- medium -->
    -   [CVE-2019-5108](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5108) <!-- medium -->
    -   [CVE-2019-20096](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20096) <!-- medium -->
    -   [CVE-2019-19965](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19965) <!-- medium -->
    -   [CVE-2019-19767](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19767) <!-- low -->
    -   [CVE-2019-19332](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19332) <!-- medium -->
    -   [CVE-2019-19227](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19227) <!-- low -->
    -   [CVE-2019-19082](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19082) <!-- low -->
    -   [CVE-2019-19078](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19078) <!-- low -->
    -   [CVE-2019-19071](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19071) <!-- low -->
    -   [CVE-2019-19063](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19063) <!-- low -->
    -   [CVE-2019-19062](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19062) <!-- medium -->
    -   [CVE-2019-19057](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19057) <!-- low -->
    -   [CVE-2019-18885](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18885) <!-- low -->
    -   [CVE-2019-18809](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18809) <!-- low -->
    -   [CVE-2019-18786](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18786) <!-- low -->
    -   [CVE-2019-18683](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18683) <!-- low -->
    -   [CVE-2019-16232](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16232) <!-- low -->
    -   [CVE-2019-16229](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16229) <!-- low -->
    -   [CVE-2019-15099](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15099) <!-- medium -->
    -   [CVE-2019-14615](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14615) <!-- medium -->
-   4.15 (bionic, xenial hwe)
-   i915 UAF, wifi AP DoS, DCCP memory leak, SCSI SAS NULL ptr deref, KVM OOB
    write via /dev/kvm, crypto subsystem memory leak, atheros wifi NULL ptr
    deref, i915 info leak


### [[USN-4286-1](https://usn.ubuntu.com/4286-1/), [USN-4286-2](https://usn.ubuntu.com/4286-2/)] Linux kernel vulnerabilities [09:44] {#usn-4286-1-usn-4286-2-linux-kernel-vulnerabilities-09-44}

-   12 CVEs addressed in Xenial, Trusty ESM (HWE)
    -   [CVE-2019-15221](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15221) <!-- negligible -->
    -   [CVE-2019-15217](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15217) <!-- negligible -->
    -   [CVE-2019-5108](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5108) <!-- medium -->
    -   [CVE-2019-20096](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20096) <!-- medium -->
    -   [CVE-2019-19965](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19965) <!-- medium -->
    -   [CVE-2019-19068](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19068) <!-- low -->
    -   [CVE-2019-19066](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19066) <!-- low -->
    -   [CVE-2019-19056](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19056) <!-- low -->
    -   [CVE-2019-19051](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19051) <!-- low -->
    -   [CVE-2019-17351](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17351) <!-- low -->
    -   [CVE-2019-15220](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15220) <!-- low -->
    -   [CVE-2019-14615](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14615) <!-- medium -->
-   4.4 kernel
-   Intel GPU info leak, SCSI SAS NULL ptr deref, DCCP memory leak, wifi AP
    DoS


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe and Alex discuss their recommended reading list for infosec beginners [10:17] {#joe-and-alex-discuss-their-recommended-reading-list-for-infosec-beginners-10-17}

-   Red Team Field Manual | Ben Clark
-   Head First Programming
-   Linux System Administrators Handbook | Nemeth, et al
-   Robert Seacord’s Secure Coding in C/C++
-   CERT Resilience Management Model (CERT-RMM)
-   The Code Book | Simon Singh
-   The Tao of Network Security Monitoring: Beyond Intrusion Detection | Richard Bejtlich
-   The Cuckoos Egg | Cliff Stoll
-   Linux Pro Magazine
-   Black Hat Python | Justin Seitz
-   Hacking: The Art Of Exploitation | Jon Erickson


### Farewell and good luck Tyler Hicks (tyhicks) [25:05] {#farewell-and-good-luck-tyler-hicks--tyhicks--25-05}


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)