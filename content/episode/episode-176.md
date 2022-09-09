+++
title = "Episode 176"
description = """
  On this week's episode we dive into the Shikitega Linux malware report from AT&amp;T
  Alien Labs, plus we cover security updates for the Linux kernel, curl and
  Zstandard as well as some open positions on the team. Join us!
  """
date = 2022-09-09T14:20:00+09:30
lastmod = 2022-09-09T14:24:20+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E176.mp3"
podcast_duration = 769
podcast_bytes = 8809875
permalink = "https://ubuntusecuritypodcast.org/episode-176/"
guid = "0911577d54ba0fb45c577e01f98db9b4d2ad924219830d9166749894b47fab9d1c47be6bf70a24e28a0171cb22c8217d0953e79c8b1f10ce7cc44acbc78bff5b"
+++

## Overview {#overview}

On this week's episode we dive into the Shikitega Linux malware report from AT&amp;T
Alien Labs, plus we cover security updates for the Linux kernel, curl and
Zstandard as well as some open positions on the team. Join us!


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

13 unique CVEs addressed


### [[USN-5591-1](https://ubuntu.com/security/notices/USN-5591-1), [USN-5591-2](https://ubuntu.com/security/notices/USN-5591-2), [USN-5591-3](https://ubuntu.com/security/notices/USN-5591-3), [USN-5591-4](https://ubuntu.com/security/notices/USN-5591-4), [USN-5597-1](https://ubuntu.com/security/notices/USN-5597-1), [USN-5598-1](https://ubuntu.com/security/notices/USN-5598-1)] Linux kernel (+ HWE, AWS, Oracle) vulnerability [00:47] {#usn-5591-1-usn-5591-2-usn-5591-3-usn-5591-4-usn-5597-1-usn-5598-1-linux-kernel--plus-hwe-aws-oracle--vulnerability-00-47}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-33656](https://ubuntu.com/security/CVE-2021-33656) <!-- medium -->
-   OOB write in virtual terminal driver when changing VGA console fonts - covered
    back in [USN-5580-1 - Linux kernel (AWS) vulnerabilities - in Episode 175]({{< relref "episode-175#usn-5580-1-linux-kernel--aws--vulnerabilities-01-54" >}})


