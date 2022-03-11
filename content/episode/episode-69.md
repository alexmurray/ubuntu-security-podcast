+++
title = "Episode 69"
description = """
  This week we cover security updates for a Linux kernel vulnerability
  disclosed during pwn2own, Timeshift, pam-krb5 and more, plus we have a
  special guest, Vineetha Kamath, to discuss security certifications for
  Ubuntu.
  """
date = 2020-04-02T16:32:00+10:30
lastmod = 2020-05-15T16:38:26+09:30
draft = false
weight = 1006
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E069.mp3"
podcast_duration = "20:24"
podcast_bytes = 19586521
permalink = "https://ubuntusecuritypodcast.org/episode-69/"
guid = "54acb3f1d99f7e138c0b47e12f3aa055d4330e7937cc9eb6e2453df849a76fed266be57f9e59c68dd957b9c370624697eb53175a7f475b952b70fed6a5c7be2f"
+++

## Overview {#overview}

This week we cover security updates for a Linux kernel vulnerability
disclosed during pwn2own, Timeshift, pam-krb5 and more, plus we have a
special guest, Vineetha Kamath, to discuss security certifications for
Ubuntu.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

10 unique CVEs addressed


### [[USN-4308-2](https://usn.ubuntu.com/4308-2/)] Twisted vulnerabilities [00:42] {#usn-4308-2-twisted-vulnerabilities-00-42}

-   4 CVEs addressed in Trusty ESM
    -   [CVE-2020-10109](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10109)
    -   [CVE-2020-10108](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10108)
    -   [CVE-2019-12855](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12855)
    -   [CVE-2019-12387](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12387)
-   [Episode 68](https://ubuntusecuritypodcast.org/episode-68/) - 4 of the 7 CVEs described there affect Twisted in 14.04
    ESM


### [[USN-4310-1](https://usn.ubuntu.com/4310-1/)] WebKitGTK+ vulnerability [01:09] {#usn-4310-1-webkitgtk-plus-vulnerability-01-09}

-   1 CVEs addressed in Bionic, Eoan
    -   [CVE-2020-10018](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10018)
-   UAF - discovered by CloudFuzz


### [[USN-4312-1](https://usn.ubuntu.com/4312-1/)] Timeshift vulnerability [01:49] {#usn-4312-1-timeshift-vulnerability-01-49}

-   1 CVEs addressed in Eoan
    -   [CVE-2020-10174](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10174)
-   Reuses predictably named temporary directory to execute scripts - and
    runs as root - so a local attacker could replace the script in this
    predictably named directory with one containing malicious commands, to
    get code execution as root. Fixed by using a randomly named directory
    **and** setting the permissions on it so other users can't write to it.


### [[USN-4313-1](https://usn.ubuntu.com/4313-1/)] Linux kernel vulnerability [02:43] {#usn-4313-1-linux-kernel-vulnerability-02-43}

-   1 CVEs addressed in Bionic, Eoan
    -   [CVE-2020-8835](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8835)
-   pwn2own - Manfred Paul discovered the BPF verifier in the Linux kernel
    did not properly calculate register bounds for 32-bit operations - so if
    allow unprivileged users to load BPF, this could be used to read or write
    kernel memory. Can then use this to elevate privileges to root.
-   <https://www.thezdi.com/blog/2020/3/19/pwn2own-2020-day-one-results>


### [[USN-4311-1](https://usn.ubuntu.com/4311-1/)] BlueZ vulnerabilities [03:52] {#usn-4311-1-bluez-vulnerabilities-03-52}

-   2 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2016-7837](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-7837)
    -   [CVE-2020-0556](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0556)
-   Didn't handle bonding of HID and HOGP (HID over GATT - Generic Attribute
    Profile) devices - local attacker could use this to impersonate
    non-bonded devices
-   Buffer overflow in parse\_line function used by some CLI-based userland
    utils


### [[USN-4314-1](https://usn.ubuntu.com/4314-1/)] pam-krb5 vulnerability [04:50] {#usn-4314-1-pam-krb5-vulnerability-04-50}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Eoan
    -   [CVE-2020-10595](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10595)
-   Single-byte buffer overflow could potentially allow RCE - buffer is
    provided by underlying kerberos library - attacker can supply input of
    special length to overflow this and then cause memory corruption -
    possible heap or stack corruption. Only used in code-paths where Kerberos
    lib does supplemental prompting, or if running PAM with no\_prompt
    configured.


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe and Vineetha discuss security certifications for Ubuntu [06:14] {#joe-and-vineetha-discuss-security-certifications-for-ubuntu-06-14}


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)