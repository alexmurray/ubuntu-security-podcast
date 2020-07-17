+++
title = "Episode 82"
description = """
  With Ubuntu 19.10 going EOL, we have a special interview by Joe with Chris
  Coulson and Steve Beattie from the Ubuntu Security Team to talk TPMs and
  Ubuntu Core 20, plus Alex looks at some of the 71 CVEs addressed by the
  team and more.
  """
date = 2020-07-17T15:57:00+09:30
lastmod = 2020-07-17T15:59:19+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E082.mp3"
podcast_duration = "24:30"
podcast_bytes = 23522860
permalink = "https://ubuntusecuritypodcast.org/episode-82/"
guid = "fad46f7f27cd0613e1502019cc3cb04ca16bd428b3a99ac77dee5d0ba09930260cd8300eace72aca05d42682ac44d42ba50bb257be30e423b3e5300237b93a76"
+++

## Overview {#overview}

With Ubuntu 19.10 going EOL, we have a special interview by Joe with Chris
Coulson and Steve Beattie from the Ubuntu Security Team to talk TPMs and
Ubuntu Core 20, plus Alex looks at some of the 71 CVEs addressed by the
team and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

71 unique CVEs addressed


### [[USN-4407-1](https://usn.ubuntu.com/4407-1/)] LibVNCServer vulnerabilities [01:02] {#usn-4407-1-libvncserver-vulnerabilities-01-02}

-   5 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2017-18922](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-18922) <!-- medium -->
    -   [CVE-2019-20788](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20788) <!-- medium -->
    -   [CVE-2019-15690](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15690) <!-- medium -->
    -   [CVE-2019-15681](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15681) <!-- low -->
    -   [CVE-2019-15680](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15680) <!-- low -->
-   Used by gnome-remote-desktop, virtualbox and others
-   Provides both a server **and** client libraries
    -   So some issues affect clients when connecting to a malicious server,
        others could be from a malicious client to the server
-   Issues when handling WebSocket frames, cursor shape updates,
    ServerCutText messages and decompression of zlib compressed data - crash ->
    DoS, info leak, RCE etc


### [[USN-4408-1](https://usn.ubuntu.com/4408-1/)] Firefox vulnerabilities [01:57] {#usn-4408-1-firefox-vulnerabilities-01-57}

-   11 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-12421](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12421) <!-- medium -->
    -   [CVE-2020-12426](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12426) <!-- medium -->
    -   [CVE-2020-12425](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12425) <!-- medium -->
    -   [CVE-2020-12424](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12424) <!-- medium -->
    -   [CVE-2020-12422](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12422) <!-- medium -->
    -   [CVE-2020-12420](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12420) <!-- medium -->
    -   [CVE-2020-12419](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12419) <!-- medium -->
    -   [CVE-2020-12418](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12418) <!-- medium -->
    -   [CVE-2020-12417](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12417) <!-- medium -->
    -   [CVE-2020-12416](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12416) <!-- medium -->
    -   [CVE-2020-12415](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12415) <!-- medium -->
-   78.0.1
-   Would reject certificate chains for addons which did not terminate in a
    built-in root certificate - could cause some add-ons to become outdated
    as it would reject updates for them
-   Usual web browser issues -> crafted website DoS, info leak, bypass
    permission prompts or RCE


### [[USN-4409-1](https://usn.ubuntu.com/4409-1/)] Samba vulnerabilities [03:00] {#usn-4409-1-samba-vulnerabilities-03-00}

-   3 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-10760](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10760) <!-- medium -->
    -   [CVE-2020-10745](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10745) <!-- medium -->
    -   [CVE-2020-10730](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10730) <!-- medium -->
-   2 separate issues when handling LDAP queries -> both UAF -> crash -> DoS
    or RCE
-   CPU based DoS when processing NetBIOS over TCP/IP


### [[USN-4410-1](https://usn.ubuntu.com/4410-1/)] Net-SNMP vulnerability [03:44] {#usn-4410-1-net-snmp-vulnerability-03-44}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2019-20892](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20892) <!-- medium -->
-   Double free -> heap memory corruption -> crash / RCE


### [[USN-4411-1](https://usn.ubuntu.com/4411-1/)] Linux kernel vulnerabilities [04:02] {#usn-4411-1-linux-kernel-vulnerabilities-04-02}

-   5 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-12768](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12768) <!-- negligible -->
    -   [CVE-2020-13143](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13143) <!-- low -->
    -   [CVE-2020-12770](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12770) <!-- low -->
    -   [CVE-2020-10711](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10711) <!-- low -->
    -   [CVE-2020-10732](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10732) <!-- low -->
-   5.4 kernel
-   Various low impact issues - info leak due to failure to initialise memory
    when handling ELF code, SELinux network label handling NULL ptr deref,
    SCSI driver OOB read, USB gadget OOB read via configfs etc


