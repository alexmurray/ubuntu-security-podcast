+++
title = "Episode 9"
description = "This week we look at some details of the 61 unique CVEs addressed across the supported Ubuntu releases, with a particular focus on the recent Xorg vulnerability ([CVE-2018-14665](https://ubuntu.com/security/CVE-2018-14665)), plus Cosmic is now officially supported by the Security Team."
date = 2018-10-30
lastmod = 2022-05-15T18:07:30+09:30
draft = false
weight = 1151
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E009.mp3"
podcast_duration = "11:59"
podcast_bytes = 11511142
permalink = "https://ubuntusecuritypodcast.org/episode-9/"
+++

## Overview {#overview}

This week we look at some details of the 61 unique CVEs addressed across the supported Ubuntu releases, with a particular focus on the recent Xorg vulnerability ([CVE-2018-14665](https://ubuntu.com/security/CVE-2018-14665)), plus Cosmic is now officially supported by the Security Team.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

61 unique CVEs addressed


### [[USN-3790-2](https://usn.ubuntu.com/3790-2/)] Requests vulnerability {#usn-3790-2-requests-vulnerability}

-   1 CVEs addressed in Cosmic
    -   [CVE-2018-18074](https://ubuntu.com/security/CVE-2018-18074)
-   Cosmic is now officially released and so is officially supported by the Security Team
-   This is the same vulnerability which we covered in Episode 8 for Trusty, Xenial, Bionic now fixed for Cosmic


### [[USN-3795-2](https://usn.ubuntu.com/3795-2/)] libssh vulnerability {#usn-3795-2-libssh-vulnerability}

-   1 CVEs addressed in Cosmic
    -   [CVE-2018-10933](https://ubuntu.com/security/CVE-2018-10933)
-   This is the same vulnerability which we covered in Episode 8 for Trusty, Xenial, Bionic now fixed for Cosmic


### [[USN-3792-3](https://usn.ubuntu.com/3792-3/)] Net-SNMP vulnerability {#usn-3792-3-net-snmp-vulnerability}

-   1 CVEs addressed in Cosmic
    -   [CVE-2018-18065](https://ubuntu.com/security/CVE-2018-18065)
-   This is the same vulnerability which we covered in Episode 8 for Trusty, Xenial &amp; Bionic now fixed for Cosmic


### [[USN-3796-3](https://usn.ubuntu.com/3796-3/)] Paramiko vulnerability {#usn-3796-3-paramiko-vulnerability}

-   1 CVEs addressed in Cosmic
    -   [CVE-2018-1000805](https://ubuntu.com/security/CVE-2018-1000805)
-   This is the same vulnerability which we covered in Episode 8 for Trusty, Xenial &amp; Bionic now fixed for Cosmic


### [[USN-3788-2](https://usn.ubuntu.com/3788-2/)] Tex Live-bin vulnerability {#usn-3788-2-tex-live-bin-vulnerability}

-   1 CVEs addressed in Cosmic
    -   [CVE-2018-17407](https://ubuntu.com/security/CVE-2018-17407)
-   This is the same vulnerability which we covered in Episode 7 for Trusty, Xenial &amp; Bionic now fixed for Cosmic


### [[USN-3797-1](https://usn.ubuntu.com/3797-1/), USN-3797-2] Linux kernel vulnerabilities {#usn-3797-1-usn-3797-2-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Xenial and Trusty for the Xenial HWE kernel for Trusty
    -   [CVE-2018-10938](https://ubuntu.com/security/CVE-2018-10938)
    -   [CVE-2018-9363](https://ubuntu.com/security/CVE-2018-9363)
    -   [CVE-2018-16658](https://ubuntu.com/security/CVE-2018-16658)
    -   [CVE-2018-14734](https://ubuntu.com/security/CVE-2018-14734)
-   Includes:
    -   UAF in Infiniband -&gt; DoS via crash
    -   Integer overflow in CDROM -&gt; info disclosure of kernel memory
    -   Integer overflow in bluetooth HID -&gt; buffer overflow -&gt; DoS / possible arbitrary code execution
    -   Remotely triggerable infinite loop in labelled network handler (CIPSO)
        -   CIPSO used by SELinux / SMACK not AppArmor so unlikely Ubuntu users affected


### [[USN-3798-1](https://usn.ubuntu.com/3798-1/)] Linux kernel vulnerabilities {#usn-3798-1-linux-kernel-vulnerabilities}

-   8 CVEs addressed in Trusty and Precise ESM (for the Trusty HWE kernel for Precise ESM)
    -   [CVE-2018-9518](https://ubuntu.com/security/CVE-2018-9518)
    -   [CVE-2018-7566](https://ubuntu.com/security/CVE-2018-7566)
    -   [CVE-2018-1000004](https://ubuntu.com/security/CVE-2018-1000004)
    -   [CVE-2017-18216](https://ubuntu.com/security/CVE-2017-18216)
    -   [CVE-2017-15299](https://ubuntu.com/security/CVE-2017-15299)
    -   [CVE-2017-0794](https://ubuntu.com/security/CVE-2017-0794)
    -   [CVE-2016-7913](https://ubuntu.com/security/CVE-2016-7913)
    -   [CVE-2015-8539](https://ubuntu.com/security/CVE-2015-8539)
-   Includes:
    -   Local DoS / code exec via insertion of an already existing key into kernel keyring
    -   UAF in XCeive driver, local DoS / code exec (crash)
    -   Race condition in generic SCSI -&gt; Local DoS (crash) / code exec
    -   NULL ptr dereference in ocfs2 -&gt; Local DoS (crash)
    -   Race condition in ALSA handling of ioctls -&gt; Local DoS via deadlock
    -   Race condition in ALSA -&gt; UAF / out of bounds read -&gt; Local DoS (crash) / code exec
    -   Buffer overflow in NFC LLCP impl -&gt; remote DoS / code exec


### [[USN-3777-3](https://usn.ubuntu.com/3777-3/)] Linux kernel (Azure) vulnerabilities {#usn-3777-3-linux-kernel--azure--vulnerabilities}

-   8 CVEs addressed in Xenial, Bionic
    -   [CVE-2018-6555](https://ubuntu.com/security/CVE-2018-6555)
    -   [CVE-2018-6554](https://ubuntu.com/security/CVE-2018-6554)
    -   [CVE-2018-3639](https://ubuntu.com/security/CVE-2018-3639)
    -   [CVE-2018-14633](https://ubuntu.com/security/CVE-2018-14633)
    -   [CVE-2017-5715](https://ubuntu.com/security/CVE-2017-5715)
    -   [CVE-2018-15572](https://ubuntu.com/security/CVE-2018-15572)
    -   [CVE-2018-15594](https://ubuntu.com/security/CVE-2018-15594)
    -   [CVE-2018-17182](https://ubuntu.com/security/CVE-2018-17182)
-   Corresponding fixes for Azure Cloud specific kernel as covered in Episode 7
    for standard Bionic kernel


### [[USN-3799-1](https://usn.ubuntu.com/3799-1/)] MySQL vulnerabilities {#usn-3799-1-mysql-vulnerabilities}

-   21 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-3284](https://ubuntu.com/security/CVE-2018-3284)
    -   [CVE-2018-3283](https://ubuntu.com/security/CVE-2018-3283)
    -   [CVE-2018-3282](https://ubuntu.com/security/CVE-2018-3282)
    -   [CVE-2018-3278](https://ubuntu.com/security/CVE-2018-3278)
    -   [CVE-2018-3277](https://ubuntu.com/security/CVE-2018-3277)
    -   [CVE-2018-3276](https://ubuntu.com/security/CVE-2018-3276)
    -   [CVE-2018-3251](https://ubuntu.com/security/CVE-2018-3251)
    -   [CVE-2018-3247](https://ubuntu.com/security/CVE-2018-3247)
    -   [CVE-2018-3200](https://ubuntu.com/security/CVE-2018-3200)
    -   [CVE-2018-3187](https://ubuntu.com/security/CVE-2018-3187)
    -   [CVE-2018-3185](https://ubuntu.com/security/CVE-2018-3185)
    -   [CVE-2018-3174](https://ubuntu.com/security/CVE-2018-3174)
    -   [CVE-2018-3173](https://ubuntu.com/security/CVE-2018-3173)
    -   [CVE-2018-3171](https://ubuntu.com/security/CVE-2018-3171)
    -   [CVE-2018-3162](https://ubuntu.com/security/CVE-2018-3162)
    -   [CVE-2018-3161](https://ubuntu.com/security/CVE-2018-3161)
    -   [CVE-2018-3156](https://ubuntu.com/security/CVE-2018-3156)
    -   [CVE-2018-3155](https://ubuntu.com/security/CVE-2018-3155)
    -   [CVE-2018-3144](https://ubuntu.com/security/CVE-2018-3144)
    -   [CVE-2018-3143](https://ubuntu.com/security/CVE-2018-3143)
    -   [CVE-2018-3133](https://ubuntu.com/security/CVE-2018-3133)
-   New upstream versions of MySQL for all supported releases to fix multiple
    vulnerabilities, add features and possible incompatible changes
-   Trusty: 5.5.62
-   Xenial, Bionic &amp; Cosmic: 5.7.24


### [[USN-3800-1](https://usn.ubuntu.com/3800-1/)] audiofile vulnerabilities {#usn-3800-1-audiofile-vulnerabilities}

-   2 CVEs addressed in Trusty
    -   [CVE-2018-17095](https://ubuntu.com/security/CVE-2018-17095)
    -   [CVE-2018-13440](https://ubuntu.com/security/CVE-2018-13440)
-   DoS (crash) and possible code execution via specially crafted audio files


### [[USN-3801-1](https://usn.ubuntu.com/3801-1/)] Firefox vulnerabilities {#usn-3801-1-firefox-vulnerabilities}

-   12 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-12397](https://ubuntu.com/security/CVE-2018-12397)
    -   [CVE-2018-12396](https://ubuntu.com/security/CVE-2018-12396)
    -   [CVE-2018-12395](https://ubuntu.com/security/CVE-2018-12395)
    -   [CVE-2018-12403](https://ubuntu.com/security/CVE-2018-12403)
    -   [CVE-2018-12402](https://ubuntu.com/security/CVE-2018-12402)
    -   [CVE-2018-12401](https://ubuntu.com/security/CVE-2018-12401)
    -   [CVE-2018-12399](https://ubuntu.com/security/CVE-2018-12399)
    -   [CVE-2018-12398](https://ubuntu.com/security/CVE-2018-12398)
    -   [CVE-2018-12393](https://ubuntu.com/security/CVE-2018-12393)
    -   [CVE-2018-12392](https://ubuntu.com/security/CVE-2018-12392)
    -   [CVE-2018-12390](https://ubuntu.com/security/CVE-2018-12390)
    -   [CVE-2018-12388](https://ubuntu.com/security/CVE-2018-12388)
-   Firefox 63
-   Includes fixes for a range of issues, most severe is possible RCE
-   Also fixes for WebExtensions in Firefox - to exploit need to install a
    malicious extension - then could privilege escalation or local code execution


### [[USN-3802-1](https://usn.ubuntu.com/3802-1/)] X.Org X server vulnerability {#usn-3802-1-x-dot-org-x-server-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2018-14665](https://ubuntu.com/security/CVE-2018-14665)
-   Incorrect permissions check for 2 command-line arguments (-modulepath and -logfile)
-   On **some** platforms (not Ubuntu) Xorg itself is setuid
-   Can then use these command-line options to overwrite arbitrary files etc -&gt; privilege escalation to root via say overwrite of /etc/shadow
-   Generated a lot of press - **BUT** missed the distinction that Xorg is not really setuid on Ubuntu
-   We use Xorg.wrap as setuid to first run and drop permissions if using KMS driver
    -   This is the case for the vast majority of drivers, and for almost all free drivers
    -   So most Ubuntu users unaffected by this vulnerability
-   Special Friday release :)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Hiring {#hiring}


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1158266>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)