+++
title = "Episode 145"
description = """
  The Ubuntu Security Podcast is back for 2022 and we're starting off the
  year with a bang💥! This week we bring you a special interview with Kees
  Cook of Google and the Linux Kernel Self Protection Project discussing
  Linux kernel hardening upstream developments. Plus we look at security
  updates for Mumble, Apache Log4j2, OpenJDK and more.
  """
date = 2022-01-06T16:09:00+10:30
lastmod = 2022-05-15T18:05:46+09:30
draft = false
weight = 1015
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E145.mp3"
podcast_duration = "56:49"
podcast_bytes = 31032397
permalink = "https://ubuntusecuritypodcast.org/episode-145/"
guid = "b81f2062c310f710fd3a1cd961125e1c67cf180c6fe98bba59f753e29f3b3870c59f701a99a475f9e91d8f82920249b9e8dc71001aa1b981d2e30a4074220d00"
+++

## Overview {#overview}

The Ubuntu Security Podcast is back for 2022 and we're starting off the
year with a bang💥! This week we bring you a special interview with Kees
Cook of Google and the Linux Kernel Self Protection Project discussing
Linux kernel hardening upstream developments. Plus we look at security
updates for Mumble, Apache Log4j2, OpenJDK and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

31 unique CVEs addressed


### [[USN-5195-1](https://ubuntu.com/security/notices/USN-5195-1)] Mumble vulnerability [01:02] {#usn-5195-1-mumble-vulnerability-01-02}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-27229](https://ubuntu.com/security/CVE-2021-27229) <!-- medium -->
-   Low-latency VoIP client - client / server model
-   Client picks a server to connect to from public server list
-   Malicious actor could register a server with a web URL that uses some
    other protocol - e.g. `smb` to then refer to a `.desktop` file
-   When user chose the option to 'Open Webpage' for that server, would
    automatically fetch and execute via underlying Qt framework libraries
    `QDesktopServices::openUrl` function
-   Fixed to check URI scheme and only open if is http/https
-   Wonder if this kind of vuln may be seen in other applications?


