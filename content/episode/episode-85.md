+++
title = "Episode 85"
description = """
  Dr. Levi Perigo is our special guest this week to discuss SDN and NFV with
  Joe, plus Alex does the weekly roundup of security updates, including
  Ghostscript, Squid, Apport, Whoopsie, libvirt and more.
  """
date = 2020-08-06T17:40:00+09:30
lastmod = 2020-08-06T17:41:30+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E085.mp3"
podcast_duration = "31:49"
podcast_bytes = 30555442
permalink = "https://ubuntusecuritypodcast.org/episode-85/"
guid = "d757a6a0e4de909f77a2903c9ab74a32d195b760a49eb3c6d365655b97afdb706b9407af9122d584f189db2e5e235004a7bd7c14d20e4316ffd0197009ae921b"
+++

## Overview {#overview}

Dr. Levi Perigo is our special guest this week to discuss SDN and NFV with
Joe, plus Alex does the weekly roundup of security updates, including
Ghostscript, Squid, Apport, Whoopsie, libvirt and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

37 unique CVEs addressed


### [[USN-4444-1](https://usn.ubuntu.com/4444-1/)] WebKitGTK vulnerabilities [00:48] {#usn-4444-1-webkitgtk-vulnerabilities-00-48}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-9925](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9925) <!-- medium -->
    -   [CVE-2020-9915](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9915) <!-- medium -->
    -   [CVE-2020-9895](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9895) <!-- medium -->
    -   [CVE-2020-9894](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9894) <!-- medium -->
    -   [CVE-2020-9893](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9893) <!-- medium -->
    -   [CVE-2020-9862](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9862) <!-- medium -->
-   Various issues in web / JS engines - remote attacker with a malicious
    website could cause XSS, DoS, RCE etc


