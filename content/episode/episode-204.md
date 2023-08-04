+++
title = "Episode 204"
description = """
  This week we look at the recent Zenbleed vulnerability affecting some AMD
  processors, plus we cover security updates for the Linux kernel, a high
  profile OpenSSH vulnerability and finally Andrei is back with a deep dive into
  recent academic research around how to safeguard machine learning systems when
  used across distributed deployments.
  """
date = 2023-08-04T18:38:00+09:30
lastmod = 2023-08-04T18:39:00+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E204.mp3"
podcast_duration = 1691
podcast_bytes = 47193198
permalink = "https://ubuntusecuritypodcast.org/episode-204/"
guid = "49daf7bf66159caff989814064454ab948818808f5ea43d4a6851078484ba408fad3b3a943f789669a512eb88cd56f16c3666fd06c172d3ddb84d29a85a6a25e"
+++

## Overview {#overview}

This week we look at the recent Zenbleed vulnerability affecting some AMD
processors, plus we cover security updates for the Linux kernel, a high
profile OpenSSH vulnerability and finally Andrei is back with a deep dive into
recent academic research around how to safeguard machine learning systems when
used across distributed deployments.


## This fortnight in Ubuntu Security Updates {#this-fortnight-in-ubuntu-security-updates}

123 unique CVEs addressed


