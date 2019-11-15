+++
title = "Episode 19"
description = "This week we look at updates to the Linux kernel in preparation for the 18.04.2 release, plus updates for Open vSwitch, Firefox, Avahi, LibVNCServer and more. We also revisit and discuss upstream changes to the mincore() system call to thwart page-cache side-channel attacks first discussed in [Episode 17](https://ubuntusecuritypodcast.org/episode-17/)."
date = 2019-02-04
lastmod = 2019-11-15T18:22:33+10:30
draft = false
weight = 1035
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E019.mp3"
podcast_duration = "14:49"
podcast_bytes = 14236655
permalink = "https://ubuntusecuritypodcast.org/episode-19/"
+++

## Overview {#overview}

This week we look at updates to the Linux kernel in preparation for the 18.04.2 release, plus updates for Open vSwitch, Firefox, Avahi, LibVNCServer and more. We also revisit and discuss upstream changes to the mincore() system call to thwart page-cache side-channel attacks first discussed in [Episode 17](https://ubuntusecuritypodcast.org/episode-17/).


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

40 unique CVEs addressed


### [[USN-3870-1](https://usn.ubuntu.com/3870-1/)] Spice vulnerability {#usn-3870-1-spice-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-3813](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3813)
-   Out-of-bounds read - off-by-one - likely crash on segmentation violation but possible code-execution


### [[USN-3871-1](https://usn.ubuntu.com/3871-1/)] Linux kernel vulnerabilities {#usn-3871-1-linux-kernel-vulnerabilities}

-   13 CVEs addressed in Bionic
    -   [CVE-2018-9516](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-9516)
    -   [CVE-2018-19407](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19407)
    -   [CVE-2018-18281](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18281)
    -   [CVE-2018-17972](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17972)
    -   [CVE-2018-16882](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16882)
    -   [CVE-2018-14625](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14625)
    -   [CVE-2018-10883](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10883)
    -   [CVE-2018-10880](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10880)
    -   [CVE-2018-10882](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10882)
    -   [CVE-2018-10878](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10878)
    -   [CVE-2018-10877](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10877)
    -   [CVE-2018-10879](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10879)
    -   [CVE-2018-10876](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10876)
-   NULL pointer dereference in KVM able to be triggered by a local user (crash -> DoS)
-   mremap() TLB flush leaving stale entries in page cache - covered previously in [Episode 15](https://ubuntusecuritypodcast.org/episode-15/)
-   [Episode 15](https://ubuntusecuritypodcast.org/episode-15/) covered CVE-2018-17972 (procfs kernel stack disclosure)
-   UAF in KVM when using nested virtualisation (not enabled by default for Ubuntu kernels) able to be trigered by gust VM to crash host (DoS) or possibly elevate privileges etc.
-   Race condition between connect() and close() in AF\_VSOCK (used for communication between guest and host machines) could allow to read 4 bytes of memory (UAF) from host kernel or possibly corrupt other AF\_VSOCK messages to other guests - information leak
-   7 ext4 issues discovered by Wen Xu (fuzzing ext4 with KASAN enabled):
    -   OOB write during update of journal metadata when mounting specially crafted ext4 image - crash -> DoS (privilege esc?)
    -   OOB write to stack when processing xattrs of specially crafted ext4 image - crash -> DoS
    -   OOB write when mounting
    -   OOB write unmounting specially crafted ext4 image
    -   OOB read when mounting
    -   UAF when processing xattrs of renamed file in specially crafted image
    -   General UAF when mouting a specially crafted image
    -   Reproducers provided in upstream kernel bug reports


### [[USN-3872-1](https://usn.ubuntu.com/3872-1/)] Linux kernel (HWE) vulnerabilities {#usn-3872-1-linux-kernel--hwe--vulnerabilities}

-   4 CVEs addressed in Bionic
    -   [CVE-2018-19854](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19854)
    -   [CVE-2018-19407](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19407)
    -   [CVE-2018-16882](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16882)
    -   [CVE-2018-14625](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14625)
-   Info leak from crypto subsystem - regression of CVE-2013-2547 - fail to fully initialise structure members copied to userspace - unlike CVE-2013-2547, able to be exploited by a standard user without any capabilities
-   Failure to ensure ioapics were initialised - possible NULL pointer dereference -> crash -> DoS
-   KVM UAF w/ nested virtualisation and AF\_VSOCK race condition UAF


### [[USN-3873-1](https://usn.ubuntu.com/3873-1/)] Open vSwitch vulnerabilities {#usn-3873-1-open-vswitch-vulnerabilities}

-   3 CVEs addressed in Xenial, Bionic
    -   [CVE-2018-17206](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17206)
    -   [CVE-2018-17205](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17205)
    -   [CVE-2018-17204](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17204)
-   Remotely triggerable OOB read and 2 different assertion failures -> crash -> DoS


### [[USN-3874-1](https://usn.ubuntu.com/3874-1/)] Firefox vulnerabilities {#usn-3874-1-firefox-vulnerabilities}

-   7 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-18506](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18506)
    -   [CVE-2018-18505](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18505)
    -   [CVE-2018-18504](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18504)
    -   [CVE-2018-18503](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18503)
    -   [CVE-2018-18502](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18502)
    -   [CVE-2018-18501](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18501)
    -   [CVE-2018-18500](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18500)
-   Firefox 65 for all supported platforms
    -   Proxy autoconfig file (PAC) could allow proxy requests to localhost to go via remote proxy - **if** enabled proxy-autodetection - then possible for remote attacker to conduct attacks against local services etc
    -   Various memory safety issues - crash -> DoS, UAF, code execution
    -   Sandbox escape via IPC channels due to failure to properly apply authentication to IPC channels in some situations
        -   IPC channels used in new multiprocess architecture etc


### [[USN-3875-1](https://usn.ubuntu.com/3875-1/)] OpenJDK vulnerability {#usn-3875-1-openjdk-vulnerability}

-   1 CVEs addressed in Xenial, Cosmic
    -   [CVE-2019-2422](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2422)
-   Info leak from Java SE VM in OpenJDK library subsystem able to be triggered by a remote attacker - possible sandbox bypass as well


### [[USN-3876-1](https://usn.ubuntu.com/3876-1/), USN-3876-2] Avahi vulnerabilities {#usn-3876-1-usn-3876-2-avahi-vulnerabilities}

-   2 CVEs addressed in Precise ESM, Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-1000845](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000845)
    -   [CVE-2017-6519](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-6519)
-   Both the same vulnerability - duplicate CVE
-   Traffic reflection and amplification - possible to leverage for DDoS attack since avahi-daemon would inadvertently respond to unicast IPv6 queries to source addresses which were not on the local link


### [[USN-3877-1](https://usn.ubuntu.com/3877-1/)] LibVNCServer vulnerabilities {#usn-3877-1-libvncserver-vulnerabilities}

-   12 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-6307](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-6307)
    -   [CVE-2018-20750](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20750)
    -   [CVE-2018-20749](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20749)
    -   [CVE-2018-20748](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20748)
    -   [CVE-2018-20024](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20024)
    -   [CVE-2018-20023](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20023)
    -   [CVE-2018-20022](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20022)
    -   [CVE-2018-20021](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20021)
    -   [CVE-2018-20020](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20020)
    -   [CVE-2018-20019](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20019)
    -   [CVE-2018-15127](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15127)
    -   [CVE-2018-15126](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15126)
