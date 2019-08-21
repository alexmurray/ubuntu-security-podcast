+++
title = "Episode 0"
description = "The first ever episode of the Ubuntu Security Podcast!"
date = 2018-08-14
lastmod = 2019-08-21T21:00:26+09:30
draft = false
weight = 1044
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E000.mp3"
podcast_duration = "12:42"
podcast_bytes = 12202029
permalink = "https://ubuntusecuritypodcast.org/episode-0/"
+++

## Introduction {#introduction}


### What will be covered {#what-will-be-covered}

-   Overview of latest security updates for Ubuntu
-   In depth discussion of trending CVEs
-   Other things the team has been up to


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}


### SegmentSmack ([CVE-2018-5390](http://people.canonical.com/~ubuntu-security/cve/CVE-2018-5390)) ([USN-3732-1](https://usn.ubuntu.com/3732-1/)) {#segmentsmack--cve-2018-5390----usn-3732-1}

-   DoS via expensive algorithmic computation in TCP stream reassembly
-   Requires attacker to have an existing TCP session
-   Affecting kernel >= 4.9
-   Fixed in Bionic and Xenial for HWE
-   No known exploits in the wild


### linux kernel ([LSN-0041-1](https://lists.ubuntu.com/archives/ubuntu-security-announce/2018-August/004529.html)) {#linux-kernel--lsn-0041-1}

-   brief description of livepatch
-   Several issues (5 CVEs)
    -   stack overflow in SCSI / cdrom layers ([CVE-2018-11506](http://people.canonical.com/~ubuntu-security/cve/CVE-2018-11506))
    -   DoS / crash via specially crafted ext4 filesystem ([CVE-2018-1094](http://people.canonical.com/~ubuntu-security/cve/CVE-2018-1094))
    -   files can be created with group permissions which the original owner did not have within sgid directories ([CVE-2018-13405](http://people.canonical.com/~ubuntu-security/cve/CVE-2018-13405))
        -   Originally reported by Jann Horn in relation to whoopsie / apport in Ubuntu
    -   DoS / crash via specially crafted xfs filesystem ([CVE-2018-13094](http://people.canonical.com/~ubuntu-security/cve/CVE-2018-13094))
    -   SegmentSmack fix ([CVE-2018-5390](http://people.canonical.com/~ubuntu-security/cve/CVE-2018-5390))
-   generic & lowlatency kernels for Trusty, Xenial and Bionic


### gnupg ([CVE-2017-7526](http://people.canonical.com/~ubuntu-security/cve/CVE-2017-7526)) ([USN-3733-1](https://usn.ubuntu.com/3733-1/)) {#gnupg--cve-2017-7526----usn-3733-1}

-   Cache side-channel attack on RSA implementation
-   When CVE was created, only assigned to libgcrypt
-   gnupg quietly announced 1.4.23 as fixing this CVE as well in June
    -   Turns out was actually fixed in 1.4.22
    -   So Bionic etc not affected
-   Fixed in Trusty and Xenial
-   No known exploits in the wild


### openjdk ([CVE-2018-2952](http://people.canonical.com/~ubuntu-security/cve/CVE-2018-2952)) ([USN-3734-1](https://usn.ubuntu.com/3734-1/)) {#openjdk--cve-2018-2952----usn-3734-1}

-   Denial of service via excessive memory consumption
-   openjdk-7 in trusty and openjdk-8 in xenial


### lxc ([CVE-2018-6556](http://people.canonical.com/~ubuntu-security/cve/CVE-2018-6556)) ([USN-3730-1](https://usn.ubuntu.com/3730-1/)) {#lxc--cve-2018-6556----usn-3730-1}

-   Allows opening (but not reading) of arbitrary files
    -   Information disclosure / DoS since could open pseudoterminals or other kernel devices and cause exhausting of resources
-   For lxc >=2.0 - bionic, xenial-backports


### libxcursor ([CVE-2015-9262](http://people.canonical.com/~ubuntu-security/cve/CVE-2015-9262)) ([USN-3729-1](https://usn.ubuntu.com/3729-1/)) {#libxcursor--cve-2015-9262----usn-3729-1}

-   Classic off-by-one error - string allocation but forgot to allocate byte for NUL terminator
    -   As on the heap allows heap memory corruption
    -   Possible code execution etc
    -   In handling of cursor themes so could be triggered when loading a malicious themes
-   Affects libxcursor in trusty and xenial - both fixed


### lftp ([CVE-2018-10196](http://people.canonical.com/~ubuntu-security/cve/CVE-2018-10196)) ([USN-3731-1](https://usn.ubuntu.com/3731-1/)) {#lftp--cve-2018-10196----usn-3731-1}

-   Command-line FTP / HTTP / BitTorrent clients
-   Does not properly validate filenames from server when mirroring locally
    -   Could allow a malicious server to remove all files in PWD
-   Fixed in Bionic, Xenial, Trusty & **Precise ESM**


### Subscribe to ubuntu-security-announce mailing list {#subscribe-to-ubuntu-security-announce-mailing-list}

-   <https://lists.ubuntu.com/mailman/listinfo/ubuntu-security-announce>


## Goings on in Ubuntu Security {#goings-on-in-ubuntu-security}


### NCSC publish Ubuntu 18.04 LTS Security Guide {#ncsc-publish-ubuntu-18-dot-04-lts-security-guide}

-   A couple weeks old now, but worth mentioning
-   National Cyber Security Centre in UK
    -   Provide infosec guidance to public and private sector
-   Focuses around End User Devices deployed for remote work but applies equally to home / office as well
-   Covers guidance such as:
    -   VPN
    -   Enforcing a given password policy
    -   UEFI Secure Boot
    -   Livepatch
    -   Firewall configuration
    -   Auditing
-   <https://www.ncsc.gov.uk/guidance/eud-security-guidance-ubuntu-1804-lts>
-   <https://blog.ubuntu.com/2018/07/30/national-cyber-security-centre-publish-ubuntu-18-04-lts-security-guide>


### Seth Arnold's AppArmor 3.0 presentation at DebConf {#seth-arnold-s-apparmor-3-dot-0-presentation-at-debconf}

-   Overview of AppArmor with brief history and walkthough of main features
-   Efforts to enable AppArmor by default in Debian Buster (10)
-   Ongoing work to upstream the latest AppArmor changes
    -   Course-grained network mediation (AF\_INET / AF\_IET6)
    -   DBus mediation
        -   Almost all are now in Linux kernel 4.19
    -   Some remain for 4.20
        -   Unix sockets
-   Future directions for AppArmor
    -   IMA-aware policy (in 4.17, requires AppArmor 3.0 userspace)
        -   Contributed by Google, hopefully will be available soon
    -   Fine-grained networking mediation (ie. port level mediation)
    -   Shared memory mediation
    -   cgroups
    -   overlayfs
    -   user specific policy
-   Multiple namespaces support for AppArmor
    -   LXD / libvirt / snapd / docker
    -   policy within a namespace (and policy outside the namespace too)
-   Demo of LXD with namespaced policy
-   <https://debconf18.debconf.org/talks/106-apparmor-30/>


### Hiring {#hiring}


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1158266>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)