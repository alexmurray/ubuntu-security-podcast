+++
title = "Episode 172"
description = """
  Finally, Ubuntu 22.04.1 LTS is released and we look at how best to upgrade,
  plus we cover security updates for NVIDIA graphics drivers, OpenJDK,
  Django, libxml, the Linux kernel and more.
  """
date = 2022-08-12T17:31:00+09:30
lastmod = 2022-08-12T17:32:02+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E172.mp3"
podcast_duration = 1307
podcast_bytes = 16426280
permalink = "https://ubuntusecuritypodcast.org/episode-172/"
guid = "0f3392e5f2a5a11c71fc38dd4601ca9855c0ca8dd700560caa5cb4b806481721e8fd0bea4d5366ffbcb9127556528cfd762021456b23a90a41a0679cf7524051"
+++

## Overview {#overview}

Finally, Ubuntu 22.04.1 LTS is released and we look at how best to upgrade,
plus we cover security updates for NVIDIA graphics drivers, OpenJDK,
Django, libxml, the Linux kernel and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

52 unique CVEs addressed


### [[USN-5547-1](https://ubuntu.com/security/notices/USN-5547-1)] NVIDIA graphics drivers vulnerabilities [00:43] {#usn-5547-1-nvidia-graphics-drivers-vulnerabilities-00-43}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-31608](https://ubuntu.com/security/CVE-2022-31608) <!-- low -->
    -   [CVE-2022-31615](https://ubuntu.com/security/CVE-2022-31615) <!-- medium -->
    -   [CVE-2022-31607](https://ubuntu.com/security/CVE-2022-31607) <!-- high -->
-   Local priv-esc by user with basic capabilities (?) - likely memory
    corruption since apparently could also DoS, perform data tampering and
    info leaks
-   Also NULL ptr deref in kernel driver able to be triggered from "local
    user with basic capabilities" -&gt; DoS
-   Also shipped a DBus configuration for the [Dynamic Boost component](https://download.nvidia.com/XFree86/Linux-x86_64/510.60.02/README/dynamicboost.html) - this
    is a system wide power controller which manages CPU and GPU power basd on
    overall system workload to get best system performance per watt -
    according to upstream documentation. Is only active when on AC power.
    -   Is not enabled by default but shipped a DBus policy file that allowed
        any process to communicate with the nvidia-powerd server and hence to
        perform privileged actions through it


### [[USN-5546-1](https://ubuntu.com/security/notices/USN-5546-1), [USN-5546-2](https://ubuntu.com/security/notices/USN-5546-2)] OpenJDK vulnerabilities [03:09] {#usn-5546-1-usn-5546-2-openjdk-vulnerabilities-03-09}

-   10 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-34169](https://ubuntu.com/security/CVE-2022-34169) <!-- medium -->
    -   [CVE-2022-21549](https://ubuntu.com/security/CVE-2022-21549) <!-- medium -->
    -   [CVE-2022-21541](https://ubuntu.com/security/CVE-2022-21541) <!-- medium -->
    -   [CVE-2022-21540](https://ubuntu.com/security/CVE-2022-21540) <!-- medium -->
    -   [CVE-2022-21496](https://ubuntu.com/security/CVE-2022-21496) <!-- medium -->
    -   [CVE-2022-21476](https://ubuntu.com/security/CVE-2022-21476) <!-- medium -->
    -   [CVE-2022-21443](https://ubuntu.com/security/CVE-2022-21443) <!-- medium -->
    -   [CVE-2022-21434](https://ubuntu.com/security/CVE-2022-21434) <!-- medium -->
    -   [CVE-2022-21426](https://ubuntu.com/security/CVE-2022-21426) <!-- medium -->
    -   [CVE-2022-21449](https://ubuntu.com/security/CVE-2022-21449) <!-- high -->
-   openjdk-8,11,17 for Ubuntu 18.04, 20.04 &amp; 22.04 LTS
-   openjdk-8 for Ubuntu 16.04 ESM
-   Most interesting is ["Psychic Signatures"](https://neilmadden.blog/2022/04/19/psychic-signatures-in-java/) bug - described even in the
    upstream advisory as an "easily exploitable vuln", where an attacker
    could forge certain SSL certificates (ie ones using ECDSA signatures) and
    hence allow them to intercept or modify communications without being
    detected.
-   When adding support for validating ECDSA signatures, failed to check the
    provided signature values were not zero - a signature consists of two
    values, `r` and `s` and these are used to then perform a bunch of
    calculations to check it is valid - this involves comparing `r` against `r`
    multiplied by a value derived from `s` - so if `r` and `s` are both zero you
    effectively check `0 = 0`
-   Affects anything which uses ECDSA signatures - including signed JWTs,
    SAML assertions, WedAuthn messages etc
-   This only affected openjdk 15 though 18 since this code was rewritten in
    native Java (previously was C++ which was not vulnerable) for Java 15 -
    so for Ubuntu this is openjdk-17 only which is not the default JRE
    (openjdk-11 is)


### [[USN-5549-1](https://ubuntu.com/security/notices/USN-5549-1)] Django vulnerability [06:16] {#usn-5549-1-django-vulnerability-06-16}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-36359](https://ubuntu.com/security/CVE-2022-36359) <!-- medium -->
-   Possible "Reflected File Download" attack - attack type first detailed at
    BH Euroe in 2014 - causes a web application to "virtually" download a file from a
    trusted domain - which then can get executed since is trusted
-   Usually involves the application failing to validate input such that an
    attacker can craft header content to get reflected into the response
    body - this is then the contents for a file, as well as get some content
    injected in the resulting filename - and then cause the response to be
    downloaded which will
-   In this case, if a Django application was setting the `Content-Disposition`
    header of a `FileResponse` object based on a filename which is derived from
    user input - fixed to escape the filename so can't then inject content
    into the `Content-Disposition` header


### [[USN-5550-1](https://ubuntu.com/security/notices/USN-5550-1)] GnuTLS vulnerabilities [07:55] {#usn-5550-1-gnutls-vulnerabilities-07-55}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-2509](https://ubuntu.com/security/CVE-2022-2509) <!-- medium -->
    -   [CVE-2021-4209](https://ubuntu.com/security/CVE-2021-4209) <!-- low -->
-   NULL pointer deref and double-free during verification of pkcs7
    signatures -&gt; DoS / RCE


### [[USN-5551-1](https://ubuntu.com/security/notices/USN-5551-1)] mod-wsgi vulnerability [08:10] {#usn-5551-1-mod-wsgi-vulnerability-08-10}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-2255](https://ubuntu.com/security/CVE-2022-2255) <!-- medium -->
-   Would pass through the `X-Client-IP` header to `WSGI` applications, even when
    it came from an untrusted proxy and hence could allow unintended access
    to services


### [[USN-5548-1](https://ubuntu.com/security/notices/USN-5548-1)] libxml2 vulnerability [08:32] {#usn-5548-1-libxml2-vulnerability-08-32}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2016-3709](https://ubuntu.com/security/CVE-2016-3709) <!-- medium -->
-   Possible HTML/code injection -&gt; XSS since would fail to properly handle
    escape server-side includes
-   Reported back in 2016 to GNOME project, was seemingly ignored until the
    offending commit which introduced the vuln was reverted ~2 years ago
-   Later versions not affected then
-   CVE only assigned a few weeks ago
-   Interestingly the discussion in 2018 included a pointer to three
    different CVEs in other XML/HTML parsing and sanitization libraries for
    the same type of issue - but in this case was ignored and no CVE assigned
    until now


### [[USN-5552-1](https://ubuntu.com/security/notices/USN-5552-1)] phpLiteAdmin vulnerability [11:29] {#usn-5552-1-phpliteadmin-vulnerability-11-29}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-46709](https://ubuntu.com/security/CVE-2021-46709) <!-- medium -->
-   XSS through failure to validate the `newRows` parameter


### [[USN-5553-1](https://ubuntu.com/security/notices/USN-5553-1)] libjpeg-turbo vulnerabilities [11:42] {#usn-5553-1-libjpeg-turbo-vulnerabilities-11-42}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2020-17541](https://ubuntu.com/security/CVE-2020-17541) <!-- low -->
    -   [CVE-2020-14152](https://ubuntu.com/security/CVE-2020-14152) <!-- low -->
    -   [CVE-2018-14498](https://ubuntu.com/security/CVE-2018-14498) <!-- low -->
    -   [CVE-2018-11813](https://ubuntu.com/security/CVE-2018-11813) <!-- low -->
-   Various memory corruption issues -&gt; heap and stack buffer overflows
-   Logic issue and a failure to limit overall memory consumption during
    decompression leading to very large memory usage -&gt; DoS


### [[USN-5554-1](https://ubuntu.com/security/notices/USN-5554-1)] GDK-PixBuf vulnerability [12:06] {#usn-5554-1-gdk-pixbuf-vulnerability-12-06}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-46829](https://ubuntu.com/security/CVE-2021-46829) <!-- medium -->
-   Heap buffer overflow for crafted animated GIFs -&gt; code execution
    particularly on 32-bit platforms


### [[USN-5555-1](https://ubuntu.com/security/notices/USN-5555-1)] GStreamer Good Plugins vulnerabilities [12:29] {#usn-5555-1-gstreamer-good-plugins-vulnerabilities-12-29}

-   7 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-2122](https://ubuntu.com/security/CVE-2022-2122) <!-- medium -->
    -   [CVE-2022-1925](https://ubuntu.com/security/CVE-2022-1925) <!-- medium -->
    -   [CVE-2022-1924](https://ubuntu.com/security/CVE-2022-1924) <!-- medium -->
    -   [CVE-2022-1923](https://ubuntu.com/security/CVE-2022-1923) <!-- medium -->
    -   [CVE-2022-1922](https://ubuntu.com/security/CVE-2022-1922) <!-- medium -->
    -   [CVE-2022-1921](https://ubuntu.com/security/CVE-2022-1921) <!-- medium -->
    -   [CVE-2022-1920](https://ubuntu.com/security/CVE-2022-1920) <!-- medium -->
-   Various integer overflows etc leading to heap buffer overflows in various
    video codec handlers -&gt; DoS / RCE


### [[USN-5558-1](https://ubuntu.com/security/notices/USN-5558-1)] libcdio vulnerabilities [13:00] {#usn-5558-1-libcdio-vulnerabilities-13-00}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2017-18199](https://ubuntu.com/security/CVE-2017-18199) <!-- low -->
    -   [CVE-2017-18198](https://ubuntu.com/security/CVE-2017-18198) <!-- low -->
-   Audio CD read/control library
-   2 different memory management issues when handling crafted ISO files -
    heap buffer over-read and NULL pointer dereference -&gt; DoS


### [[USN-5557-1](https://ubuntu.com/security/notices/USN-5557-1)] Linux kernel vulnerabilities [13:44] {#usn-5557-1-linux-kernel-vulnerabilities-13-44}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-2586](https://ubuntu.com/security/CVE-2022-2586) <!-- high -->
    -   [CVE-2022-2588](https://ubuntu.com/security/CVE-2022-2588) <!-- high -->
-   4.4
-   UAF in Network package scheduler - could create a route filter which when
    removed would still be referred to by other data structures and then
    allow a user to trigger access to this -&gt; DoS / RCE
-   Similarly in netfilter, could have one nft object be referred to by an
    nft set in another table -&gt; UAF


### [[USN-5560-1](https://ubuntu.com/security/notices/USN-5560-1), [USN-5560-2](https://ubuntu.com/security/notices/USN-5560-2)] Linux kernel vulnerabilities [14:37] {#usn-5560-1-usn-5560-2-linux-kernel-vulnerabilities-14-37}

-   13 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2022-34918](https://ubuntu.com/security/CVE-2022-34918) <!-- medium -->
    -   [CVE-2022-33981](https://ubuntu.com/security/CVE-2022-33981) <!-- medium -->
    -   [CVE-2022-1975](https://ubuntu.com/security/CVE-2022-1975) <!-- low -->
    -   [CVE-2022-1974](https://ubuntu.com/security/CVE-2022-1974) <!-- medium -->
    -   [CVE-2022-1734](https://ubuntu.com/security/CVE-2022-1734) <!-- medium -->
    -   [CVE-2022-1729](https://ubuntu.com/security/CVE-2022-1729) <!-- low -->
    -   [CVE-2022-1679](https://ubuntu.com/security/CVE-2022-1679) <!-- medium -->
    -   [CVE-2022-1652](https://ubuntu.com/security/CVE-2022-1652) <!-- medium -->
    -   [CVE-2022-1195](https://ubuntu.com/security/CVE-2022-1195) <!-- medium -->
    -   [CVE-2022-1048](https://ubuntu.com/security/CVE-2022-1048) <!-- medium -->
    -   [CVE-2022-0494](https://ubuntu.com/security/CVE-2022-0494) <!-- medium -->
    -   [CVE-2022-2586](https://ubuntu.com/security/CVE-2022-2586) <!-- high -->
    -   [CVE-2022-2588](https://ubuntu.com/security/CVE-2022-2588) <!-- high -->
-   4.15 GA for 18.04 LTS, HWE etc for 16.04 ESM, Azure for 14.04 ESM
-   Various vulns plus the 2 network related UAFs above


### [[USN-5561-1](https://ubuntu.com/security/notices/USN-5561-1)] GNOME Web vulnerabilities [14:58] {#usn-5561-1-gnome-web-vulnerabilities-14-58}

-   4 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-29536](https://ubuntu.com/security/CVE-2022-29536) <!-- medium -->
    -   [CVE-2021-45087](https://ubuntu.com/security/CVE-2021-45087) <!-- medium -->
    -   [CVE-2021-45086](https://ubuntu.com/security/CVE-2021-45086) <!-- medium -->
    -   [CVE-2021-45085](https://ubuntu.com/security/CVE-2021-45085) <!-- medium -->
-   Epiphany web browser
-   3 different XSS issues, 1 buffer overflow via a very long page title -&gt;
    gets ellipsised but UTF-8 length of ellipsis is not properly counted so
    then overflows bounds -&gt; DoS/RCE


### [[USN-5559-1](https://ubuntu.com/security/notices/USN-5559-1)] Moment.js vulnerabilities [15:40] {#usn-5559-1-moment-dot-js-vulnerabilities-15-40}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-31129](https://ubuntu.com/security/CVE-2022-31129) <!-- medium -->
    -   [CVE-2022-24785](https://ubuntu.com/security/CVE-2022-24785) <!-- medium -->
-   Date handling library for nodejs applications
-   Path traversal vuln since could end up using a user provided locale
    string to switch the locale which would then result in reading arbitrary
    local files
-   Quadratic complexity algorithm due to use of regexps to parse strings to
    dates - in particular [rfc2822](https://www.rfc-editor.org/rfc/rfc2822) formats which are tried by default - ReDoS
    -&gt; very large input could result in significant CPU-based DoS


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 22.04.1 LTS released [16:43] {#ubuntu-22-dot-04-dot-1-lts-released-16-43}

-   <https://lists.ubuntu.com/archives/ubuntu-announce/2022-August/000282.html>
-   <https://discourse.ubuntu.com/t/jammy-jellyfish-release-notes/24668>
-   <https://www.youtube.com/watch?v=REdxblQpsDE>
-   Includes all the various bug and security fixes that have gone into the
    22.04 LTS release so far - if you are already running 22.04 LTS you don't
    have to do anything to get this- just make sure you have been installing
    updates 😉
-   The full list of changes targeted for this release can be found at
    <https://discourse.ubuntu.com/t/jammy-jellyfish-point-release-changes/29835>
-   Now is when users of 20.04 LTS desktop will start being prompted to
    upgrade to 22.04 - I definitely recommend to upgrade, and to make the
    process as smooth as possible, do it from a virtual terminal
    -   This is the standard interface used for Ubuntu Server - full-screen
        terminal running directly on a console - no graphical environment
    -   as such, has a lot less processes and infrastructure running and so
        there is less chance that something may crash during the upgrade
        process - since libraries get swapped out from underneath various
        running processes etc
-   Log out of your graphical session, then when at the GDM Greeter / user
    chooser log in screen hit `CTRL + ALT + F2`
-   You will then be presented with a console prompt - log in with your
    username and password, then you can start the upgrade process by running

<!--listend-->

```shell
sudo do-release-upgrade
```

-   This is the same way this is done for Ubuntu Server


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)