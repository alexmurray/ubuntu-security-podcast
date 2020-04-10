+++
title = "Episode 43"
description = "This week we cover vulnerabilities in Ghostscript, the Linux kernel, nginx and more, and we follow up last weeks interview with another interview with Jamie Strandboge, this time talking about the history of the Ubuntu Security team."
date = 2019-08-21T20:58:00+09:30
lastmod = 2020-04-10T14:13:49+09:30
draft = false
weight = 1028
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E043.mp3"
podcast_duration = "26:20"
podcast_bytes = 25284558
permalink = "https://ubuntusecuritypodcast.org/episode-43/"
guid = "1415efd498db59ba97e4860b7a2eda77924ceaaed942127fa960ff48a6a5417668327be0327d27ec5271511fc63006be01000b872c0035213a4a09d03232622f"
+++

## Overview {#overview}

This week we cover vulnerabilities in Ghostscript, the Linux kernel, nginx and more, and we follow up last weeks interview with another interview with Jamie Strandboge, this time talking about the history of the Ubuntu Security team.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

53 unique CVEs addressed


### [[USN-4091-1](https://usn.ubuntu.com/4091-1/)] poppler vulnerability {#usn-4091-1-poppler-vulnerability}

-   1 CVEs addressed in Bionic, Disco
    -   [CVE-2019-14494](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14494)
-   Divide by zero when texture surface specified with 0 length or width -
    found via fuzzing - handled by checking first for zero-length and
    returning an error -> DoS


