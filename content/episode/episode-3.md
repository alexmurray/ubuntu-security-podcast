+++
title = "Episode 3"
description = "This week we look at 29 unique CVEs addressed across the supported Ubuntu releases, a discussion of the Main Inclusion Review process and recent news around the bubblewrap package, and open positions within the team."
date = 2018-09-03
lastmod = 2019-10-24T15:21:06+10:30
draft = false
weight = 1048
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E003.mp3"
podcast_duration = "10:02"
podcast_bytes = 9633252
permalink = "https://ubuntusecuritypodcast.org/episode-3/"
+++

## Overview {#overview}

This week we look at 29 unique CVEs addressed across the supported Ubuntu releases, a discussion of the Main Inclusion Review process and recent news around the bubblewrap package, and open positions within the team.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

29 unique CVEs addressed


### [[USN-3756-1](https://usn.ubuntu.com/3756-1/)] Intel Microcode vulnerabilities {#usn-3756-1-intel-microcode-vulnerabilities}

-   3 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-3640](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3640)
    -   [CVE-2018-3639](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3639)
    -   [CVE-2018-3646](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3646)
-   Intel microcode updates to address L1TF, Spectre Variant 4 and Rogue System Register Read (RSRE)
-   Intel initially released this with a brand new license which included terms around disallowing benchmarking and possibly preventing redistribution via the Ubuntu mirrors
    -   As a result, we couldn't provide updated microcode packages to full address L1TF etc
    -   Intel have now reverted back to the license used on previous microcode packages and so this can now finally be released
-   <https://perens.com/2018/08/22/new-intel-microcode-license-restriction-is-not-acceptable/>


### [[USN-3755-1](https://usn.ubuntu.com/3755-1/)] GD vulnerabilities {#usn-3755-1-gd-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-5711](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5711)
    -   [CVE-2018-1000222](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000222)
-   Popular image manipulation and creating library used by PHP and therefore in many PHP web applications
-   Issue in handling of signed integers in GIF decoder allows an attacker to enter an infinite loop and cause DoS via a specially crafted GIF file
-   Double free in JPEG decoder could allow a user to possibly execute arbitrary code via specially crafted JPEG file


### [[USN-3757-1](https://usn.ubuntu.com/3757-1/)] poppler vulnerability {#usn-3757-1-poppler-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-13988](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13988)
-   Fixed a crash (hence DoS) due to out-of-bounds read in PDF decoding


### [[USN-3758-1](https://usn.ubuntu.com/3758-1/)] libx11 vulnerabilities {#usn-3758-1-libx11-vulnerabilities}

-   5 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-14600](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14600)
    -   [CVE-2018-14599](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14599)
    -   [CVE-2018-14598](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14598)
    -   [CVE-2016-7943](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-7943)
    -   [CVE-2016-7942](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-7942)
-   Bundles some fixes for some low priority old CVEs with some new medium priority CVE fixes
-   Updates are usually done in this manner, where low priority fixes wait to get fixed along with higher priority fixes for a package
-   Fixes issues around handling of data from untrusted servers and image decoding
    -   Usual failure to validate inputs, off-by-one, integer signedness confusion and incorrect freeing of dynamically allocated memory style issues


### [[USN-3758-2](https://usn.ubuntu.com/3758-2/)] libx11 vulnerabilities {#usn-3758-2-libx11-vulnerabilities}

-   5 CVEs addressed in Precise ESM
    -   [CVE-2018-14600](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14600)
    -   [CVE-2018-14599](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14599)
    -   [CVE-2018-14598](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-14598)
    -   [CVE-2016-7943](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-7943)
    -   [CVE-2016-7942](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-7942)


### [[USN-3752-3](https://usn.ubuntu.com/3752-3/)] Linux kernel (Azure, GCP, OEM) vulnerabilities {#usn-3752-3-linux-kernel--azure-gcp-oem--vulnerabilities}

-   18 CVEs addressed in Xenial, Bionic
    -   [CVE-2018-1000204](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000204)
    -   [CVE-2018-9415](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-9415)
    -   [CVE-2018-5814](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5814)
    -   [CVE-2018-13406](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13406)
    -   [CVE-2018-13405](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13405)
    -   [CVE-2018-13094](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13094)
    -   [CVE-2018-12904](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12904)
    -   [CVE-2018-12233](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12233)
    -   [CVE-2018-12232](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12232)
    -   [CVE-2018-11506](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11506)
    -   [CVE-2018-11412](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11412)
    -   [CVE-2018-1120](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1120)
    -   [CVE-2018-1108](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1108)
    -   [CVE-2018-1093](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1093)
    -   [CVE-2018-10881](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10881)
    -   [CVE-2018-10840](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10840)
    -   [CVE-2018-10323](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10323)
    -   [CVE-2018-1000200](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000200)
-   Kernel updates for various hardware platforms etc corresponding to the same updates from last week


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### MIR Process and bubblewrap {#mir-process-and-bubblewrap}

-   Security team is responsible for doing security audits of packages which are proposed to be included in the main section of the Ubuntu package repository
    -   Packages in main are officially maintained, supported and recommended so deserve a high level of scrutiny before promotion into main
    -   Security team historically only provides security updates to packages in main as well
    -   So we have to be confident we can maintain and support a given package
-   To perform the security review we look at a number of things:
    -   The code is evaluated to determine how easy or not it would be to maintain
    -   The package itself is evaluated to look for potential issues
    -   Code is then evaluated to look for potential existing security vulnerabilities
-   This can be a time consuming process, especially to do well
-   Recently this was in the news, when Hanno Böck (infosec journalist and
    researcher) and Tavis Ormandy (GPZ) raised the issue of lack of bubblewrap
    support for gnome desktop thumbnailers
    -   bubblewrap provides support for sandboxing processes via namespaces and the
        use of it to sandbox desktop thumbnailers was introduced in the GNOME 3.26
        release
    -   It was planned to be supported for Ubuntu 18.04, but to do this the package
        had to be moved from universe into main, hence a MIR
    -   Due to shifting priorities, the security team was not able to get this done
        in time and hence the feature had to be disabled
    -   This MIR is being proritised now so this security hardening feature should be available in an upcoming release
    -   Security team is also looking at how to strengthen the hardening via AppArmor MAC profiles in addition
    -   Thanks to Hanno and Tavis for giving this greater visibility
-   <https://wiki.ubuntu.com/MainInclusionProcess>
-   <https://www.bleepingcomputer.com/news/security/ubuntu-is-undoing-a-gnome-security-feature/>


### Hiring {#hiring}


#### Ubuntu Security Manager {#ubuntu-security-manager}

-   <https://boards.greenhouse.io/canonical/jobs/1278287>


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1158266>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)