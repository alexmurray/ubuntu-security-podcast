+++
title = "Episode 20"
description = "This week we look at Linux kernel updates for all releases, OpenSSH, dovecot, curl and more. Plus we answer some frequently asked questions for Ubuntu security, in particular the perennial favourite of why we choose to just backport security fixes instead of doing rolling package version updates to resolve outstanding CVEs."
date = 2019-02-11
lastmod = 2019-07-24T09:27:54+09:30
draft = false
weight = 1021
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E020.mp3"
podcast_duration = "16:55"
podcast_bytes = 16242441
permalink = "https://ubuntusecuritypodcast.org/episode-20/"
+++

## Overview {#overview}

This week we look at Linux kernel updates for all releases, OpenSSH, dovecot, curl and more. Plus we answer some frequently asked questions for Ubuntu security, in particular the perennial favourite of why we choose to just backport security fixes instead of doing rolling package version updates to resolve outstanding CVEs.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

33 unique CVEs addressed


### [[USN-3871-3](https://usn.ubuntu.com/3871-3/), [USN-3871-4](https://usn.ubuntu.com/3871-4/), [USN-3871-5](https://usn.ubuntu.com/3871-5/)] Linux kernel vulnerabilities {#usn-3871-3-usn-3871-4-usn-3871-5-linux-kernel-vulnerabilities}

