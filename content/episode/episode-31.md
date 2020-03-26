+++
title = "Episode 31"
description = "This week we cover security fixes for GNOME Shell, FFmpeg, Sudo, Ghostscript and others, and we talk to Joe McManus about malicious Dockerhub images, Git repos being ransomed more."
date = 2019-05-13
lastmod = 2020-03-26T14:01:28+10:30
draft = false
weight = 1038
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E031.mp3"
podcast_duration = "22:14"
podcast_bytes = 21345723
permalink = "https://ubuntusecuritypodcast.org/episode-31/"
+++

## Overview {#overview}

This week we cover security fixes for GNOME Shell, FFmpeg, Sudo, Ghostscript and others, and we talk to Joe McManus about malicious Dockerhub images, Git repos being ransomed more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

14 unique CVEs addressed


### [[USN-3966-1](https://usn.ubuntu.com/3966-1/)] GNOME Shell vulnerability {#usn-3966-1-gnome-shell-vulnerability}

-   1 CVEs addressed in Bionic, Cosmic
    -   [CVE-2019-3820](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3820)
-   Local user could potentially bypass various restrictions of the lock
    screen - menu items can be activated by keyboard combinations - these
    could then be used to take screenshots (and fill up disk space), close
    windows behind the lock screen or start the screen reader which could
    read out the contents of windows behind the lock screen.
-   Fixed by disabling all menu items when the screen is locked


### [[USN-3965-1](https://usn.ubuntu.com/3965-1/)] aria2 vulnerability {#usn-3965-1-aria2-vulnerability}

-   1 CVEs addressed in Cosmic, Disco
    -   [CVE-2019-3500](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3500)
-   CLI download tool (akin to curl / wget but can also do bittorrent and others)
-   When logging would store credentials in log file which could be read by other users
-   Fixed by masking out credentials


### [[USN-3967-1](https://usn.ubuntu.com/3967-1/)] FFmpeg vulnerabilities {#usn-3967-1-ffmpeg-vulnerabilities}

-   5 CVEs addressed in Bionic, Cosmic, Disco
    -   [CVE-2019-9721](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9721)
    -   [CVE-2019-9718](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9718)
    -   [CVE-2019-11339](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11339)
    -   [CVE-2019-11338](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11338)
    -   [CVE-2018-15822](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15822)
-   CPU DoS in Matroska and HTML subtitle decoding
-   Various issues discovered by Google's oss-fuzz project:
    -   2 x OOB read found by Google's clusterfuzz / oss-fuzz project in MPEG-4 decoder
    -   NULL pointer dereference and OOB read in HEVC decoder
-   Assertion failure for missing audio packet size in FLV encoder


### [[USN-3968-1](https://usn.ubuntu.com/3968-1/)] Sudo vulnerabilities {#usn-3968-1-sudo-vulnerabilities}

-   2 CVEs addressed in Xenial
    -   [CVE-2017-1000368](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-1000368)
    -   [CVE-2016-7076](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-7076)
-   Fails to properly parse /proc/PID/stat - this is used to determine the
    controlling tty - this name could contain newlines - sudo would only read
    one line of input and so would get a truncated name - when sudo is used
    with SELinux this allows to confuse sudo as to where the destination for
    stdout / stderr and so cause sudo to overwrite and arbitrary file by
    creating a symlink from the supposed tty to the destination file.
-   Fixed by ensuring to parse the full name including any newlines
-   sudo contains the ability to restrict users with sudo access to running
    further commands via the NOEXEC tag
    -   Does this by LD\_PRELOAD to replace exec() and other functions with
        versions that return an error
    -   wordexp() performs shell expansion on a string and so can contain shell
        directives to run a command and get the output $(foo) - this can run
        commands and so would not be stopped by LD\_PRELOAD lib - so a user can
        run a binary which does wordexp() they could bypass this restriction
    -   Fixed by adding wordexp() to the LD\_PRELOAD wrapper AND by adding a
        seccomp filter to stop all execve() entirely


### [[USN-3969-1](https://usn.ubuntu.com/3969-1/), USN-3969-2] wpa\_supplicant and hostapd vulnerability {#usn-3969-1-usn-3969-2-wpa-supplicant-and-hostapd-vulnerability}

-   1 CVEs addressed in Trusty ESM, Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11555](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11555)
-   Possible NULL pointer dereference if an attacker could construct out of
    sequence EAP message fragments
-   Fixed by validating and rejecting invalid fragments on both the peer and
    server side


### [[USN-3970-1](https://usn.ubuntu.com/3970-1/)] Ghostscript vulnerability {#usn-3970-1-ghostscript-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-3839](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3839)
-   Follow up to [CVE-2019-6116](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6116) ([Episode 18](https://ubuntusecuritypodcast.org/episode-18/))
    -   GS sandbox allowed access to system operators which allowed arbitrary code execution
    -   Missed some protections for pdf related operations which could also allow code execution


### [[USN-3971-1](https://usn.ubuntu.com/3971-1/)] Monit vulnerabilities {#usn-3971-1-monit-vulnerabilities}

-   2 CVEs addressed in Cosmic, Disco
    -   [CVE-2019-11455](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11455)
    -   [CVE-2019-11454](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11454)
-   Buffer over-read when decoding URLs could allow a remote authenticated
    attacker to read other memory - information disclosure but could also
    cause a crash via reading from an invalid memory location
-   Persistent XSS in decoding Authorization header for HTTP Basic
    Authorization could allow an unauthenticated remote attacker to inject
    arbitrary JavaScript in the \_viewlog operation - fixed by properly
    escaping this data


### [[USN-3956-2](https://usn.ubuntu.com/3956-2/)] Bind vulnerability {#usn-3956-2-bind-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty ESM
    -   [CVE-2018-5743](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5743)
-   [Episode 29](https://ubuntusecuritypodcast.org/episode-29/) covered for standard support releases - now fixed in ESM


## Discussion with Joe McManus about malicious DockerHub images and Git repo takeover ransoms {#discussion-with-joe-mcmanus-about-malicious-dockerhub-images-and-git-repo-takeover-ransoms}

-   <https://threatpost.com/malicious-docker-containers-earn-crypto-miners-90000/132816/>
-   <https://www.zdnet.com/article/a-hacker-is-wiping-git-repositories-and-asking-for-a-ransom/>


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


#### Security Certifications Engineer {#security-certifications-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1660658>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)