### [[USN-4445-1](https://usn.ubuntu.com/4445-1/)] Ghostscript vulnerability [01:22] {#usn-4445-1-ghostscript-vulnerability-01-22}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-15900](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15900) <!-- medium -->
-   Integer overflow via \`rsearch\` operator - could allow to override file
    access controls and hence get code execution as the user who is viewing /
    processing the PS file - only affects most recent versions


### [[USN-4446-1](https://usn.ubuntu.com/4446-1/)] Squid vulnerabilities [02:24] {#usn-4446-1-squid-vulnerabilities-02-24}

-   4 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2019-18676](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18676) <!-- medium -->
    -   [CVE-2019-12524](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12524) <!-- medium -->
    -   [CVE-2019-12523](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12523) <!-- medium -->
    -   [CVE-2019-12520](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12520) <!-- medium -->
-   Jeriko One & Kristoffer Danielsson - incorrect cache handling -> cache
    injection attacks. Incorrect URN / URL handling -> bypass access / rule
    checks. Input validation failure -> crash, DoS


### [[USN-4298-2](https://usn.ubuntu.com/4298-2/)] SQLite vulnerabilities [03:07] {#usn-4298-2-sqlite-vulnerabilities-03-07}

-   6 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2019-19926](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19926) <!-- medium -->
    -   [CVE-2019-13751](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13751) <!-- medium -->
    -   [CVE-2019-13753](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13753) <!-- medium -->
    -   [CVE-2019-13752](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13752) <!-- medium -->
    -   [CVE-2019-13750](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13750) <!-- medium -->
    -   [CVE-2019-13734](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13734) <!-- medium -->
-   [Episode 66](https://ubuntusecuritypodcast.org/episode-66/)


### [[USN-4447-1](https://usn.ubuntu.com/4447-1/)] libssh vulnerability [03:27] {#usn-4447-1-libssh-vulnerability-03-27}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-16135](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16135) <!-- medium -->
-   Under low memory conditions, could fail to allocate a buffer, would
    result in a NULL pointer dereference and hence crash


### [[USN-4448-1](https://usn.ubuntu.com/4448-1/)] Tomcat vulnerabilities [04:01] {#usn-4448-1-tomcat-vulnerabilities-04-01}

-   3 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2020-9484](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9484) <!-- low -->
    -   [CVE-2020-1935](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1935) <!-- low -->
    -   [CVE-2020-13935](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13935) <!-- medium -->
-   Infinite loop if sent a WebSocket frame with an invalid payload length ->
    DoS if then sent multiple requests


### [[USN-4449-1](https://usn.ubuntu.com/4449-1/)] Apport vulnerabilities [04:23] {#usn-4449-1-apport-vulnerabilities-04-23}

-   3 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-15702](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15702) <!-- medium -->
    -   [CVE-2020-15701](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15701) <!-- medium -->
    -   [CVE-2020-11936](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11936) <!-- medium -->
-   2 from Ryota Shiga:
    -   Failed to drop privileges correctly when invoking gdbus to determine if
        the user is closing their session -> would be invoked with root group
        privileges and using the environement of the user - they could override
        the DBUS\_SESSION\_BUS\_ADDRESS environment variable, causing gdbus to
        connect to a spoofed dbus server and in the process to read a 16-byte
        nonce from a file of their choosing - allows to read arbitrary files
        that are 16-bytes of length
    -   TOCTOU issue when handling crash dump - if process PID gets recycled
        apport could include the wrong processes details in a crash dump that
        is then readable by other users - fixed to check process start time is
        at least before the time apport itself was invoked
-   1 from Seong-Joong Kim
    -   Unhandled exception when parsing users preferences configuration file
        -> crash, DoS


### [[USN-4450-1](https://usn.ubuntu.com/4450-1/)] Whoopsie vulnerabilities [07:24] {#usn-4450-1-whoopsie-vulnerabilities-07-24}

-   3 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-15570](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15570) <!-- medium -->
    -   [CVE-2020-12135](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12135) <!-- medium -->
    -   [CVE-2020-11937](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11937) <!-- medium -->
-   All 3 from Seong-Joong Kim
    -   Crash when trying to process a crafted crash file (tries to allocate
        too large amount of memory and crashes) -> DoS
    -   Integer overflow in vendored bson library when parsing a crafted crash
        dump -> heap overflow -> crash, RCE
    -   Memory leak when parsing crash dumps -> crafted report with many
        repeated key / value pairs -> OOM, crash -> DoS


### [[USN-4451-1](https://usn.ubuntu.com/4451-1/)] ppp vulnerability [09:18] {#usn-4451-1-ppp-vulnerability-09-18}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-15704](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15704) <!-- medium -->
-   Ubuntu specific patch - pppd is setuid() root and would helpfully
    modprobe ppp\_generic module when needed - but would not clear
    MODPROBE\_OPTIONS environment module and so this could be used to either
    load other modules or read other files as root etc - fixed by removing
    this functionality since this has not been needed for a long time as
    ppp\_generic has been built into the kernel since 2012 (ie there is no
    ppp\_generic module to even load via modprobe)


### [[USN-4452-1](https://usn.ubuntu.com/4452-1/)] libvirt vulnerability [10:31] {#usn-4452-1-libvirt-vulnerability-10-31}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-15708](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15708) <!-- medium -->
-   libvirt package sets up the libvirt socket via systemd - systemd unit
    specifies a SocketMode=0666 so is world writable :( - fixed to ensure
    systemd unit specifies this as only owner/group writable and ensures the
    owner is root and group is libvirt


### [[USN-4432-2](https://usn.ubuntu.com/4432-2/)] GRUB2 regression [11:10] {#usn-4432-2-grub2-regression-11-10}

-   8 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-15707](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15707) <!-- medium -->
    -   [CVE-2020-15705](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15705) <!-- medium -->
    -   [CVE-2020-14308](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14308) <!-- high -->
    -   [CVE-2020-14311](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14311) <!-- high -->
    -   [CVE-2020-14310](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14310) <!-- high -->
    -   [CVE-2020-14309](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14309) <!-- high -->
    -   [CVE-2020-15706](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15706) <!-- high -->
    -   [CVE-2020-10713](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10713) <!-- high -->
-   Legacy BIOS systems - grub core (in MBR) and modules (in file-system)
    could get out of sync if grub was not being installed onto the correct
    disk (this was the case for some users with manually configured RAID
    setups / particular cloud images etc) - fixed to just not do the grub
    install on the update to ensure they don't get out of sync (since these
    vulnerabilities only are relevant to UEFI secure boot, no need for the
    update in BIOS boot systems).


### [[USN-4441-2](https://usn.ubuntu.com/4441-2/)] MySQL regression [12:58] {#usn-4441-2-mysql-regression-12-58}

-   Affecting Focal (20.04 LTS)
-   Compiler options changed upstream and this could affect other libraries /
    apps which link against libmysqlclient - reverted this change since is
    not security relevant anyway


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe talks SDN & NFV with Dr. Levi Perigo of the University of Colorado [13:28] {#joe-talks-sdn-and-nfv-with-dr-dot-levi-perigo-of-the-university-of-colorado-13-28}

-   <https://www.colorado.edu/cs/levi-perigo>
-   <https://www.raveninnovation.com/our-team>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
