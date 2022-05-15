+++
title = "Episode 116"
description = """
  With 60 CVEs fixed across MySQL, Django, Please and the Linux kernel this
  week we take a look at some of these details, plus look at the recent
  announcement of 1Password for Linux and some open positions on the team
  too.
  """
date = 2021-05-21T13:41:00+09:30
lastmod = 2022-05-15T18:06:08+09:30
draft = false
weight = 1044
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E116.mp3"
podcast_duration = "15:09"
podcast_bytes = 12145791
permalink = "https://ubuntusecuritypodcast.org/episode-116/"
guid = "1a650790abdc9caca0d4bbf48df08c5998756a50cb38c9d5e15c95555f4a7e07219cbf290ae72d2afca2798de8649aebc2ba1404c5c58996e6058ebf5fdd7fba"
+++

## Overview {#overview}

With 60 CVEs fixed across MySQL, Django, Please and the Linux kernel this
week we take a look at some of these details, plus look at the recent
announcement of 1Password for Linux and some open positions on the team
too.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

60 unique CVEs addressed


### [[USN-4952-1](https://ubuntu.com/security/notices/USN-4952-1)] MySQL vulnerabilities [00:58] {#usn-4952-1-mysql-vulnerabilities-00-58}

-   33 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-2308](https://ubuntu.com/security/CVE-2021-2308) <!-- medium -->
    -   [CVE-2021-2307](https://ubuntu.com/security/CVE-2021-2307) <!-- medium -->
    -   [CVE-2021-2305](https://ubuntu.com/security/CVE-2021-2305) <!-- medium -->
    -   [CVE-2021-2304](https://ubuntu.com/security/CVE-2021-2304) <!-- medium -->
    -   [CVE-2021-2301](https://ubuntu.com/security/CVE-2021-2301) <!-- medium -->
    -   [CVE-2021-2300](https://ubuntu.com/security/CVE-2021-2300) <!-- medium -->
    -   [CVE-2021-2299](https://ubuntu.com/security/CVE-2021-2299) <!-- medium -->
    -   [CVE-2021-2298](https://ubuntu.com/security/CVE-2021-2298) <!-- medium -->
    -   [CVE-2021-2293](https://ubuntu.com/security/CVE-2021-2293) <!-- medium -->
    -   [CVE-2021-2278](https://ubuntu.com/security/CVE-2021-2278) <!-- medium -->
    -   [CVE-2021-2232](https://ubuntu.com/security/CVE-2021-2232) <!-- medium -->
    -   [CVE-2021-2230](https://ubuntu.com/security/CVE-2021-2230) <!-- medium -->
    -   [CVE-2021-2226](https://ubuntu.com/security/CVE-2021-2226) <!-- medium -->
    -   [CVE-2021-2217](https://ubuntu.com/security/CVE-2021-2217) <!-- medium -->
    -   [CVE-2021-2215](https://ubuntu.com/security/CVE-2021-2215) <!-- medium -->
    -   [CVE-2021-2212](https://ubuntu.com/security/CVE-2021-2212) <!-- medium -->
    -   [CVE-2021-2208](https://ubuntu.com/security/CVE-2021-2208) <!-- medium -->
    -   [CVE-2021-2203](https://ubuntu.com/security/CVE-2021-2203) <!-- medium -->
    -   [CVE-2021-2201](https://ubuntu.com/security/CVE-2021-2201) <!-- medium -->
    -   [CVE-2021-2196](https://ubuntu.com/security/CVE-2021-2196) <!-- medium -->
    -   [CVE-2021-2194](https://ubuntu.com/security/CVE-2021-2194) <!-- medium -->
    -   [CVE-2021-2193](https://ubuntu.com/security/CVE-2021-2193) <!-- medium -->
    -   [CVE-2021-2180](https://ubuntu.com/security/CVE-2021-2180) <!-- medium -->
    -   [CVE-2021-2179](https://ubuntu.com/security/CVE-2021-2179) <!-- medium -->
    -   [CVE-2021-2172](https://ubuntu.com/security/CVE-2021-2172) <!-- medium -->
    -   [CVE-2021-2171](https://ubuntu.com/security/CVE-2021-2171) <!-- medium -->
    -   [CVE-2021-2170](https://ubuntu.com/security/CVE-2021-2170) <!-- medium -->
    -   [CVE-2021-2169](https://ubuntu.com/security/CVE-2021-2169) <!-- medium -->
    -   [CVE-2021-2166](https://ubuntu.com/security/CVE-2021-2166) <!-- medium -->
    -   [CVE-2021-2164](https://ubuntu.com/security/CVE-2021-2164) <!-- medium -->
    -   [CVE-2021-2162](https://ubuntu.com/security/CVE-2021-2162) <!-- medium -->
    -   [CVE-2021-2154](https://ubuntu.com/security/CVE-2021-2154) <!-- medium -->
    -   [CVE-2021-2146](https://ubuntu.com/security/CVE-2021-2146) <!-- medium -->
-   Latest upstream point releases - includes both security **and** bug fixes and
    possibly incompatible changes etc
-   MySQL has been updated to 8.0.25 in Ubuntu 20.04 LTS, Ubuntu 20.10, and
    Ubuntu 21.04. Ubuntu 18.04 LTS has been updated to MySQL 5.7.34.


### [[USN-4932-2](https://ubuntu.com/security/notices/USN-4932-2)] Django vulnerability [01:37] {#usn-4932-2-django-vulnerability-01-37}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2021-31542](https://ubuntu.com/security/CVE-2021-31542) <!-- medium -->
-   [Episode 114](https://ubuntusecuritypodcast.org/episode-114/) - directory traversal via file upload


### [[USN-4953-1](https://ubuntu.com/security/notices/USN-4953-1)] AWStats vulnerabilities [01:56] {#usn-4953-1-awstats-vulnerabilities-01-56}

-   3 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2017-1000501](https://ubuntu.com/security/CVE-2017-1000501) <!-- medium -->
    -   [CVE-2020-35176](https://ubuntu.com/security/CVE-2020-35176) <!-- low -->
    -   [CVE-2020-29600](https://ubuntu.com/security/CVE-2020-29600) <!-- low -->
-   A-W-Stats - Advanced Web Statistics - log analyzer etc
-   Incomplete fix for old CVE-2017-1000501 - this itself was incomplete
    too - hence CVE-2020-35176
    -   Could be used to read an arbitrary file on the webserver via the config
        parameter - and this could allow code execution as this was not
        sanitised properly


### [[USN-4954-1](https://ubuntu.com/security/notices/USN-4954-1)] GNU C Library vulnerabilities [03:00] {#usn-4954-1-gnu-c-library-vulnerabilities-03-00}

-   2 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2009-5155](https://ubuntu.com/security/CVE-2009-5155) <!-- negligible -->
    -   [CVE-2020-6096](https://ubuntu.com/security/CVE-2020-6096) <!-- low -->
-   ARMv7 specific issue - memcpy() undefined behaviour if a negative length
    were specified
-   DoS (assertion failure + abort) via crafted regex - so should not be
    passing untrusted regular expressions to posix regex implementation


### [[USN-4628-3](https://ubuntu.com/security/notices/USN-4628-3)] Intel Microcode vulnerabilities [04:08] {#usn-4628-3-intel-microcode-vulnerabilities-04-08}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2020-8698](https://ubuntu.com/security/CVE-2020-8698) <!-- medium -->
    -   [CVE-2020-8696](https://ubuntu.com/security/CVE-2020-8696) <!-- low -->
    -   [CVE-2020-8695](https://ubuntu.com/security/CVE-2020-8695) <!-- medium -->
-   [Episode 96](https://ubuntusecuritypodcast.org/episode-96/) - RAPL side-channel etc - corresponding update for some Xeon
    processors


### [[USN-4955-1](https://ubuntu.com/security/notices/USN-4955-1)] Please vulnerabilities [04:44] {#usn-4955-1-please-vulnerabilities-04-44}

-   3 CVEs addressed in Hirsute (21.04)
    -   [CVE-2021-31155](https://ubuntu.com/security/CVE-2021-31155) <!-- medium -->
    -   [CVE-2021-31154](https://ubuntu.com/security/CVE-2021-31154) <!-- medium -->
    -   [CVE-2021-31153](https://ubuntu.com/security/CVE-2021-31153) <!-- medium -->
-   sudo replacement written in rust
-   Code analysis by Matthias Gerstner @ SuSE -
    -   arbitrary file existence test and open (eg could open /dev/zero and
        consume memory -&gt; OOM)
    -   unsafe permissions for token directory - create world-writable - can
        allow an unprivileged user to get root privileges quite easily by
        creating their own token as though they had authenticated
    -   pleaseedit uses predictable paths in /tmp - without symlink protections
        could allow a user to change ownership of arbitrary files as it would
        follow symlinks
-   rust is not a panacea - not all vulnerabilities are memory corruption and
    writing setuid root binaries is always going to be challenging


### [[LSN-0077-1](https://lists.ubuntu.com/archives/ubuntu-security-announce/2021-May/006028.html)] Linux kernel vulnerability [07:04] {#lsn-0077-1-linux-kernel-vulnerability-07-04}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3492](https://ubuntu.com/security/CVE-2021-3492) <!-- high -->
-   shiftfs specific vuln reported via ZDI (found by Vincent Dehors) - Ubuntu
    carry this as an out-of-tree patch so doesn't affect upstream kernel
    (used by LXD etc for UID mapping in containers)
-   Failed to handle faults in copy_from_user() -&gt; double-free or possible
    memory leak -&gt; code execution/DoS


### [[USN-4956-1](https://ubuntu.com/security/notices/USN-4956-1)] Eventlet vulnerability [08:05] {#usn-4956-1-eventlet-vulnerability-08-05}

-   1 CVEs addressed in Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-21419](https://ubuntu.com/security/CVE-2021-21419) <!-- medium -->
-   Python eventlet (concurrent networking library)
-   Used by a lot of other packages including openstack etc
-   websocket peer could DoS via memory exhaustion by sending very large
    websocket frames


### [[USN-4957-1](https://ubuntu.com/security/notices/USN-4957-1), [USN-4957-2](https://ubuntu.com/security/notices/USN-4957-2)] DjVuLibre vulnerabilities [08:31] {#usn-4957-1-usn-4957-2-djvulibre-vulnerabilities-08-31}

-   5 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-3500](https://ubuntu.com/security/CVE-2021-3500) <!-- low -->
    -   [CVE-2021-32493](https://ubuntu.com/security/CVE-2021-32493) <!-- medium -->
    -   [CVE-2021-32492](https://ubuntu.com/security/CVE-2021-32492) <!-- low -->
    -   [CVE-2021-32491](https://ubuntu.com/security/CVE-2021-32491) <!-- medium -->
    -   [CVE-2021-32490](https://ubuntu.com/security/CVE-2021-32490) <!-- medium -->
-   document format alternative to pdf - for storing scanned documents etc
-   c++ - memory corruption vulns
    -   heap buffer overflow
    -   oob write
    -   stack buffer overflow
    -   oob read
    -   integer overflow
    -   DoS/RCE


### [[USN-4958-1](https://ubuntu.com/security/notices/USN-4958-1)] Caribou vulnerability [09:27] {#usn-4958-1-caribou-vulnerability-09-27}

-   Affecting Focal (20.04 LTS), Groovy (20.10)
-   Caribou on-screen keyboard could crash if given crafted input - in some
    cases, this would then cause the screensaver to crash -&gt; unauthenticated
    access to a desktop session
    -   Thanks to Fabio Fantoni and Joshua Peisach (itzswirlz) from the Ubuntu
        community for preparing these updates


### [[USN-4959-1](https://ubuntu.com/security/notices/USN-4959-1)] GStreamer Base Plugins vulnerability [10:11] {#usn-4959-1-gstreamer-base-plugins-vulnerability-10-11}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-3522](https://ubuntu.com/security/CVE-2021-3522) <!-- medium -->
-   OOB read on crafted input since failed to properly check size -&gt; DoS


### [[USN-4945-2](https://ubuntu.com/security/notices/USN-4945-2)] Linux kernel (Raspberry Pi) vulnerabilities [10:18] {#usn-4945-2-linux-kernel--raspberry-pi--vulnerabilities-10-18}

-   7 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-30002](https://ubuntu.com/security/CVE-2021-30002) <!-- medium -->
    -   [CVE-2021-29650](https://ubuntu.com/security/CVE-2021-29650) <!-- medium -->
    -   [CVE-2021-29265](https://ubuntu.com/security/CVE-2021-29265) <!-- medium -->
    -   [CVE-2021-28660](https://ubuntu.com/security/CVE-2021-28660) <!-- medium -->
    -   [CVE-2021-28375](https://ubuntu.com/security/CVE-2021-28375) <!-- medium -->
    -   [CVE-2021-28038](https://ubuntu.com/security/CVE-2021-28038) <!-- medium -->
    -   [CVE-2020-25639](https://ubuntu.com/security/CVE-2020-25639) <!-- low -->
-   [Episode 115](https://ubuntusecuritypodcast.org/episode-115/) - regular kernels for Ubuntu 20.04 / 18.04 LTS
-   Update also for the raspi specific kernel build


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### 1Password for Linux officially released [10:43] {#1password-for-linux-officially-released-10-43}

-   [Episode 86](https://ubuntusecuritypodcast.org/episode-86/) (August 2020) - beta was announced
-   Now officially released, includes integration with browser extension to
    stay unlocked across both, use of regular desktop authentication to
    unlock as well - e.g. fingerprint / yubikey etc - both opt-in features.
-   Great desktop integration, theme, clipboard, GNOME Keyring / KDE Wallet,
    kernel keyring, DBUS API, integration with system lock / idle etc
-   Feature parity with Windows and MacOS clients PLUS extra features like
    Secure file attachment, Watchtower, item archiving / deletion, quick find
    and more
-   Uses kernel keyring to store the key used to establish the connection
    between the browser and the desktop client
-   Backend and lots of underlying libs written in Rust - UI is React
-   Native packages for Ubuntu (Debian. CentOS, Fedora, RHEL)
-   Snap


### Hiring [13:56] {#hiring-13-56}


#### Linux Cryptography and Security Engineer {#linux-cryptography-and-security-engineer}

-   <https://canonical.com/careers/2612092/linux-cryptography-and-security-engineer-remote>
    <!-- americas -->


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>
    <!-- worldwide -->


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)