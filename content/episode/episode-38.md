+++
title = "Episode 38"
description = "This week we look at the latest security updates for the Linux kernel, Firefox, ImageMagick, OpenStack and more, plus we have a special guest, the maintainer and lead developer of the AppArmor project, John Johansen, to talk about the project and some of the upcoming features."
date = 2019-07-02T17:00:00+09:30
lastmod = 2019-12-13T20:50:46+10:30
draft = false
weight = 1019
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E038.mp3"
podcast_duration = "27:33"
podcast_bytes = 26458606
permalink = "https://ubuntusecuritypodcast.org/episode-38/"
+++

## Overview {#overview}

This week we look at the latest security updates for the Linux kernel, Firefox, ImageMagick, OpenStack and more, plus we have a special guest, the maintainer and lead developer of the AppArmor project, John Johansen, to talk about the project and some of the upcoming features.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

55 unique CVEs addressed


### [[USN-4031-1](https://usn.ubuntu.com/4031-1/)] Linux kernel vulnerability {#usn-4031-1-linux-kernel-vulnerability}

-   1 CVEs addressed in Bionic, Cosmic, Disco
    -   [CVE-2019-12817](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12817)
-   64-bit PowerPC (ppc64el) memory management issue - introduced in the 4.17
    kernel - so only affects Cosmic/Disco or Bionic when using the HWE kernel
-   Different processes might be able to read / write to each others virtual
    memory
    -   Requirements:
        -   Must be using the hash page table MMU - eg. PowerPC 970 (G5), PA6T,
            Power5/6/7/8/9
            -   By default Power9 bare-metal use the Radix MMU so are not affected
                unless have explicitly disabled this via the kernel command-line
            -   KVM guests would also be affected in this case or if also
                explicitly configured to use the HPT MMU
            -   Logical partitions (LPARs) under PowerVM on Power9 would be
                affected as they always use HPT MMU
        -   Need to allocate memory above 512TB - only possible via mmap()
        -   Any child process (fork()) receives same context-id for the memory
            mapping so can just read/write to the mappings above 512TB
        -   If child exits, a 3rd process could be reallocated the same
            context-id and so could then read/write also
-   Only a subset of PowerPC systems will be affected by this and would need
    to be running applications which allocate above 512TB so whilst is high
    impact, low probability of being at risk


### [[USN-4032-1](https://usn.ubuntu.com/4032-1/)] Firefox vulnerability {#usn-4032-1-firefox-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11708](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11708)
-   Firefox 67.0.4 - latest upstream release
-   Possible for a sandboxed child process to escape the sandbox by using IPC
    to send a Prompt:Open message to the parent which would then process
    web-content on behalf of the child
-   Since parent is not sandboxed, it could be then exploited (say by
    leveraging another vulnerability such as the one discussed last week for
    Firefox) for arbitrary code execution


### [[USN-4033-1](https://usn.ubuntu.com/4033-1/)] libmysofa vulnerability {#usn-4033-1-libmysofa-vulnerability}

-   1 CVEs addressed in Bionic, Cosmic, Disco
    -   [CVE-2019-10672](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10672)
-   C library to read SOFA (Spatially Oriented Format for Acoustics) files
    -   Used by lots of different applications that handle audio, like
        gstreamer, ffmpeg, smplayer, blender etc
-   Integer overflow leading to buffer overflow - crash -> DoS or possible
    code-execution


### [[USN-4034-1](https://usn.ubuntu.com/4034-1/)] ImageMagick vulnerabilities {#usn-4034-1-imagemagick-vulnerabilities}

-   30 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-9956](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9956)
    -   [CVE-2019-7398](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7398)
    -   [CVE-2019-7397](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7397)
    -   [CVE-2019-7396](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7396)
    -   [CVE-2019-7395](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7395)
    -   [CVE-2019-7175](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7175)
    -   [CVE-2019-11598](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11598)
    -   [CVE-2019-11597](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11597)
    -   [CVE-2019-11472](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11472)
    -   [CVE-2019-11470](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11470)
    -   [CVE-2019-10650](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10650)
    -   [CVE-2019-10649](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10649)
    -   [CVE-2019-10131](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10131)
    -   [CVE-2018-20467](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20467)
    -   [CVE-2018-18544](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18544)
    -   [CVE-2018-18025](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18025)
    -   [CVE-2018-18024](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18024)
    -   [CVE-2018-18023](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18023)
    -   [CVE-2018-18016](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18016)
    -   [CVE-2018-17966](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17966)
    -   [CVE-2018-17965](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17965)
    -   [CVE-2018-16645](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16645)
    -   [CVE-2018-16644](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16644)
    -   [CVE-2018-16413](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16413)
    -   [CVE-2018-16412](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16412)
    -   [CVE-2018-16323](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16323)
    -   [CVE-2018-15607](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15607)
    -   [CVE-2018-14434](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14434)
    -   [CVE-2017-12806](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-12806)
    -   [CVE-2017-12805](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-12805)
-   Used by many automated systems for image processing etc
-   Many memory corruption issues fixed - most able to cause at least a crash
    (DoS) but might be possible to also get RCE