### [[USN-6238-1](https://ubuntu.com/security/notices/USN-6238-1)] Samba vulnerabilities [01:15] {#usn-6238-1-samba-vulnerabilities-01-15}

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-34968](https://ubuntu.com/security/CVE-2023-34968) <!-- medium -->
    -   [CVE-2023-34967](https://ubuntu.com/security/CVE-2023-34967) <!-- medium -->
    -   [CVE-2023-34966](https://ubuntu.com/security/CVE-2023-34966) <!-- medium -->
    -   [CVE-2023-3347](https://ubuntu.com/security/CVE-2023-3347) <!-- medium -->
    -   [CVE-2022-2127](https://ubuntu.com/security/CVE-2022-2127) <!-- medium -->
-   Possible attacker-in-the-middle attack when configured to do SMB2 packet
    signing (as it was not properly enforced), couple issues in the Spotlight
    protocol implementation (used to enable MacOS clients to search the Samba
    share via Finder) - DoS via a possible infinite loop when processing RPC
    packets which specified 0 elements in an array-like structure, plus info leak
    where full server-side path of resources would be returned in results


### [[USN-6237-2](https://ubuntu.com/security/notices/USN-6237-2)] curl regression {#usn-6237-2-curl-regression}

-   3 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-32001](https://ubuntu.com/security/CVE-2023-32001) <!-- medium -->
    -   [CVE-2023-28322](https://ubuntu.com/security/CVE-2023-28322) <!-- low -->
    -   [CVE-2023-28321](https://ubuntu.com/security/CVE-2023-28321) <!-- low -->


### [[USN-6239-1](https://ubuntu.com/security/notices/USN-6239-1)] ECDSA Util vulnerability [02:13] {#usn-6239-1-ecdsa-util-vulnerability-02-13}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-24884](https://ubuntu.com/security/CVE-2022-24884) <!-- medium -->
-   Very similar to "Psychic Signatures" vuln in Java (OpenJDK) -
    [[USN-5546-1, USN-5546-2] OpenJDK vulnerabilities
    from Episode 172]({{< relref "episode-172#usn-5546-1-usn-5546-2-openjdk-vulnerabilities-03-09" >}}) - basically would fail to first check if the provided
    exponents in the signature were zero - since if they are, then an all-zero
    signature would be considered as valid - so could easily forge a signature


### [[USN-6232-1](https://ubuntu.com/security/notices/USN-6232-1)] wkhtmltopdf vulnerability {#usn-6232-1-wkhtmltopdf-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2020-21365](https://ubuntu.com/security/CVE-2020-21365) <!-- medium -->


### [[USN-6241-1](https://ubuntu.com/security/notices/USN-6241-1)] OpenStack vulnerability {#usn-6241-1-openstack-vulnerability}

-   1 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-2088](https://ubuntu.com/security/CVE-2023-2088) <!-- medium -->


### [[USN-6240-1](https://ubuntu.com/security/notices/USN-6240-1)] FRR vulnerability {#usn-6240-1-frr-vulnerability}

-   1 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-3748](https://ubuntu.com/security/CVE-2023-3748) <!-- medium -->


### [[USN-6242-1](https://ubuntu.com/security/notices/USN-6242-1), [USN-6242-2](https://ubuntu.com/security/notices/USN-6242-2)] OpenSSH vulnerability [03:08] {#usn-6242-1-usn-6242-2-openssh-vulnerability-03-08}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-38408](https://ubuntu.com/security/CVE-2023-38408) <!-- medium -->
-   Result of an incomplete fix for historical vulnerability [CVE-2016-10009](https://ubuntu.com/security/CVE-2016-10009) in
    PKCS#11 module in ssh-agent
-   Vuln is hence very similar to that, ie. if you chose to forward the ssh-agent
    socket to a remote machine, then the remote machine could cause your local
    ssh-agent to execute arbitrary code - it does this by causing the PKCS#11
    module in ssh-agent to load an attacker controlled library from `/usr/lib` on
    your local machine
    -   On the surface, it would appear that it would require a malicious library to
        be on your machine in this privileged location - BUT there are a bunch of
        seemingly innocuous libraries in say standard Ubuntu that can be abused to
        cause malicious actions and get arbitrary code execution. This is exactly
        what Qualys did to demonstrate the impact of this vuln -
        <https://www.qualys.com/2023/07/19/cve-2023-38408/rce-openssh-forwarded-ssh-agent.txt>
        -   very clever use of various pieces of surprising behaviour from various
            libraries (such as the ability to make the stack executable or register
            signal handlers just by dlopen()'ing a module) - chain these together to
            then get code execution
    -   It does though require you to use ssh-agent forwarding - this is generally
        discouraged, and instead you should probably use an jump host - this is even
        mentioned in the man page for `ssh`
-   Fixed by making module loading more defensive (ie that they contain the
    expected symbols and if not abort etc)


### [[USN-6243-1](https://ubuntu.com/security/notices/USN-6243-1)] Graphite-Web vulnerabilities {#usn-6243-1-graphite-web-vulnerabilities}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-4730](https://ubuntu.com/security/CVE-2022-4730) <!-- medium -->
    -   [CVE-2022-4729](https://ubuntu.com/security/CVE-2022-4729) <!-- medium -->
    -   [CVE-2022-4728](https://ubuntu.com/security/CVE-2022-4728) <!-- medium -->
    -   [CVE-2017-18638](https://ubuntu.com/security/CVE-2017-18638) <!-- medium -->


### [[USN-6203-2](https://ubuntu.com/security/notices/USN-6203-2)] Django vulnerability {#usn-6203-2-django-vulnerability}

-   1 CVEs addressed in Bionic ESM (18.04 ESM)
    -   [CVE-2023-36053](https://ubuntu.com/security/CVE-2023-36053) <!-- medium -->


### [[USN-6129-2](https://ubuntu.com/security/notices/USN-6129-2)] Avahi vulnerability {#usn-6129-2-avahi-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-1981](https://ubuntu.com/security/CVE-2023-1981) <!-- medium -->


### [[USN-6244-1](https://ubuntu.com/security/notices/USN-6244-1)] AMD Microcode vulnerability [05:57] {#usn-6244-1-amd-microcode-vulnerability-05-57}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-20593](https://ubuntu.com/security/CVE-2023-20593) <!-- high -->
-   Zenbleed - Tavis Ormandy (GPZ) discovered new hardware vuln via fuzzing of the
    ISA - great writeup on his blog - <https://lock.cmpxchg8b.com/zenbleed.html>
-   Only specific to AMD's Zen2 family of processors and is related to speculative
    execution - but unlike Spectre etc, speculative execution is not used as the
    attack primitive - instead for Zenbleed, the processor fails to properly clean
    up state after speculatively executing a particular vector register
    instruction - which then allows an attacker thread / process to read this data
    from the vector register - all comes about because these registers are not
    like the normal physical registers in the CPU, but instead are shared as a
    "Register File" - this sharing means that when one instruction gets
    speculatively executed, but which turns out to not actually be needed, it
    fails to properly clean up - and then leaks this data via the shared register
    file which can be read by another process which is executing at the same time
-   Tavis also released a handy PoC - requires the use of specific assembly
    language intructions and so it is not clear if this could be exploited
    remotely say via JS running a web-browser - but it definitely can be exploited
    by local users to spy on all other processes in the system (that use vector
    registers), including root / VMs etc
    -   What kinds of things use these vector registers? Turns out is is many, since
        glibc implements functions like strlen() using them - and this is a very
        common operation in all kinds of code
-   So basically anyone with local unprivileged code-access on an affected system
    could snoop on passwords etc
-   AMD released a microcode update to fix this - but only for server-oriented
    EPYC line of processors (code named "Rome") - so in that case all you need to
    do is install this microcode update and reboot and you are good.
-   But that still leaves a lot of other platforms without an official fix -
    according to their advisory they will release BIOS firmware updates for other
    affected processors later in the year
-   You can however set a so-called "chicken bit" in the processor which (as far
    as I can tell) instructs it to not execute this particular instruction
    out-of-order (ie not speculatively execute it) - AMD haven't actually said
    what this does but that is the assumption. As such, this does have an effect
    on performance, although it is not clear how much.

<!--listend-->

```shell
wrmsr -a 0xc0011029 $(($(rdmsr -c 0xc0011029) | (1<<9)))
```

-   Kernel developers have then developed a patch to automatically enable this
    chicken-bit if the associated microcode update is not present - for Ubuntu we
    plan to include this fix in the next round of kernel security updates, due on
    21st August


### [[LSN-0096-1](https://ubuntu.com/security/notices/LSN-0096-1)] Linux kernel vulnerability [11:47] {#lsn-0096-1-linux-kernel-vulnerability-11-47}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-35001](https://ubuntu.com/security/CVE-2023-35001) <!-- high -->
    -   [CVE-2023-31436](https://ubuntu.com/security/CVE-2023-31436) <!-- high -->
    -   [CVE-2023-31248](https://ubuntu.com/security/CVE-2023-31248) <!-- high -->
    -   [CVE-2023-30456](https://ubuntu.com/security/CVE-2023-30456) <!-- high -->
    -   [CVE-2023-1380](https://ubuntu.com/security/CVE-2023-1380) <!-- high -->
-   OOB write in netfilter -&gt; crash / code-exec - plus a UAF in netfilter as
    well - both require `CAP_NET_ADMIN` to exploit - but can get this in an
    unprivileged user namespace -&gt; privesc
-   Plus a bunch of vulns covered in previous episodes
    -   OOB read in the USB handling code for Broadcom FullMAC USB WiFi driver
    -   KVM mishandling of control registers for nested guest VMs
    -   OOB write in network queuing scheduler - also able to be triggered though an
        unprivileged user namespace

| Kernel type     | 22.04 | 20.04 | 18.04 | 16.04 | 14.04 |
|-----------------|-------|-------|-------|-------|-------|
| aws             | —     | 96.2  | —     | 96.2  | —     |
| aws-hwe         | —     | —     | —     | 96.2  | —     |
| azure           | 96.3  | 96.2  | —     | 96.2  | —     |
| azure-5.4       | —     | —     | 96.2  | —     | —     |
| gcp             | 96.3  | 96.2  | —     | 96.2  | —     |
| gcp-4.15        | —     | —     | 96.2  | —     | —     |
| gcp-5.15        | —     | 96.3  | —     | —     | —     |
| gcp-5.4         | —     | —     | 96.2  | —     | —     |
| generic-4.15    | —     | —     | 96.2  | 96.2  | —     |
| generic-4.4     | —     | —     | —     | 96.2  | 96.2  |
| generic-5.15    | —     | 96.3  | —     | —     | —     |
| generic-5.4     | —     | 96.2  | 96.2  | —     | —     |
| gke             | 96.3  | 96.2  | —     | —     | —     |
| gke-5.15        | —     | 96.3  | —     | —     | —     |
| gke-5.4         | —     | —     | 96.2  | —     | —     |
| gkeop           | —     | 96.2  | —     | —     | —     |
| gkeop-5.4       | —     | —     | 96.2  | —     | —     |
| ibm             | 96.3  | 96.2  | —     | —     | —     |
| ibm-5.4         | —     | —     | 96.2  | —     | —     |
| linux           | 96.3  | —     | —     | —     | —     |
| lowlatency-4.15 | —     | —     | 96.2  | 96.2  | —     |
| lowlatency-4.4  | —     | —     | —     | 96.2  | 96.2  |
| lowlatency-5.15 | —     | 96.3  | —     | —     | —     |
| lowlatency-5.4  | —     | 96.2  | 96.2  | —     | —     |


### [[USN-6246-1](https://ubuntu.com/security/notices/USN-6246-1)] Linux kernel vulnerabilities {#usn-6246-1-linux-kernel-vulnerabilities}

-   6 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-35001](https://ubuntu.com/security/CVE-2023-35001) <!-- high -->
    -   [CVE-2023-3439](https://ubuntu.com/security/CVE-2023-3439) <!-- medium -->
    -   [CVE-2023-3390](https://ubuntu.com/security/CVE-2023-3390) <!-- high -->
    -   [CVE-2023-3389](https://ubuntu.com/security/CVE-2023-3389) <!-- high -->
    -   [CVE-2023-31248](https://ubuntu.com/security/CVE-2023-31248) <!-- high -->
    -   [CVE-2023-3090](https://ubuntu.com/security/CVE-2023-3090) <!-- high -->


### [[USN-6247-1](https://ubuntu.com/security/notices/USN-6247-1)] Linux kernel (OEM) vulnerabilities {#usn-6247-1-linux-kernel--oem--vulnerabilities}

-   6 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-35001](https://ubuntu.com/security/CVE-2023-35001) <!-- high -->
    -   [CVE-2023-31248](https://ubuntu.com/security/CVE-2023-31248) <!-- high -->
    -   [CVE-2023-2860](https://ubuntu.com/security/CVE-2023-2860) <!-- medium -->
    -   [CVE-2022-47929](https://ubuntu.com/security/CVE-2022-47929) <!-- medium -->
    -   [CVE-2022-3635](https://ubuntu.com/security/CVE-2022-3635) <!-- negligible -->
    -   [CVE-2022-2663](https://ubuntu.com/security/CVE-2022-2663) <!-- medium -->


### [[USN-6248-1](https://ubuntu.com/security/notices/USN-6248-1)] Linux kernel (OEM) vulnerabilities {#usn-6248-1-linux-kernel--oem--vulnerabilities}

-   7 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-35001](https://ubuntu.com/security/CVE-2023-35001) <!-- high -->
    -   [CVE-2023-3389](https://ubuntu.com/security/CVE-2023-3389) <!-- high -->
    -   [CVE-2023-32629](https://ubuntu.com/security/CVE-2023-32629) <!-- high -->
    -   [CVE-2023-31248](https://ubuntu.com/security/CVE-2023-31248) <!-- high -->
    -   [CVE-2023-2640](https://ubuntu.com/security/CVE-2023-2640) <!-- high -->
    -   [CVE-2023-21106](https://ubuntu.com/security/CVE-2023-21106) <!-- high -->
    -   [CVE-2022-47929](https://ubuntu.com/security/CVE-2022-47929) <!-- medium -->


### [[USN-6249-1](https://ubuntu.com/security/notices/USN-6249-1)] Linux kernel (OEM) vulnerabilities {#usn-6249-1-linux-kernel--oem--vulnerabilities}

-   2 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-3389](https://ubuntu.com/security/CVE-2023-3389) <!-- high -->
    -   [CVE-2023-3269](https://ubuntu.com/security/CVE-2023-3269) <!-- high -->


### [[USN-6250-1](https://ubuntu.com/security/notices/USN-6250-1)] Linux kernel vulnerabilities {#usn-6250-1-linux-kernel-vulnerabilities}

-   8 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-35001](https://ubuntu.com/security/CVE-2023-35001) <!-- high -->
    -   [CVE-2023-3390](https://ubuntu.com/security/CVE-2023-3390) <!-- high -->
    -   [CVE-2023-3389](https://ubuntu.com/security/CVE-2023-3389) <!-- high -->
    -   [CVE-2023-3269](https://ubuntu.com/security/CVE-2023-3269) <!-- high -->
    -   [CVE-2023-32629](https://ubuntu.com/security/CVE-2023-32629) <!-- high -->
    -   [CVE-2023-31248](https://ubuntu.com/security/CVE-2023-31248) <!-- high -->
    -   [CVE-2023-3090](https://ubuntu.com/security/CVE-2023-3090) <!-- high -->
    -   [CVE-2023-2640](https://ubuntu.com/security/CVE-2023-2640) <!-- high -->


### [[USN-6251-1](https://ubuntu.com/security/notices/USN-6251-1)] Linux kernel vulnerabilities {#usn-6251-1-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-35001](https://ubuntu.com/security/CVE-2023-35001) <!-- high -->
    -   [CVE-2023-3390](https://ubuntu.com/security/CVE-2023-3390) <!-- high -->
    -   [CVE-2023-32629](https://ubuntu.com/security/CVE-2023-32629) <!-- high -->
    -   [CVE-2023-3090](https://ubuntu.com/security/CVE-2023-3090) <!-- high -->


### [[USN-6252-1](https://ubuntu.com/security/notices/USN-6252-1)] Linux kernel vulnerabilities {#usn-6252-1-linux-kernel-vulnerabilities}

-   13 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-35001](https://ubuntu.com/security/CVE-2023-35001) <!-- high -->
    -   [CVE-2023-3390](https://ubuntu.com/security/CVE-2023-3390) <!-- high -->
    -   [CVE-2023-3268](https://ubuntu.com/security/CVE-2023-3268) <!-- medium -->
    -   [CVE-2023-3141](https://ubuntu.com/security/CVE-2023-3141) <!-- low -->
    -   [CVE-2023-3111](https://ubuntu.com/security/CVE-2023-3111) <!-- medium -->
    -   [CVE-2023-3090](https://ubuntu.com/security/CVE-2023-3090) <!-- high -->
    -   [CVE-2023-2124](https://ubuntu.com/security/CVE-2023-2124) <!-- low -->
    -   [CVE-2023-1990](https://ubuntu.com/security/CVE-2023-1990) <!-- low -->
    -   [CVE-2023-1859](https://ubuntu.com/security/CVE-2023-1859) <!-- medium -->
    -   [CVE-2023-1670](https://ubuntu.com/security/CVE-2023-1670) <!-- low -->
    -   [CVE-2023-1611](https://ubuntu.com/security/CVE-2023-1611) <!-- low -->
    -   [CVE-2022-3303](https://ubuntu.com/security/CVE-2022-3303) <!-- medium -->
    -   [CVE-2022-1184](https://ubuntu.com/security/CVE-2022-1184) <!-- medium -->


### [[USN-6254-1](https://ubuntu.com/security/notices/USN-6254-1)] Linux kernel vulnerabilities {#usn-6254-1-linux-kernel-vulnerabilities}

-   12 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2023-35001](https://ubuntu.com/security/CVE-2023-35001) <!-- high -->
    -   [CVE-2023-3390](https://ubuntu.com/security/CVE-2023-3390) <!-- high -->
    -   [CVE-2023-3268](https://ubuntu.com/security/CVE-2023-3268) <!-- medium -->
    -   [CVE-2023-3161](https://ubuntu.com/security/CVE-2023-3161) <!-- medium -->
    -   [CVE-2023-3159](https://ubuntu.com/security/CVE-2023-3159) <!-- low -->
    -   [CVE-2023-3141](https://ubuntu.com/security/CVE-2023-3141) <!-- low -->
    -   [CVE-2023-3090](https://ubuntu.com/security/CVE-2023-3090) <!-- high -->
    -   [CVE-2023-2513](https://ubuntu.com/security/CVE-2023-2513) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-2124](https://ubuntu.com/security/CVE-2023-2124) <!-- low -->
    -   [CVE-2023-1611](https://ubuntu.com/security/CVE-2023-1611) <!-- low -->
    -   [CVE-2023-0458](https://ubuntu.com/security/CVE-2023-0458) <!-- medium -->


### [[USN-6255-1](https://ubuntu.com/security/notices/USN-6255-1)] Linux kernel (Intel IoTG) vulnerabilities {#usn-6255-1-linux-kernel--intel-iotg--vulnerabilities}

-   6 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-35001](https://ubuntu.com/security/CVE-2023-35001) <!-- high -->
    -   [CVE-2023-3439](https://ubuntu.com/security/CVE-2023-3439) <!-- medium -->
    -   [CVE-2023-3390](https://ubuntu.com/security/CVE-2023-3390) <!-- high -->
    -   [CVE-2023-3389](https://ubuntu.com/security/CVE-2023-3389) <!-- high -->
    -   [CVE-2023-31248](https://ubuntu.com/security/CVE-2023-31248) <!-- high -->
    -   [CVE-2023-3090](https://ubuntu.com/security/CVE-2023-3090) <!-- high -->


### [[USN-6256-1](https://ubuntu.com/security/notices/USN-6256-1)] Linux kernel (IoT) vulnerabilities {#usn-6256-1-linux-kernel--iot--vulnerabilities}

-   32 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-35788](https://ubuntu.com/security/CVE-2023-35788) <!-- high -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-32233](https://ubuntu.com/security/CVE-2023-32233) <!-- high -->
    -   [CVE-2023-3161](https://ubuntu.com/security/CVE-2023-3161) <!-- medium -->
    -   [CVE-2023-31436](https://ubuntu.com/security/CVE-2023-31436) <!-- high -->
    -   [CVE-2023-30456](https://ubuntu.com/security/CVE-2023-30456) <!-- high -->
    -   [CVE-2023-2985](https://ubuntu.com/security/CVE-2023-2985) <!-- medium -->
    -   [CVE-2023-26545](https://ubuntu.com/security/CVE-2023-26545) <!-- medium -->
    -   [CVE-2023-2612](https://ubuntu.com/security/CVE-2023-2612) <!-- medium -->
    -   [CVE-2023-25012](https://ubuntu.com/security/CVE-2023-25012) <!-- low -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-1998](https://ubuntu.com/security/CVE-2023-1998) <!-- medium -->
    -   [CVE-2023-1859](https://ubuntu.com/security/CVE-2023-1859) <!-- medium -->
    -   [CVE-2023-1829](https://ubuntu.com/security/CVE-2023-1829) <!-- high -->
    -   [CVE-2023-1670](https://ubuntu.com/security/CVE-2023-1670) <!-- low -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-1380](https://ubuntu.com/security/CVE-2023-1380) <!-- high -->
    -   [CVE-2023-1281](https://ubuntu.com/security/CVE-2023-1281) <!-- high -->
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-1079](https://ubuntu.com/security/CVE-2023-1079) <!-- low -->
    -   [CVE-2023-1078](https://ubuntu.com/security/CVE-2023-1078) <!-- medium -->
    -   [CVE-2023-1077](https://ubuntu.com/security/CVE-2023-1077) <!-- medium -->
    -   [CVE-2023-1076](https://ubuntu.com/security/CVE-2023-1076) <!-- medium -->
    -   [CVE-2023-1075](https://ubuntu.com/security/CVE-2023-1075) <!-- medium -->
    -   [CVE-2023-1074](https://ubuntu.com/security/CVE-2023-1074) <!-- medium -->
    -   [CVE-2023-1073](https://ubuntu.com/security/CVE-2023-1073) <!-- medium -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
    -   [CVE-2023-0458](https://ubuntu.com/security/CVE-2023-0458) <!-- medium -->
    -   [CVE-2022-4129](https://ubuntu.com/security/CVE-2022-4129) <!-- medium -->
    -   [CVE-2022-3903](https://ubuntu.com/security/CVE-2022-3903) <!-- low -->
    -   [CVE-2022-3707](https://ubuntu.com/security/CVE-2022-3707) <!-- medium -->
    -   [CVE-2022-3108](https://ubuntu.com/security/CVE-2022-3108) <!-- medium -->


### [[USN-6260-1](https://ubuntu.com/security/notices/USN-6260-1)] Linux kernel vulnerabilities {#usn-6260-1-linux-kernel-vulnerabilities}

-   9 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-35001](https://ubuntu.com/security/CVE-2023-35001) <!-- high -->
    -   [CVE-2023-3390](https://ubuntu.com/security/CVE-2023-3390) <!-- high -->
    -   [CVE-2023-3389](https://ubuntu.com/security/CVE-2023-3389) <!-- high -->
    -   [CVE-2023-32629](https://ubuntu.com/security/CVE-2023-32629) <!-- high -->
    -   [CVE-2023-3141](https://ubuntu.com/security/CVE-2023-3141) <!-- low -->
    -   [CVE-2023-31248](https://ubuntu.com/security/CVE-2023-31248) <!-- high -->
    -   [CVE-2023-3090](https://ubuntu.com/security/CVE-2023-3090) <!-- high -->
    -   [CVE-2023-2640](https://ubuntu.com/security/CVE-2023-2640) <!-- high -->
    -   [CVE-2022-48502](https://ubuntu.com/security/CVE-2022-48502) <!-- medium -->


### [[USN-6261-1](https://ubuntu.com/security/notices/USN-6261-1)] Linux kernel (IoT) vulnerabilities {#usn-6261-1-linux-kernel--iot--vulnerabilities}

-   4 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-35001](https://ubuntu.com/security/CVE-2023-35001) <!-- high -->
    -   [CVE-2023-3390](https://ubuntu.com/security/CVE-2023-3390) <!-- high -->
    -   [CVE-2023-32629](https://ubuntu.com/security/CVE-2023-32629) <!-- high -->
    -   [CVE-2023-3090](https://ubuntu.com/security/CVE-2023-3090) <!-- high -->


### [[USN-6245-1](https://ubuntu.com/security/notices/USN-6245-1)] Trove vulnerabilities {#usn-6245-1-trove-vulnerabilities}

-   Affecting Jammy (22.04 LTS)


### [[USN-5807-3](https://ubuntu.com/security/notices/USN-5807-3)] libXpm vulnerability {#usn-5807-3-libxpm-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2022-46285](https://ubuntu.com/security/CVE-2022-46285) <!-- medium -->


### [[USN-6253-1](https://ubuntu.com/security/notices/USN-6253-1)] libvirt vulnerability {#usn-6253-1-libvirt-vulnerability}

-   1 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-3750](https://ubuntu.com/security/CVE-2023-3750) <!-- medium -->


### [[USN-6257-1](https://ubuntu.com/security/notices/USN-6257-1)] Open VM Tools vulnerability {#usn-6257-1-open-vm-tools-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-20867](https://ubuntu.com/security/CVE-2023-20867) <!-- low -->


### [[USN-6258-1](https://ubuntu.com/security/notices/USN-6258-1)] LLVM Toolchain vulnerabilities {#usn-6258-1-llvm-toolchain-vulnerabilities}

-   4 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-29933](https://ubuntu.com/security/CVE-2023-29933) <!-- medium -->
    -   [CVE-2023-29939](https://ubuntu.com/security/CVE-2023-29939) <!-- medium -->
    -   [CVE-2023-29934](https://ubuntu.com/security/CVE-2023-29934) <!-- medium -->
    -   [CVE-2023-29932](https://ubuntu.com/security/CVE-2023-29932) <!-- medium -->


### [[USN-5193-3](https://ubuntu.com/security/notices/USN-5193-3)] X.Org X Server vulnerabilities {#usn-5193-3-x-dot-org-x-server-vulnerabilities}

-   3 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-4011](https://ubuntu.com/security/CVE-2021-4011) <!-- medium -->
    -   [CVE-2021-4009](https://ubuntu.com/security/CVE-2021-4009) <!-- medium -->
    -   [CVE-2021-4008](https://ubuntu.com/security/CVE-2021-4008) <!-- medium -->


### [[USN-6259-1](https://ubuntu.com/security/notices/USN-6259-1)] Open-iSCSI vulnerabilities {#usn-6259-1-open-iscsi-vulnerabilities}

-   3 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2020-17437](https://ubuntu.com/security/CVE-2020-17437) <!-- low -->
    -   [CVE-2020-13988](https://ubuntu.com/security/CVE-2020-13988) <!-- low -->
    -   [CVE-2020-13987](https://ubuntu.com/security/CVE-2020-13987) <!-- low -->


### [[USN-6262-1](https://ubuntu.com/security/notices/USN-6262-1)] Wireshark vulnerabilities {#usn-6262-1-wireshark-vulnerabilities}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2020-25863](https://ubuntu.com/security/CVE-2020-25863) <!-- medium -->
    -   [CVE-2020-25862](https://ubuntu.com/security/CVE-2020-25862) <!-- medium -->
    -   [CVE-2020-17498](https://ubuntu.com/security/CVE-2020-17498) <!-- medium -->
    -   [CVE-2020-15466](https://ubuntu.com/security/CVE-2020-15466) <!-- low -->
    -   [CVE-2020-13164](https://ubuntu.com/security/CVE-2020-13164) <!-- low -->


### [[USN-6265-1](https://ubuntu.com/security/notices/USN-6265-1)] RabbitMQ vulnerability {#usn-6265-1-rabbitmq-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2017-4966](https://ubuntu.com/security/CVE-2017-4966) <!-- low -->


### [[USN-6264-1](https://ubuntu.com/security/notices/USN-6264-1)] WebKitGTK vulnerabilities {#usn-6264-1-webkitgtk-vulnerabilities}

-   6 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-37450](https://ubuntu.com/security/CVE-2023-37450) <!-- medium -->
    -   [CVE-2023-32439](https://ubuntu.com/security/CVE-2023-32439) <!-- medium -->
    -   [CVE-2023-32435](https://ubuntu.com/security/CVE-2023-32435) <!-- medium -->
    -   [CVE-2023-32393](https://ubuntu.com/security/CVE-2023-32393) <!-- medium -->
    -   [CVE-2023-32373](https://ubuntu.com/security/CVE-2023-32373) <!-- medium -->
    -   [CVE-2023-28204](https://ubuntu.com/security/CVE-2023-28204) <!-- medium -->


### [[USN-6263-1](https://ubuntu.com/security/notices/USN-6263-1)] OpenJDK vulnerabilities {#usn-6263-1-openjdk-vulnerabilities}

-   7 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-25193](https://ubuntu.com/security/CVE-2023-25193) <!-- low -->
    -   [CVE-2023-22049](https://ubuntu.com/security/CVE-2023-22049) <!-- medium -->
    -   [CVE-2023-22045](https://ubuntu.com/security/CVE-2023-22045) <!-- medium -->
    -   [CVE-2023-22044](https://ubuntu.com/security/CVE-2023-22044) <!-- medium -->
    -   [CVE-2023-22041](https://ubuntu.com/security/CVE-2023-22041) <!-- medium -->
    -   [CVE-2023-22036](https://ubuntu.com/security/CVE-2023-22036) <!-- medium -->
    -   [CVE-2023-22006](https://ubuntu.com/security/CVE-2023-22006) <!-- medium -->


### [[USN-6266-1](https://ubuntu.com/security/notices/USN-6266-1)] librsvg vulnerability [13:55] {#usn-6266-1-librsvg-vulnerability-13-55}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-38633](https://ubuntu.com/security/CVE-2023-38633) <!-- medium -->
-   Directory traversal vuln - arbitrary file read by using a specially crafted
    `include` element that specifies say `<xi:include
        href=”.?../../../../../../../../../../etc/passwd”/>` - simple PoC provided by
    the upstream reporter


### [[USN-6267-1](https://ubuntu.com/security/notices/USN-6267-1)] Firefox vulnerabilities [14:47] {#usn-6267-1-firefox-vulnerabilities-14-47}

-   12 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-4050](https://ubuntu.com/security/CVE-2023-4050) <!-- medium -->
    -   [CVE-2023-4046](https://ubuntu.com/security/CVE-2023-4046) <!-- medium -->
    -   [CVE-2023-4045](https://ubuntu.com/security/CVE-2023-4045) <!-- medium -->
    -   [CVE-2023-4058](https://ubuntu.com/security/CVE-2023-4058) <!-- medium -->
    -   [CVE-2023-4057](https://ubuntu.com/security/CVE-2023-4057) <!-- medium -->
    -   [CVE-2023-4056](https://ubuntu.com/security/CVE-2023-4056) <!-- medium -->
    -   [CVE-2023-4055](https://ubuntu.com/security/CVE-2023-4055) <!-- medium -->
    -   [CVE-2023-4053](https://ubuntu.com/security/CVE-2023-4053) <!-- medium -->
    -   [CVE-2023-4051](https://ubuntu.com/security/CVE-2023-4051) <!-- medium -->
    -   [CVE-2023-4049](https://ubuntu.com/security/CVE-2023-4049) <!-- medium -->
    -   [CVE-2023-4048](https://ubuntu.com/security/CVE-2023-4048) <!-- medium -->
    -   [CVE-2023-4047](https://ubuntu.com/security/CVE-2023-4047) <!-- medium -->
-   116.0


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Andrei discusses safeguarding machine learning infrastructure when used in distributed applications [15:05] {#andrei-discusses-safeguarding-machine-learning-infrastructure-when-used-in-distributed-applications-15-05}

-   <https://arxiv.org/abs/2101.02281>
-   <https://www.usenix.org/system/files/sec22-nguyen.pdf>
-   <https://www.youtube.com/watch?v=nMrte2S9U68>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
