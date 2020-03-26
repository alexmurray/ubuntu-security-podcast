+++
title = "Episode 26"
description = """
  This week we look security updates for a heap of packages including
  Firefox & Thunderbird, PHP & QEMU, plus we discuss Facebook's recent
  password storage incident as well as some listener hardening tips and
  more.
  """
date = 2019-04-01
lastmod = 2020-03-26T14:01:39+10:30
draft = false
weight = 1043
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E026.mp3"
podcast_duration = "20:14"
podcast_bytes = 19433142
permalink = "https://ubuntusecuritypodcast.org/episode-26/"
+++

## Overview {#overview}

This week we look security updates for a heap of packages including
Firefox & Thunderbird, PHP & QEMU, plus we discuss Facebook's recent
password storage incident as well as some listener hardening tips and
more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

48 unique CVEs addressed


### [[USN-3919-1](https://usn.ubuntu.com/3919-1/)] Firefox vulnerabilities {#usn-3919-1-firefox-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-9813](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9813)
    -   [CVE-2019-9810](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9810)
-   Firefox 66.0.1 (mentioned briefly last week) - fixes two vulnerabilities discovered during Pwn2Own
-   Both in the IonMonkey JIT compiler
    -   Incorrect alias information for the Array.prototype.slice method
        leads to missing bounds check and a buffer overflow - code execution
        as a result
    -   Type confusion in handling of ,\_\_proto\_\_ mutations - ,\_\_proto\_\_ is
        used to modify the Prototype of an object to be mutated - used for
        object inheritance in JavaScript - allows arbitrary memory
        read/write and therefore code execution as a result


### [[USN-3918-2](https://usn.ubuntu.com/3918-2/)] Firefox vulnerabilities {#usn-3918-2-firefox-vulnerabilities}

-   17 CVEs addressed in Trusty
    -   [CVE-2019-9803](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9803)
    -   [CVE-2019-9793](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9793)
    -   [CVE-2019-9809](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9809)
    -   [CVE-2019-9808](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9808)
    -   [CVE-2019-9807](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9807)
    -   [CVE-2019-9806](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9806)
    -   [CVE-2019-9805](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9805)
    -   [CVE-2019-9802](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9802)
    -   [CVE-2019-9799](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9799)
    -   [CVE-2019-9797](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9797)
    -   [CVE-2019-9796](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9796)
    -   [CVE-2019-9795](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9795)
    -   [CVE-2019-9792](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9792)
    -   [CVE-2019-9791](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9791)
    -   [CVE-2019-9790](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9790)
    -   [CVE-2019-9789](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9789)
    -   [CVE-2019-9788](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9788)
-   Firefox 66 & 66.0.1 - [Episode 25](https://ubuntusecuritypodcast.org/episode-25/) covered for Xenial, Bionic and Cosmic


### [[USN-3918-3](https://usn.ubuntu.com/3918-3/)] Firefox regression {#usn-3918-3-firefox-regression}

-   17 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-9803](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9803)
    -   [CVE-2019-9793](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9793)
    -   [CVE-2019-9809](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9809)
    -   [CVE-2019-9808](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9808)
    -   [CVE-2019-9807](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9807)
    -   [CVE-2019-9806](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9806)
    -   [CVE-2019-9805](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9805)
    -   [CVE-2019-9802](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9802)
    -   [CVE-2019-9799](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9799)
    -   [CVE-2019-9797](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9797)
    -   [CVE-2019-9796](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9796)
    -   [CVE-2019-9795](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9795)
    -   [CVE-2019-9792](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9792)
    -   [CVE-2019-9791](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9791)
    -   [CVE-2019-9790](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9790)
    -   [CVE-2019-9789](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9789)
    -   [CVE-2019-9788](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9788)
-   Firefox 66 & 66.0.1 contained a regression - so upstream released 66.0.2
-   Broke keyboard handling in Office 365, iCloud and IBM WebMail -
    Firefox 66 changed the way keycode handling works so these websites
    and others which use older, deprecated methods to get the keycode have
    been added to an internal fallback list to use the old method


### [[USN-3927-1](https://usn.ubuntu.com/3927-1/)] Thunderbird vulnerabilities {#usn-3927-1-thunderbird-vulnerabilities}

-   10 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-9793](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9793)
    -   [CVE-2019-9813](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9813)
    -   [CVE-2019-9810](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9810)
    -   [CVE-2019-9796](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9796)
    -   [CVE-2019-9795](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9795)
    -   [CVE-2019-9792](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9792)
    -   [CVE-2019-9791](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9791)
    -   [CVE-2019-9790](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9790)
    -   [CVE-2019-9788](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9788)
    -   [CVE-2018-18506](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18506)
-   Thunderbird 60.6.1
-   Rolls in security fixes covered previous for Firefox (66.0, 66.0.1)
    -   Both the Pwn2Own and previous fixes
-   As for Firefox, listen back to [Episode 25](https://ubuntusecuritypodcast.org/episode-25/) for details of 66.0 fixes


### [[USN-3921-1](https://usn.ubuntu.com/3921-1/)] XMLTooling vulnerability {#usn-3921-1-xmltooling-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-9628](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9628)
-   Crash due to uncaught DOMException able to be triggered by a malformed
    XML document - DoS
-   Thanks to Etienne Dysli Metref who provided debdiff's as well as
    testing for this update


### [[USN-3922-1](https://usn.ubuntu.com/3922-1/)] PHP vulnerabilities {#usn-3922-1-php-vulnerabilities}

-   5 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2019-9641](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9641)
    -   [CVE-2019-9640](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9640)
    -   [CVE-2019-9639](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9639)
    -   [CVE-2019-9638](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9638)
    -   [CVE-2019-9637](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9637)
