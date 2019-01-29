+++
title = "Episode 1"
description = "Another week, another speculative execution vulnerablity... and more!"
date = 2018-08-20
lastmod = 2019-01-29T22:14:05+10:30
draft = false
weight = 1018
episode_image = "img/episode/default.png"
explicit = "no"
podcast_file = "USP_E001.mp3"
podcast_duration = "10:33"
podcast_bytes = 10133967
+++

## Overview {#overview}

-   Security fixes for 39 CVEs this week including L1TF and FragmentSmack


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}


### GDM ([USN-3737-1](https://usn.ubuntu.com/3737-1/)) ([CVE-2018-14424](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14424)) {#gdm--usn-3737-1----cve-2018-14424}

-   Found by Ubuntu Security Team member Chris Coulson during audit of gdm3 source code
-   Local user can exploit via DBus to crash GDM via use-after-free (create a transient display which is automatically cleaned up, then try to query info for the previously created display)
-   Bionic only so far


### libarchive ([USN-3736-1](https://usn.ubuntu.com/3736-1/)) {#libarchive--usn-3736-1}

-   6 CVEs addressed across Bionic, Xenial and Trusty
    -   [CVE-2016-10209](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-10209)
    -   [CVE-2016-10349](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-10349)
    -   [CVE-2016-10350](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-10350)
    -   [CVE-2017-14166](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14166)
    -   [CVE-2017-14501](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14501)
    -   [CVE-2017-14503](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14503)
-   All local crashes / DoS / unspecified impact via specially crafted archives in various formats


### Samba ([USN-3738-1](https://usn.ubuntu.com/3738-1/)) {#samba--usn-3738-1}

-   4 CVEs addressed across Bionic, Xenial and Trusty
    -   [CVE-2018-10858](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10858)
    -   [CVE-2018-10918](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10918)
    -   [CVE-2018-10919](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10919)
    -   [CVE-2018-1139](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1139)
-   Includes vulnerabilities in both the samba client and server
    -   Likely to affect most Ubuntu users


### libxml2 ([USN-3739-1](https://usn.ubuntu.com/3739-1/)) ([USN-3739-2](https://usn.ubuntu.com/3739-2/)) {#libxml2--usn-3739-1----usn-3739-2}

-   XML parsing library used across lots of different software packages
-   5 CVEs fixed across releases for Bionic, Xenial and Trusty
    -   2 CVEs fixed for Precise ESM
    -   [CVE-2016-9318](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-9318)
    -   [CVE-2017-16932](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-16932)
    -   [CVE-2017-18258](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-18258)
    -   [CVE-2018-14404](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14404)
    -   [CVE-2018-14567](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14567)
-   Includes information disclosure and DoS


### L1TF and FragmentSmack vulnerabilities in Linux Kernel ([USN-3740-1](https://usn.ubuntu.com/3740-1/)) ([USN-3740-2](https://usn.ubuntu.com/3740-2/)) ([USN-3741-1](https://usn.ubuntu.com/3741-1/)) ([USN-3741-2](https://usn.ubuntu.com/3741-2/)) ([USN-3742-1](https://usn.ubuntu.com/3742-1/)) ([USN-3742-2](https://usn.ubuntu.com/3742-2/)) {#l1tf-and-fragmentsmack-vulnerabilities-in-linux-kernel--usn-3740-1----usn-3740-2----usn-3741-1----usn-3741-2----usn-3742-1----usn-3742-2}


#### L1TF ([CVE-2018-3620](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3620)) ([CVE-2018-3646](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3646)) {#l1tf--cve-2018-3620----cve-2018-3646}

