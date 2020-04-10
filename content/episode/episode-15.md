+++
title = "Episode 15"
description = """
  Security updates for 29 CVEs including Perl, the kernel, OpenSSL (PortSmash)
  and more, plus in response to some listener questions, we discuss how to make
  sure you always have the latest security updates by using unattended-upgrades.
  """
date = 2018-12-10
lastmod = 2020-04-10T14:14:41+09:30
draft = false
weight = 1056
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E015.mp3"
podcast_duration = "17:08"
podcast_bytes = 16451003
permalink = "https://ubuntusecuritypodcast.org/episode-15/"
+++

## Overview {#overview}

Security updates for 29 CVEs including Perl, the kernel, OpenSSL (PortSmash)
and more, plus in response to some listener questions, we discuss how to make
sure you always have the latest security updates by using unattended-upgrades.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

29 unique CVEs addressed


### [[USN-3834-1](https://usn.ubuntu.com/3834-1/), USN-3834-2] Perl vulnerabilities {#usn-3834-1-usn-3834-2-perl-vulnerabilities}

-   4 CVEs addressed in Precise ESM, Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-18314](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18314)
    -   [CVE-2018-18313](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18313)
    -   [CVE-2018-18312](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18312)
    -   [CVE-2018-18311](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18311)
-   Perl regex engine fuzzed with valgrind to detect memory errors
    -   2 different heap based buffer overflow in regex engine
    -   Heap-based read past end of buffer in regex engine
-   Integer overflow from environment variables
    -   uses untrusted input from environment variables (length of values to calculate memory to allocate)
    -   heap buffer overflow


### [[USN-3835-1](https://usn.ubuntu.com/3835-1/), [USN-3836-1](https://usn.ubuntu.com/3836-1/), [USN-3836-2](https://usn.ubuntu.com/3836-2/)] Linux kernel vulnerabilities {#usn-3835-1-usn-3836-1-usn-3836-2-linux-kernel-vulnerabilities}

-   6 CVEs addressed in Cosmic, 2 in Bionic and Xenial
    -   [CVE-2018-6559](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-6559)
    -   [CVE-2018-18955](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18955)
    -   [CVE-2018-18653](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18653)
    -   [CVE-2018-18445](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18445)
    -   [CVE-2018-18281](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18281)
    -   [CVE-2018-17972](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17972)

-   Episode 14 covered CVE-2018-6559 (overlayfs / user namespace directory names disclosure)
    -   Also fixed for Bionic and Xenial
-   Episode 12 covered CVE-2018-17972 (procfs kernel stack disclosure)
-   3 CVEs discovered by Jann Horn (and one inadvertently caused by Jann too)
    -   mremap() system call - used to expand or shrink an existing
        memory mapping and possibly move it - doesn't properly flush TLB - could
        leave pages in page cache for a short time which can then be raced to obtain
        access afterwards and possible DoS crash or information disclosure etc
        depending on target memory
    -   Previous fix for CVE-2017-17852 (BPF verifier) discovered and also fixed by
        Jann, introduced a new vulnerability which would allow BPF programs to
        access memory out-of-bounds
    -   Nested user namespaces with more than 5 UID or GID mappings could allow
        processes with CAP\_SYS\_ADMIN within the namespace to access resources
        outside the namespace as the kernel would get confused on which UID to
        check against outside the namespace
        -   Also fixed in Bionic and Xenial
-   Vulnerability specific to the Ubuntu kernel used in Cosmic (18.10)
    -   2 bugs discovered as a result of using the secure boot lockdown patchset
        -   Module signatures not properly enforced for UEFI Secure Boot - we had
            enabled the option to do this via IMA but had not then included the IMA
            policy to ensure this was enforced
            -   Fixed by turning off option to verify modules using IMA
        -   Secondary kernel keyring (ie where UEFI MOK goes from shim - used by
            DKMS) not trusted - so modules signed with it wouldn't work (except they
            do due to above)
            -   Fixed to trust keys in secondary keyring for module signing
-


