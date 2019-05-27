+++
title = "Episode 32"
description = """
  This week we look at updates to cover the latest Intel CPU vulnerabilities
  (MDS - aka RIDL, Fallout, ZombieLoad), plus other vulnerabilies in
  PostgreSQL, ISC DHCP, Samba and more, whilst special guest this week is
  Seth Arnold from the Ubuntu Security Team to talk Main Inclusion Review
  code audits.
  """
date = 2019-05-20
lastmod = 2019-05-27T20:02:23+09:30
draft = false
weight = 1002
episode_image = "img/episode/default.png"
explicit = "no"
podcast_file = "USP_E032.mp3"
podcast_duration = "23:58"
podcast_bytes = 23243580
permalink = "https://ubuntusecuritypodcast.org/episode-32/"
+++

## Overview {#overview}

This week we look at updates to cover the latest Intel CPU vulnerabilities
(MDS - aka RIDL, Fallout, ZombieLoad), plus other vulnerabilies in
PostgreSQL, ISC DHCP, Samba and more, whilst special guest this week is
Seth Arnold from the Ubuntu Security Team to talk Main Inclusion Review
code audits.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

37 unique CVEs addressed


### [[USN-3972-1](https://usn.ubuntu.com/3972-1/)] PostgreSQL vulnerabilities {#usn-3972-1-postgresql-vulnerabilities}

-   2 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-10130](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10130)
    -   [CVE-2019-10129](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10129)
-   Stores statistics for columns by sampling values from that column
    -   Security policy allows to restrict users from viewing particular rows
    -   But sampling would not take into account security policy
    -   User could craft a leaky operator which would return the sampled data
        and effectively bypass the security policy
    -   Fixed to only allow non-leakproof operators to use sampled data when no
        relevant row security policies in place
-   Arbitrary server memory able to be read by executing a crafted INSERT
    statement on a partitioned table (only affects PostgreSQL 11 so only
    Disco)


### [[USN-3973-1](https://usn.ubuntu.com/3973-1/)] DHCP vulnerability {#usn-3973-1-dhcp-vulnerability}

-   1 CVEs addressed in Bionic, Cosmic
    -   [CVE-2019-6470](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6470)
-   DHCP server could crash due to mismatch in BIND internal memory
    management and DHCP server code
-   BIND in Bionic + Cosmic contained a change which zeroed out an internal
    index to indicate it was unused - however 0 is still a valid index in the
    DHCP server codebase - and so this could cause a use-after free (since
    would be free'd, index set to 0 by BIND lib but then still used later
    since 0 is valid). Instead changed to track indexes correctly to account
    for this behaviour.


### [[USN-3974-1](https://usn.ubuntu.com/3974-1/)] VCFtools vulnerabilities {#usn-3974-1-vcftools-vulnerabilities}

-   3 CVEs addressed in Xenial
    -   [CVE-2018-11130](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11130)
    -   [CVE-2018-11129](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11129)
    -   [CVE-2018-11099](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11099)
-   Tools for working with VCF files (1000 Genomes Project)
-   Fuzzed in conjunction with AddressSanitizer in clang using crafted VCF files
    -   Read-based heap buffer overflow - crash, DoS
    -   2 \* use after free -> crash, DoS / code execution


### [[USN-3975-1](https://usn.ubuntu.com/3975-1/)] OpenJDK vulnerabilities {#usn-3975-1-openjdk-vulnerabilities}

-   4 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-2698](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2698)
    -   [CVE-2019-2697](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2697)
    -   [CVE-2019-2684](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2684)
    -   [CVE-2019-2602](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2602)
-   2 affecting both openjdk-11 and openjdk-8
    -   CPU DoS via BigDecimal implementation operating on particular values
    -   Sandbox escape due to incorrect skeleton class selection in the RMI registry
-   2 sandbox escapes affecting only openjdk-8 via the 2D graphics component


### [[USN-3976-1](https://usn.ubuntu.com/3976-1/), [USN-3976-2](https://usn.ubuntu.com/3976-2/)] Samba vulnerability {#usn-3976-1-usn-3976-2-samba-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Cosmic, Disco
    -   [CVE-2018-16860](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16860)
-   Kerberos (as used in AD) contains an extension to allow a service to
    request a Kerberos ticket to itself on behalf of a non-Kerberos
    authenticated user (allows to use Kerberos for all internal code-paths)
-   Can be proxied over the network so that a privileged server can proxy on
    behalf of the non-Kerberos authenticated user
