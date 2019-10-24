+++
title = "Episode 46"
description = """
  A massive 85 CVEs addressed this week, including updates for Exim, the
  Linux Kernel, Samba, systemd and more, plus we discuss hacking BMCs via
  remote USB devices and password stashes.
  """
date = 2019-09-12T23:02:00+09:30
lastmod = 2019-10-24T15:20:05+10:30
draft = false
weight = 1005
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E046.mp3"
podcast_duration = "25:47"
podcast_bytes = 24762945
permalink = "https://ubuntusecuritypodcast.org/episode-46/"
guid = "f9f8ca97c8a93a7d0f78e192f4103ef26bcd7f06d318c0a10eaaddd1a5cad87fe4347f2bf2a967b0b2b4c56fdbce6d261f047fc9c17ee8542b54e5477ce71a99"
+++

## Overview {#overview}

A massive 85 CVEs addressed this week, including updates for Exim, the
Linux Kernel, Samba, systemd and more, plus we discuss hacking BMCs via
remote USB devices and password stashes.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

85 unique CVEs addressed


### [[USN-4124-1](https://usn.ubuntu.com/4124-1/)] Exim vulnerability [00:49] {#usn-4124-1-exim-vulnerability-00-49}

-   1 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-15846](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15846) <!--- high --->
        -   When doing TLS negotiation, parses the Server Name Indication
            headers - would try and handle escape sequences in this string.
        -   Does so by looking at the character after a backslash to determine
            what escape sequence is (\b etc) and then returns that actual value
            (in string\_interpret\_escape())
        -   This gets called by the function string\_unprinting() which is used to
            translate escaped characters into their proper form in a new string -
            and this will run over the bounds of the original string if it ends
            with a backslash - since string\_interpret\_escape() would assume there
            was contents afterwards to interpret
        -   Qualsys were able to develop a PoC which leverages this OOB behaviour
            into a remote root exploit (since this part of the code runs as root
            and they were able to use a combination of heap corruption and OOB
            writes to get code execution)
        -   Fixed to first check if reached end of string (NUL) before trying to
            handle the escaped character
    -   Able to be mitigated by setting ACLs to deny connections which contain
        a trailing backslash in the SNI field - see [CVE-2019-15846 in the Ubuntu CVE Tracker](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15846)
    -   Lots of press coverage:
        -   <https://www.zdnet.com/article/millions-of-exim-servers-vulnerable-to-root-granting-exploit/>
        -   <https://threatpost.com/critical-exim-flaw-opens-millions-of-servers-to-takeover/148108/>
        -   <https://www.theregister.co.uk/2019/09/06/exim%5Fvulnerability%5Fpatch/>
        -   <https://www.bleepingcomputer.com/news/security/critical-exim-tls-flaw-lets-attackers-remotely-execute-commands-as-root/>


### [[USN-4114-1](https://usn.ubuntu.com/4114-1/)] Linux kernel vulnerabilities [03:49] {#usn-4114-1-linux-kernel-vulnerabilities-03-49}

-   5 CVEs addressed in Bionic (HWE), Disco
    -   [CVE-2019-3900](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3900) <!--- medium --->
        -   Infinite loop in virtio network driver - guest VM cause host DoS by stalling vhost\_net kernel thread
    -   [CVE-2019-14284](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14284) <!--- medium --->
        -   Divide by zero in floppy driver ioctl() handler (created by default by qemu)
    -   [CVE-2019-14283](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14283) <!--- medium --->
        -   Integer overflow and OOB read in floppy driver
    -   [CVE-2019-13648](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13648) <!--- medium --->
        -   DoS for PowerPC if user calls sigreturn() with crafted signal stack
            frame - exception and system crash (requires transactional memory to
            be disabled)
    -   [CVE-2019-10638](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10638) <!--- medium --->
        -   Kernel tries to randomise IP ID values (used for de-fragmentation of
            IP packets) for connection-less protocols to avoid tracking
        -   Is meant to be random across source + dest address + protocol
        -   But if an attacker can observe traffic to multiple hosts, can infer
            the hashing key used to generate the ID values
        -   And then can associate different streams of packets back to the same
            source host and hence can track devices
        -   Fixed to used an actual random value for the base of the hash and use
            a better hashing algorithm (siphash) for ID generation


### [[USN-4115-1](https://usn.ubuntu.com/4115-1/)] Linux kernel vulnerabilities [06:42] {#usn-4115-1-linux-kernel-vulnerabilities-06-42}

