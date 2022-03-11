+++
title = "Episode 53"
description = """
  This week we look at the details of the latest Intel hardware
  vulnerabilities, including security updates for the Linux kernel and Intel
  microcode, plus Bash, cpio, FriBidi and more.
  """
date = 2019-11-15T18:21:00+10:30
lastmod = 2020-05-15T16:39:04+09:30
draft = false
weight = 1022
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E053.mp3"
podcast_duration = "17:03"
podcast_bytes = 22159072
permalink = "https://ubuntusecuritypodcast.org/episode-53/"
guid = "6322701e1569fa8a2176f7ddc3de8a25fec67f74a5d8335395aeafbb7fcc7533c5dc12f28d8ceb3f51469422dcd5da29061f11aa99a33d597ccc55bc2a629fd5"
+++

## Overview {#overview}

This week we look at the details of the latest Intel hardware
vulnerabilities, including security updates for the Linux kernel and Intel
microcode, plus Bash, cpio, FriBidi and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

26 unique CVEs addressed


### [[USN-4176-1](https://usn.ubuntu.com/4176-1/)] GNU cpio vulnerability [01:00] {#usn-4176-1-gnu-cpio-vulnerability-01-00}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-14866](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14866)
-   cpio wouldn't validate values written to headers of TAR archives - could
    use cpio to create a TAR containing another TAR with a big size and will
    use wrong context values (ie uses inner TAR values in header) - this
    could allow a TAR to be created which has files with permissions not
    owned by the original user - when extracted by cpio will overwrite target
    files - whereas if using tar to extract will avoid this - fixed to check
    and handle header values correctly


### [[USN-4177-1](https://usn.ubuntu.com/4177-1/)] Rygel vulnerability [02:18] {#usn-4177-1-rygel-vulnerability-02-18}

-   Affecting Eoan
-   Added Rygel in Eoan which is off by default but needed GNOME to handle
    that - it would disable it dynamically - so if not running GNOME, rygel
    would be running and sharing your stuff on the local network - fixed to
    disable automatically on upgrade - and then can use the GNOME settings
    front-end etc to re-enable if desired


### [[USN-4178-1](https://usn.ubuntu.com/4178-1/)] WebKitGTK+ vulnerabilities [03:34] {#usn-4178-1-webkitgtk-plus-vulnerabilities-03-34}

-   4 CVEs addressed in Bionic, Disco
    -   [CVE-2019-8771](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8771)
    -   [CVE-2019-8769](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8769)
    -   [CVE-2019-8720](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8720)
    -   [CVE-2019-8625](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8625)


### [[USN-4181-1](https://usn.ubuntu.com/4181-1/)] WebKitGTK+ vulnerabilities [03:34] {#usn-4181-1-webkitgtk-plus-vulnerabilities-03-34}

-   2 CVEs addressed in Bionic, Disco, Eoan
    -   [CVE-2019-8814](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8814)
    -   [CVE-2019-8812](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8812)


### [[USN-4179-1](https://usn.ubuntu.com/4179-1/)] FriBidi vulnerability [04:00] {#usn-4179-1-fribidi-vulnerability-04-00}

-   1 CVEs addressed in Disco, Eoan
    -   [CVE-2019-18397](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18397)
-   Issue reported about unicode isolated handling in Qt - turns out affected
    GTK applications as well - entirely different code with very similar
    flaw - stack buffer overflow since didn't check bounds of a fixed array
    used to store details on nested unicode isolate sections - simple fix to
    just check bounds before trying to store next element


### [[USN-4180-1](https://usn.ubuntu.com/4180-1/)] Bash vulnerability [05:38] {#usn-4180-1-bash-vulnerability-05-38}

-   1 CVEs addressed in Precise ESM
    -   [CVE-2012-6711](https://people.canonical.com/~ubuntu-security/cve/CVE-2012-6711)
-   Recently announced vuln (heap-based buffer overflow) in bash affecting
    old versions - so most releases unaffected except Precise - can trigger
    by printing wide characters via echo -e


### [[USN-4182-1](https://usn.ubuntu.com/4182-1/), USN-4182-2] Intel Microcode update [06:12] {#usn-4182-1-usn-4182-2-intel-microcode-update-06-12}

-   2 CVEs addressed in Trusty ESM, Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-11139](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11139)
    -   [CVE-2019-11135](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11135)
-   Voltage modulation able to be performed by a local privileged user -
    disabled via microcode
-   TSX Asynchronous Abort (TAA) -
    <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/TAA%5FMCEPSC%5Fi915>
    -   Another variant of MDS but only affects processsors with Transational
        Synchronization Extensions (TSX)
    -   MDS mitigations also can mitigate this - but needs microcode update -
        associated kernel update too


### [[USN-4183-1](//usn.ubuntu.com/4183-1/)] Linux kernel vulnerabilities [07:58] {#usn-4183-1--usn-dot-ubuntu-dot-com-4183-1--linux-kernel-vulnerabilities-07-58}

-   9 CVEs addressed in Eoan
    -   [CVE-2019-17666](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17666)
    -   [CVE-2019-16746](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16746)
    -   [CVE-2019-15793](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15793)
    -   [CVE-2019-15792](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15792)
    -   [CVE-2019-15791](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15791)
    -   [CVE-2019-0154](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0154)
    -   [CVE-2018-12207](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12207)
    -   [CVE-2019-0155](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0155)
    -   [CVE-2019-11135](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11135)
-   MCEPSC -   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/TAA%5FMCEPSC%5Fi915>
    -   trigger a MCE from a guest by changing page size in a particular way
        within the guest -> MCE on host kernel -> DoS