-   Also updated the default policy to disable support for PostScript and PDF
    formats (since these are handle by GhostScript which has a long history
    of security issues itself) - Cosmic + Disco
    -   This is already the case on Bionic ([USN-3785-1](https://usn.ubuntu.com/3785-1/) - [Episode 7](https://ubuntusecuritypodcast.org/episode-7/))


### [[USN-4035-1](https://usn.ubuntu.com/4035-1/)] Ceph vulnerabilities {#usn-4035-1-ceph-vulnerabilities}

-   4 CVEs addressed in Xenial, Cosmic, Disco
    -   [CVE-2019-3821](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3821)
    -   [CVE-2018-16889](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16889)
    -   [CVE-2018-16846](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16846)
    -   [CVE-2018-14662](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14662)
-   2 CVEs affect ceph in Xenial
    -   dm-crypt disk encryption keys were able to be read by users with
        read-only permissions - fixed to ensure need an explicit permission to
        read keys
    -   DoS from authenticated RGW users
-   2 Cosmic+Disco
    -   Does not properly sanitize encryption keys when outputting debug log
        information for v4 auth -so encryption keys would be output in
        plaintext to debug logs
        -   fixed to sanitize before output
        -   won't be fixed for Xenial since upstream hasn't backported this and
            there are many instances of other sensitive info being logged there
            as well
    -   DoS by unauthenticated remote users via the civetweb frontend - as they
        could create connections to a RADOS gateway to exhaust file descriptors
        for the gateway service causing it to run out and fail to create new
        connections
        -   Close fd on error path


### [[USN-4036-1](https://usn.ubuntu.com/4036-1/)] OpenStack Neutron vulnerability {#usn-4036-1-openstack-neutron-vulnerability}

-   1 CVEs addressed in Xenial, Cosmic
    -   [CVE-2019-9735](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9735)
-   Networking abstraction layer of OpenStack
-   Allows to define security groups with rules which then get executed by a
    driver using a particular underlying technology
-   Rules can specify protocols and source / destination ports
-   iptables driver would execute rules but if encountered an error (such as
    a protocol was specified along with a port but the protocol doesn't
    support ports - like VRRP) then it would error out and not apply further
    rules from the security group
    -   So could block other rules from being applied
-   Fixed to ensure port arguments are only applied to protocols which
    support them


### [[USN-4037-1](https://usn.ubuntu.com/4037-1/)] policykit-desktop-privileges update {#usn-4037-1-policykit-desktop-privileges-update}

-   Affecting Xenial, Bionic, Cosmic, Disco
-   PolicyKit policy update for USB Creator
    -   Previously would allow a user with admin privileges (ie. in the
        admin/sudo group) to overwrite disks (ie create bootable USB images)
        without prompting for authentication
    -   Now updated to require the user to also authenticate as well


### [[USN-4038-1](https://usn.ubuntu.com/4038-1/), [USN-4038-2](https://usn.ubuntu.com/4038-2/)] bzip2 vulnerabilities {#usn-4038-1-usn-4038-2-bzip2-vulnerabilities}

-   2 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-12900](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12900)
    -   [CVE-2016-3189](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-3189)
-   UAF via crafted bzip2 file - crash, DoS
-   OOB write from crafted bzip2 which contains too many selectors - possible
    RCE
    -   Turns out this breaks decompression of some bzip2 files created by the
        lbzip2 utility since it would use an invalid number of selectors -
        [upstream still pondering how to fix this](https://gitlab.com/federicomenaquintero/bzip2/issues/24)


### [[USN-4040-1](https://usn.ubuntu.com/4040-1/), [USN-4040-2](https://usn.ubuntu.com/4040-2/)] Expat vulnerability {#usn-4040-1-usn-4040-2-expat-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Cosmic, Disco
    -   [CVE-2018-20843](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20843)
-   CPU DoS if XML names contained large number of colons (used to specify
    namespace prefix)


### [[USN-4042-1](https://usn.ubuntu.com/4042-1/)] poppler vulnerabilities {#usn-4042-1-poppler-vulnerabilities}

-   13 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-9903](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9903)
    -   [CVE-2019-9631](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9631)
    -   [CVE-2019-9200](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9200)
    -   [CVE-2019-12293](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12293)
    -   [CVE-2019-10873](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10873)
    -   [CVE-2019-10872](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10872)
    -   [CVE-2019-10023](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10023)
    -   [CVE-2019-10021](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10021)
    -   [CVE-2019-10019](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10019)
    -   [CVE-2019-10018](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10018)
    -   [CVE-2018-20662](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20662)
    -   [CVE-2018-18897](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18897)
    -   [CVE-2017-9865](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9865)
-   Usual mix of issues
    -   Memory leak
    -   Stack exhaustion -> crash, DoS
    -   3\*Heap-based buffer over-reads
    -   NULL pointer dereference
    -   Various floating point exception issues
    -   Assertion failure
    -   Heap-based buffer under-write - so write at a negative index of a heap
        allocated buffer - crash, DoS or possible RCE via heap metadata or
        object corruption


### [[USN-4041-1](https://usn.ubuntu.com/4041-1/), [USN-4041-2](https://usn.ubuntu.com/4041-2/)] Linux kernel update {#usn-4041-1-usn-4041-2-linux-kernel-update}

-   1 CVEs addressed in Trusty ESM (HWE), Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11479](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11479)
-   Final SACK Panic issue ([Episode 37](https://ubuntusecuritypodcast.org/episode-37/)) - added sysctl to easily set MSS (is
    usually hard-coded to 48) - so can be increased to avoid this DoS issue


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### AppArmor interview with John Johansen {#apparmor-interview-with-john-johansen}

-   <https://gitlab.com/apparmor/apparmor>
-   <https://wiki.ubuntu.com/AppArmor>


### Hiring {#hiring}


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1723997>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)