-   28 CVEs addressed in Xenial (HWE), Bionic
-   5 negligible (not enabled by default), 11 low (very unlikely to trigger -
    module unload after proc initialization failure etc), 12 medium
    -   [CVE-2019-3819](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3819) <!--- negligible --->
    -   [CVE-2019-3701](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3701) <!--- negligible --->
    -   [CVE-2019-15221](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15221) <!--- negligible --->
    -   [CVE-2019-15218](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15218) <!--- negligible --->
    -   [CVE-2019-15216](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15216) <!--- negligible --->
    -   [CVE-2019-9506](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9506) <!--- medium --->
        -   Bluetooth KNOB attack
    -   [CVE-2019-3900](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3900) <!--- medium --->
        -   Infinite loop in virtio net driver (guest VM cause host DoS)
    -   [CVE-2019-15292](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15292) <!--- low --->
    -   [CVE-2019-15220](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15220) <!--- low --->
    -   [CVE-2019-15215](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15215) <!--- low --->
    -   [CVE-2019-15214](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15214) <!--- low --->
    -   [CVE-2019-15212](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15212) <!--- low --->
    -   [CVE-2019-15211](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15211) <!--- low --->
    -   [CVE-2019-15090](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15090) <!--- medium --->
        -   OOB read in debug functions of QLogic QEDI iSCSI Initiator Driver
            (allows to read kernel memory - KASLR defeat?)
    -   [CVE-2019-14763](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14763) <!--- low --->
    -   [CVE-2019-14284](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14284) <!--- medium --->
        -   See above (Divide by zero in floppy driver)
    -   [CVE-2019-14283](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14283) <!--- medium --->
        -   See above (Integer overflow and OOB read in floppy driver)
    -   [CVE-2019-13648](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13648) <!--- medium --->
        -   See above (PowerPC DoS on sigreturn())
    -   [CVE-2019-13631](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13631) <!--- low --->
    -   [CVE-2019-11810](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11810) <!--- low --->
    -   [CVE-2019-11599](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11599) <!--- medium --->
        -   Core dump race ([Episode 41](https://ubuntusecuritypodcast.org/episode-41/))
    -   [CVE-2019-11487](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11487) <!--- low --->
    -   [CVE-2019-10639](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10639) <!--- medium --->
        -   Related to CVE-2019-10638 - since used base address of kernel
            structure in memory as hash base, could allow attacker to infer this
            address and so defeat KASLR
    -   [CVE-2019-10638](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10638) <!--- medium --->
        -   See above (IP ID randomisation)
    -   [CVE-2019-10207](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10207) <!--- medium --->
        -   NULL pointer address execution (call function pointer which is NULL
            since is not initializated) - Ubuntu defaults to a non-zero
            mmap\_min\_addr value which means can't map a page at 0 address so this
            is just a NULL pointer dereference in default config (otherwise is
            arbitrary kernel code execution)
    -   [CVE-2019-0136](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0136) <!--- medium --->
        -   Intel Wifi Driver Tunneled Direct Link Setup (allows devices to
            communicate directly with one-another on the same network without
            going via AP) - flaw allows a peer to cause wifi disconnection (DoS)
    -   [CVE-2018-20784](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20784) <!--- medium --->
        -   Infinite loop in CFS schedular - DoS
    -   [CVE-2018-19985](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19985) <!--- low --->


### [[USN-4116-1](https://usn.ubuntu.com/4116-1/)] Linux kernel vulnerabilities [09:12] {#usn-4116-1-linux-kernel-vulnerabilities-09-12}

-   6 CVEs addressed in Xenial
    -   [CVE-2019-3900](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3900) <!--- medium --->
        -   Infinite loop in virtio net driver (guest VM cause host DoS)
    -   [CVE-2019-14284](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14284) <!--- medium --->
        -   See above (Divide by zero in floppy driver)
    -   [CVE-2019-14283](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14283) <!--- medium --->
        -   See above (Integer overflow and OOB read in floppy driver)
    -   [CVE-2019-13648](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13648) <!--- medium --->
        -   See above (PowerPC DoS on sigreturn())
    -   [CVE-2019-10638](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10638) <!--- medium --->
        -   See above (IP ID randomisation)
    -   [CVE-2018-20856](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20856) <!--- medium --->
        -   UAF in block-layer under particular failure conditions


### [[USN-4117-1](https://usn.ubuntu.com/4117-1/)] Linux kernel (AWS) vulnerabilities [09:43] {#usn-4117-1-linux-kernel--aws--vulnerabilities-09-43}

-   9 CVEs addressed in Disco
    -   [CVE-2019-3900](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3900) <!--- medium --->
        -   Infinite loop in virtio net driver (guest VM cause host DoS)
    -   [CVE-2019-3846](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3846) <!--- medium --->
        -   Marvell Wifi OOB write ([Episode 43](https://ubuntusecuritypodcast.org/episode-43/))
    -   [CVE-2019-10126](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10126) <!--- medium --->
        -   Marvell Wifi OOB write ([Episode 43](https://ubuntusecuritypodcast.org/episode-43/))
    -   [CVE-2019-14284](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14284) <!--- medium --->
        -   See above (Divide by zero in floppy driver)
    -   [CVE-2019-14283](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14283) <!--- medium --->
        -   See above (Integer overflow and OOB read in floppy driver)
    -   [CVE-2019-13272](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13272) <!--- medium --->
        -   ptrace race ([Episode 43](https://ubuntusecuritypodcast.org/episode-43/))
    -   [CVE-2019-13233](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13233) <!--- medium --->
        -   UAF in handling of x86 LDT entries ([Episode 43](https://ubuntusecuritypodcast.org/episode-43/))
    -   [CVE-2019-12984](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12984) <!--- medium --->
        -   NULL ptr dereference in NFC subsystem ([Episode 43](https://ubuntusecuritypodcast.org/episode-43/))
    -   [CVE-2019-10638](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10638) <!--- medium --->
        -   See above (IP ID randomisation)


### [[USN-4118-1](https://usn.ubuntu.com/4118-1/)] Linux kernel (AWS) vulnerabilities [10:17] {#usn-4118-1-linux-kernel--aws--vulnerabilities-10-17}

-   61 CVEs addressed in Xenial, Bionic
    -   [CVE-2019-3819](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3819) <!--- negligible --->
    -   [CVE-2019-3701](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3701) <!--- negligible --->
    -   [CVE-2019-15221](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15221) <!--- negligible --->
    -   [CVE-2019-15218](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15218) <!--- negligible --->
    -   [CVE-2019-15216](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15216) <!--- negligible --->
    -   [CVE-2018-20511](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20511) <!--- negligible --->
    -   [CVE-2019-9506](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9506) <!--- medium --->
    -   [CVE-2019-3900](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3900) <!--- medium --->
    -   [CVE-2019-3846](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3846) <!--- medium --->
    -   [CVE-2019-2101](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2101) <!--- medium --->
    -   [CVE-2019-2024](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2024) <!--- low --->
    -   [CVE-2019-15292](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15292) <!--- low --->
    -   [CVE-2019-15220](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15220) <!--- low --->
    -   [CVE-2019-15215](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15215) <!--- low --->
    -   [CVE-2019-15214](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15214) <!--- low --->
    -   [CVE-2019-15212](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15212) <!--- low --->
    -   [CVE-2019-15211](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15211) <!--- low --->
    -   [CVE-2019-15090](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15090) <!--- medium --->
    -   [CVE-2019-14763](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14763) <!--- low --->
    -   [CVE-2019-14284](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14284) <!--- medium --->
    -   [CVE-2019-14283](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14283) <!--- medium --->
    -   [CVE-2019-13631](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13631) <!--- low --->
    -   [CVE-2019-13272](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13272) <!--- medium --->
    -   [CVE-2019-13233](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13233) <!--- medium --->
    -   [CVE-2019-12984](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12984) <!--- medium --->
    -   [CVE-2019-12819](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12819) <!--- medium --->
    -   [CVE-2019-12818](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12818) <!--- medium --->
    -   [CVE-2019-11884](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11884) <!--- medium --->
    -   [CVE-2019-11833](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11833) <!--- medium --->
    -   [CVE-2019-11815](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11815) <!--- medium --->
    -   [CVE-2019-11810](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11810) <!--- low --->
    -   [CVE-2019-11599](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11599) <!--- medium --->
    -   [CVE-2019-11487](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11487) <!--- low --->
    -   [CVE-2019-11085](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11085) <!--- medium --->
    -   [CVE-2019-10639](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10639) <!--- medium --->
    -   [CVE-2019-10638](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10638) <!--- medium --->
    -   [CVE-2019-10207](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10207) <!--- medium --->
    -   [CVE-2019-10126](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10126) <!--- medium --->
    -   [CVE-2019-0136](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0136) <!--- medium --->
    -   [CVE-2018-5383](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5383) <!--- medium --->
    -   [CVE-2018-20856](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20856) <!--- medium --->
    -   [CVE-2018-20784](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20784) <!--- medium --->
    -   [CVE-2018-20169](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20169) <!--- low --->
    -   [CVE-2018-19985](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19985) <!--- low --->
    -   [CVE-2018-16862](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16862) <!--- low --->
    -   [CVE-2018-14617](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14617) <!--- low --->
    -   [CVE-2018-14613](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14613) <!--- low --->
    -   [CVE-2018-14612](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14612) <!--- low --->
    -   [CVE-2018-14611](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14611) <!--- low --->
    -   [CVE-2018-14610](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14610) <!--- low --->
    -   [CVE-2018-14609](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14609) <!--- low --->
    -   [CVE-2018-14616](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14616) <!--- low --->
    -   [CVE-2018-14615](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14615) <!--- low --->
    -   [CVE-2018-14614](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14614) <!--- low --->
    -   [CVE-2018-13100](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13100) <!--- low --->
    -   [CVE-2018-13099](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13099) <!--- low --->
    -   [CVE-2018-13098](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13098) <!--- low --->
    -   [CVE-2018-13097](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13097) <!--- low --->
    -   [CVE-2018-13096](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13096) <!--- low --->
    -   [CVE-2018-13093](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13093) <!--- low --->
    -   [CVE-2018-13053](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13053) <!--- low --->


### [[USN-3934-2](https://usn.ubuntu.com/3934-2/)] PolicyKit vulnerability [10:36] {#usn-3934-2-policykit-vulnerability-10-36}

-   1 CVEs addressed in Precise ESM
    -   [CVE-2019-6133](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6133) <!--- medium --->
-   [Episode 27](https://ubuntusecuritypodcast.org/episode-27/) - PolicyKit could get confused via PID reuse - fix was 2
    parts - 1 kernel to ensure can't race kernel on PID assignment, and
    second was in PolicyKit itself to check on PID, UID and start time.


### [[USN-4119-1](https://usn.ubuntu.com/4119-1/)] Irssi vulnerability [11:23] {#usn-4119-1-irssi-vulnerability-11-23}

-   1 CVEs addressed in Disco
    -   [CVE-2019-15717](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15717) <!--- medium --->
        -   UAF if server sends two CAP commands (used by client and server to negotiate
            capabilities - ie sasl support etc)


### [[USN-4121-1](https://usn.ubuntu.com/4121-1/)] Samba vulnerability [11:52] {#usn-4121-1-samba-vulnerability-11-52}

-   1 CVEs addressed in Disco
    -   [CVE-2019-10197](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10197) <!--- medium --->
        -   Possible directory share escape by unauthenticated users - allows
            attackers to gain access to the host filesystem outside the share
            root (limited as per underlying file-system permissions)
        -   Needs the server to have explicitly enabled 'wide links' and not be
            using 'unix extensions' OR to have also set 'allow insecure wide
            links'


### [[USN-4120-1](https://usn.ubuntu.com/4120-1/)] systemd vulnerability [12:40] {#usn-4120-1-systemd-vulnerability-12-40}

-   1 CVEs addressed in Bionic, Disco
    -   [CVE-2019-15718](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15718) <!--- medium --->
        -   systemd-resolved failed to properly setup access controls on its DBus
            server socket, whic allows unprivileged users to execute DBus methods
            that should only be executable by privileged users - such as changing
             the systems DNS resolver settings


### [[USN-4122-1](https://usn.ubuntu.com/4122-1/)] Firefox vulnerabilities [13:10] {#usn-4122-1-firefox-vulnerabilities-13-10}

-   17 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-11747](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11747) <!--- negligible --->
    -   [CVE-2019-11741](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11741) <!--- medium --->
    -   [CVE-2019-9812](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9812) <!--- medium --->
    -   [CVE-2019-11752](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11752) <!--- medium --->
    -   [CVE-2019-11750](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11750) <!--- medium --->
    -   [CVE-2019-11749](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11749) <!--- medium --->
    -   [CVE-2019-11748](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11748) <!--- medium --->
    -   [CVE-2019-11746](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11746) <!--- medium --->
    -   [CVE-2019-11744](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11744) <!--- medium --->
    -   [CVE-2019-11743](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11743) <!--- medium --->
    -   [CVE-2019-11742](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11742) <!--- medium --->
    -   [CVE-2019-11740](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11740) <!--- medium --->
    -   [CVE-2019-11738](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11738) <!--- low --->
    -   [CVE-2019-11737](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11737) <!--- low --->
    -   [CVE-2019-11735](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11735) <!--- medium --->
    -   [CVE-2019-11734](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11734) <!--- medium --->
    -   [CVE-2019-5849](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5849) <!--- medium --->
-   Upstream Firefox 69.0 release
    -   <https://www.mozilla.org/en-US/security/advisories/mfsa2019-25/>


### [[USN-4123-1](https://usn.ubuntu.com/4123-1/)] npm/fstream vulnerability [13:29] {#usn-4123-1-npm-fstream-vulnerability-13-29}

-   1 CVEs addressed in Bionic, Disco
    -   [CVE-2019-13173](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13173) <!--- low --->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe and Alex discuss hacking BMCs via a remote USN attack [13:53] {#joe-and-alex-discuss-hacking-bmcs-via-a-remote-usn-attack-13-53}

-   <https://thehackernews.com/2019/09/hacking-bmc-server.html>


### Joe and Alex also discuss password stashes [20:33] {#joe-and-alex-also-discuss-password-stashes-20-33}


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)