### [[USN-4412-1](https://usn.ubuntu.com/4412-1/)] Linux kernel vulnerabilities [04:57] {#usn-4412-1-linux-kernel-vulnerabilities-04-57}

-   5 CVEs addressed in Bionic (18.04 LTS), Eoan (19.10)
    -   [CVE-2020-12768](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12768) <!-- negligible -->
    -   [CVE-2020-10751](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10751) <!-- negligible -->
    -   [CVE-2020-13143](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13143) <!-- low -->
    -   [CVE-2020-12770](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12770) <!-- low -->
    -   [CVE-2020-10711](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10711) <!-- low -->
-   5.3 kernel (bionic HWE)
-   Most of above plus an SELinux failure to validate all parts of a
    multi-part netlink message - could then possibly bypass SELinux access
    controls - SELinux is not the default LSM in Ubuntu - AppArmor


### [[USN-4413-1](https://usn.ubuntu.com/4413-1/)] Linux kernel vulnerabilities [05:58] {#usn-4413-1-linux-kernel-vulnerabilities-05-58}

-   5 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-12768](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12768) <!-- negligible -->
    -   [CVE-2020-10751](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10751) <!-- negligible -->
    -   [CVE-2020-13143](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13143) <!-- low -->
    -   [CVE-2020-12770](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12770) <!-- low -->
    -   [CVE-2020-10711](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10711) <!-- low -->
-   5.0 kernel (gke/oem)


### [[USN-4414-1](https://usn.ubuntu.com/4414-1/)] Linux kernel vulnerabilities [06:10] {#usn-4414-1-linux-kernel-vulnerabilities-06-10}

-   12 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2019-19039](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19039) <!-- negligible -->
    -   [CVE-2019-12380](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12380) <!-- negligible -->
    -   [CVE-2020-13143](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13143) <!-- low -->
    -   [CVE-2020-12770](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12770) <!-- low -->
    -   [CVE-2020-10711](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10711) <!-- low -->
    -   [CVE-2019-19462](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19462) <!-- medium -->
    -   [CVE-2019-19377](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19377) <!-- low -->
    -   [CVE-2019-19816](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19816) <!-- low -->
    -   [CVE-2019-19813](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19813) <!-- low -->
    -   [CVE-2019-19318](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19318) <!-- low -->
    -   [CVE-2019-19036](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19036) <!-- low -->
    -   [CVE-2019-16089](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16089) <!-- low -->
-   4.15 kernel (bionic / xenial hwe)
-   Some of above, plus others **and** a kernel->user space relay bug where
    local user could trigger a crash -> DoS via improper return values to the
    kernel


### [[USN-4419-1](https://usn.ubuntu.com/4419-1/)] Linux kernel vulnerabilities [06:49] {#usn-4419-1-linux-kernel-vulnerabilities-06-49}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2020-8992](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8992) <!-- low -->
    -   [CVE-2020-13143](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13143) <!-- low -->
    -   [CVE-2020-12770](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12770) <!-- low -->
    -   [CVE-2020-10711](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10711) <!-- low -->
    -   [CVE-2020-10690](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10690) <!-- medium -->
-   4.4 kernel (xenial / trusty hwe)
-   ptp race condition during device allocation and removal due to a dangling
    pointer to free'd memory


### [[USN-4415-1](https://usn.ubuntu.com/4415-1/)] coTURN vulnerabilities [07:33] {#usn-4415-1-coturn-vulnerabilities-07-33}

-   3 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-6062](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6062) <!-- medium -->
    -   [CVE-2020-6061](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6061) <!-- medium -->
    -   [CVE-2020-4067](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-4067) <!-- medium -->
-   TURN / STUN server used to traverse VoIP media traffic over NAT with a
    telnet / HTTPS management interface
-   Info leak due to failure to zero memory used for response buffers
-   Improper handling of HTTP POST requests to the web interface -> DoS /
    info-leak etc


### [[USN-4416-1](https://usn.ubuntu.com/4416-1/)] GNU C Library vulnerabilities [08:04] {#usn-4416-1-gnu-c-library-vulnerabilities-08-04}

-   11 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10)
    -   [CVE-2020-1752](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1752) <!-- low -->
    -   [CVE-2020-1751](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1751) <!-- medium -->
    -   [CVE-2020-10029](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10029) <!-- low -->
    -   [CVE-2019-9169](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9169) <!-- low -->
    -   [CVE-2019-19126](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19126) <!-- low -->
    -   [CVE-2018-6485](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-6485) <!-- medium -->
    -   [CVE-2018-19591](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19591) <!-- medium -->
    -   [CVE-2018-11237](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11237) <!-- medium -->
    -   [CVE-2018-11236](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11236) <!-- medium -->
    -   [CVE-2017-18269](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-18269) <!-- medium -->
    -   [CVE-2017-12133](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-12133) <!-- low -->
