+++
title = "Episode 17"
description = "First episode of 2019! This week we look \"System Down\" in systemd, as well as updates for the Linux kernel, GnuPG, PolicyKit and more, and discuss a recent cache-side channel attack using the mincore() system call."
date = 2019-01-22
lastmod = 2019-05-13T13:09:12+09:30
draft = false
weight = 1015
episode_image = "img/episode/default.png"
explicit = "no"
podcast_file = "USP_E017.mp3"
podcast_duration = "21:45"
podcast_bytes = 20887640
permalink = "https://ubuntusecuritypodcast.org/episode-17/"
+++

## Overview {#overview}

First episode of 2019! This week we look "System Down" in systemd, as well as updates for the Linux kernel, GnuPG, PolicyKit and more, and discuss a recent cache-side channel attack using the mincore() system call.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

51 unique CVEs addressed across the supported Ubuntu releases.


### [[USN-3846-1](https://usn.ubuntu.com/3846-1/), [USN-3847-1](https://usn.ubuntu.com/3847-1/), [USN-3847-2](https://usn.ubuntu.com/3847-2/), USN-3847-3] Linux kernel vulnerabilities {#usn-3846-1-usn-3847-1-usn-3847-2-usn-3847-3-linux-kernel-vulnerabilities}

-   Kernel updates as part of normal 3-weekly SRU cycle - includes various fixes across the supported releases
    -   [CVE-2018-18710](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18710) (Cosmic, Bionic, Bionic HWE, Xenial, Xenial HWE, Trusty, Trusty HWE)
    -   [CVE-2018-18690](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18690) (Bionic, Bionic HWE, Xenial, Xenial HWE, Trusty, Trusty HWE)
    -   [CVE-2018-18445](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18445) (Bionic, Bionic HWE)
    -   [CVE-2018-16276](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16276) (Bionic, Bionic HWE)
    -   [CVE-2018-14734](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14734) (Bionic, Bionic HWE)
    -   [CVE-2018-12896](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12896) (Bionic, Bionic HWE, Xenial, Xenial HWE, Trusty, Trusty HWE)
    -   [CVE-2017-18174](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-18174) (Xenial, Xenial HWE)
    -   [CVE-2018-10902](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10902) (Trusty, Trusty HWE)
    -   [CVE-2017-2647](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-2647) (Trusty, Trusty HWE)
-   Info leak in CDROM driver, XFS DoS via writing of extended attributes causing an error condition that leaves the fs in an error state until next mount
-   Bounds check bypass in BPF verifier (mentioned in Episode 15)
-   Incorrect bounds checking in Yurex USB driver (Episode 7)
-   UAF in infiniband -> Crash -> DoS
-   Integer overflow in POSIX timers overrun accounting due to type confusion (int vs 64-bit signed)
-   Double free in AMD GPIO pinctrl driver - DoS / privilege escalation
-   Race condition in midi driver - double free -> privilege escalation
-   NULL pointer dereference in kernel keyring -> crash -> DoS


### [LSN-0046-1] Linux kernel livepatch for vulnerabilities {#lsn-0046-1-linux-kernel-livepatch-for-vulnerabilities}

-   10 CVEs addressed in
    -   [CVE-2018-16658](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16658)
    -   [CVE-2018-16276](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16276)
    -   [CVE-2017-5753](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-5753)
    -   [CVE-2018-9363](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-9363)
    -   [CVE-2018-18690](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18690)
    -   [CVE-2018-10880](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10880)
    -   [CVE-2018-14734](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14734)
    -   [CVE-2018-18445](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18445)
    -   [CVE-2018-10902](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10902)
    -   [CVE-2018-18710](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18710)


### [[USN-3850-1](https://usn.ubuntu.com/3850-1/)] NSS vulnerabilities {#usn-3850-1-nss-vulnerabilities}

-   3 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-12404](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12404)
    -   [CVE-2018-12384](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12384)
    -   [CVE-2018-0495](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-0495)