-   Latest speculative execution cache side channel attack affecting Intel processors
-   Allows to access contents from L1 Data Cache via speculative execution,  can then be read by cache side channel
-   3 variants, SGX, SMM and VMM but only 2 affect Ubuntu
-   Processors access virtual addresses which need to be translated to physical addresses
-   Page Table Entries map from one to the other (contains metadata of page including offset and present bit)
-   Pages can be swapped in our out of memory (Present or not) - so if not present then need to do a full page table walk to look up physical address
-   But Intel processor will use offset value from PTE even on non-present pages **speculatively**
-   For non-present pages, this value is usually junk so can essentially speculatively read arbitrary memory from L1D cache depending on PTE value
-   SGX doesn't affect Ubuntu since not used
-   SMM fixed via ensuring PTEs of not present pages always refer to non-cacheable memory and hence can't be used for this
-   VMM is trickier
    -   VMs maintain their own PTEs so also need to ensure they are doing the right thing
    -   OR if running untrusted VMs need to do a full L1D flush on switching from host to VM
-   Made more trickier by Hyper Threading since sibling hyper-threads share the L1D cache
-   So if have different trust domains on sibling hyper-threads may have to disable HT in certain circumstances


#### FragmentSmack ([CVE-2018-5391](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5391)) {#fragmentsmack--cve-2018-5391}

-   Last week was SegmentSmack in TCP fragment reassembly, this week is FragmentSmack
-   Similar but for IP fragmentation reassembly
    -   Exploiting high algorithmic complexity of IP fragment reassembly code paths to cause DoS


### GnuPG ([USN-3733-2](https://usn.ubuntu.com/3733-2/)) ([CVE-2017-7526](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-7526)) {#gnupg--usn-3733-2----cve-2017-7526}

-   Last week GnuPG was fixed for Xenial and Trusty for RSA cache side-channel issue
-   This is corresponding fix for Precise ESM


### WebKitGTK+ vulnerabilities ([USN-3743-1](https://usn.ubuntu.com/3743-1/)) {#webkitgtk-vulnerabilities--usn-3743-1}

-   14 CVEs fixed in web content renderer used in many desktop apps
    -   [CVE-2018-12911](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12911)
    -   [CVE-2018-4246](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4246)
    -   [CVE-2018-4261](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4261)
    -   [CVE-2018-4262](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4262)
    -   [CVE-2018-4263](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4263)
    -   [CVE-2018-4264](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4264)
    -   [CVE-2018-4265](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4265)
    -   [CVE-2018-4266](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4266)
    -   [CVE-2018-4267](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4267)
    -   [CVE-2018-4270](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4270)
    -   [CVE-2018-4272](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4272)
    -   [CVE-2018-4273](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4273)
    -   [CVE-2018-4278](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4278)
    -   [CVE-2018-4284](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4284)
-   Fixes for Bionic and Xenial


### PostgreSQL ([USN-3744-1](https://usn.ubuntu.com/3744-1/)) ([CVE-2018-10915](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10915)) ([CVE-2018-10925](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10925)) {#postgresql--usn-3744-1----cve-2018-10915----cve-2018-10925}

-   2 CVEs fixed in popular relational database across Bionic, Xenial and Trusty


### procps-ng ([USN-3658-3](https://usn.ubuntu.com/3658-3/)) {#procps-ng--usn-3658-3}

-   3 CVEs fixed in Precise ESM procps-ng package
    -   [CVE-2018-1122](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1122)
    -   [CVE-2018-1123](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1123)
    -   [CVE-2018-1125](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1125)


### Linux kernel livepatch (LSN-0042-1) {#linux-kernel-livepatch--lsn-0042-1}

-   No Livepatch possible for L1TF so a LSN to advise to do an update and reboot


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Hiring {#hiring}


#### Ubuntu Security Manger {#ubuntu-security-manger}

-   <https://boards.greenhouse.io/canonical/jobs/1278287>


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1158266>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardended on the Freenode IRC network](http://webchat.freenode.net?channels=%2523ubuntu-hardened&uio=d4)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)


## Special thanks {#special-thanks}

-   Thanks to Emily Ratliff - a great manager of the team (and a good friend too)
-   We will miss you :)