-   13 CVEs addressed in Bionic and Xenial (HWE - backport of Bionic kernel to Xenial)
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
-   Last week ([Episode 19](https://ubuntusecuritypodcast.org/episode-19/)) covered kernel update for Bionic in preparation for 18.04.2
    -   this is the corresponding update for various platforms using the Bionic kernel
    -   (AWS, GCP, KVM, OEM, Raspberry Pi 2) (Azure)


### [[USN-3878-1](https://usn.ubuntu.com/3878-1/), [USN-3878-2](https://usn.ubuntu.com/3878-2/)] Linux kernel vulnerabilities {#usn-3878-1-usn-3878-2-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Cosmic
    -   [CVE-2018-19854](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19854)
    -   [CVE-2018-19407](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19407)
    -   [CVE-2018-16882](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16882)
    -   [CVE-2018-14625](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14625)
-   Last week ([Episode 19](https://ubuntusecuritypodcast.org/episode-19/)) covered kernel update for Bionic in preparation for 18.04.2
    -   Included the Cosmic HWE kernel for Bionic as well - this is the corresponding update for Cosmic itself on all supported platforms (physical and cloud etc)


### [[USN-3879-1](https://usn.ubuntu.com/3879-1/), USN-3879-2] Linux kernel vulnerabilities {#usn-3879-1-usn-3879-2-linux-kernel-vulnerabilities}

-   5 CVEs addressed in Xenial and Trusty (Xenial HWE)
    -   [CVE-2018-20169](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20169)
    -   [CVE-2018-19824](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19824)
    -   [CVE-2018-19407](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19407)
    -   [CVE-2018-16862](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16862)
    -   [CVE-2018-10883](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10883)
-   OOB read on reading USB device descriptor  - need local physical access to connect a malicious device - crash -> DoS
-   UAF in ALSA via a malicious USB sound device that expose zero interfaces - crash -> DoS, possible code execution
-   Uninitialised ioapics ([Episode 19](https://ubuntusecuritypodcast.org/episode-19/))
-   Cleancache subsystem - after file truncation (removal), wouldn't properly clear inode so if a new file was created with the same inode might contain leftover pages from cleancache and hence the data from the old file
    -   Only affects Ubuntu kernels under Xen with tmem driver
-   ext4 - OOB write via malicious crafted image


### [[USN-3880-1](https://usn.ubuntu.com/3880-1/), USN-3880-2] Linux kernel vulnerabilities {#usn-3880-1-usn-3880-2-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Trusty and Precise ESM (Trusty HWE)
    -   [CVE-2018-9568](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-9568)
    -   [CVE-2018-18281](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18281)
    -   [CVE-2018-17972](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17972)
    -   [CVE-2018-1066](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1066)
-   Possible memory corruption via type confusion when cloning a socket - privilege escalation
-   mremap() issue (covered in [Episode 15](https://ubuntusecuritypodcast.org/episode-15/))
-   procfs stack unwinding to leak kernel stack from other task (covered in [Episode 12](https://ubuntusecuritypodcast.org/episode-12/))
-   NULL pointer dereference in CIFS client in kernel triggered by a malicious server (crash -> DoS)


### [[USN-3881-1](https://usn.ubuntu.com/3881-1/), [USN-3881-2](https://usn.ubuntu.com/3881-2/)] Dovecot vulnerability {#usn-3881-1-usn-3881-2-dovecot-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-3814](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3814)
-   Interaction of username / password authentication with trusted SSL cert - can configure for user/pass but can also configure for client to present a trusted cert
-   Can configure to take username from cert instead of from explicit username AND also to configure no password if using cert
-   BUT if no username in cert, will use specified username - so could log in as any user


### [[USN-3882-1](https://usn.ubuntu.com/3882-1/)] curl vulnerabilities {#usn-3882-1-curl-vulnerabilities}

-   3 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-3823](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3823)
    -   [CVE-2019-3822](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3822)
    -   [CVE-2018-16890](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16890)
-   OOB read when parsing end of response for SMTP
-   Stack buffer overflow when creating an NTLMv2 type-3 header based on previous received data (size checks were not sufficient since they suffered from an integer overflow)
-   OOB read for NTLM type-2 handling via an integer overflow


### [[USN-3883-1](https://usn.ubuntu.com/3883-1/)] LibreOffice vulnerabilities {#usn-3883-1-libreoffice-vulnerabilities}

-   5 CVEs addressed in Trusty, Xenial
    -   [CVE-2018-16858](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16858)
    -   [CVE-2018-10583](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10583)
    -   [CVE-2018-11790](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11790)
    -   [CVE-2018-10120](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10120)
    -   [CVE-2018-10119](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10119)
-   3 CVEs for mishandling various elements in different document types - UAF, heap-based buffer overflow (write) etc) - crash -> DoS, possible code execution
-   Information disclosure (leak of NTLM hashes) via an embedded link to a remote SMB resource within a document
-   Directory traversal flaw leading to code execution
    -   document can links which like HTML, can have attributes such as a
        script which will get executed without prompting - so onMouseOver()
        etc
    -   and this can refer to a file on the local filesystem outside the
        document structure itself
    -   libreoffice ships with it's own Python interpreter that contains
        functions which can be abused to run arbitrary commands
    -   so can specify both the path to one of these files AND arguments to
        pass to it to run


### [[USN-3884-1](https://usn.ubuntu.com/3884-1/)] libarchive vulnerabilities {#usn-3884-1-libarchive-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-1000020](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1000020)
    -   [CVE-2019-1000019](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1000019)
-   Infinite loop when parsing a specially crafted ISO9660 CD/DVD iso file -> DoS
-   OOB read when decompressing a specially crafted 7z file -> crash -> DoS


### [[USN-3885-1](https://usn.ubuntu.com/3885-1/)] OpenSSH vulnerabilities {#usn-3885-1-openssh-vulnerabilities}

-   3 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-6111](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6111)
    -   [CVE-2019-6109](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6109)
    -   [CVE-2018-20685](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20685)
-   Three vulnerabilities in scp able to be triggered via a malicious server (low probability)
    -   Fails to validate file names from the remote server match the requested ones - server can overwrite arbitrary files on local side in the target directory
    -   Fails to use proper character encoding in progress display, allows server to manipulate output of client to hide output of additional files being sent
    -   Fails to check if target filename is . or empty - allows remote server to change permissions of the client local directory
-   Together allow a server to easily overwrite local files on the client side without the client user being aware


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### FAQs about Ubuntu Security {#faqs-about-ubuntu-security}


#### What packages are supported? {#what-packages-are-supported}

-   main only (~2.3k source packages in Bionic - cf. universe ~26k source packages)


#### What timeframe? {#what-timeframe}

-   lifetime of the release - so from official release date to EOL date
-   LTS: 5 years, non-LTS: 9 months
-   [ESM provides security fixes beyond the EOL for LTS releases](https://www.ubuntu.com/esm)


#### Why do we backport patches instead of just updating to the lastest versions? {#why-do-we-backport-patches-instead-of-just-updating-to-the-lastest-versions}

-   Users expect high degree of stability
    -   changes need caution and good rationale
    -   lots of previous regressions from innocent looking changes
    -   no change is completely free of risk
-   Only changes which have high impact (security fixes, severe regressions, loss of data etc)
-   More details see [SRU page on Ubuntu wiki](https://wiki.ubuntu.com/StableReleaseUpdates#Why)
-   So security updates must follow suit


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net?channels=%23ubuntu-hardened&uio=d4)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)