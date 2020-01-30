+++
title = "Episode 33"
description = """
  Updated Intel microcode for Cherry + Bay Trial CPUs, fixes for
  vulnerabilities in curl, Firefox, PHP and MariaDB, plus we talk
  configuration of virtualised guests to mitigate speculative execution
  vulnerabilities as well as plans for the Ubuntu 19.10 development cycle.
  """
date = 2019-05-27
lastmod = 2020-01-30T17:15:34+10:30
draft = false
weight = 1028
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E033.mp3"
podcast_duration = "13:56"
podcast_bytes = 13391530
permalink = "https://ubuntusecuritypodcast.org/episode-33/"
+++

## Overview {#overview}

Updated Intel microcode for Cherry + Bay Trial CPUs, fixes for
vulnerabilities in curl, Firefox, PHP and MariaDB, plus we talk
configuration of virtualised guests to mitigate speculative execution
vulnerabilities as well as plans for the Ubuntu 19.10 development cycle.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

43 unique CVEs addressed


### [[USN-3977-2](https://usn.ubuntu.com/3977-2/)] Intel Microcode update {#usn-3977-2-intel-microcode-update}

-   4 CVEs addressed in Trusty ESM, Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11091](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11091)
    -   [CVE-2018-12126](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12126)
    -   [CVE-2018-12127](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12127)
    -   [CVE-2018-12130](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12130)
-   Corresponding Intel microcode updates for Cherry Trail and Bay Trail CPU families


### [[USN-3989-1](https://usn.ubuntu.com/3989-1/)] LibRaw vulnerabilities {#usn-3989-1-libraw-vulnerabilities}

-   7 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2018-5819](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5819)
    -   [CVE-2018-5818](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5818)
    -   [CVE-2018-5817](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5817)
    -   [CVE-2018-20365](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20365)
    -   [CVE-2018-20364](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20364)
    -   [CVE-2018-20363](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20363)
    -   [CVE-2018-20337](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20337)
-   Multiple issues fixed:
    -   2\*NULL pointer dereference
    -   Heap-based buffer overflow
    -   Stack-based buffer overflow
    -   3 different cases of possible infinite loop - CPU DoS


### [[USN-3990-1](https://usn.ubuntu.com/3990-1/)] urllib3 vulnerabilities {#usn-3990-1-urllib3-vulnerabilities}

-   3 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11324](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11324)
    -   [CVE-2019-11236](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11236)
    -   [CVE-2018-20060](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20060)
-   When validating certs for HTTPS, could specify a set of certs to validate
    against - however it would always include the system CA certs as well -
    so could validate successfully even if cert is not in chain of explicitly
    desired set - fixed to NOT include system certs in this case
-   Possible CRLF injection
-   Would possibly expose HTTP authorization credentials across different
    origin hosts as after authenticating, if being redirected to a different
    origin host, would still include the Authorization header from the old
    host to the new host - fixed by ensuring this defaults to being off


### [[USN-3991-1](https://usn.ubuntu.com/3991-1/)] Firefox vulnerabilities {#usn-3991-1-firefox-vulnerabilities}

-   17 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-9816](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9816)
    -   [CVE-2019-11698](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11698)
    -   [CVE-2019-11697](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11697)
    -   [CVE-2019-9821](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9821)
    -   [CVE-2019-9820](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9820)
    -   [CVE-2019-9819](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9819)
    -   [CVE-2019-9817](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9817)
    -   [CVE-2019-9814](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9814)
    -   [CVE-2019-9800](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9800)
    -   [CVE-2019-7317](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7317)
    -   [CVE-2019-11701](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11701)
    -   [CVE-2019-11699](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11699)
    -   [CVE-2019-11696](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11696)
    -   [CVE-2019-11695](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11695)
    -   [CVE-2019-11693](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11693)
    -   [CVE-2019-11692](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11692)
    -   [CVE-2019-11691](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11691)
-   Latest upstream Firefox release (67.0)
-   Includes fixes for various issues including:
    -   DoS, spoofing of browser UI, tricking users into launching local
        executables, XSS and RCE
    -   Tricking users into installing a malicious add-on by disabling the UI prompt
    -   History exposure via bookmark handling


### [[USN-3566-2](https://usn.ubuntu.com/3566-2/)] PHP vulnerabilities {#usn-3566-2-php-vulnerabilities}

