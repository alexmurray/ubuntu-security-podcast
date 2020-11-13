+++
title = "Episode 96"
description = """
  This week we look at results from the Tianfu Cup 2020, the PLATYPUS attack
  against Intel CPUs, a detailed writeup of the GDM/accountsservice
  vulnerabilities covered in [Episode 95](https://ubuntusecuritypodcast.org/episode-95/) and more.
  """
date = 2020-11-13T12:35:00+10:30
lastmod = 2020-11-13T12:35:46+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E096.mp3"
podcast_duration = "07:41"
podcast_bytes = 6184754
permalink = "https://ubuntusecuritypodcast.org/episode-96/"
guid = "a8a286ea39af7b2c410ede63c6bf029b5fccd93cb43dccf2476380d0f6419fffc19a5f30bfdd1617b6608e5f65eeb5fb4d9f989b2553202e5b6573ffb5d5be36"
+++

## Overview {#overview}

This week we look at results from the Tianfu Cup 2020, the PLATYPUS attack
against Intel CPUs, a detailed writeup of the GDM/accountsservice
vulnerabilities covered in [Episode 95](https://ubuntusecuritypodcast.org/episode-95/) and more.


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Tianfu Cup 2020 [00:37] {#tianfu-cup-2020-00-37}

-   <https://www.zdnet.com/article/windows-10-ios-chrome-and-many-others-fall-at-chinas-top-hacking-contest/>
-   QEMU on Ubuntu, Firefox and docker all pwned (as well as Chrome, Safari,
    VMWare ESXi, CentOS 8, iPhone etc)
-   qemu-kvm on Ubuntu - used a UAF and an info-leak to escape VM and get
    root code exec on host - by Xiao Wei from 360 ESG Vuln Research Institute
    who has previously found lots of QEMU bugs - $60k
-   Still waiting on upstream qemu / docker to release details - Firefox
    already patched in [CVE-2020-26950](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-26950)


### Github writeup of GDM/accountsservice vulnerabilities [02:53] {#github-writeup-of-gdm-accountsservice-vulnerabilities-02-53}

-   We covered the vulns in last week's [Episode 95](https://ubuntusecuritypodcast.org/episode-95/)
-   Kevin Backhouse provides a great amount of detail and a cool demo video
    of the attack -
    <https://securitylab.github.com/research/Ubuntu-gdm3-accountsservice-LPE>
-   <https://portswigger.net/daily-swig/vulnerabilities-in-ubuntu-desktop-enabled-root-access-in-two-simple-steps>


### PLATYPUS attack against Intel CPUs [03:41] {#platypus-attack-against-intel-cpus-03-41}

-   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/Platypus>
-   <https://platypusattack.com/>
-   <https://www.zdnet.com/article/new-platypus-attack-can-steal-data-from-intel-cpus/>


## This week in Ubuntu Security Updates [05:27] {#this-week-in-ubuntu-security-updates-05-27}

23 unique CVEs addressed


### [[USN-4617-1](https://ubuntu.com/security/notices/USN-4617-1)] SPICE vdagent vulnerabilities {#usn-4617-1-spice-vdagent-vulnerabilities}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-25653](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-25653) <!-- low -->
    -   [CVE-2020-25652](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-25652) <!-- low -->
    -   [CVE-2020-25651](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-25651) <!-- low -->
    -   [CVE-2020-25650](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-25650) <!-- low -->


### [[USN-4616-2](https://ubuntu.com/security/notices/USN-4616-2)] AccountsService vulnerabilities {#usn-4616-2-accountsservice-vulnerabilities}

-   2 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2018-14036](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14036) <!-- low -->
    -   [CVE-2020-16126](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16126) <!-- medium -->


### [[USN-4618-1](https://ubuntu.com/security/notices/USN-4618-1)] tmux vulnerability {#usn-4618-1-tmux-vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-27347](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-27347) <!-- medium -->


### [[USN-4619-1](https://ubuntu.com/security/notices/USN-4619-1)] dom4j vulnerability {#usn-4619-1-dom4j-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2018-1000632](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000632) <!-- low -->


### [[USN-4599-3](https://ubuntu.com/security/notices/USN-4599-3)] Firefox regressions {#usn-4599-3-firefox-regressions}

-   Affecting Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
-   [Episode 94](https://ubuntusecuritypodcast.org/episode-94/)


### [[USN-4620-1](https://ubuntu.com/security/notices/USN-4620-1)] phpLDAPadmin vulnerability {#usn-4620-1-phpldapadmin-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2017-11107](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-11107) <!-- low -->


### [[USN-4621-1](https://ubuntu.com/security/notices/USN-4621-1)] netqmail vulnerabilities {#usn-4621-1-netqmail-vulnerabilities}

-   5 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-3812](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3812) <!-- medium -->
    -   [CVE-2020-3811](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3811) <!-- medium -->
    -   [CVE-2005-1515](https://people.canonical.com/~ubuntu-security/cve/CVE-2005-1515) <!-- medium -->
    -   [CVE-2005-1514](https://people.canonical.com/~ubuntu-security/cve/CVE-2005-1514) <!-- medium -->
    -   [CVE-2005-1513](https://people.canonical.com/~ubuntu-security/cve/CVE-2005-1513) <!-- medium -->


### [[USN-4622-1](https://ubuntu.com/security/notices/USN-4622-1)] OpenLDAP vulnerability {#usn-4622-1-openldap-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-25692](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-25692) <!-- medium -->


### [[USN-4623-1](https://ubuntu.com/security/notices/USN-4623-1)] Pacemaker vulnerability {#usn-4623-1-pacemaker-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-25654](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-25654) <!-- medium -->


### [[USN-4624-1](https://ubuntu.com/security/notices/USN-4624-1)] libexif vulnerability {#usn-4624-1-libexif-vulnerability}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-0452](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0452) <!-- medium -->


### [[USN-4625-1](https://ubuntu.com/security/notices/USN-4625-1)] Firefox vulnerability {#usn-4625-1-firefox-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-26950](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-26950) <!-- high -->


### [[USN-4626-1](https://ubuntu.com/security/notices/USN-4626-1)] Linux kernel vulnerabilities {#usn-4626-1-linux-kernel-vulnerabilities}

-   2 CVEs addressed in Groovy (20.10)
    -   [CVE-2020-8694](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8694) <!-- medium -->
    -   [CVE-2020-27194](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-27194) <!-- high -->


### [[USN-4627-1](https://ubuntu.com/security/notices/USN-4627-1)] Linux kernel vulnerability {#usn-4627-1-linux-kernel-vulnerability}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-8694](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8694) <!-- medium -->


### [[USN-4628-1](https://ubuntu.com/security/notices/USN-4628-1)] Intel Microcode vulnerabilities {#usn-4628-1-intel-microcode-vulnerabilities}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-8698](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8698) <!-- medium -->
    -   [CVE-2020-8696](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8696) <!-- low -->
    -   [CVE-2020-8695](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8695) <!-- medium -->


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
