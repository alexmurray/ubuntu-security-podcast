+++
title = "Episode 24"
description = """
  A look at recent fixes for vulnerabilities in poppler, WALinuxAgent, the
  Linux kernel and more. We also talk about some listener feedback on
  Ubuntu hardening and the launch of Ubuntu 14.04 ESM.
  """
date = 2019-03-19
lastmod = 2019-11-08T21:50:08+10:30
draft = false
weight = 1029
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E024.mp3"
podcast_duration = "13:20"
podcast_bytes = 12816012
permalink = "https://ubuntusecuritypodcast.org/episode-24/"
+++

## Overview {#overview}

A look at recent fixes for vulnerabilities in poppler, WALinuxAgent, the
Linux kernel and more. We also talk about some listener feedback on
Ubuntu hardening and the launch of Ubuntu 14.04 ESM.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

18 unique CVEs addressed


### [[USN-3905-1](https://usn.ubuntu.com/3905-1/)] poppler vulnerability {#usn-3905-1-poppler-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-9200](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9200)
-   Heap-based buffer underwrite (index into array using negative index) -
    write into heap memory which preceeds the intended buffer - heap
    corruption - crash -> DoS, possible code execution
-   Found by fuzzing and AddressSanitizer in clang


### [[USN-3906-1](https://usn.ubuntu.com/3906-1/)] LibTIFF vulnerabilities {#usn-3906-1-libtiff-vulnerabilities}

-   6 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-7663](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7663)
    -   [CVE-2019-6128](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6128)
    -   [CVE-2018-19210](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19210)
    -   [CVE-2018-17000](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17000)
    -   [CVE-2018-12900](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12900)
    -   [CVE-2018-10779](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10779)
-   All DoS, one possible code-execution:
    -   Dereference of an invalid address (read from invalid memory location)
    -   Heap buffer overread
    -   2x NULL pointer dereferences
    -   Memory leak
    -   Heap buffer overflow - possible code execution


### [[USN-3907-1](https://usn.ubuntu.com/3907-1/)] WALinuxAgent vulnerability {#usn-3907-1-walinuxagent-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-0804](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0804)
-   WALinuxAgent used to manage instances of Ubuntu (and other Linux
    distributions) running on Azure
-   Can be used to configure swap space for a given image
    -   would then create a swap file (/mnt/swapfile) BUT would make it world-readable
    -   so any local user could read it - if keys or other sensitive items
        were in memory that got swapped to disk could be read by all
-   Fixed to make this readable only by root and to also correct the
    permissions on any existing swapfile as well


### [[USN-3902-2](https://usn.ubuntu.com/3902-2/)] PHP vulnerabilities {#usn-3902-2-php-vulnerabilities}

-   4 CVEs addressed in Precise ESM
    -   [CVE-2019-9023](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9023)
    -   [CVE-2019-9021](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9021)
    -   [CVE-2019-9024](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9024)
    -   [CVE-2019-9020](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9020)
-   See last week's [Episode 23](https://ubuntusecuritypodcast.org/episode-23/) - discussed for Xenial and Trusty - fixed
    now for Precise ESM as well


### [[USN-3910-1](https://usn.ubuntu.com/3910-1/), [USN-3910-2](https://usn.ubuntu.com/3910-2/)] Linux kernel vulnerabilities {#usn-3910-1-usn-3910-2-linux-kernel-vulnerabilities}

-   5 CVEs addressed in Xenial and Trusty (Xenial HWE)
    -   [CVE-2019-6133](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6133)
    -   [CVE-2018-7740](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-7740)
    -   [CVE-2018-19985](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19985)
    -   [CVE-2018-1120](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1120)
    -   [CVE-2017-18241](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-18241)
-   2 of these discussed in previous episodes [Episode 23](https://ubuntusecuritypodcast.org/episode-23/) (PolicyKit start
    time, DoS via mmaping a FUSE-backed file into processes memory
    containing command-line args)
-   Trigger of BUG\_ON() in kernel (like assert() for kernel code) due to
    integer overflow from large pgoff parameter to remap\_file\_pages() when
    used in conjuction with an existing mmap() -> crash -> DoS
-   OOB read in USB driver for Option High Speed mobile devices - would
    read a descriptor from the USB device as a u8 and then index into an
    array with this without checking whether it fell within the array
-   NULL pointer dereference in f2fs driver via use of noflush\_merge mount
    option


### [[USN-3908-1](https://usn.ubuntu.com/3908-1/), [USN-3908-2](https://usn.ubuntu.com/3908-2/)] Linux kernel vulnerability {#usn-3908-1-usn-3908-2-linux-kernel-vulnerability}

-   1 CVEs addressed in Trusty and Precise ESM (Trusty HWE)
    -   [CVE-2019-6133](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6133)
-   See last week's [Episode 23](https://ubuntusecuritypodcast.org/episode-23/) - discussed for Bionic kernel - now for
    Trusty kernel (and the Trusty HWE kernel backported to Precise ESM)
    -   PolicyKit start time issue, fixed in kernel


### [[USN-3909-1](https://usn.ubuntu.com/3909-1/)] libvirt vulnerability {#usn-3909-1-libvirt-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2019-3840](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3840)
-   NULL pointer dereference in libvirt if agent does not reply in time
    (say guest is being shutdown) - crash host libvirt -> DoS


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu Hardening Response {#ubuntu-hardening-response}

-   Alexander Popov
    -   [Responsible for getting STACKLEAK into the mainline kernel](https://lwn.net/Articles/764325/)
    -   Pointed out his [Linux Kernel Defence Map](https://github.com/a13xp0p0v/linux-kernel-defence-map) and [kconfig hardened check](https://github.com/a13xp0p0v/kconfig-hardened-check)
    -   We use kconfig hardened check internall and tyhicks has contributed
        [various](https://github.com/a13xp0p0v/kconfig-hardened-check/pull/9) [improvements](https://github.com/a13xp0p0v/kconfig-hardened-check/pull/10) which allow this to be used to check the
        various Ubuntu kernel configurations


### Extended Security Maintenance for Ubuntu 14.04 (Trusty Tahr) begins April 25 2019 {#extended-security-maintenance-for-ubuntu-14-dot-04--trusty-tahr--begins-april-25-2019}

-   <https://lists.ubuntu.com/archives/ubuntu-security-announce/2019-March/004800.html>
-   Ubuntu 14.04 LTS will transition to Extended Security Maintenance on Tuesday 25th April
-   Encourage users to upgrade to Xenial (and then Bionic)
-   [ESM for 14.04 provided to customers via Ubuntu Advantage](https://blog.ubuntu.com/2019/02/05/ubuntu-14-04-trusty-tahr)
-   [Further details regarding ESM](https://www.ubuntu.com/esm)


### Hiring {#hiring}


#### Ubuntu Security Generalist {#ubuntu-security-generalist}

-   <https://boards.greenhouse.io/canonical/jobs/1548812>


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)