-   This proxied request contains a checksum (which can be keyed to prevent
    spoofing) - BUT this is not enforced - so an attacker can intercept the
    proxied request and rewrite the user name to any other one in the KDC AND
    replace the checksum with a simple CRC32 - as this can be computed
    without any prior knowledge


### [[USN-3986-1](https://usn.ubuntu.com/3986-1/)] Wireshark vulnerabilities {#usn-3986-1-wireshark-vulnerabilities}

-   9 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2019-9214](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9214)
    -   [CVE-2019-9209](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9209)
    -   [CVE-2019-9208](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9208)
    -   [CVE-2019-10903](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10903)
    -   [CVE-2019-10901](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10901)
    -   [CVE-2019-10899](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10899)
    -   [CVE-2019-10896](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10896)
    -   [CVE-2019-10895](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10895)
    -   [CVE-2019-10894](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10894)
-   Updated to latest 2.6.8 release to fix many issues in various packet
    dissectors that would cause wireshark to crash


### [[USN-3988-1](https://usn.ubuntu.com/3988-1/)] MediaInfo vulnerabilities {#usn-3988-1-mediainfo-vulnerabilities}

-   2 CVEs addressed in Bionic, Cosmic, Disco
    -   [CVE-2019-11373](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11373)
    -   [CVE-2019-11372](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11372)
-   CLI tool for reading metadata from various audio/video files
-   2\* OOB read -> crash, DoS


### [LSN-0051-1] Linux kernel vulnerability {#lsn-0051-1-linux-kernel-vulnerability}

-   4 CVEs for Microarchitectural Data Sampling (MDS) vulnerabilities
    -   [CVE-2019-11091](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11091)
    -   [CVE-2018-12130](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12130)
    -   [CVE-2018-12127](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12127)
    -   [CVE-2018-12126](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12126)
-   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/MDS>
-   <https://www.redhat.com/en/blog/understanding-mds-vulnerability-what-it-why-it-works-and-how-mitigate-it>
-   <https://www.redhat.com/en/blog/deeper-look-mds-vulnerability>
-   Too invasive to be addressed by Livepatch - requires updates to the
    kernel and new microcode to fix
-   Intel CPUs contain various microarchitectural elements - store buffers,
    load ports, fill buffers - which get used to complete architectural
    operations (read from an address etc)
    -   4 CVEs due to the different use of these different buffers in the
        various techniques
    -   RIDL (Rogue in-flight data load) - fill buffers and load ports
    -   Fallout - store buffers
    -   ZombieLoad - independent discovery of fill-buffer variant of RIDL
-   These get reused across operations, and in particular get reused across
    hyperthreads executing on the same CPU core
-   A malicious process can use speculative execution sampling techniques to
    infer the contents of one of these microarchitectural buffers - so could
    see data from a process that had previously been executing on the same
    CPU core OR in the case of HT can see data from a process executing
    concurrently on the same core
-   In the case of a single core can be fixed by first adding new behaviour
    to the unused VERW instruction to clear these buffers as a microcode
    update
-   Then updating the Linux kernel to call this new VERW instruction when
    switching tasks, VMs etc
-   However, does not mitigate in the case of SMT
-   So only way to properly mitigate is to disable SMT as well
-   In the case of virtualisation, the guest does the task switching so it
    needs to clear these buffers - update to QEMU + libvirt to expose this
    new CPU capability to the guest so that it can perform the flushing
    itself
-   Kernel + QEMU updates also contain fixes for other CVEs
-   Kernels updated for all supported releases including the HWE kernels


### [[USN-3977-1](https://usn.ubuntu.com/3977-1/)] Intel Microcode update {#usn-3977-1-intel-microcode-update}

-   4 CVEs addressed in Trusty ESM, Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11091](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11091)
    -   [CVE-2018-12126](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12126)
    -   [CVE-2018-12127](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12127)
    -   [CVE-2018-12130](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12130)


### [[USN-3978-1](https://usn.ubuntu.com/3978-1/)] QEMU update {#usn-3978-1-qemu-update}

-   7 CVEs addressed in Trusty ESM, Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-9824](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9824)
    -   [CVE-2019-5008](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5008)
    -   [CVE-2019-11091](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11091)
    -   [CVE-2018-20815](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20815)
    -   [CVE-2018-12126](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12126)
    -   [CVE-2018-12127](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12127)
    -   [CVE-2018-12130](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12130)


