+++
title = "Episode 21"
description = "Double episode covering the security updates from the last 2 weeks, including snapd (DirtySock), systemd and more, plus we talk responsible disclosure and some open positions on the Ubuntu Security team."
date = 2019-02-21
lastmod = 2019-08-21T20:59:57+09:30
draft = false
weight = 1023
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E021.mp3"
podcast_duration = "17:33"
podcast_bytes = 16856841
permalink = "https://ubuntusecuritypodcast.org/episode-21/"
+++

## Overview {#overview}

Double episode covering the security updates from the last 2 weeks, including snapd (DirtySock), systemd and more, plus we talk responsible disclosure and some open positions on the Ubuntu Security team.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

15 unique CVEs addressed


### [[USN-3886-1](https://usn.ubuntu.com/3886-1/)] poppler vulnerabilities {#usn-3886-1-poppler-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-7310](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7310)
    -   [CVE-2018-20551](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20551)
-   Two DoS:
    -   Out-of-bounds heap buffer read due to missing check for a negative index -> crash -> DoS
    -   Crash due to hitting an assertion -> DoS


### [[USN-3888-1](https://usn.ubuntu.com/3888-1/)] GVfs vulnerability {#usn-3888-1-gvfs-vulnerability}

-   1 CVEs addressed in Bionic, Cosmic
    -   [CVE-2019-3827](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3827)
-   Possible to allow a local user with admin privileges (eg. sudo group) to read arbitrary files without prompting for authorisation IF no policykit agents running
    -   Policykit agents run by default so would require user to be running a difffent DE or to have uninstalled / disabled them
    -   Also low impact since user has authority anyway


### [[USN-3889-1](https://usn.ubuntu.com/3889-1/)] WebKitGTK+ vulnerabilities {#usn-3889-1-webkitgtk-plus-vulnerabilities}

-   2 CVEs addressed in Bionic, Cosmic
    -   [CVE-2019-6215](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6215)
    -   [CVE-2019-6212](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6212)
-   Memory corruption and type confusion errors - leading to possible remote code execution


### [[USN-3890-1](https://usn.ubuntu.com/3890-1/)] Django vulnerability {#usn-3890-1-django-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2019-6975](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6975)
-   Could cause Django to consume a large amount of memory when formatting a decimal number with a large number of digits or with a large exponent since it would simply print every single provided character
-   Possible DoS although would need a very large number to be input
-   Fix is to format numbers with more than 200 characters in scientific notation


### [[USN-3887-1](https://usn.ubuntu.com/3887-1/)] snapd vulnerability {#usn-3887-1-snapd-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-7304](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7304)
-   ['DirtySock' - discovered by Chris Moberly](https://shenaniganslabs.io/2019/02/13/Dirty-Sock.html)
-   Failed to correctly parse and validate the remote socket address
-   Code had undergone refactoring and introduced this bug
-   Allows to impersonate privileged user and therefore call privileged APIs via the snapd socket


### [[USN-3850-2](https://usn.ubuntu.com/3850-2/)] NSS vulnerabilities {#usn-3850-2-nss-vulnerabilities}

-   3 CVEs addressed in Precise ESM
    -   [CVE-2018-12404](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12404)
    -   [CVE-2018-12384](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12384)
    -   [CVE-2018-0495](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-0495)
-   Covered back in [Episode 17](https://ubuntusecuritypodcast.org/episode-17/)


### [[USN-3891-1](https://usn.ubuntu.com/3891-1/)] systemd vulnerability {#usn-3891-1-systemd-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2019-6454](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6454)
-   [Discovered by Ubuntu Security team member Chris Coulson](https://www.openwall.com/lists/oss-security/2019/02/18/3)
-   Stack buffer overflow of DBus path field - declared as VLA, but sender could use a value larger than the stack size and therefore jump the entire stack and the guard pages
-   Segmentation violation -> crash -> DoS
    -   systemd does not automatically restart so brings down entire system - reboot
-   Possible code execution but unlikely
-   DBus and systemd need to agree on what the maximum size of various elements are - DBus spec says path could be unlimited - but in practice is less than 32MB! (dbus-daemon limits messages to this size) - systemd now limits path to 64KB AND ensures it keeps running after receiving an invalid sized path


### [[USN-3892-1](https://usn.ubuntu.com/3892-1/)] GDM vulnerability {#usn-3892-1-gdm-vulnerability}

-   1 CVEs addressed in Bionic, Cosmic
    -   [CVE-2019-3825](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3825)
-   Logic error in handing of timed logins (not enabled by default)
-   If screen already locked, select to log in as different user - then select a user which has timed login enabled - after timeout will unlock screen of original user
-   Need administrator privileges to enabled timed login for a given user so low impact


### [[USN-3866-2](https://usn.ubuntu.com/3866-2/)] Ghostscript regression {#usn-3866-2-ghostscript-regression}

-   Affecting Trusty, Xenial, Bionic, Cosmic
-   Previous update for Ghostscript ([USN-3866-1](https://usn.ubuntu.com/3866-1/) - [Episode 18](https://ubuntusecuritypodcast.org/episode-18/)) caused a regression in printing 4"x6" (v9.26 - upstream bug)


### [[USN-3893-1](https://usn.ubuntu.com/3893-1/)] Bind vulnerabilities {#usn-3893-1-bind-vulnerabilities}

-   3 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-6465](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6465)
    -   [CVE-2018-5745](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5745)
    -   [CVE-2018-5744](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-5744)
-   Fail to properly apply controls to zone transfers - could allow clients to request and receive a zone transfer to a dynamically loadable zone contrary to the allow-transfer ACL
-   Assertion failure if a trust anchor's keys are replaced with keys using an unsupported algorithm during a key rollover when using the managed-keys feature for DNSSEC validation
-   Remotely triggerable memory leak when processing particular packets - DoS


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### snapd, systemd and handling of embargoed issues {#snapd-systemd-and-handling-of-embargoed-issues}

-   2 updates involving close communication between Ubuntu Security Team and external stakeholders - embargoed
-   Responsible Disclosure - allows to coordinate a fix in a timely manner and then release update once all parties are ready in a coordinated manner
-   Set CRD with stakeholders (reporter, upstream, other distros etc)
-   Coordinate fix with upstream and other distros
-   Plan coordinated updates to be released with other distros / upstream at CRD


### Hiring {#hiring}


#### Ubuntu Security Generalist {#ubuntu-security-generalist}

-   <https://boards.greenhouse.io/canonical/jobs/1548812>


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


#### Security Automation Engineer {#security-automation-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1548632>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)