### [[USN-5192-2](https://ubuntu.com/security/notices/USN-5192-2)] Apache Log4j 2 vulnerability [02:13] {#usn-5192-2-apache-log4j-2-vulnerability-02-13}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-44228](https://ubuntu.com/security/CVE-2021-44228) <!-- high -->
-   Log4j2 update for 16.04 ESM - see [Episode 142](https://ubuntusecuritypodcast.org/episode-142/)


### [[USN-5203-1](https://ubuntu.com/security/notices/USN-5203-1)] Apache Log4j 2 vulnerability {#usn-5203-1-apache-log4j-2-vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-45105](https://ubuntu.com/security/CVE-2021-45105) <!-- medium -->
-   More Log4j2 vulns - possible to crash applications using log4j2 by
    specifying a crafted string that would get logged which would then cause
    infinite recursion when doing lookup evaluation
-   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/Log4Shell>


### [[USN-5202-1](https://ubuntu.com/security/notices/USN-5202-1)] OpenJDK vulnerabilities [03:13] {#usn-5202-1-openjdk-vulnerabilities-03-13}

-   14 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-35603](https://ubuntu.com/security/CVE-2021-35603) <!-- medium -->
    -   [CVE-2021-35588](https://ubuntu.com/security/CVE-2021-35588) <!-- medium -->
    -   [CVE-2021-35586](https://ubuntu.com/security/CVE-2021-35586) <!-- medium -->
    -   [CVE-2021-35578](https://ubuntu.com/security/CVE-2021-35578) <!-- medium -->
    -   [CVE-2021-35567](https://ubuntu.com/security/CVE-2021-35567) <!-- medium -->
    -   [CVE-2021-35565](https://ubuntu.com/security/CVE-2021-35565) <!-- medium -->
    -   [CVE-2021-35564](https://ubuntu.com/security/CVE-2021-35564) <!-- medium -->
    -   [CVE-2021-35561](https://ubuntu.com/security/CVE-2021-35561) <!-- medium -->
    -   [CVE-2021-35559](https://ubuntu.com/security/CVE-2021-35559) <!-- medium -->
    -   [CVE-2021-35556](https://ubuntu.com/security/CVE-2021-35556) <!-- medium -->
    -   [CVE-2021-35550](https://ubuntu.com/security/CVE-2021-35550) <!-- medium -->
    -   [CVE-2021-2388](https://ubuntu.com/security/CVE-2021-2388) <!-- medium -->
    -   [CVE-2021-2369](https://ubuntu.com/security/CVE-2021-2369) <!-- medium -->
    -   [CVE-2021-2341](https://ubuntu.com/security/CVE-2021-2341) <!-- medium -->
-   Mix of issues resolved with this latest point release update for
    openjdk-8 and openjdk-11
-   Info leak via FTP client impl when connecting to malicious FTP server
-   Mishandling of JARs with multiple manifests -&gt; signature verification bypass
-   Sandbox escape via crafted Java class
-   Use of weak crypto ciphers by default -&gt; info leak
-   DoS via malicious RTF, BMP or class files
-   and more...


### [[USN-5199-1](https://ubuntu.com/security/notices/USN-5199-1), [USN-5200-1](https://ubuntu.com/security/notices/USN-5200-1), [USN-5201-1](https://ubuntu.com/security/notices/USN-5201-1)] Python vulnerabilities [04:26] {#usn-5199-1-usn-5200-1-usn-5201-1-python-vulnerabilities-04-26}

-   1 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04) for Python 3.8/3.9
    -   [CVE-2021-3737](https://ubuntu.com/security/CVE-2021-3737) <!-- medium -->
-   2 CVEs addressed in Bionic (18.04 LTS) for Python 3.6
    -   [CVE-2021-3737](https://ubuntu.com/security/CVE-2021-3737) <!-- medium -->
    -   [CVE-2021-3733](https://ubuntu.com/security/CVE-2021-3733) <!-- medium -->
-   3 CVEs addressed in Bionic (18.04 LTS) for Python 3.7/3.8
    -   [CVE-2021-3737](https://ubuntu.com/security/CVE-2021-3737) <!-- medium -->
    -   [CVE-2021-3733](https://ubuntu.com/security/CVE-2021-3733) <!-- medium -->
    -   [CVE-2020-8492](https://ubuntu.com/security/CVE-2020-8492) <!-- low -->
-   3 different DoS via urllib http client
    -   infinite loop when handling `100 Continue` responses - malicious HTTP
        server could cause a DoS against clients - affects all
    -   ReDoS due to quadratic complexity regex in basic auth handling - only
        affects Python 3.6-&gt;3.8 in Ubuntu 18.04
    -   Similar but different ReDos in basic auth handling - only affects
        Python 3.7/3.8 in Ubuntu 18.04


### [[USN-5198-1](https://ubuntu.com/security/notices/USN-5198-1)] HTMLDOC vulnerability [05:37] {#usn-5198-1-htmldoc-vulnerability-05-37}

-   1 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-23180](https://ubuntu.com/security/CVE-2021-23180) <!-- medium -->
-   Used to covert HTML/Markdown files to generate EPUB/HTML/PS/PDF with ToC
    etc
-   Through fuzzing a NULL ptr deref was found if given crafted input HTML
    file -&gt; crash -&gt; DoS


### [[USN-5186-2](https://ubuntu.com/security/notices/USN-5186-2)] Firefox regressions [06:06] {#usn-5186-2-firefox-regressions-06-06}

-   10 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-43540](https://ubuntu.com/security/CVE-2021-43540) <!-- medium -->
    -   [CVE-2021-43546](https://ubuntu.com/security/CVE-2021-43546) <!-- medium -->
    -   [CVE-2021-43545](https://ubuntu.com/security/CVE-2021-43545) <!-- medium -->
    -   [CVE-2021-43543](https://ubuntu.com/security/CVE-2021-43543) <!-- medium -->
    -   [CVE-2021-43542](https://ubuntu.com/security/CVE-2021-43542) <!-- medium -->
    -   [CVE-2021-43541](https://ubuntu.com/security/CVE-2021-43541) <!-- medium -->
    -   [CVE-2021-43539](https://ubuntu.com/security/CVE-2021-43539) <!-- medium -->
    -   [CVE-2021-43538](https://ubuntu.com/security/CVE-2021-43538) <!-- medium -->
    -   [CVE-2021-43537](https://ubuntu.com/security/CVE-2021-43537) <!-- medium -->
    -   [CVE-2021-43536](https://ubuntu.com/security/CVE-2021-43536) <!-- medium -->
-   95.0.1
    -   WebRender crash on some X11 systems
    -   Failure to connect to microsoft.com domains


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Seth and John talk Linux Kernel Security with Kees Cook [06:53] {#seth-and-john-talk-linux-kernel-security-with-kees-cook-06-53}

-   Seth Arnold and John Johansen from the Ubuntu Security team chat with
    [Kees Cook](https://twitter.com/kees_cook) from Google (KSPP) about Linux kernel hardening and
    self-protection, including KASLR and FGKASLR, delving into the finer
    points of linker scripts, kernel address pointer info leaks through debug
    logs, detecting possible integer overflows in C by relying on undefined
    behaviour of signed integer wraparound, hardware support for detecting
    memory corruption and more.


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)