### [[USN-3979-1](https://usn.ubuntu.com/3979-1/)] Linux kernel vulnerabilities {#usn-3979-1-linux-kernel-vulnerabilities}

-   11 CVEs addressed in Disco
    -   [CVE-2019-9503](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9503)
    -   [CVE-2019-9500](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9500)
    -   [CVE-2019-3887](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3887)
    -   [CVE-2019-3882](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3882)
    -   [CVE-2019-3874](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3874)
    -   [CVE-2019-1999](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1999)
    -   [CVE-2019-11683](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11683)
    -   [CVE-2019-11091](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11091)
    -   [CVE-2018-12126](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12126)
    -   [CVE-2018-12127](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12127)
    -   [CVE-2018-12130](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12130)


### [[USN-3980-1](https://usn.ubuntu.com/3980-1/), [USN-3980-2](https://usn.ubuntu.com/3980-2/)] Linux kernel vulnerabilities {#usn-3980-1-usn-3980-2-linux-kernel-vulnerabilities}

-   10 CVEs addressed in Bionic (HWE), Cosmic
    -   [CVE-2019-9503](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9503)
    -   [CVE-2019-9500](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9500)
    -   [CVE-2019-3887](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3887)
    -   [CVE-2019-3882](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3882)
    -   [CVE-2019-3874](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3874)
    -   [CVE-2019-11091](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11091)
    -   [CVE-2018-16884](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16884)
    -   [CVE-2018-12126](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12126)
    -   [CVE-2018-12127](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12127)
    -   [CVE-2018-12130](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12130)


### [[USN-3981-1](https://usn.ubuntu.com/3981-1/), USN-3981-2] Linux kernel vulnerabilities {#usn-3981-1-usn-3981-2-linux-kernel-vulnerabilities}

-   9 CVEs addressed in Trusty ESM (HWE), Xenial (HWE), Bionic
    -   [CVE-2019-9503](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9503)
    -   [CVE-2019-9500](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9500)
    -   [CVE-2019-3882](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3882)
    -   [CVE-2019-3874](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3874)
    -   [CVE-2019-11091](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11091)
    -   [CVE-2018-16884](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16884)
    -   [CVE-2018-12126](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12126)
    -   [CVE-2018-12127](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12127)
    -   [CVE-2018-12130](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12130)


### [[USN-3982-1](https://usn.ubuntu.com/3982-1/), [USN-3982-2](https://usn.ubuntu.com/3982-2/)] Linux kernel vulnerabilities {#usn-3982-1-usn-3982-2-linux-kernel-vulnerabilities}

-   6 CVEs addressed in Trusty ESM (Xenial HWE), Xenial
    -   [CVE-2019-3882](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3882)
    -   [CVE-2019-3874](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3874)
    -   [CVE-2019-11091](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11091)
    -   [CVE-2018-12126](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12126)
    -   [CVE-2018-12127](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12127)
    -   [CVE-2018-12130](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12130)


### [[USN-3983-1](https://usn.ubuntu.com/3983-1/), [USN-3983-2](https://usn.ubuntu.com/3983-2/)] Linux kernel vulnerabilities {#usn-3983-1-usn-3983-2-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Precise ESM (Trusty HWE), Trusty ESM
    -   [CVE-2019-11091](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11091)
    -   [CVE-2018-12126](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12126)
    -   [CVE-2018-12127](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12127)
    -   [CVE-2018-12130](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12130)


### [[USN-3984-1](https://usn.ubuntu.com/3984-1/)] Linux kernel vulnerabilities {#usn-3984-1-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Precise ESM
    -   [CVE-2019-11091](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11091)
    -   [CVE-2018-12126](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12126)
    -   [CVE-2018-12127](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12127)
    -   [CVE-2018-12130](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12130)


### [[USN-3985-1](https://usn.ubuntu.com/3985-1/), [USN-3985-2](https://usn.ubuntu.com/3985-2/)] libvirt update {#usn-3985-1-usn-3985-2-libvirt-update}

-   4 CVEs addressed in Trusty ESM, Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11091](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11091)
    -   [CVE-2018-12126](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12126)
    -   [CVE-2018-12127](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12127)
    -   [CVE-2018-12130](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12130)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Main inclusion review security code audits discussion with Seth Arnold {#main-inclusion-review-security-code-audits-discussion-with-seth-arnold}


### Hiring {#hiring}


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


#### Security Certifications Engineer {#security-certifications-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1660658>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardended on the Freenode IRC network](http://webchat.freenode.net?channels=%23ubuntu-hardened&uio=d4)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)