-   Cache side-channel variant of Bleichenbacher attack (<http://cat.eyalro.net/>)
-   Responds to SSLv2 ClientHello with a ServerHello with all zero random
-   Cache side-channel attack on ECDSA signatures (Trusty only)


### [[USN-3851-1](https://usn.ubuntu.com/3851-1/)] Django vulnerability {#usn-3851-1-django-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-3498](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3498)
-   Attacker could craft a malicious URL to make spoofed content appear on the generated 404 page


### [[USN-3852-1](https://usn.ubuntu.com/3852-1/)] Exiv2 vulnerabilities {#usn-3852-1-exiv2-vulnerabilities}

-   9 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-17581](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17581)
    -   [CVE-2018-16336](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16336)
    -   [CVE-2017-17669](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-17669)
    -   [CVE-2017-14864](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14864)
    -   [CVE-2017-14862](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14862)
    -   [CVE-2017-14859](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14859)
    -   [CVE-2017-11683](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-11683)
    -   [CVE-2017-11591](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-11591)
    -   [CVE-2017-9239](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9239)
-   Infinite recursion leading to stack exhaustion -> crash -> DoS
-   Multiple heap based buffer out-of-bounds reads -> crash -> DoS
-   Multiple invalid pointer dereferences -> crash -> DoS
-   Invalid assertion, NULL pointer dereference -> crash -> DoS


### [[USN-3853-1](https://usn.ubuntu.com/3853-1/)] GnuPG vulnerability {#usn-3853-1-gnupg-vulnerability}

-   1 CVEs addressed in Bionic, Cosmic
    -   [CVE-2018-1000858](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000858)
-   GnuPG includes support for Web Key Directories (WKD) to allow easy discovery of public keys via HTTPS
-   Allows a key to be imported from a webserver -> first need to lookup hostname via DNS SRV
-   Fails to sanitize response - so performs an attacker controlled, arbitrary HTTPS GET request
    -   Attacker needs to construct a malicious SRV record for the domain in question
-   Possible CSRF, content injection etc
-   Thunderbird will automatically use WKD via GnuPG to lookup missing keys so allows easy exploitation


### [[USN-3854-1](https://usn.ubuntu.com/3854-1/)] WebKitGTK+ vulnerabilities {#usn-3854-1-webkitgtk-vulnerabilities}

-   1 CVEs addressed in Bionic, Cosmic
    -   [CVE-2018-4437](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-4437)
-   Possible RCE via invalid processing of crafted web content (as usual limited details on WebKitGTK vulnerabilities...)


### [[USN-3855-1](https://usn.ubuntu.com/3855-1/)] systemd vulnerabilities {#usn-3855-1-systemd-vulnerabilities}

-   3 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2018-16866](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16866)
    -   [CVE-2018-16865](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16865)
    -   [CVE-2018-16864](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16864)
-   "System Down" systemd vulnerabilities
-   Chris Coulson put in a heroic effort and patched quickly - Ubuntu first affected distro to release patched systemd
-   Due to use of variable length arrays on the stack, allows various fields which are attacker controlled to be overflowed
-   If overflow far enough can bypass kernel stack guard pages, and hence corrupt the heap
-   Possible code execution as a result (original advisory contained a PoC for i386 which gained control of the instruction pointer)
-   Can be mitigated via use of the gcc flag -fstack-clash-protection - this is now under review to be used by default in forthcoming Ubuntu releases


### [[USN-3856-1](https://usn.ubuntu.com/3856-1/)] GNOME Bluetooth vulnerability {#usn-3856-1-gnome-bluetooth-vulnerability}

-   1 CVEs addressed in Bionic
    -   [CVE-2018-10910](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10910)
-   BlueZ doesn't necessarily make bluetooth device undiscoverable automatically after timeout
-   Hence after enabling discovery would then still be discoverable even though user expectation is that is not anymore
-   Actual bug then is really in BlueZ but now added a workaround in GNOME bluetooth to manually disable discovery


### [[USN-3857-1](https://usn.ubuntu.com/3857-1/)] PEAR vulnerability {#usn-3857-1-pear-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2018-1000888](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000888)
-   PHP Extension and Application Repository - possible RCE when deserialising via PHP object injection
-   Triggered when unpacking a PHAR (PHP ARchive) - also possible to sneak one into a JPEG so easy to exploit - just need image upload (Wordpress etc)


### [[USN-3858-1](https://usn.ubuntu.com/3858-1/)] HAProxy vulnerabilities {#usn-3858-1-haproxy-vulnerabilities}

-   3 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2018-20615](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20615)
    -   [CVE-2018-20103](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20103)
    -   [CVE-2018-20102](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20102)
