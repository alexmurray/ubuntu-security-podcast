+++
title = "Episode 4"
description = """
  A quieter week in package updates - this week we look at some details of the 9
  unique CVEs addressed across the supported Ubuntu releases and talk about
  various hardening guides for Ubuntu.
  """
date = 2018-09-10
lastmod = 2019-04-02T17:15:51+10:30
draft = false
weight = 1023
episode_image = "img/episode/default.png"
explicit = "no"
podcast_file = "USP_E004.mp3"
podcast_duration = "10:36"
podcast_bytes = 10189138
permalink = "https://ubuntusecuritypodcast.org/episode-4/"
+++

## Overview {#overview}

A quieter week in package updates - this week we look at some details of the 9
unique CVEs addressed across the supported Ubuntu releases and talk about
various hardening guides for Ubuntu.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

9 unique CVEs addressed


### [[USN-3759-1](https://usn.ubuntu.com/3759-1/)] libtirpc vulnerabilities {#usn-3759-1-libtirpc-vulnerabilities}

-   3 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2017-8779](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-8779)
    -   [CVE-2018-14622](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14622)
    -   [CVE-2016-4429](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-4429)
-   Transport Independent RPC Library, used by NFS
-   1 medium priority issue:
    -   Crash from NULL pointer dereference when run out of file descriptions (failure to check return value) - a remote attacker could cause crash by flooding with new connections
-   2 low priority issues:
    -   "rpcbomb" - allows an unauthenticated attacker to DoS via memory exhaustion
    -   Stack based buffer overflow could cause a crash when flooded by ICMP and UDP packets in the sunrpc implementation - fixed by replacing stack based memory allocation with heap-based allocation instead
    -   Common pattern to fix this type of issue - similar work in Linux kernel recently by KSPP to replace VLAs


### [[USN-3759-2](https://usn.ubuntu.com/3759-2/)] libtirpc vulnerabilities {#usn-3759-2-libtirpc-vulnerabilities}

-   3 CVEs addressed in Precise ESM
    -   [CVE-2017-8779](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-8779)
    -   [CVE-2018-14622](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14622)
    -   [CVE-2016-4429](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-4429)
-   Same as above for the Precise Extended Security Maintenence release


### [[USN-3760-1](https://usn.ubuntu.com/3760-1/)] transfig vulnerability {#usn-3760-1-transfig-vulnerability}

-   1 CVEs addressed in Trusty, Xenial
    -   [CVE-2018-16140](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16140)
-   transfig / fig2dev - utilities for converting XFig files
-   Fixes an error which allows memory corruption when handling specially crafted files


### [[USN-3761-1](https://usn.ubuntu.com/3761-1/)] Firefox vulnerabilities {#usn-3761-1-firefox-vulnerabilities}

-   5 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-12383](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12383)
    -   [CVE-2018-12378](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12378)
    -   [CVE-2018-12377](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12377)
    -   [CVE-2018-12376](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12376)
    -   [CVE-2018-12375](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12375)
-   Latest firefox release (62) fixing a number of issues including DoS and RCE
-   One interesting one is CVE-2018-12383 - in Firefox 58 the password storage
    format was changed (was sqlite, then was changed to json). When user sets a
    master password, this is used to encrypt all stored passwords. However, this
    was only done for the copy stored with the new format - the old copy would
    still be stored unencrypted since it never had a master password set on
    it. This is now fixed to simply delete the old copy of the password DB.


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Discussions around hardening guides for Ubuntu {#discussions-around-hardening-guides-for-ubuntu}

-   A number of 'best practices' guides exist for hardening Ubuntu installations from reputable organisations
    -   [NCSC](https://www.ncsc.gov.uk/guidance/eud-security-guidance-ubuntu-1804-lts)
    -   [CIS Benchmarks](https://www.cisecurity.org/benchmark/ubuntu%5Flinux/)
    -   many others
-   In general these have similar recommendations:
    -   Use UEFI Secure Boot
    -   Disable unnecesary services
    -   Use a known and fixed networking configuration (disable DHCP / use VPN etc)
    -   Enable Mandatory Access Control frameworks (ie. AppArmor)
    -   Use a specific password policy
    -   Enable auditing
-   Differ in level of detail and technical knowledge needed to deploy
-   Typically aimed at computer and network administrators (not end-users)
-   Ubuntu already includes a number of these recommendations out of the box:
    -   <https://wiki.ubuntu.com/Security/Features>
-   Ubuntu strives to strike a balance between security and usability out-of-the-box


### Hiring {#hiring}


#### Ubuntu Security Manager {#ubuntu-security-manager}

-   <https://boards.greenhouse.io/canonical/jobs/1278287>


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1158266>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardended on the Freenode IRC network](http://webchat.freenode.net?channels=%23ubuntu-hardened&uio=d4)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)