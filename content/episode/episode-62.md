+++
title = "Episode 62"
description = """
  This week Alex and Joe take an indepth look at the recent Sudo
  vulnerability CVE-2019-18634 plus we look at security updates for
  OpenSMTPD, systemd, Mesa, Yubico PIV tool and more. We also look at a
  recent job opening for a Robotics Security Engineer to join the Ubuntu
  Security team.
  """
date = 2020-02-13T21:53:00+10:30
lastmod = 2020-05-08T16:34:45+09:30
draft = false
weight = 1012
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E062.mp3"
podcast_duration = "24:18"
podcast_bytes = 23336881
permalink = "https://ubuntusecuritypodcast.org/episode-62/"
guid = "cbcb26e438872f506b36e8e7b7ee21d106655701064861773b7ba0656374e5175dc4e6723661b01cf4f97a1528c9f5675d11820976fb85a19117a2e2c82c30bf"
+++

## Overview {#overview}

This week Alex and Joe take an indepth look at the recent Sudo
vulnerability CVE-2019-18634 plus we look at security updates for
OpenSMTPD, systemd, Mesa, Yubico PIV tool and more. We also look at a
recent job opening for a Robotics Security Engineer to join the Ubuntu
Security team.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

33 unique CVEs addressed


### [[USN-4263-2](https://usn.ubuntu.com/4263-2/)] Sudo vulnerability [00:41] {#usn-4263-2-sudo-vulnerability-00-41}

-   1 CVEs addressed in Precise ESM, Trusty ESM
    -   [CVE-2019-18634](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18634) <!-- low -->
-   See [Episode 61](https://ubuntusecuritypodcast.org/episode-61/) and discussion later in episode


### [[USN-4268-1](https://usn.ubuntu.com/4268-1/)] OpenSMTPD vulnerability [01:02] {#usn-4268-1-opensmtpd-vulnerability-01-02}

-   1 CVEs addressed in Bionic, Eoan
    -   [CVE-2020-7247](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7247) <!-- high -->
-   Logic bug caused existing sanity checks on MAIL FROM field to be skipped
    under certain scenarios - so by failing to perform this validation, could
    allow an attacker to input shell metacharacters to obtain command
    execution in smtpd (which runs as root) -> remote root command execution.
-   Fixed to always perform sanity checks on MAIL FROM


### [[USN-4269-1](https://usn.ubuntu.com/4269-1/)] systemd vulnerabilities [02:06] {#usn-4269-1-systemd-vulnerabilities-02-06}

-   5 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-1712](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1712) <!-- medium -->
    -   [CVE-2019-3844](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3844) <!-- low -->
    -   [CVE-2019-3843](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3843) <!-- low -->
    -   [CVE-2019-20386](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20386) <!-- low -->
    -   [CVE-2018-16888](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16888) <!-- low -->
-   Heap UAF when handing asynchronous policykit queries and dbus messages -
    could allow possible root privesc
-   Possible sandbox escape through DynamicUser property on services via
    setuid binaries to gain new privileges or created setgid binaries
-   Also DynamicUser services can create setuid/setgid binaries which could
    then be used to escalate privileges after
    -   Both low priority since not many users of DynamicUser services plus
        requires cooperation between the service and a helper so can't be
        directly exploited
-   Memory leak in logind when executing udevadm trigger command
-   Possible to get systemd to kill the wrong process if can write to it's
    PIDFile since the pid specified here is not validated


### [[USN-4267-1](https://usn.ubuntu.com/4267-1/)] ARM mbed TLS vulnerabilities [03:26] {#usn-4267-1-arm-mbed-tls-vulnerabilities-03-26}

-   5 CVEs addressed in Xenial
    -   [CVE-2018-0498](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-0498) <!-- medium -->
    -   [CVE-2018-0497](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-0497) <!-- medium -->
    -   [CVE-2018-0488](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-0488) <!-- high -->
    -   [CVE-2018-0487](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-0487) <!-- high -->
    -   [CVE-2017-18187](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-18187) <!-- medium -->
-   lightweight crypto / TLS library
-   integer overflow -> heap overflow -> RCE / DoS
-   read buffer overflow in handling of certificate chains -> DOS
-   2 different cache side-channel attacks which could allow a remote
    attacker to recover partial plaintext for CBC modes


### [[USN-4270-1](https://usn.ubuntu.com/4270-1/)] Exiv2 vulnerability [04:22] {#usn-4270-1-exiv2-vulnerability-04-22}

-   1 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2019-20421](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20421) <!-- medium -->
-   Infinite loop in JP2 image metadata parser -> CPU DoS