-   i915 graphics - userspace can modify PTE via writes to MMIO from blitter
    command streamer or expose kernel memory - privesc
-   TAA
-   Various other issues:
    -   Realtek wifi driver buffer overflow - able to be triggered OTA - crash
        / RCE
    -   Buffer overflow in nl80211 config interface (local user) - crash / code exec
    -   Jann Horn - shiftfs issues
        -   UID/GID confusion when namespace of lower file-system is not
            init\_user\_ns - DAC bypass
        -   type confusion -> buffer overflow
        -   reference count underflow -> UAF
            -   local user crash / code exec
    -   i915 graphics - userspace read on GT MMIO -> hang -> DoS (low power state)


### [[USN-4184-1](https://usn.ubuntu.com/4184-1/)] Linux kernel vulnerabilities [11:09] {#usn-4184-1-linux-kernel-vulnerabilities-11-09}

-   14 CVEs addressed in Bionic (HWE), Disco
    -   [CVE-2019-17666](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17666)
    -   [CVE-2019-17056](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17056)
    -   [CVE-2019-17055](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17055)
    -   [CVE-2019-17054](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17054)
    -   [CVE-2019-17053](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17053)
    -   [CVE-2019-17052](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17052)
    -   [CVE-2019-15793](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15793)
    -   [CVE-2019-15792](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15792)
    -   [CVE-2019-15791](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15791)
    -   [CVE-2019-15098](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15098)
    -   [CVE-2019-0154](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0154)
    -   [CVE-2018-12207](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12207)
    -   [CVE-2019-0155](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0155)
    -   [CVE-2019-11135](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11135)
-   See above plus
    -   Various network based subsystems failed to enforce CAP\_NET\_RAW for raw
        socket creation
        -   AF\_NFC, AF\_ISDN, AF\_APPLETALK, AF\_IEEE802154 (low-rate wireless
            network), AF\_AX25


### [[USN-4185-1](//usn.ubuntu.com/4185-1/), [USN-4185-2](https://usn.ubuntu.com/4185-2/)] Linux kernel vulnerabilities [12:06] {#usn-4185-1--usn-dot-ubuntu-dot-com-4185-1--usn-4185-2-linux-kernel-vulnerabilities-12-06}

-   11 CVEs addressed in Trusty ESM (Azure), Xenial (HWE), Bionic
    -   [CVE-2019-17666](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17666)
    -   [CVE-2019-17056](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17056)
    -   [CVE-2019-17055](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17055)
    -   [CVE-2019-17054](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17054)
    -   [CVE-2019-17053](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17053)
    -   [CVE-2019-17052](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17052)
    -   [CVE-2019-15098](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15098)
    -   [CVE-2019-0154](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0154)
    -   [CVE-2018-12207](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12207)
    -   [CVE-2019-0155](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0155)
    -   [CVE-2019-11135](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11135)
-   realtek wifi buffer overflow, AF\_XXX CAP\_NET\_RAW, NULL pointer
    dereference in Atheros USB Wifi Driver, Intel hardware issues (2xi915 +
    TAA + MCEPSC)


### [[USN-4186-1](https://usn.ubuntu.com/4186-1/), [USN-4186-2](https://usn.ubuntu.com/4186-2/)] Linux kernel vulnerabilities [12:47] {#usn-4186-1-usn-4186-2-linux-kernel-vulnerabilities-12-47}

-   13 CVEs addressed in Trusty ESM (HWE), Xenial
    -   [CVE-2019-2215](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2215)
    -   [CVE-2019-17666](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17666)
    -   [CVE-2019-17056](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17056)
    -   [CVE-2019-17055](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17055)
    -   [CVE-2019-17054](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17054)
    -   [CVE-2019-17053](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17053)
    -   [CVE-2019-17052](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17052)
    -   [CVE-2019-16746](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16746)
    -   [CVE-2019-15098](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15098)
    -   [CVE-2019-0154](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0154)
    -   [CVE-2018-12207](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12207)
    -   [CVE-2019-0155](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0155)
    -   [CVE-2019-11135](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11135)
-   Binder UAF -> crash, DoS -> code exec (CONFIG\_DEBUG\_LIST mitigates this -
    looking to add this in future kernels like 20.04)
-   realtek wifi, CAP\_NET\_RAW, nl80211 config buffer overflow, Intel hardware
    issues


### [[USN-4187-1](https://usn.ubuntu.com/4187-1/)] Linux kernel vulnerability [13:48] {#usn-4187-1-linux-kernel-vulnerability-13-48}

-   1 CVEs addressed in Trusty ESM
    -   [CVE-2019-11135](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11135)
-   TAA


### [[USN-4188-1](https://usn.ubuntu.com/4188-1/)] Linux kernel vulnerability [13:48] {#usn-4188-1-linux-kernel-vulnerability-13-48}

-   1 CVEs addressed in Precise ESM
    -   [CVE-2019-11135](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11135)
-   TAA


### [LSN-0059-1] Linux kernel vulnerability [14:05] {#lsn-0059-1-linux-kernel-vulnerability-14-05}

-   4 CVEs addressed in Xenial and Bionic
    -   [CVE-2019-11135](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11135)
    -   [CVE-2019-0155](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0155)
    -   [CVE-2019-0154](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0154)
    -   [CVE-2018-12207](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12207)
-   Intel hardware issues - CAN'T BE LIVEPATCHED - need to update kernel and reboot


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### 20.04 Roadmap Sprint [14:55] {#20-dot-04-roadmap-sprint-14-55}


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)