-   Various memory management issues:
    -   Heap UAF -> crash -> DoS, possible RCE in server from malicious client
    -   Heap OOB write (incomplete fix for previous CVE-2018-15127) - crash -> DoS, possible RCE
    -   Multiple heap OOB writes in client (incomplete fix for previous CVE-2018-20019)
    -   NULL pointer dereferences in client -> crash -> DoS
    -   Failure to properly initialise structures on stack -> info leak, possible ASLR bypass (disclose stack memory layout)
    -   Infinite loop in client -> DoS


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### An update on mincore() {#an-update-on-mincore}

-   In [Episode 17](https://ubuntusecuritypodcast.org/episode-17/) discussed changes to mincore() mitigate page cache side-channel attack
-   Linus Torvalds committed a change to change the behaviour of mincore() to mitigate the vulnerability
-   [Recently reverted that change](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=30bac164aca750892b93eef350439a0562a68647) citing too much breakage to existing users:
    -   In particular Netflix have a use-case where they dump page cache across processes to aid in migration of Cassandra workloads across machines
-   Instead an alternate approach to limit cache residency reporting only to processes which have write access to the particular file in question
    -   ie. so if a process has write access to a file which it has open for writing it will be able to read back from mincore() which pages are mapped in the cache and which are not - so will still work for the Netflix and others case of databases wanting to know which pages are mapped or not from disk
    -   will stop the case of being able to know which pages of shared system libraries etc are mapped and hence stop the original side-channel attack
    -   [patches not yet submitted for mm tree or others but should be soon](https://git.kernel.org/pub/scm/linux/kernel/git/jikos/jikos.git/log/?h=pagecache-sidechannel-v2)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)