-   Popular load balancing reverse proxy (used in OpenStack etc.)
-   Infinite recursion from a pointer referencing itself or from long chains of pointers -> stack exhaustion -> crash -> DoS
-   Out-of-bounds read when validating DNS responses - information disclosure of 16 bytes
-   Fail to ensure valid length of H2 HEADERS when decoding - out-of-bounds read -> crash -> DoS


### [[USN-3859-1](https://usn.ubuntu.com/3859-1/)] libarchive vulnerabilities {#usn-3859-1-libarchive-vulnerabilities}

-   4 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2017-14502](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14502)
    -   [CVE-2018-1000878](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000878)
    -   [CVE-2018-1000877](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000877)
    -   [CVE-2018-1000880](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000880)
-   Out-of-bounds read for UTF-16 names in RAR archives
-   UAF and double free in RAR decoder - crash -> DoS, possible RCE
-   Quasi-infinite runtime and disk usage from a tiny crafted WARC file (Web Archive format for storing results of crawling websites)


### [[USN-3860-1](https://usn.ubuntu.com/3860-1/), USN-3860-2] libcaca vulnerabilities {#usn-3860-1-usn-3860-2-libcaca-vulnerabilities}

-   7 CVEs addressed in Precise ESM, Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-20549](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20549)
    -   [CVE-2018-20547](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20547)
    -   [CVE-2018-20546](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20546)
    -   [CVE-2018-20549](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20549)
    -   [CVE-2018-20548](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20548)
    -   [CVE-2018-20545](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20545)
    -   [CVE-2018-20544](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20544)
-   Library and utils for handling colour ASCII art (used by various media players to show videos in a terminal etc)
-   Various issues - OOB reads, writes and a floating point exception -> crash -> DoS


### [[USN-3861-1](https://usn.ubuntu.com/3861-1/), USN-3861-2] PolicyKit vulnerability {#usn-3861-1-usn-3861-2-policykit-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-19788](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19788)
-   Invalid handling of UID > INT\_MAX - would allow a user to bypass policy and execute any systemctl command


### [[USN-3862-1](https://usn.ubuntu.com/3862-1/)] Irssi vulnerability {#usn-3862-1-irssi-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-5882](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5882)
-   UAF when expiring hidden lines from the scroll buffer


## Goings on in Ubuntu and Linux Security Community {#goings-on-in-ubuntu-and-linux-security-community}


### New page cache side-channel attack via mincore() {#new-page-cache-side-channel-attack-via-mincore}

-   Discovered by a team of researchers including some of those who found Spectre / Meltdown
    -   <https://arxiv.org/pdf/1901.01161.pdf>
-   Uses mincore() system call on Linux to determine if pages exist in the page cache or not
-   mincore() returns a bitmask of which pages are mapped in the cache for the requested range
-   Can use this side-channel to either:
    -   determine when a process calls a given function in a shared library (since the library will be mapped at the same address in both the attack and victim process)
        -   need to first evict the given page from the cache which is difficult but authors propose a new efficient mechanism to do this
        -   can then do things like UI redressing etc in response
    -   Or can use this is a covert channel to leak information from one process to another
    -   Can even use over the network to leak information via an innocent webserver etc
-   Paper also describes an efficient cache eviction strategy
-   Linus directly applied a fix (<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=574823bfab82d9d8fa47f422778043fbb4b4f50e>)
    -   This changes the behaviour of mincore() to only report pages which have been faulted into the cache by the calling process
        -   So at best can now observe when a page is evicted from the cache but can't see when another process faults in a page
    -   Breaks user-space API of mincore() and hence some existing programs (as noted in the commit)
        -   Linus' primary rule is to never break userspace BUT in this case as is a security vulnerability this is okay
        -   This might also likely affect other programs that use mincore in Ubuntu etc (fincore, e4defrag, qemu etc)
-   Fix is not in the stable upstream kernel yet as waiting to see what fallout there is and so also has not been applied to Ubuntu kernels yet
-   Also good discussion on LWN <https://lwn.net/Articles/776801/> which highlights other avenues for inferring the contents of the page cache and other possible changes to mincore to protect against this attack
-   Will be interesting to see where this all ends up


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardended on the Freenode IRC network](http://webchat.freenode.net?channels=%23ubuntu-hardened&uio=d4)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)