-   5 CVEs addressed in Precise ESM, Trusty ESM
    -   [CVE-2016-10712](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-10712)
    -   [CVE-2017-11362](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-11362)
    -   [CVE-2017-12933](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-12933)
    -   [CVE-2019-11036](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11036)
    -   [CVE-2018-20783](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20783)
-   In February 2018, and March 2018, released updates for PHP5 in Trusty
    fixing multiple CVEs - this update is a corresponding update which fixes
    some new CVEs in both Precise ESM and Trusty ESM and some of the same
    older CVEs in Precise ESM.


### [[USN-3992-1](https://usn.ubuntu.com/3992-1/)] WebKitGTK+ vulnerabilities {#usn-3992-1-webkitgtk-plus-vulnerabilities}

-   3 CVEs addressed in Bionic, Cosmic, Disco
    -   [CVE-2019-8615](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8615)
    -   [CVE-2019-8607](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8607)
    -   [CVE-2019-8595](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8595)
-   New upstream release (2.24.2) - like most WebKitGTK+ updates, contains
    little information on the new vulnerabilities - so assume the worst -
    DoS, XSS, RCE
-   Used by GNOME Shell for captive portal handling etc


### [[USN-3993-1](https://usn.ubuntu.com/3993-1/), [USN-3993-2](https://usn.ubuntu.com/3993-2/)] curl vulnerabilities {#usn-3993-1-usn-3993-2-curl-vulnerabilities}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Cosmic and Disco
    -   [CVE-2019-5436](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5436)
-   TFTP receive heap-based buffer overflow
-   1 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-5435](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5435)
-   Integer overflow for 32-bit arches when handling a very large URL (>2GB)
    via the libcurl API (curl\_url\_set())


### [[USN-3957-2](https://usn.ubuntu.com/3957-2/)] MariaDB vulnerabilities {#usn-3957-2-mariadb-vulnerabilities}

-   2 CVEs addressed in Trusty ESM
    -   [CVE-2019-2627](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2627)
    -   [CVE-2019-2614](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2614)
-   [Episode 30](https://ubuntusecuritypodcast.org/episode-30/) mentioned an update for MariaDB for the standard support
    releases fixing 8 CVEs - 2 of those applied to MariaDB in Trusty ESM -
    both where a privileged attacker can crash server


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Clarifications to documentation regarding latest Intel MDS vulnerabilities {#clarifications-to-documentation-regarding-latest-intel-mds-vulnerabilities}

-   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/SpectreAndMeltdown/TechFAQ>
-   Updated to describe situation when doing virtualisation:
    -   To enable guest to mitigate various speculative execution
        vulnerabilities, need to ensure the guest CPU emulates the various CPU
        features (such as pcid, ssbd etc).
    -   Depends on workloads - if running untrusted code in guests or not etc.
    -   Previously QEMU would define various CPU models such as Broadwell-IBRS
        which would include support for this emulation. However, most of the
        newer features ssbd, md\_clear etc are not included in these CPU models.
    -   So instead need to explicitly enable them - this can be done in a few ways:
        -   Can just passthrough host CPU features directly - recommended
            approach if NOT going to migrating guests across hosts (since if has
            different features will cease to work)
        -   Otherwise manually enable features directly as a subset of the
            supported features from all the various hosts in your datacenter -
            depending on whether using QEMU on the command-line or libvirt to
            configure has different ways to specify this but same idea for both


#### Security Team plans for 19.10 development cycle {#security-team-plans-for-19-dot-10-development-cycle}

-   19.10 cycle roadmap meeting was held in Lyon a 2 weeks ago - each Ubuntu
    team presented on the progress etc from the 19.04 cycle as well as their
    plans for the 19.10 cycle
-   Security team highlights for 19.10:
    -   Automate more parts of our processes around triage of code reviews,
        reactive package updates etc
    -   Review and incorporate KSPP recommendations for kernel hardening
    -   GCC -fstack-clash-protection and -fcf-protection as default
    -   Various snapd enhancements (daemon user, OpenGL support, audio
        migration)
    -   AppArmor features - prompting, more groundwork for fine-grained network
        mediation


### Hiring {#hiring}


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


#### Security Certifications Engineer {#security-certifications-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1660658>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)