### [[USN-3837-1](https://usn.ubuntu.com/3837-1/)] poppler vulnerabilities {#usn-3837-1-poppler-vulnerabilities}

-   5 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-19149](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19149)
    -   [CVE-2018-19060](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19060)
    -   [CVE-2018-19059](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19059)
    -   [CVE-2018-19058](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19058)
    -   [CVE-2018-16646](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16646)
-   NULL pointer dereference when PDF references an embedded file that does not actually exist (crash -> DoS)
-   Possible infinite recursion - DoS
-   Exit on abort - DoS
-   2 for pdfdetach - CLI util to list / extract embedded files from PDFs
    -   Out of bounds read due to fail to validate embedded files
    -   NULL pointer dereference if embedded file names are invalid


### [[USN-3811-3](https://usn.ubuntu.com/3811-3/)] SpamAssassin vulnerabilities {#usn-3811-3-spamassassin-vulnerabilities}

-   2 CVEs addressed in Precise ESM
    -   [CVE-2018-11781](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11781)
    -   [CVE-2018-11780](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11780)
-   SpamAssassin was updated to latest version for Trusty, Xenial and Bionic previously (Episode 11)
-   This is the corresponding update for Precise ESM


### [[USN-3838-1](https://usn.ubuntu.com/3838-1/)] LibRaw vulnerabilities {#usn-3838-1-libraw-vulnerabilities}

-   7 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-5816](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5816)
    -   [CVE-2018-5815](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5815)
    -   [CVE-2018-5813](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5813)
    -   [CVE-2018-5812](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5812)
    -   [CVE-2018-5811](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5811)
    -   [CVE-2018-5810](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5810)
    -   [CVE-2018-5807](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5807)
-   Few OOB read -> crash -> DoS
-   NULL pointer dereference -> crash -> DoS
-   Integer overflow -> infinite loop -> DoS
-   Integer overflow -> divide by zero -> crash -> DoS
-   Heap-based buffer overflow -> crash -> DoS (possible code execution?)


### [[USN-3839-1](https://usn.ubuntu.com/3839-1/)] WavPack vulnerabilities {#usn-3839-1-wavpack-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-19841](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19841)
    -   [CVE-2018-19840](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19840)
-   Infinite loop if WAV file specifies a sample rate of 0 - DoS
-   OOB read of heap allocated buffer - crash -> DoS


### [[USN-3840-1](https://usn.ubuntu.com/3840-1/)] OpenSSL vulnerabilities {#usn-3840-1-openssl-vulnerabilities}

-   3 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-5407](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5407)
    -   [CVE-2018-0735](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-0735)
    -   [CVE-2018-0734](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-0734)
-   PortSmash (Episode 11) - purported new Intel CPU side-channel vulnerability -
    but really more an issue in OpenSSL due to needing crypto code to be both
    constant time **and** execution flow independent of secret key
-   Timing side-channels in ECDSA and DSA signature algorithms found by Samuel Weiser
    -   Usual thing - variations in time-to-sign can be measured by attacker to recover private signing key


### [[USN-3831-2](https://usn.ubuntu.com/3831-2/)] Ghostscript regression {#usn-3831-2-ghostscript-regression}

-   Affecting Trusty, Xenial, Bionic, Cosmic
-   Latest GS updates (Episode 14) -> regression
    -   when converting PDFs via ghostscript, would crash when using FirstPage and LastPage options
    -   used by imagemagick (convert) util and others
    -   backported addition fix from upstream to resolve this regression


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Feedback {#feedback}

-   Question regarding how to ensure latest updates applied?
    -   <https://help.ubuntu.com/community/AutomaticSecurityUpdates>
    -   If regularly update system (apt upgrade / software updater etc) will
        already have latest security updates
    -   Can make this automatic with unattended-upgrades
        -   Is automatically installed and configured for Ubuntu 18.04 Bionic and newer to install new updates daily
        -   If want to manually
            -   sudo apt install unattended-upgrades
            -   sudo dpkg-reconfigure unattended-upgrades
    -   Canonical Livepatch Service
        -   <https://www.ubuntu.com/livepatch>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)