-   Integer overflow on 32-bit archs when processing malformed EXIF image
    data - crash, DoS
-   Failure to check available data length when processing image
    thumbnails - OOB read -> crash -> DoS
-   OOB read of 1 byte when handling EXIF image data - crash -> DoS
-   During file rename, if file is moved across file-systems, the new file
    briefly is world readable allowing anyone to read it - fixed by
    ensuring umask is used correctly so that the new file always has
    restrictive permissions from the outset


### [[USN-3923-1](https://usn.ubuntu.com/3923-1/)] QEMU vulnerabilities {#usn-3923-1-qemu-vulnerabilities}

-   11 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-6778](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-6778)
    -   [CVE-2019-3812](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3812)
    -   [CVE-2018-20216](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20216)
    -   [CVE-2018-20191](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20191)
    -   [CVE-2018-20126](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20126)
    -   [CVE-2018-20125](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20125)
    -   [CVE-2018-20124](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20124)
    -   [CVE-2018-20123](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20123)
    -   [CVE-2018-19489](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19489)
    -   [CVE-2018-16872](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16872)
    -   [CVE-2018-16867](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16867)
-   Heap-based buffer overflow in TCP emulation
-   OOB read in i2c handling allowing a local attacker within a guest who
    has permission to execute i2c commands could read qemu host process
    stack memory
-   Plan9 FS host-directory sharing race-condition on file rename -> crash
    -> DoS
-   2 issues in USB MTP handling:
    -   time-of-check to time-of-use error allows attacker with write access
        to the shared host filesystem can use this to navigate host FS in
        context of QEMU host process and read any therefore read any file
        which QEMU can on the host
    -   Path traversal flaw due to improper filename sanitisation - allow to
        read-write arbitrary host files -> Dos or code execution on the host
-   Updates for Paravirtualised RDMA subsystem:
    -   DoS due to infinite loop
    -   NULL pointer dereference due to missing read method
    -   Fix various memory leaks
    -   Various other NULL pointer dereferences plus a failure to check
        parameters leading to possible extreme memory allocation
    -   Fix OOB read triggerable by guest


### [[USN-3924-1](https://usn.ubuntu.com/3924-1/)] mod\_auth\_mellon vulnerabilities {#usn-3924-1-mod-auth-mellon-vulnerabilities}

-   2 CVEs addressed in Bionic, Cosmic
    -   [CVE-2019-3878](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3878)
    -   [CVE-2019-3877](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3877)
-   Apache module to provide authentication and authorisation via SAML 2.0 IdP
-   Possible to bypass authorisation checks when also using mod\_proxy
-   Fix an open-redirect via the logout endpoint - could encode an
    absolute URL using backward-slashes (\\) in place of forward-slashes
    (/) and this would be propagated by the endpoint to the client where
    the browser would convert these and follow the redirect - due to
    mismatch in how browsers will convert these but apache's own internal
    URI parsing does not


### [[USN-3925-1](https://usn.ubuntu.com/3925-1/)] FreeImage vulnerability {#usn-3925-1-freeimage-vulnerability}

-   1 CVEs addressed in Trusty, Xenial
    -   [CVE-2016-5684](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-5684)
-   OOB write in XMP image handling - code execution


### [[USN-3926-1](https://usn.ubuntu.com/3926-1/)] GPAC vulnerabilities {#usn-3926-1-gpac-vulnerabilities}

-   8 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2018-7752](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-7752)
    -   [CVE-2018-20763](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20763)
    -   [CVE-2018-20762](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20762)
    -   [CVE-2018-20761](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20761)
    -   [CVE-2018-20760](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20760)
    -   [CVE-2018-13006](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13006)
    -   [CVE-2018-13005](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13005)
    -   [CVE-2018-1000100](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000100)
-   Various memory safety issues, including OOB buffer reads and writes
    due to missing bounds checks (was using strcpy without checking
    lengths...)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe McManus on Facebook insecure password storage {#joe-mcmanus-on-facebook-insecure-password-storage}

-   <https://krebsonsecurity.com/2019/03/facebook-stored-hundreds-of-millions-of-user-passwords-in-plain-text-for-years/>
-   <https://newsroom.fb.com/news/2019/03/keeping-passwords-secure/>


### Ubuntu Hardening Tips {#ubuntu-hardening-tips}

-   Paul Waring got in touch to mention his tips for hardening new Ubuntu installations:
    -   Install and configure unattended-upgrades
    -   Install UFW and block all incoming connections except specific services
        -   Can be done easily via ansible from just a few lines of YAML
    -   For servers:
        -   Install SSHGuard to ban IP addresses with too many failed login attempts
        -   Require TLS for all services via LetsEncrypt + certbot
        -   Configure SSH to permit only key-based authentication
        -   For wordpress installations - install wp-cli to auto-update themes
            and plugins
    -   Automate as much of this as possible for automatic hardening


### Hiring {#hiring}


#### Ubuntu Security Generalist {#ubuntu-security-generalist}

-   <https://boards.greenhouse.io/canonical/jobs/1548812>


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)