-   Failure to handle regex/s, bit patters, path tilde expansion, hostname
    lookups, memalign & AVX-512 optimised memcpy() etc -> memory corruption
    -> crash / RCE
-   Possible ASLR bypass for setuid() programs since would not respect the
    LD\_PREFER\_MAP\_32BIT\_EXEC environment variable after security transition
    and so a local attcker could use this to restrict the range of memory
    addresses used when loading libraries


### [[USN-4417-1](https://usn.ubuntu.com/4417-1/), [USN-4417-2](https://usn.ubuntu.com/4417-2/)] NSS vulnerability [09:38] {#usn-4417-1-usn-4417-2-nss-vulnerability-09-38}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-12402](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12402) <!-- medium -->
-   Possible RSA side-channel due to input-dependent code flow - would allow
    possible RSA private key extraction via electromagnetic-based
    side-channel measurements


### [[USN-4418-1](https://usn.ubuntu.com/4418-1/)] OpenEXR vulnerabilities [10:06] {#usn-4418-1-openexr-vulnerabilities-10-06}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-15306](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15306) <!-- medium -->
    -   [CVE-2020-15305](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15305) <!-- medium -->
-   Heap buffer overflow and UAF


### [[USN-4420-1](https://usn.ubuntu.com/4420-1/)] Cinder and os-brick vulnerability [10:13] {#usn-4420-1-cinder-and-os-brick-vulnerability-10-13}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-10755](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10755) <!-- low -->
-   Possible exposure of credentials when using the Dell EMC ScaleIO or
    VxFlex OS backend storage drivers - credentials would be accessible via
    the connection\_info element in various API calls - instead credentials
    get moved to a file on disk so may require some changes on various
    deployed environments as a result


### [[USN-4421-1](https://usn.ubuntu.com/4421-1/)] Thunderbird vulnerabilities [10:52] {#usn-4421-1-thunderbird-vulnerabilities-10-52}

-   10 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-12421](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12421) <!-- medium -->
    -   [CVE-2020-12399](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12399) <!-- medium -->
    -   [CVE-2020-12398](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12398) <!-- medium -->
    -   [CVE-2020-12420](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12420) <!-- medium -->
    -   [CVE-2020-12419](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12419) <!-- medium -->
    -   [CVE-2020-12418](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12418) <!-- medium -->
    -   [CVE-2020-12417](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12417) <!-- medium -->
    -   [CVE-2020-12410](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12410) <!-- medium -->
    -   [CVE-2020-12406](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12406) <!-- medium -->
    -   [CVE-2020-12405](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12405) <!-- medium -->
-   68.10.0
-   Most firefox issues mentioned earlier, plus a specific TB one where if an
    attacker could potentially intercept and modify traffic across a STARTTLS
    IMAP server by responding with a PREAUTH.


### [[USN-4376-2](https://usn.ubuntu.com/4376-2/)] OpenSSL vulnerabilities [11:33] {#usn-4376-2-openssl-vulnerabilities-11-33}

-   3 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM)
    -   [CVE-2019-1563](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1563) <!-- low -->
    -   [CVE-2019-1559](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1559) <!-- medium -->
    -   [CVE-2019-1547](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1547) <!-- low -->
-   [Episode 77](https://ubuntusecuritypodcast.org/episode-77/)


### [[USN-4422-1](https://usn.ubuntu.com/4422-1/)] WebKitGTK+ vulnerabilities [11:40] {#usn-4422-1-webkitgtk-plus-vulnerabilities-11-40}

-   8 CVEs addressed in Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-9850](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9850) <!-- medium -->
    -   [CVE-2020-9843](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9843) <!-- medium -->
    -   [CVE-2020-9807](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9807) <!-- medium -->
    -   [CVE-2020-9806](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9806) <!-- medium -->
    -   [CVE-2020-9805](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9805) <!-- medium -->
    -   [CVE-2020-9803](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9803) <!-- medium -->
    -   [CVE-2020-9802](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9802) <!-- medium -->
    -   [CVE-2020-13753](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13753) <!-- medium -->


### [[USN-4423-1](https://usn.ubuntu.com/4423-1/)] Firefox vulnerability [11:52] {#usn-4423-1-firefox-vulnerability-11-52}

-   Affecting Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
-   78.0.2
-   Possible click-jacking attack via crafted X-Frame-Options bypass when
    visiting a specially crafted website (no CVE..)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe talks TPMs and Ubuntu Core 20 with Chris Coulson and Steve Beattie [12:30] {#joe-talks-tpms-and-ubuntu-core-20-with-chris-coulson-and-steve-beattie-12-30}

-   <https://forum.snapcraft.io/t/uc20-beta1-released/18631>


### Ubuntu 19.10 Eoan Ermine goes end-of-life [23:12] {#ubuntu-19-dot-10-eoan-ermine-goes-end-of-life-23-12}

-   <https://lists.ubuntu.com/archives/ubuntu-security-announce/2020-July/005494.html>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