### [[USN-4092-1](https://usn.ubuntu.com/4092-1/)] Ghostscript vulnerability {#usn-4092-1-ghostscript-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-10216](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10216)
-   Yet another Ghostscript -dSAFER sandbox bypass - [Episode 31](https://ubuntusecuritypodcast.org/episode-31/), [Episode 25](https://ubuntusecuritypodcast.org/episode-25/),
    [Episode 18](https://ubuntusecuritypodcast.org/episode-18/), [Episode 14](https://ubuntusecuritypodcast.org/episode-14/), [Episode 10](https://ubuntusecuritypodcast.org/episode-10/), [Episode 7](https://ubuntusecuritypodcast.org/episode-7/), [Episode 5](https://ubuntusecuritypodcast.org/episode-5/)
-   Allows to escape the sandbox and use the various Ghostscript APIs for
    arbitrary file access / modification etc.
    -   Related: ImageMagick policy update [Episode 38](https://ubuntusecuritypodcast.org/episode-38/)


### [[USN-4070-2](https://usn.ubuntu.com/4070-2/), [USN-4070-3](https://usn.ubuntu.com/4070-3/)] MariaDB vulnerabilities {#usn-4070-2-usn-4070-3-mariadb-vulnerabilities}

-   4 CVEs addressed in Bionic and Disco
    -   [CVE-2019-2805](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2805)
    -   [CVE-2019-2740](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2740)
    -   [CVE-2019-2739](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2739)
    -   [CVE-2019-2737](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2737)
-   4 CVEs addressed in Disco only
    -   [CVE-2019-2614](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2614)
    -   [CVE-2019-2627](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2627)
    -   [CVE-2019-2628](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2628)
    -   [CVE-2019-2758](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2758)
-   Covered some for MySQL in [Episode 41](https://ubuntusecuritypodcast.org/episode-41/)


### [[USN-4093-1](https://usn.ubuntu.com/4093-1/)] Linux kernel vulnerabilities {#usn-4093-1-linux-kernel-vulnerabilities}

-   7 CVEs addressed in Bionic (HWE), Disco
    -   [CVE-2019-3846](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3846)
    -   [CVE-2019-13272](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13272)
    -   [CVE-2019-13233](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13233)
    -   [CVE-2019-12984](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12984)
    -   [CVE-2019-12614](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12614)
    -   [CVE-2019-1125](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1125)
    -   [CVE-2019-10126](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10126)
-   Latest speculative execution side-channel attack - SWAPGS
    -   <https://www.bitdefender.com/business/swapgs-attack.html>
    -   Userspace can speculatively execute SWAPGS, allowing it to potentially
        read kernel memory by speculatively swapping out userspace for kernel
        memory - requires an appropriate gadget in the kernel
    -   Linux not believed to be affected, since no appropriate gadget is
        available, however we have proactively included the upstream fix which
        is to add LFENCE calls around SWAPGS to ensure SWAPGS occurs before any
        subsequent memory reads to / from userspace
-   2 different memory corruption issues in the Marvell Wifi driver -
    wouldn't do bounds checking on structures passed to it from user-space -
    could allow DoS via crash or RCE
-   NULL ptr dereferences:
    -   NFC subsystem, able to be triggered from userspace (using netlink)
    -   PowerPC specific - could occur on memory allocation failures (failed to
        check NULL return value)
-   2 by Jann Horn:
    -   ptrace would record process credentials incorrectly, so that a local user
        can escalate to root in scenarios where a parent process drops privileges
        and then calls execve of an attacker controlled application
    -   UAF in handling of local descriptor table entries


### [[USN-4094-1](https://usn.ubuntu.com/4094-1/)] Linux kernel vulnerabilities {#usn-4094-1-linux-kernel-vulnerabilities}

-   32 CVEs addressed in Xenial (HWE), Bionic
    -   [CVE-2018-20511](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20511)
    -   [CVE-2019-3846](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3846)
    -   [CVE-2019-2101](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2101)
    -   [CVE-2019-2024](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2024)
    -   [CVE-2019-13272](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13272)
    -   [CVE-2019-13233](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13233)
    -   [CVE-2019-12984](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12984)
    -   [CVE-2019-12819](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12819)
    -   [CVE-2019-12818](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12818)
    -   [CVE-2019-12614](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12614)
    -   [CVE-2019-1125](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1125)
    -   [CVE-2019-10126](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10126)
    -   [CVE-2018-5383](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5383)
    -   [CVE-2018-20856](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20856)
    -   [CVE-2018-20169](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20169)
    -   [CVE-2018-16862](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16862)
    -   [CVE-2018-14617](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14617)
    -   [CVE-2018-14609](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14609)
    -   [CVE-2018-14613](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14613)
    -   [CVE-2018-14612](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14612)
    -   [CVE-2018-14611](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14611)
    -   [CVE-2018-14610](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14610)
    -   [CVE-2018-14615](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14615)
    -   [CVE-2018-13098](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13098)
    -   [CVE-2018-13096](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13096)
    -   [CVE-2018-14616](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14616)
    -   [CVE-2018-14614](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14614)
    -   [CVE-2018-13100](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13100)
    -   [CVE-2018-13099](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13099)
    -   [CVE-2018-13097](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13097)
    -   [CVE-2018-13093](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13093)
    -   [CVE-2018-13053](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13053)
-   Includes all from above, plus a heap of others - most interesting ones:
    -   Heaps of DoS via NULL dereference / divide by zero / invalid read when dealing with
        crafted file-system images (XFS, Ext4, F2FS, etc)
    -   Bluetooth crypto may not validate ECC parameters, allowing an attacker
        to force a weak key and snoop on communications as a result


### [[USN-4095-1](https://usn.ubuntu.com/4095-1/)] Linux kernel vulnerabilities {#usn-4095-1-linux-kernel-vulnerabilities}

-   8 CVEs addressed in Xenial
    -   [CVE-2019-9503](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9503)
    -   [CVE-2019-3846](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3846)
    -   [CVE-2019-13272](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13272)
    -   [CVE-2019-12614](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12614)
    -   [CVE-2019-11599](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11599)
    -   [CVE-2019-1125](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1125)
    -   [CVE-2019-10126](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10126)
    -   [CVE-2018-5383](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5383)
-   Marvell Wifi, ptrace, PowerPC, SWAPGS and Bluetooth ECC parameter
    validation mentioned above
-   Core dump race-condition ([Episode 41](https://ubuntusecuritypodcast.org/episode-41/))


### [[USN-4095-2](https://usn.ubuntu.com/4095-2/)] Linux kernel (Xenial HWE) vulnerabilities {#usn-4095-2-linux-kernel--xenial-hwe--vulnerabilities}

-   7 CVEs addressed in Trusty ESM
    -   [CVE-2019-3846](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3846)
    -   [CVE-2019-2054](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2054)
    -   [CVE-2019-12614](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12614)
    -   [CVE-2019-11833](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11833)
    -   [CVE-2019-1125](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1125)
    -   [CVE-2019-10126](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10126)
    -   [CVE-2018-5383](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5383)
-   Marvell, PowerPC, SWAPGS, Bluetooth
-   seccomp race, ext4 extents ([Episode 41](https://ubuntusecuritypodcast.org/episode-41/))


### [[USN-4096-1](https://usn.ubuntu.com/4096-1/)] Linux kernel (AWS) vulnerability {#usn-4096-1-linux-kernel--aws--vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-1125](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1125)
-   SWAPGS


### [[USN-4097-1](https://usn.ubuntu.com/4097-1/), [USN-4097-2](https://usn.ubuntu.com/4097-2/)] PHP vulnerabilities {#usn-4097-1-usn-4097-2-php-vulnerabilities}

-   2 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-11042](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11042)
    -   [CVE-2019-11041](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11041)
-   PHP EXIF parser would read past enf of supplied data - OOB read - crash -> DoS


### [[USN-4098-1](https://usn.ubuntu.com/4098-1/)] wpa\_supplicant and hostapd vulnerability {#usn-4098-1-wpa-supplicant-and-hostapd-vulnerability}

-   1 CVEs addressed in Bionic, Disco
    -   [CVE-2019-13377](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13377)
-   Side-channel attack when using brainpool curves for ECC in WPA3 - observe
    timing differences between various operations over long enough time to
    infer the resulting encryption key - hard to achieve same level of
    side-channel robustness as other ECC groups - recommended to disable
    Brainpool curves in the context of SAE and EAP-pwd -
    <https://w1.fi/security/2019-6/sae-eap-pwd-side-channel-attack-update.txt>


### [[USN-4099-1](https://usn.ubuntu.com/4099-1/)] nginx vulnerabilities {#usn-4099-1-nginx-vulnerabilities}

-   3 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-9516](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9516)
    -   [CVE-2019-9513](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9513)
    -   [CVE-2019-9511](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9511)
-   HTTP/2 DoS attacks
    -   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/http2>
    -   8 different vulnerabilities affecting a variety of HTTP/2
        implementations - disovered mainly by Netflix:
        <https://github.com/Netflix/security-bulletins/blob/master/advisories/third-party/2019-002.md>
    -   3 affect nginx
        -   0 length header
        -   resource loop
        -   data dribble


### [[USN-4101-1](https://usn.ubuntu.com/4101-1/)] Firefox vulnerability {#usn-4101-1-firefox-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-11733](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11733)
-   Upstream 68.0.2 release
-   Able to copy passwords from the Saved Logins dialog without entering
    Master Password - allows a local user with physical access to obtain
    passwords etc


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### History of Ubuntu Security with Jamie Strandboge and Joe McManus {#history-of-ubuntu-security-with-jamie-strandboge-and-joe-mcmanus}


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)