+++
title = "Episode 27"
description = "Carpe Diem for Apache HTTP Server, plus updates for Dovecot, PolicyKit and the Linux kernel, and we talk to Joe McManus about the recent Asus ShadowHammer supply chain attack and more."
date = 2019-04-08
lastmod = 2019-08-14T21:21:53+09:30
draft = false
weight = 1016
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E027.mp3"
podcast_duration = "29:53"
podcast_bytes = 28697625
permalink = "https://ubuntusecuritypodcast.org/episode-27/"
+++

## Overview {#overview}

Carpe Diem for Apache HTTP Server, plus updates for Dovecot, PolicyKit and the Linux kernel, and we talk to Joe McManus about the recent Asus ShadowHammer supply chain attack and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

52 unique CVEs addressed


### [[USN-3928-1](https://usn.ubuntu.com/3928-1/)] Dovecot vulnerability {#usn-3928-1-dovecot-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-7524](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7524)
-   Local user root privilege escalation
    -   Stack buffer overflow - indexer-worker processes missing bounds check when copying from the index
    -   If local user can modify the dovecot index then could leverage this
        for code-execution in the indexer process context
    -   Mitigated by usual hardening techniques (ASLR, stack-protector,
        read-only GOT (via RELRO & BIND\_NOW))


### [[USN-3929-1](https://usn.ubuntu.com/3929-1/)] Firebird vulnerabilities {#usn-3929-1-firebird-vulnerabilities}

