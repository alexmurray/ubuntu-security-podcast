+++
title = "Episode 101"
description = """
  In the first episode for 2021 we bring back Joe McManus to discuss the
  SolarWinds hack plus we look at vulnerabilities in sudo, NVIDIA graphics
  drivers and mutt. We also cover some open positions in the team and say
  farewell to long-time Ubuntu Security superstar Jamie Strandboge.
  """
date = 2021-01-28T15:58:00+10:30
lastmod = 2021-01-28T16:04:39+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E101.mp3"
podcast_duration = "27:25"
podcast_bytes = 17595789
permalink = "https://ubuntusecuritypodcast.org/episode-101/"
guid = "a804e169f1bfb0f7382c5fb1a8c8fa9eb343a0c46c0dfdae7c3ae59777124ec767f15d5045ff277e46a64bc95f5694abcc26763f56e66fa3c8da9c38ac5b5581"
+++

## Overview {#overview}

In the first episode for 2021 we bring back Joe McManus to discuss the
SolarWinds hack plus we look at vulnerabilities in sudo, NVIDIA graphics
drivers and mutt. We also cover some open positions in the team and say
farewell to long-time Ubuntu Security superstar Jamie Strandboge.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

22 unique CVEs addressed


### [[USN-4689-3](https://ubuntu.com/security/notices/USN-4689-3)] NVIDIA graphics drivers vulnerabilities [01:09] {#usn-4689-3-nvidia-graphics-drivers-vulnerabilities-01-09}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-1056](https://ubuntu.com/security/CVE-2021-1056) <!-- medium -->
    -   [CVE-2021-1053](https://ubuntu.com/security/CVE-2021-1053) <!-- medium -->
    -   [CVE-2021-1052](https://ubuntu.com/security/CVE-2021-1052) <!-- medium -->
-   3 different vulns in binary nvidia graphics drivers which could allow
    unprivileged users to DoS / info leak or possible priv esc


### [[USN-4689-4](https://ubuntu.com/security/notices/USN-4689-4)] Linux kernel update [01:42] {#usn-4689-4-linux-kernel-update-01-42}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-1056](https://ubuntu.com/security/CVE-2021-1056) <!-- medium -->
    -   [CVE-2021-1053](https://ubuntu.com/security/CVE-2021-1053) <!-- medium -->
    -   [CVE-2021-1052](https://ubuntu.com/security/CVE-2021-1052) <!-- medium -->
-   Corresponding kernel updates for nvidia dkms driver update


### [[USN-4697-2](https://ubuntu.com/security/notices/USN-4697-2)] Pillow vulnerabilities [02:00] {#usn-4697-2-pillow-vulnerabilities-02-00}

-   2 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2020-10177](https://ubuntu.com/security/CVE-2020-10177) <!-- low -->
    -   [CVE-2020-35653](https://ubuntu.com/security/CVE-2020-35653) <!-- medium -->


### [[USN-4702-1](https://ubuntu.com/security/notices/USN-4702-1)] Pound vulnerabilities {#usn-4702-1-pound-vulnerabilities}

-   2 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2018-21245](https://ubuntu.com/security/CVE-2018-21245) <!-- medium -->
    -   [CVE-2016-10711](https://ubuntu.com/security/CVE-2016-10711) <!-- medium -->


### [[USN-4703-1](https://ubuntu.com/security/notices/USN-4703-1)] Mutt vulnerability [02:18] {#usn-4703-1-mutt-vulnerability-02-18}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-3181](https://ubuntu.com/security/CVE-2021-3181) <!-- medium -->
-   Memory allocation amplification attack -> a "small" sized email can cause
    mutt to allocate a very large amount of memory when processing the email
    and cause it to crash as a result of exhausting available memory
-   If had empty semicolons in an address field, mutt would allocate 40 bytes
    for each - so for a 1 byte ; mutt allocates 40 bytes - and so a 25MB
    email can cause mutt to allocate 1GB


### [[USN-4704-1](https://ubuntu.com/security/notices/USN-4704-1)] libsndfile vulnerabilities [03:52] {#usn-4704-1-libsndfile-vulnerabilities-03-52}

-   12 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2019-3832](https://ubuntu.com/security/CVE-2019-3832) <!-- low -->
    -   [CVE-2018-19758](https://ubuntu.com/security/CVE-2018-19758) <!-- low -->
    -   [CVE-2018-19662](https://ubuntu.com/security/CVE-2018-19662) <!-- low -->
    -   [CVE-2018-19661](https://ubuntu.com/security/CVE-2018-19661) <!-- low -->
    -   [CVE-2018-19432](https://ubuntu.com/security/CVE-2018-19432) <!-- low -->
    -   [CVE-2018-13139](https://ubuntu.com/security/CVE-2018-13139) <!-- low -->
    -   [CVE-2017-6892](https://ubuntu.com/security/CVE-2017-6892) <!-- low -->
    -   [CVE-2017-16942](https://ubuntu.com/security/CVE-2017-16942) <!-- negligible -->
    -   [CVE-2017-14634](https://ubuntu.com/security/CVE-2017-14634) <!-- negligible -->
    -   [CVE-2017-14246](https://ubuntu.com/security/CVE-2017-14246) <!-- low -->
    -   [CVE-2017-14245](https://ubuntu.com/security/CVE-2017-14245) <!-- low -->
    -   [CVE-2017-12562](https://ubuntu.com/security/CVE-2017-12562) <!-- low -->


### [[USN-4705-1](https://ubuntu.com/security/notices/USN-4705-1)] Sudo vulnerabilities [04:06] {#usn-4705-1-sudo-vulnerabilities-04-06}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-23239](https://ubuntu.com/security/CVE-2021-23239) <!-- low -->
    -   [CVE-2021-3156](https://ubuntu.com/security/CVE-2021-3156) <!-- high -->
-   <https://www.openwall.com/lists/oss-security/2021/01/26/3>
-   <https://blog.qualys.com/vulnerabilities-research/2021/01/26/cve-2021-3156-heap-based-buffer-overflow-in-sudo-baron-samedit>
-   Qualys discovered a heap based buffer overflow in command-line argument
    parsing in sudo that has existed since July 2011
-   sudo is setuid root so anyone who executes it is then running a process
    as root - so if a user can exploit a vuln in sudo to get code execution,
    can get code execution as root as so escalate privileges to root
-   Requires to execute sudo as \`sudoedit -s\` since this then ensures the right
    mode is automatically set so that the vulnerability is active
-   Developed 3 different exploits for this vulnerability against various
    Linux distros (Ubuntu 20.04, Debian 10, Fedora 33 etc)
-   ASLR helps to make this harder to exploit since it randomises the
    location of the environment variables in memory etc but assuming an
    unprivileged user can run the exploit multiple times they can eventually
    exploit it


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex discusses the SolarWinds hack with special guest Joe McManus [07:03] {#alex-discusses-the-solarwinds-hack-with-special-guest-joe-mcmanus-07-03}

-   Joe is now CISO at Drizly
-   <https://www.zdnet.com/article/microsoft-fireeye-confirm-solarwinds-supply-chain-attack/>
-   <https://srslyriskybiz.substack.com/p/newsletter38>


### Private home directories for Ubuntu 21.04 {#private-home-directories-for-ubuntu-21-dot-04}

-   [Episode 98](https://ubuntusecuritypodcast.org/episode-98/)


### Hiring {#hiring}


#### Engineering Director - Ubuntu Security {#engineering-director-ubuntu-security}

-   <https://canonical.com/careers/2439068>


#### Engineering Manager - Ubuntu Security {#engineering-manager-ubuntu-security}

-   <https://canonical.com/careers/2439058>


#### AppArmor Security Engineer {#apparmor-security-engineer}

-   <https://canonical.com/careers/2114847>


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://canonical.com/careers/2085468>


### Farewells {#farewells}

-   Jamie Strandboge (jdstrand)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
