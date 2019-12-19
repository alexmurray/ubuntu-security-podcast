+++
title = "Episode 23"
description = "This week we look at security updates for the Linux kernel, PHP and NVIDIA drivers, revealing recent research into GPU based side-channel attacks plus we call for suggestions on hardening features and more."
date = 2019-03-12
lastmod = 2019-12-19T13:38:32+10:30
draft = false
weight = 1035
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E023.mp3"
podcast_duration = "13:10"
podcast_bytes = 12641723
permalink = "https://ubuntusecuritypodcast.org/episode-23/"
+++

## Overview {#overview}

This week we look at security updates for the Linux kernel, PHP and NVIDIA drivers, revealing recent research into GPU based side-channel attacks plus we call for suggestions on hardening features and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

10 unique CVEs addressed


### [[USN-3885-2](https://usn.ubuntu.com/3885-2/)] OpenSSH vulnerability {#usn-3885-2-openssh-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-6111](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6111)
-   Originally covered in [Episode 20](https://ubuntusecuritypodcast.org/episode-20) (malicious server could overwrite local client files)
-   Previous fix was incomplete - missing a patch


### [[USN-3901-1](https://usn.ubuntu.com/3901-1/), [USN-3901-2](https://usn.ubuntu.com/3901-2/)] Linux kernel vulnerabilities {#usn-3901-1-usn-3901-2-linux-kernel-vulnerabilities}

-   3 CVEs addressed in Bionic, Trusty & Xenial (Bionic HWE kernel)
    -   [CVE-2019-6133](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6133)
    -   [CVE-2018-19854](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19854)
    -   [CVE-2018-18397](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18397)
-   2 out of 3 from Jann Horn
    -   PolicyKit provides ability to authorise an application to perform privileged actions
    -   Pops up dialog for use to authorise via password - PolicyKit then caches that authorisation (5mins)
    -   To identify same process in future, would look at both the PID and process start time to guard against PID reuse etc
    -   However, fork() system call is not atomic, so attacked could call sys\_clone() at same time as real process so it has the same start time. Can then cause kernel to block on returning back to the attacker process, effectively racing against the real process waiting for it to end, in the meantime blocking PID allocation until it has cycled around and end up with the same (reused) PID as the original authorised process (and with same start time) - so can effectively fool PolicyKit into impersonating the real process
    -   Fix kernel to make fork() atomic rather than try fix PolicyKit since can't effectively do this at the process level
    -   Kernel fixed to record process start time later in procedure so is much closer to when the process is visible to userspace and after userspace has a chance to delay it to mitigate this

    -   Jann also discovered that userfaultfd does not properly handle access control for certain ioctl() - which allowed local users to write data into holes in a tmpfs file, even if the user only had read-only access to the file
-   crypto subsystem would leak uninitialized stack memory to userspace
    -   Occurred from a recent change to convert strncpy() to strlcpy() used to copy strings into various crypto buffers
    -   strncpy() does not guarantee NULL termination so strlcpy() was used which does - HOWEVER, strncpy() would NULL pad out remaining bytes if buffer was longer than string - whereas strlcpy() would only NULL the first one - and so would have uninitialised bytes remaining
    -   Fixed by changing back to strncpy()


### [[USN-3903-1](https://usn.ubuntu.com/3903-1/), USN-3903-2] Linux kernel vulnerabilities {#usn-3903-1-usn-3903-2-linux-kernel-vulnerabilities}

-   3 CVEs addressed in Cosmic & Bionic (Cosmic HWE kernel)
    -   [CVE-2019-6133](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6133)
    -   [CVE-2018-18397](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18397)
    -   [CVE-2018-16880](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16880)
-   fork() start time and userfaultfd issues described earlier for the Bionic kernel update
-   Out of bounds write in vhost\_net driver used by virtualized guests - allows guest to corrupt host kernel memory -> host crash -> DoS, or possible arbitrary code execution in host kernel


### [[USN-3902-1](https://usn.ubuntu.com/3902-1/)] PHP vulnerabilities {#usn-3902-1-php-vulnerabilities}

-   5 CVEs addressed in Trusty, Xenial
    -   [CVE-2019-9023](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9023)
    -   [CVE-2019-9022](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9022)
    -   [CVE-2019-9021](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9021)
    -   [CVE-2019-9024](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9024)
    -   [CVE-2019-9020](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9020)
-   All allow a remote attacker to crash PHP -> DoS
-   2 in XML-RPC module - remote procedure call via XML - used for various wiki backends etc - heap OOB read / UAF
-   1 in PHAR (PHP Archive) module - incorrect handling of filenames - crash via upload of crafted PHAR archive due to a heap based buffer over-read
-   1 in DNS handling (only affects PHP in Xenial) - remote attacker who can control returned DNS response could crash PHP due to buffer over-read on memcpy()
-   1 in mbstring regular expression - multiple heap based buffer over-reads in handling of multibyte sequences in regular expressions


### [[USN-3904-1](https://usn.ubuntu.com/3904-1/)] NVIDIA graphics drivers vulnerability {#usn-3904-1-nvidia-graphics-drivers-vulnerability}

-   1 CVE addressed in Bionic, Cosmic
    -   [CVE-2018-6260](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-6260)
-   Recent research into GPU side-channel attacks
    -   [Rendered Insecure: GPU Side Channel A!acks are Practical](https://www.cs.ucr.edu/~zhiyunq/pub/ccs18%5Fgpu%5Fside%5Fchannel.pdf)
-   Local users could access GPU performance counters without special privileges
-   Allows to characterise the GPU workload to fingerprint websites etc being rendered
-   Now requires administrator privileges to access so unable to be done from a regular user


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu Hardening Guide {#ubuntu-hardening-guide}

-   Ubuntu tries to offer a usable, hardened approach out of the box
    -   No open ports, various kernel and compiler hardening options etc
-   Thinking about publishing a hardening guide that goes beyond the defaults
-   Welcome suggestions from the community


### Hiring {#hiring}


#### Ubuntu Security Generalist {#ubuntu-security-generalist}

-   <https://boards.greenhouse.io/canonical/jobs/1548812>


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)