### [[USN-5592-1](https://ubuntu.com/security/notices/USN-5592-1), [USN-5595-1](https://ubuntu.com/security/notices/USN-5595-1), [USN-5596-1](https://ubuntu.com/security/notices/USN-5596-1), [USN-5600-1](https://ubuntu.com/security/notices/USN-5600-1)] Linux kernel (+ OEM, HWE) vulnerabilities [01:04] {#usn-5592-1-usn-5595-1-usn-5596-1-usn-5600-1-linux-kernel--plus-oem-hwe--vulnerabilities-01-04}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2021-33656](https://ubuntu.com/security/CVE-2021-33656) <!-- medium -->
    -   [CVE-2021-33061](https://ubuntu.com/security/CVE-2021-33061) <!-- medium -->
-   OOB write in virtual terminal driver when changing VGA console fonts
-   Improper control flow mgmt in Intel 10GbE PCIe driver - local DoS


### [[USN-5594-1](https://ubuntu.com/security/notices/USN-5594-1), [USN-5599-1](https://ubuntu.com/security/notices/USN-5599-1)] Linux kernel (+ Oracle) vulnerabilities [01:28] {#usn-5594-1-usn-5599-1-linux-kernel--plus-oracle--vulnerabilities-01-28}

-   9 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-2959](https://ubuntu.com/security/CVE-2022-2959) <!-- medium -->
    -   [CVE-2022-2873](https://ubuntu.com/security/CVE-2022-2873) <!-- medium -->
    -   [CVE-2022-2503](https://ubuntu.com/security/CVE-2022-2503) <!-- medium -->
    -   [CVE-2022-1973](https://ubuntu.com/security/CVE-2022-1973) <!-- medium -->
    -   [CVE-2022-1943](https://ubuntu.com/security/CVE-2022-1943) <!-- medium -->
    -   [CVE-2022-1852](https://ubuntu.com/security/CVE-2022-1852) <!-- medium -->
    -   [CVE-2022-1729](https://ubuntu.com/security/CVE-2022-1729) <!-- low -->
    -   [CVE-2022-1012](https://ubuntu.com/security/CVE-2022-1012) <!-- medium -->
    -   [CVE-2021-33061](https://ubuntu.com/security/CVE-2021-33061) <!-- medium -->
-   Above issues plus:
    -   NULL pointer deref in KVM on host if a VM tried to execute an illegal instruction
    -   OOB write in UDF file-system driver
    -   UAF in NFTS under certain error conditions
    -   OOB write in Intel SMBus host controller driver
    -   Race condition in handling of pipe buffers -&gt; OOB


### [[USN-5587-1](https://ubuntu.com/security/notices/USN-5587-1)] curl vulnerability [02:12] {#usn-5587-1-curl-vulnerability-02-12}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-35252](https://ubuntu.com/security/CVE-2022-35252) <!-- low -->
-   Cookies generally contain `NAME=VALUE` pairs using ASCII chars for both
-   [ASCII character set](http://man.he.net/?topic=ascii&section=all) contains usual A-Za-z0-9 and punctuation (space, "!#&amp;)
    plus a bunch of control codes - NUL, BEL, LF, CR, HT (\t) and more
-   These have a byte value below 32
-   curl since 4.9 would accept cookies with control codes
-   As with cookies, these get sent back to the server on subsequent requests
-   Over time web servers have started rejecting cookies with control codes and
    returning a HTTP 400 response code (Bad Request)
-   As such, a malicious "sister site" could return a cookie with control codes
    inside it, this then would get sent by curl to other sites in the same domain,
    which would then reject the request and effectively DoS the user
-   Fixed to have curl validate and then reject such cookies in the first place


### [[USN-5593-1](https://ubuntu.com/security/notices/USN-5593-1)] Zstandard vulnerability [04:34] {#usn-5593-1-zstandard-vulnerability-04-34}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2019-11922](https://ubuntu.com/security/CVE-2019-11922) <!-- medium -->
-   [Originally discussed all the way back in Episode 44 - [USN-4108-1] Zstandard
    vulnerability]({{< relref "episode-44#usn-4108-1-zstandard-vulnerability-09-20" >}})
-   Race condition when using single-pass compression, might allow attacker
    to get OOB write IF the caller had provided a smaller output buffer than
    the recommended size
-   So likely won't affect all packages which use zstd (there are many) -
    should always follow best practice


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### AT&amp;T Alien Labs teardown of Shikitega Linux malware [05:40] {#at-and-t-alien-labs-teardown-of-shikitega-linux-malware-05-40}

-   <https://cybersecurity.att.com/blogs/labs-research/shikitega-new-stealthy-malware-targeting-linux>
-   Targets endpoints and IoT devices running Linux
-   Uses multiple different binaries to achieve its purpose - each does one task
    of the process
-   Uses various components of [Metasploit](https://github.com/rapid7/metasploit-framework) along the way
    -   Framework containing various exploits plus different tools to help develop
        exploits as well as scan environments etc
-   Initial dropper is a very small binary that is encoded using one of the
    standard Metasploit encoders to help it evade detection from AV scanners etc
-   Decodes basic shellcode to open a socket to the C2 server and downloads
    additional shellcode to run plus the [mettle](https://github.com/rapid7/mettle) interpreter so that it can make
    use of off-the-shelf components from Metasploit in further stages
-   Also downloads the next stage dropper
-   This again is encoded the same as the first component - contained within is
    shellcode to spawn a shell via `/bin/sh` - from this shell it then attempts to
    run commands to exploit two known privesc vulns - CVE-2021-4034
    ([[USN-5252-1, USN-5252-2] PolicyKit vulnerability from Episode 147]({{< relref "episode-147#usn-5252-1-usn-5252-2-policykit-vulnerability-10-06" >}})) and
    CVE-2021-3493 ([[USN-4916-2] Linux kernel vulnerability in Episode 113]({{< relref "episode-113#usn-4916-2-linux-kernel-regression-00-48" >}}))
-   Once has gained root privileges via these vulns, with then move on to achieve
    persistence and execute the primary payload - cryptominer
-   Persistence is achieved simply by using cron to download the cryptominer from
    C2 on boot - and then another cron job to execute the cryptominer - and this
    is done for both the standard user and root
-   As such the only traces left on the machine at reboot is the crontabs
-   cryptominer is the [XMRig](https://xmrig.com/) and is configured to mine Monero
-   C2 is seemingly fronted by cloudflare and cloudfront
-   No details provided on initial compromise but is good to see details on the
    privesc vulns - both of these were patched in Ubuntu quite a while ago - and
    we released a Livepatch for the kernel privesc too - shows the value in such
    services - can still stay protected against the kind of vulnerabilities that
    attackers are actually exploiting without the need to reboot
-   Shows the increasing prevalence of Linux malware (and the resulting interest
    in it from organisations like AT&amp;T) but also the value in ensuring systems are
    kept updated


### systemd/open-vm-tools regression for Ubuntu 18.04 LTS [10:56] {#systemd-open-vm-tools-regression-for-ubuntu-18-dot-04-lts-10-56}

-   Had mentioned last week that I would likely cover this - is still a
    work-in-progress so hopefully next week 🤞


## Hiring [11:30] {#hiring-11-30}

-   <https://canonical.com/careers/engineering?search=security>
-   [Security Certifications Product Manager](https://canonical.com/careers/3781589)
    -   Home based, EMEA
-   [Security Engineer - Ubuntu](https://canonical.com/careers/2925180)
    -   Home based, worldwide
-   [Ubuntu Security Manager](https://canonical.com/careers/4192903)
    -   Home based, worldwide


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)