### [[USN-4271-1](https://usn.ubuntu.com/4271-1/)] Mesa vulnerability [04:38] {#usn-4271-1-mesa-vulnerability-04-38}

-   1 CVEs addressed in Bionic, Eoan
    -   [CVE-2019-5068](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5068) <!-- medium -->
-   Created a shared memory segment with world readable and writable
    permissions - so any local user could interfere with or access shared
    memory buffers which are often used for back buffers to improve
    performance - changed to open as only user readable / writable


### [[USN-4272-1](https://usn.ubuntu.com/4272-1/)] Pillow vulnerabilities [05:24] {#usn-4272-1-pillow-vulnerabilities-05-24}

-   6 CVEs addressed in Trusty ESM, Xenial, Bionic, Eoan
    -   [CVE-2020-5313](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-5313) <!-- medium -->
    -   [CVE-2020-5311](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-5311) <!-- medium -->
    -   [CVE-2020-5310](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-5310) <!-- medium -->
    -   [CVE-2020-5312](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-5312) <!-- medium -->
    -   [CVE-2019-19911](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19911) <!-- low -->
    -   [CVE-2019-16865](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16865) <!-- low -->
-   Python Image Library
-   Various errors in handling image formats -> Crash -> DoS, RCE etc


### [[USN-4273-1](https://usn.ubuntu.com/4273-1/)] ReportLab vulnerability [05:48] {#usn-4273-1-reportlab-vulnerability-05-48}

-   1 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2019-17626](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17626) <!-- medium -->
-   Python library used for creating PDFs
-   RCE via a crafted XML document - would eval() an argument which comes
    from a document and so would execute arbitrary python code from the
    document as a result


### [[USN-4250-2](https://usn.ubuntu.com/4250-2/)] MariaDB vulnerability [06:21] {#usn-4250-2-mariadb-vulnerability-06-21}

-   1 CVEs addressed in Bionic, Eoan
    -   [CVE-2020-2574](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-2574) <!-- medium -->
-   [Episode 60](https://ubuntusecuritypodcast.org/episode-60/) for MySQL - similar update for MariaDB - unfortunately no
    details from upstream


### [[USN-4275-1](https://usn.ubuntu.com/4275-1/)] Qt vulnerabilities [06:45] {#usn-4275-1-qt-vulnerabilities-06-45}

-   4 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-0570](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0570) <!-- medium -->
    -   [CVE-2020-0569](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0569) <!-- medium -->
    -   [CVE-2019-18281](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18281) <!-- medium -->
    -   [CVE-2018-19872](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19872) <!-- low -->
-   2 possible code execution bugs where Qt would search for plugins and
    libraries in incorrect locations, allowing a local attacker to get code
    execution
-   2 different buffer overflow vulnerabilities in handling PPM images and in
    text files with many unicode directional characters


### [[USN-4274-1](https://usn.ubuntu.com/4274-1/)] libxml2 vulnerabilities [07:20] {#usn-4274-1-libxml2-vulnerabilities-07-20}

-   2 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Eoan
    -   [CVE-2020-7595](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7595) <!-- medium -->
    -   [CVE-2019-19956](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19956) <!-- low -->
-   Infinite loop for crafted XML documents -> CPU DoS
-   Memory leak


### [[USN-4276-1](https://usn.ubuntu.com/4276-1/)] Yubico PIV Tool vulnerabilities [07:41] {#usn-4276-1-yubico-piv-tool-vulnerabilities-07-41}

-   2 CVEs addressed in Bionic
    -   [CVE-2018-14780](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14780) <!-- high -->
    -   [CVE-2018-14779](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14779) <!-- high -->
-   Yubico PIV (personal identity verificatiion) smart card driver - can be
    used with a Yubikey to do authentication
-   2 different buffer overflows able to be triggered by a malicious USB
    device - could lead to possible code execution


### [[USN-4277-1](https://usn.ubuntu.com/4277-1/)] libexif vulnerabilities [08:14] {#usn-4277-1-libexif-vulnerabilities-08-14}

-   3 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Eoan
    -   [CVE-2019-9278](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9278) <!-- medium -->
    -   [CVE-2017-7544](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-7544) <!-- low -->
    -   [CVE-2016-6328](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-6328) <!-- low -->
-   Buffer overflow (crash or RCE) and 2 buffer over reads (crash / info
    disclosure)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe discuss the recent sudo vulnerability ([CVE-2019-18634](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18634)) [08:46] {#alex-and-joe-discuss-the-recent-sudo-vulnerability--cve-2019-18634--08-46}

-   <https://threatpost.com/docker-registries-malware-data-theft/152734/>


### Hiring [22:07] {#hiring-22-07}


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://canonical.com/careers/1550997>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)