-   2 CVEs addressed in Trusty
    -   [CVE-2017-6369](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-6369)
    -   [CVE-2014-9323](https://people.canonical.com/~ubuntu-security/cve/CVE-2014-9323)
-   Remote authenticated users execute code
-   Remote un-authenticated user DoS via op\_response action with a non-empty status


### [[USN-3934-1](https://usn.ubuntu.com/3934-1/)] PolicyKit vulnerability {#usn-3934-1-policykit-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-6133](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6133)
-   [Episode 23](https://ubuntusecuritypodcast.org/episode-23/) - fixed kernel to make process start\_time via fork() more atomic
-   Updated policykit to also check UIDs match (so now checks start\_time,
    PID and UID so can't use another user's authorisations)


### [[USN-3935-1](https://usn.ubuntu.com/3935-1/)] BusyBox vulnerabilities {#usn-3935-1-busybox-vulnerabilities}

-   10 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-5747](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5747)
    -   [CVE-2018-20679](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20679)
    -   [CVE-2018-1000517](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000517)
    -   [CVE-2017-16544](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-16544)
    -   [CVE-2017-15873](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-15873)
    -   [CVE-2016-2148](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-2148)
    -   [CVE-2016-2147](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-2147)
    -   [CVE-2015-9261](https://people.canonical.com/~ubuntu-security/cve/CVE-2015-9261)
    -   [CVE-2014-9645](https://people.canonical.com/~ubuntu-security/cve/CVE-2014-9645)
    -   [CVE-2011-5325](https://people.canonical.com/~ubuntu-security/cve/CVE-2011-5325)
-   Mix of issues across various components in BusyBox
    -   udhcpc:
        -   Information disclosure of stack memory in dhcp client / server
            (shared component) due to failure to check DHCP options are correct
            size - original fix was incomplete so this got 2 CVEs
        -   Heap buffer overflow via DHCP option parsing of OPTION\_6RD (IPv6
            rapid deployment on IPv4 infra)
        -   Integer overflow -> heap-based OOB write -> crash -> DoS / code
            execution
    -   wget:
        -   Heap buffer overflow in wget
    -   shell:
        -   Failure to sanitize filenames during tab completion - could allow
            code execution etc as user who is running the shell
    -   archive handling
        -   Integer overflow in bzip2 decompression - OOB write - crash -> DoS
            / code execution?
        -   Pointer misuse in zip decompression - OOB read - crash -> DoS
        -   directory traversal due to symlinks which point outside the
            current working directory when decompressing tar archives
            (tyhicks)
    -   module loading
        -   allows users to load modules which are otherwise restricted -
            assumes modules could specify the path so uses basename() on the
            module name - so just need to include a / in the module name to
            circumvent other checks


### [[USN-3937-1](https://usn.ubuntu.com/3937-1/)] Apache HTTP Server vulnerabilities {#usn-3937-1-apache-http-server-vulnerabilities}

-   6 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-0220](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0220)
    -   [CVE-2019-0217](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0217)
    -   [CVE-2019-0196](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0196)
    -   [CVE-2018-17199](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17199)
    -   [CVE-2018-17189](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17189)
    -   [CVE-2019-0211](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0211)
-   "Carpe Diem" and others
    -   Local root privilege escalation due to an OOB array access resulting
        in arbitrary function call when apache gracefully restarts - done
        daily via logrotate at 6:25am
        -   affects mod\_prefork, mod\_worker and mod\_event
        -   main server (running as root) shares a memory segment (the
            scoreboard) with low-privileged worker processes
        -   PID, last request handled etc - maintained by the worker
        -   worker stores an index into global buckets array in the privileged parent
        -   this gets used on restart to restart the worker but no check is done to ensure this is valid
        -   so since is in shm child can change this index to ensure it points back into the shm segment where it has write access
        -   the bucket contains a function pointer to restart worker - so
            since this is now indexed from the shm segment can make this point
            to any function of choice - AND this gets executed as root by the
            parent
        -   Requires some other bug to turn this into a remote exploit since
            need to get R/W access remotely on a worker process
    -   Failure to normalize URLs in a consistent manner - LocationMatch and
        RewriteRule might not get applied correctly
    -   Race condition in mod\_auth\_digest could allow user with valid
        credentials to impersonate another and bypass access controls
    -   read after free on string comparison in mod\_http2 - crash, DoS
    -   failure to respect session expiry time in mod\_session\_cookie
    -   DoS via slow-loris type attack to occupy server threads


### [[USN-3936-1](https://usn.ubuntu.com/3936-1/)] AdvanceCOMP vulnerability {#usn-3936-1-advancecomp-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-9210](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9210)
-   Integer overflow when decompressing invalid PNG images - OOB write and
    heap OOB read


### [[USN-3930-1](//usn.ubuntu.com/3930-1/), USN-3930-2] Linux kernel vulnerabilities {#usn-3930-1--usn-dot-ubuntu-dot-com-3930-1--usn-3930-2-linux-kernel-vulnerabilities}

-   13 CVEs addressed in Cosmic and Bionic (HWE)
    -   [CVE-2019-9213](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9213)
    -   [CVE-2019-9162](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9162)
    -   [CVE-2019-9003](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9003)
    -   [CVE-2019-8980](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8980)
    -   [CVE-2019-8956](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8956)
    -   [CVE-2019-8912](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8912)
    -   [CVE-2019-7308](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7308)
    -   [CVE-2019-7222](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7222)
    -   [CVE-2019-7221](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7221)
    -   [CVE-2019-6974](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6974)
    -   [CVE-2019-3460](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3460)
    -   [CVE-2019-3459](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3459)
    -   [CVE-2018-19824](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19824)
-   Jann Horn (GPZ):
    -   mmap minimum address bypass - could allow to turn a kernel NULL
        pointer dereference into code execution
    -   ASN.1 decoding for SNMP NAT missing length checks - OOB R/W possible
    -   side-channel attack due to speculation on pointer arithmetic in eBPF
        programs (Spectre V1)
        -   mitigated when secure boot due to lockdown patches blocking BPF
            program loading
    -   Reference counting race-condition in KVM -> UAF -> guest VM crash
-   UAF + OOPS in IPMI due to race-condition on restart
-   Memory leak on error path of vfs read operations -> DoS
-   UAF in SCTP sendmsg - crash / code execution
-   UAF in AF\_ALG due to failure to NULL structure members
    -   Originally misclassified by NVD as remotely exploitable, confusion
        over socket() use by crypto API?
-   Info leak and a UAF in KVM when using nested virtualisation - not
    enabled by default in Ubuntu kernels unless if install QEMU - this is
    enabled automatically
-   2 different information leak of heap memory in bluetooth subsystem
    triggerable by unauthenticated remote attacker
-   UAF in ALSA USB sound device handling mentioned in [Episode 20](https://ubuntusecuritypodcast.org/episode-20/)


### [[USN-3931-1](https://usn.ubuntu.com/3931-1/), USN-3931-2] Linux kernel vulnerabilities {#usn-3931-1-usn-3931-2-linux-kernel-vulnerabilities}

-   12 CVEs addressed in Bionic, Trusty (HWE) and Xenial (HWE)
    -   [CVE-2019-9213](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9213)
    -   [CVE-2019-8980](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8980)
    -   [CVE-2019-8912](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8912)
    -   [CVE-2019-7308](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7308)
    -   [CVE-2019-7222](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7222)
    -   [CVE-2019-7221](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7221)
    -   [CVE-2019-6974](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6974)
    -   [CVE-2019-3460](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3460)
    -   [CVE-2019-3459](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3459)
    -   [CVE-2018-19824](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19824)
    -   [CVE-2018-18021](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18021)
    -   [CVE-2018-14678](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14678)
-   10 from above, 2 unique:
    -   Potential host system crash / code execution from malicious guest
        for KVM on ARM64 as mentioned previously in [Episode 12](https://ubuntusecuritypodcast.org/episode-12/)
    -   Failure to properly initialise all elements of error handler
        callback in Xen - guest VM crash triggerable by an unprivileged
        attacker in the guest VM


### [[USN-3932-1](https://usn.ubuntu.com/3932-1/), USN-3932-2] Linux kernel vulnerabilities {#usn-3932-1-usn-3932-2-linux-kernel-vulnerabilities}

-   20 CVEs addressed in Xenial and Trusty (HWE)
    -   [CVE-2019-3819](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3819)
    -   [CVE-2019-3701](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3701)
    -   [CVE-2018-9517](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-9517)
    -   [CVE-2018-16884](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16884)
    -   [CVE-2018-14613](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14613)
    -   [CVE-2018-14612](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14612)
    -   [CVE-2018-14611](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14611)
    -   [CVE-2018-14610](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14610)
    -   [CVE-2018-14616](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14616)
    -   [CVE-2018-14614](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14614)
    -   [CVE-2018-13100](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13100)
    -   [CVE-2018-13099](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13099)
    -   [CVE-2018-13097](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13097)
    -   [CVE-2017-18249](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-18249)
    -   [CVE-2019-9213](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9213)
    -   [CVE-2019-7222](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7222)
    -   [CVE-2019-7221](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7221)
    -   [CVE-2019-6974](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6974)
    -   [CVE-2019-3460](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3460)
    -   [CVE-2019-3459](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3459)
-   2 DoS triggerable by root (low priority issue)
-   UAF in PPP over L2TP
-   UAF in NFS41+ when using multiple network namespaces
-   4 different NULL pointer dereferences in btrfs via malicious image
-   Race condition and various reads of invalid memory areas when mounting
    malicious f2fs images
-   mmap min address bypass and others mentioned previously plus
    (bluetooth, kvm etc)


### [[USN-3933-1](https://usn.ubuntu.com/3933-1/), USN-3933-2] Linux kernel vulnerabilities {#usn-3933-1-usn-3933-2-linux-kernel-vulnerabilities}

-   8 CVEs addressed in Trusty and Precise ESM (HWE)
    -   [CVE-2019-9213](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9213)
    -   [CVE-2019-7222](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7222)
    -   [CVE-2019-6974](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6974)
    -   [CVE-2019-3460](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3460)
    -   [CVE-2019-3459](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3459)
    -   [CVE-2018-19824](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19824)
    -   [CVE-2017-18360](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-18360)
    -   [CVE-2017-1000410](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-1000410)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Supply chain attacks and Ubuntu {#supply-chain-attacks-and-ubuntu}

-   Alex and Joe discuss recent Asus ShadowHammer supply chain attack and how this relates to Ubuntu
    -   <https://securelist.com/operation-shadowhammer/89992/>
    -   <https://www.forbes.com/sites/jasonevangelho/2019/03/29/shadowhammer-asus-1-million-reasons-switch-from-windows-to-linux/>
    -   <https://www.synopsys.com/content/dam/synopsys/sig-assets/reports/2018-ossra.pdf>
    -   <http://go.coverity.com/rs/157-LQW-289/images/2014-Coverity-Scan-Report.pdf>


### Hiring {#hiring}


#### Ubuntu Security Generalist {#ubuntu-security-generalist}

-   <https://boards.greenhouse.io/canonical/jobs/1548812>


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net?channels=#ubuntu-hardened&uio=d4)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)