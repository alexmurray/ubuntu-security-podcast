+++
title = "Episode 231"
description = """
  A look into CISA's Known Exploited Vulnerability Catalogue is on our minds this
  week, plus we look at vulnerability updates for gdb, Ansible, CUPS, libheif,
  Roundcube, the Linux kernel and more.
  """
date = 2024-06-28T19:15:00+09:30
lastmod = 2024-06-28T19:24:01+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E231.mp3"
podcast_duration = 1140
podcast_bytes = 19801297
permalink = "https://ubuntusecuritypodcast.org/episode-231/"
guid = "5e6c69d53c1d16b3c824c806db52971853b8b00ea973f251169f8aaa8476e4c258d696025d8ac3bcd06ee5d7c1bdf2895223b0d60320ef09fc62cbd454eebe87"
+++

## Overview {#overview}

A look into CISA's Known Exploited Vulnerability Catalogue is on our minds this
week, plus we look at vulnerability updates for gdb, Ansible, CUPS, libheif,
Roundcube, the Linux kernel and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

175 unique CVEs addressed


### [[USN-6842-1](https://ubuntu.com/security/notices/USN-6842-1)] gdb vulnerabilities (01:10) {#usn-6842-1-gdb-vulnerabilities--01-10}

-   6 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-39130](https://ubuntu.com/security/CVE-2023-39130) <!-- low -->
    -   [CVE-2023-39129](https://ubuntu.com/security/CVE-2023-39129) <!-- low -->
    -   [CVE-2023-39128](https://ubuntu.com/security/CVE-2023-39128) <!-- low -->
    -   [CVE-2023-1972](https://ubuntu.com/security/CVE-2023-1972) <!-- low -->
    -   [CVE-2022-4285](https://ubuntu.com/security/CVE-2022-4285) <!-- low -->
    -   [CVE-2020-16599](https://ubuntu.com/security/CVE-2020-16599) <!-- low -->
-   a couple of these are inherited from binutils as they share that code -
    parsing of crafted ELF executables -&gt; NULL ptr deref or possible heap based
    buffer overflow -&gt; DoS/RCE
-   other stack and heap buffer overflows as well - parsing of crafted ada files
    and crafted debug info files as well -&gt; DoS/RCE


### [[USN-6845-1](https://ubuntu.com/security/notices/USN-6845-1)] Hibernate vulnerability (02:12) {#usn-6845-1-hibernate-vulnerability--02-12}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2020-25638](https://ubuntu.com/security/CVE-2020-25638) <!-- medium -->
-   Object relational-mapping (ORM) library for Java
-   SQL injection in the JPA Criteria API implementation - could allow unvalidated
    literals when they are used in the SQL comments of a query when logging is
    enabled - fixed by properly escaping comments in this case


### [[USN-6846-1](https://ubuntu.com/security/notices/USN-6846-1)] Ansible vulnerabilities (02:46) {#usn-6846-1-ansible-vulnerabilities--02-46}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-5764](https://ubuntu.com/security/CVE-2023-5764) <!-- medium -->
    -   [CVE-2022-3697](https://ubuntu.com/security/CVE-2022-3697) <!-- medium -->
-   Possibly would leak the password into log file when using the AWS EC2 module
    since failed to validate the `tower_callback` (nowadays is called `aap_callback` -
    Ansible Automation Platform) parameter appropriately
-   Allows to mark variables as `unsafe` - in that they may come from an external,
    untrusted source - won't get evaluated/expanded when used to avoid possible
    info leaks etc - various issues where ansible would fail to respect this and
    essentially forget they were tagged as unsafe and end up exposing secrets as a
    result


### [[USN-6844-1](https://ubuntu.com/security/notices/USN-6844-1)] CUPS vulnerability (04:08) {#usn-6844-1-cups-vulnerability--04-08}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-35235](https://ubuntu.com/security/CVE-2024-35235) <!-- medium -->
-   When starting, cups would arbitrarily chmod the socket specified as the Listen
    parameter to make it world-writable - if this was a symlink, would then make
    the target of the symlink world-readable - in general the cups config file is
    only writable by root so requires some other vuln to be able to exploit it
    where you can get write access to the config file to exploit it OR be able to
    replace the regular cups socket path with a user-controlled symlink - but if
    you can, then you can even change the cups config itself to be world-writable
    and hence modify other parameters like the user and group that cups should run
    as, as well as a crafted `FoomaticRIPCommandLine` then can run arbitrary commands
    as root


### [[USN-6849-1](https://ubuntu.com/security/notices/USN-6849-1)] Salt vulnerabilities (06:20) {#usn-6849-1-salt-vulnerabilities--06-20}

-   2 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2020-11652](https://ubuntu.com/security/CVE-2020-11652) <!-- medium -->
    -   [CVE-2020-11651](https://ubuntu.com/security/CVE-2020-11651) <!-- medium -->
-   Failed to properly validate paths in some methods and also failed to restrict
    access to other methods, allowing them to be used without authentication -
    could then either allow arbitrary directory access or the ability to retrieve
    tokens from the master or run arbitrary commands on minions


### [[USN-6746-2](https://ubuntu.com/security/notices/USN-6746-2)] Google Guest Agent and Google OS Config Agent vulnerability (06:44) {#usn-6746-2-google-guest-agent-and-google-os-config-agent-vulnerability--06-44}

-   1 CVEs addressed in Noble (24.04 LTS)
    -   [CVE-2024-24786](https://ubuntu.com/security/CVE-2024-24786) <!-- medium -->
-   A vuln in the embedded golang protobuf module - when parsing JSON could end up
    in an infinite loop -&gt; DoS


### [[USN-6850-1](https://ubuntu.com/security/notices/USN-6850-1)] OpenVPN vulnerability (07:04) {#usn-6850-1-openvpn-vulnerability--07-04}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-0547](https://ubuntu.com/security/CVE-2022-0547) <!-- medium -->
-   [[USN-5347-1] OpenVPN vulnerability from Episode 155]({{< relref "episode-155#usn-5347-1-openvpn-vulnerability-02-00" >}}) - possibly gets confused
    when using multiple authentication plugins and deferred authentication


### [[USN-6847-1](https://ubuntu.com/security/notices/USN-6847-1)] libheif vulnerabilities (07:36) {#usn-6847-1-libheif-vulnerabilities--07-36}

-   8 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-49464](https://ubuntu.com/security/CVE-2023-49464) <!-- medium -->
    -   [CVE-2023-49463](https://ubuntu.com/security/CVE-2023-49463) <!-- medium -->
    -   [CVE-2023-49462](https://ubuntu.com/security/CVE-2023-49462) <!-- medium -->
    -   [CVE-2023-49460](https://ubuntu.com/security/CVE-2023-49460) <!-- medium -->
    -   [CVE-2023-29659](https://ubuntu.com/security/CVE-2023-29659) <!-- medium -->
    -   [CVE-2023-0996](https://ubuntu.com/security/CVE-2023-0996) <!-- medium -->
    -   [CVE-2020-23109](https://ubuntu.com/security/CVE-2020-23109) <!-- medium -->
    -   [CVE-2019-11471](https://ubuntu.com/security/CVE-2019-11471) <!-- medium -->
-   First time to mention libheif on the podcast - High Efficiency Image File
    Format - part of the MPEG-H standard - container format used to store images
    or sequences of images
-   Commonly seen due to its use by Apple for images on iPhone
-   C++ - usual types of issues
    -   UAF, buffer overflows, floating point exception etc
        -   most found through fuzzing


### [[USN-6848-1](https://ubuntu.com/security/notices/USN-6848-1)] Roundcube vulnerabilities (08:21) {#usn-6848-1-roundcube-vulnerabilities--08-21}

-   4 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-37384](https://ubuntu.com/security/CVE-2024-37384) <!-- medium -->
    -   [CVE-2024-37383](https://ubuntu.com/security/CVE-2024-37383) <!-- medium -->
    -   [CVE-2023-47272](https://ubuntu.com/security/CVE-2023-47272) <!-- medium -->
    -   [CVE-2023-5631](https://ubuntu.com/security/CVE-2023-5631) <!-- medium -->
-   webmail front-end for IMAP
-   2 different possible XSS issues due to mishandling of SVG - email containing
    an SVG could embed JS that then gets loaded when the email is viewed
-   Also possible XSS through a crafted user preference value - similarly through
    a crafted Content-Type/Content-Disposition header which can be used for
    attachment preview/download


### [[USN-6819-4](https://ubuntu.com/security/notices/USN-6819-4)] Linux kernel (Oracle) vulnerabilities (09:21) {#usn-6819-4-linux-kernel--oracle--vulnerabilities--09-21}

-   149 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2024-26631](https://ubuntu.com/security/CVE-2024-26631) <!-- medium -->
    -   [CVE-2023-52694](https://ubuntu.com/security/CVE-2023-52694) <!-- medium -->
    -   [CVE-2023-52685](https://ubuntu.com/security/CVE-2023-52685) <!-- medium -->
    -   [CVE-2023-52682](https://ubuntu.com/security/CVE-2023-52682) <!-- medium -->
    -   [CVE-2024-35835](https://ubuntu.com/security/CVE-2024-35835) <!-- medium -->
    -   [CVE-2023-52446](https://ubuntu.com/security/CVE-2023-52446) <!-- medium -->
    -   [CVE-2023-52487](https://ubuntu.com/security/CVE-2023-52487) <!-- medium -->
    -   [CVE-2023-52619](https://ubuntu.com/security/CVE-2023-52619) <!-- medium -->
    -   [CVE-2023-52627](https://ubuntu.com/security/CVE-2023-52627) <!-- medium -->
    -   [CVE-2023-52674](https://ubuntu.com/security/CVE-2023-52674) <!-- medium -->
    -   [CVE-2024-26598](https://ubuntu.com/security/CVE-2024-26598) <!-- medium -->
    -   [CVE-2023-52679](https://ubuntu.com/security/CVE-2023-52679) <!-- medium -->
    -   [CVE-2023-52455](https://ubuntu.com/security/CVE-2023-52455) <!-- medium -->
    -   [CVE-2024-26671](https://ubuntu.com/security/CVE-2024-26671) <!-- medium -->
    -   [CVE-2023-52444](https://ubuntu.com/security/CVE-2023-52444) <!-- medium -->
    -   [CVE-2023-52683](https://ubuntu.com/security/CVE-2023-52683) <!-- medium -->
    -   [CVE-2023-52690](https://ubuntu.com/security/CVE-2023-52690) <!-- medium -->
    -   [CVE-2024-35842](https://ubuntu.com/security/CVE-2024-35842) <!-- medium -->
    -   [CVE-2023-52610](https://ubuntu.com/security/CVE-2023-52610) <!-- medium -->
    -   [CVE-2024-26607](https://ubuntu.com/security/CVE-2024-26607) <!-- medium -->
    -   [CVE-2023-52445](https://ubuntu.com/security/CVE-2023-52445) <!-- medium -->
    -   [CVE-2023-52497](https://ubuntu.com/security/CVE-2023-52497) <!-- medium -->
    -   [CVE-2023-52488](https://ubuntu.com/security/CVE-2023-52488) <!-- medium -->
    -   [CVE-2024-26623](https://ubuntu.com/security/CVE-2024-26623) <!-- medium -->
    -   [CVE-2023-52607](https://ubuntu.com/security/CVE-2023-52607) <!-- low -->
    -   [CVE-2023-52677](https://ubuntu.com/security/CVE-2023-52677) <!-- medium -->
    -   [CVE-2023-52457](https://ubuntu.com/security/CVE-2023-52457) <!-- medium -->
    -   [CVE-2024-26673](https://ubuntu.com/security/CVE-2024-26673) <!-- medium -->
    -   [CVE-2024-26594](https://ubuntu.com/security/CVE-2024-26594) <!-- medium -->
    -   [CVE-2024-26638](https://ubuntu.com/security/CVE-2024-26638) <!-- medium -->
    -   [CVE-2023-52621](https://ubuntu.com/security/CVE-2023-52621) <!-- medium -->
    -   [CVE-2023-52594](https://ubuntu.com/security/CVE-2023-52594) <!-- medium -->
    -   [CVE-2023-52468](https://ubuntu.com/security/CVE-2023-52468) <!-- medium -->
    -   [CVE-2024-26647](https://ubuntu.com/security/CVE-2024-26647) <!-- medium -->
    -   [CVE-2023-52492](https://ubuntu.com/security/CVE-2023-52492) <!-- medium -->
    -   [CVE-2023-52452](https://ubuntu.com/security/CVE-2023-52452) <!-- medium -->
    -   [CVE-2024-26615](https://ubuntu.com/security/CVE-2024-26615) <!-- medium -->
    -   [CVE-2023-52448](https://ubuntu.com/security/CVE-2023-52448) <!-- medium -->
    -   [CVE-2023-52698](https://ubuntu.com/security/CVE-2023-52698) <!-- medium -->
    -   [CVE-2023-52443](https://ubuntu.com/security/CVE-2023-52443) <!-- medium -->
    -   [CVE-2023-52614](https://ubuntu.com/security/CVE-2023-52614) <!-- medium -->
    -   [CVE-2023-52494](https://ubuntu.com/security/CVE-2023-52494) <!-- medium -->
    -   [CVE-2024-35837](https://ubuntu.com/security/CVE-2024-35837) <!-- medium -->
    -   [CVE-2024-26582](https://ubuntu.com/security/CVE-2024-26582) <!-- high -->
    -   [CVE-2023-52632](https://ubuntu.com/security/CVE-2023-52632) <!-- medium -->
    -   [CVE-2023-52680](https://ubuntu.com/security/CVE-2023-52680) <!-- medium -->
    -   [CVE-2023-52595](https://ubuntu.com/security/CVE-2023-52595) <!-- medium -->
    -   [CVE-2023-52626](https://ubuntu.com/security/CVE-2023-52626) <!-- medium -->
    -   [CVE-2023-52495](https://ubuntu.com/security/CVE-2023-52495) <!-- medium -->
    -   [CVE-2023-52451](https://ubuntu.com/security/CVE-2023-52451) <!-- medium -->
    -   [CVE-2023-52583](https://ubuntu.com/security/CVE-2023-52583) <!-- negligible -->
    -   [CVE-2023-52469](https://ubuntu.com/security/CVE-2023-52469) <!-- low -->
    -   [CVE-2023-52584](https://ubuntu.com/security/CVE-2023-52584) <!-- medium -->
    -   [CVE-2023-52450](https://ubuntu.com/security/CVE-2023-52450) <!-- medium -->
    -   [CVE-2024-26608](https://ubuntu.com/security/CVE-2024-26608) <!-- medium -->
    -   [CVE-2023-52609](https://ubuntu.com/security/CVE-2023-52609) <!-- medium -->
    -   [CVE-2023-52464](https://ubuntu.com/security/CVE-2023-52464) <!-- medium -->
    -   [CVE-2023-52591](https://ubuntu.com/security/CVE-2023-52591) <!-- medium -->
    -   [CVE-2024-26645](https://ubuntu.com/security/CVE-2024-26645) <!-- medium -->
    -   [CVE-2024-35838](https://ubuntu.com/security/CVE-2024-35838) <!-- medium -->
    -   [CVE-2023-52470](https://ubuntu.com/security/CVE-2023-52470) <!-- low -->
    -   [CVE-2023-52456](https://ubuntu.com/security/CVE-2023-52456) <!-- medium -->
    -   [CVE-2023-52589](https://ubuntu.com/security/CVE-2023-52589) <!-- medium -->
    -   [CVE-2024-26585](https://ubuntu.com/security/CVE-2024-26585) <!-- high -->
    -   [CVE-2023-52696](https://ubuntu.com/security/CVE-2023-52696) <!-- medium -->
    -   [CVE-2023-52633](https://ubuntu.com/security/CVE-2023-52633) <!-- medium -->
    -   [CVE-2023-52462](https://ubuntu.com/security/CVE-2023-52462) <!-- medium -->
    -   [CVE-2023-52597](https://ubuntu.com/security/CVE-2023-52597) <!-- medium -->
    -   [CVE-2023-52587](https://ubuntu.com/security/CVE-2023-52587) <!-- medium -->
    -   [CVE-2024-26584](https://ubuntu.com/security/CVE-2024-26584) <!-- high -->
    -   [CVE-2024-26636](https://ubuntu.com/security/CVE-2024-26636) <!-- medium -->
    -   [CVE-2023-52491](https://ubuntu.com/security/CVE-2023-52491) <!-- medium -->
    -   [CVE-2023-52493](https://ubuntu.com/security/CVE-2023-52493) <!-- medium -->
    -   [CVE-2024-26627](https://ubuntu.com/security/CVE-2024-26627) <!-- medium -->
    -   [CVE-2023-52465](https://ubuntu.com/security/CVE-2023-52465) <!-- low -->
    -   [CVE-2023-52687](https://ubuntu.com/security/CVE-2023-52687) <!-- medium -->
    -   [CVE-2023-52593](https://ubuntu.com/security/CVE-2023-52593) <!-- medium -->
    -   [CVE-2024-26595](https://ubuntu.com/security/CVE-2024-26595) <!-- medium -->
    -   [CVE-2024-26629](https://ubuntu.com/security/CVE-2024-26629) <!-- medium -->
    -   [CVE-2024-35840](https://ubuntu.com/security/CVE-2024-35840) <!-- medium -->
    -   [CVE-2023-52666](https://ubuntu.com/security/CVE-2023-52666) <!-- medium -->
    -   [CVE-2024-26633](https://ubuntu.com/security/CVE-2024-26633) <!-- medium -->
    -   [CVE-2023-52686](https://ubuntu.com/security/CVE-2023-52686) <!-- medium -->
    -   [CVE-2023-52467](https://ubuntu.com/security/CVE-2023-52467) <!-- low -->
    -   [CVE-2023-52667](https://ubuntu.com/security/CVE-2023-52667) <!-- medium -->
    -   [CVE-2023-52449](https://ubuntu.com/security/CVE-2023-52449) <!-- medium -->
    -   [CVE-2023-52473](https://ubuntu.com/security/CVE-2023-52473) <!-- low -->
    -   [CVE-2023-52670](https://ubuntu.com/security/CVE-2023-52670) <!-- medium -->
    -   [CVE-2024-26649](https://ubuntu.com/security/CVE-2024-26649) <!-- medium -->
    -   [CVE-2023-52498](https://ubuntu.com/security/CVE-2023-52498) <!-- medium -->
    -   [CVE-2023-52693](https://ubuntu.com/security/CVE-2023-52693) <!-- medium -->
    -   [CVE-2024-26583](https://ubuntu.com/security/CVE-2024-26583) <!-- high -->
    -   [CVE-2023-52678](https://ubuntu.com/security/CVE-2023-52678) <!-- medium -->
    -   [CVE-2023-52675](https://ubuntu.com/security/CVE-2023-52675) <!-- medium -->
    -   [CVE-2023-52489](https://ubuntu.com/security/CVE-2023-52489) <!-- medium -->
    -   [CVE-2024-26640](https://ubuntu.com/security/CVE-2024-26640) <!-- medium -->
    -   [CVE-2024-26618](https://ubuntu.com/security/CVE-2024-26618) <!-- medium -->
    -   [CVE-2023-52599](https://ubuntu.com/security/CVE-2023-52599) <!-- medium -->
    -   [CVE-2024-26634](https://ubuntu.com/security/CVE-2024-26634) <!-- medium -->
    -   [CVE-2023-52608](https://ubuntu.com/security/CVE-2023-52608) <!-- medium -->
    -   [CVE-2024-26625](https://ubuntu.com/security/CVE-2024-26625) <!-- medium -->
    -   [CVE-2023-52486](https://ubuntu.com/security/CVE-2023-52486) <!-- medium -->
    -   [CVE-2024-26632](https://ubuntu.com/security/CVE-2024-26632) <!-- medium -->
    -   [CVE-2023-52669](https://ubuntu.com/security/CVE-2023-52669) <!-- medium -->
    -   [CVE-2023-52676](https://ubuntu.com/security/CVE-2023-52676) <!-- medium -->
    -   [CVE-2023-52635](https://ubuntu.com/security/CVE-2023-52635) <!-- medium -->
    -   [CVE-2023-52664](https://ubuntu.com/security/CVE-2023-52664) <!-- medium -->
    -   [CVE-2024-35841](https://ubuntu.com/security/CVE-2024-35841) <!-- medium -->
    -   [CVE-2023-52598](https://ubuntu.com/security/CVE-2023-52598) <!-- medium -->
    -   [CVE-2023-52458](https://ubuntu.com/security/CVE-2023-52458) <!-- medium -->
    -   [CVE-2024-26644](https://ubuntu.com/security/CVE-2024-26644) <!-- medium -->
    -   [CVE-2023-52697](https://ubuntu.com/security/CVE-2023-52697) <!-- medium -->
    -   [CVE-2023-52617](https://ubuntu.com/security/CVE-2023-52617) <!-- medium -->
    -   [CVE-2024-26612](https://ubuntu.com/security/CVE-2024-26612) <!-- medium -->
    -   [CVE-2023-52672](https://ubuntu.com/security/CVE-2023-52672) <!-- medium -->
    -   [CVE-2023-52490](https://ubuntu.com/security/CVE-2023-52490) <!-- medium -->
    -   [CVE-2024-35839](https://ubuntu.com/security/CVE-2024-35839) <!-- medium -->
    -   [CVE-2024-26610](https://ubuntu.com/security/CVE-2024-26610) <!-- medium -->
    -   [CVE-2024-26616](https://ubuntu.com/security/CVE-2024-26616) <!-- medium -->
    -   [CVE-2023-52588](https://ubuntu.com/security/CVE-2023-52588) <!-- medium -->
    -   [CVE-2023-52623](https://ubuntu.com/security/CVE-2023-52623) <!-- medium -->
    -   [CVE-2024-26669](https://ubuntu.com/security/CVE-2024-26669) <!-- medium -->
    -   [CVE-2023-52692](https://ubuntu.com/security/CVE-2023-52692) <!-- medium -->
    -   [CVE-2024-26620](https://ubuntu.com/security/CVE-2024-26620) <!-- medium -->
    -   [CVE-2023-52606](https://ubuntu.com/security/CVE-2023-52606) <!-- medium -->
    -   [CVE-2024-26592](https://ubuntu.com/security/CVE-2024-26592) <!-- medium -->
    -   [CVE-2023-52616](https://ubuntu.com/security/CVE-2023-52616) <!-- medium -->
    -   [CVE-2024-26641](https://ubuntu.com/security/CVE-2024-26641) <!-- medium -->
    -   [CVE-2023-52622](https://ubuntu.com/security/CVE-2023-52622) <!-- medium -->
    -   [CVE-2023-52611](https://ubuntu.com/security/CVE-2023-52611) <!-- medium -->
    -   [CVE-2023-52453](https://ubuntu.com/security/CVE-2023-52453) <!-- medium -->
    -   [CVE-2023-52681](https://ubuntu.com/security/CVE-2023-52681) <!-- medium -->
    -   [CVE-2024-26586](https://ubuntu.com/security/CVE-2024-26586) <!-- medium -->
    -   [CVE-2023-52472](https://ubuntu.com/security/CVE-2023-52472) <!-- low -->
    -   [CVE-2024-26646](https://ubuntu.com/security/CVE-2024-26646) <!-- medium -->
    -   [CVE-2024-26670](https://ubuntu.com/security/CVE-2024-26670) <!-- medium -->
    -   [CVE-2023-52454](https://ubuntu.com/security/CVE-2023-52454) <!-- medium -->
    -   [CVE-2024-26668](https://ubuntu.com/security/CVE-2024-26668) <!-- medium -->
    -   [CVE-2023-52447](https://ubuntu.com/security/CVE-2023-52447) <!-- high -->
    -   [CVE-2023-52463](https://ubuntu.com/security/CVE-2023-52463) <!-- medium -->
    -   [CVE-2023-52618](https://ubuntu.com/security/CVE-2023-52618) <!-- medium -->
    -   [CVE-2023-52691](https://ubuntu.com/security/CVE-2023-52691) <!-- medium -->
    -   [CVE-2024-26808](https://ubuntu.com/security/CVE-2024-26808) <!-- high -->
    -   [CVE-2023-52612](https://ubuntu.com/security/CVE-2023-52612) <!-- medium -->
    -   [CVE-2024-24860](https://ubuntu.com/security/CVE-2024-24860) <!-- low -->
    -   [CVE-2024-23849](https://ubuntu.com/security/CVE-2024-23849) <!-- low -->
    -   [CVE-2023-6536](https://ubuntu.com/security/CVE-2023-6536) <!-- medium -->
    -   [CVE-2023-6535](https://ubuntu.com/security/CVE-2023-6535) <!-- medium -->
    -   [CVE-2023-6356](https://ubuntu.com/security/CVE-2023-6356) <!-- medium -->
-   Of all these CVEs, 6 had a high priority rating
    -   many are due to bugs in the async handling of cryto operations in the
        in-kernel TLS implementation
        -   CVE-2024-26582 and CVE-2024-26584 - both reported by Google kernelCTF program (talked about back in [[USN-6766-2] Linux kernel vulnerabilities from Episode 228]({{< relref "episode-228#usn-6766-2-linux-kernel-vulnerabilities--01-07" >}}))
            -   first is UAF in TLS handling of scattter/gather arrays
            -   second is UAF when crypto requests get backlogged and the underlying
                crypto engine can't process them all in time - can then end up having
                the async callback invoked twice
        -   CVE-2024-26585
            -   very similar - UAF in handling of crypto operations from TLS - thread
                which handles the socket could close this before all the operations had
                been scheduled
        -   CVE-2024-26583 - similarly, race between async notify event and socket close -&gt; UAF
    -   UAF in BPF and a UAF in netfilter - also reported via Google kernelCTF -
        both able to be triggered via an unpriv userns


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Discussion of CISA KEV {#discussion-of-cisa-kev}

-   US Gov Cybersecurity &amp; Infrastructure Security Agency
    -   "America's Cyber Defense Agency"
    -   National Coordinator for Critical Infrastructure Security and Resilience
-   Publish various guidance for organisations around topics of cybersecurity
    -   for instance, recently published a report ["Exploring Memory Safety in Critical Open Source Projects"](https://www.cisa.gov/resources-tools/resources/exploring-memory-safety-critical-open-source-projects)
        -   Joint guidance (FBI, ASD / ACSC &amp; Candadian CSC)
        -   Builds on the previous case for memory safe roadmaps by looking at the
            prevalence of memory unsafe languages in various critical open source
            projects
-   Also maintain the KEV - Known Exploitable Vulnerabilities Catalog
    -   "authoritative source of vulnerabilities that have been exploited in the wild"
    -   Mandates for federal civilian agencies in the US to remediate KEV vulns within various timeframes
    -   Also recommend that anyone else monitors this list and immediately addresses these vulns as part of the vuln remediation plan
    -   List of vilns that are causing immediate harm based on observed adversarial activity
    -   Various requirements to be listed in the KEV:
        -   CVE ID assigned
        -   Evidence it has been or is being actively exploited
            -   reliable evidence that execution of malicious code was performed on a system by an unauthorised actor
            -   also includes both attempted and successful exploitation (e.g. includes honeypots as well as real systems)
        -   Clear remediation guidelines
            -   An update is available and should be applied OR
            -   Vulnerable component should be removed from networks etc if it is EOL and cannot be updated
    -   available as CSV or JSON
    -   Currently lists 1126 CVEs including:
        -   Accellion File Transfer Appliances
        -   Adobe Reader, Flash Player
        -   Apache HTTP Server, Struts (Solarwinds), Log4j
        -   Huge number of Apple iOS etc (WebKit and more)
        -   Atlassian Confluence
        -   Citrix Gateways
        -   Exim
        -   Fortinet
        -   Gitlab
        -   Google Chromium
        -   ImageMagick
        -   Microsoft Windows and Exchange
        -   Mozilla Firefox
        -   Ivanti Pulse Connect Security
        -   SaltStack
        -   VMWare
        -   WordPress
    -   Oldest CVEs are 2 against Windows from 2002 and 2004
    -   Newest include 26 2024 CVEs - various Chromium, Windows, Android Pixel, Ivanti and more
        -   interestingly includes ARM Mali GPU Driver CVE-2024-4610 - this affects
            the Bifrost and Valhall drivers - in Ubuntu we only ship the related
            Midgard driver back in bionic and focal so not affected by this one
    -   but as you may have noticed, lots that we potentially are affected by
        -   Apache HTTP Server, Exim, Firefox, Thunderbird - plus OpenJDK, GNU C
            Library, Bash, Roundcube (mentioned earlier but not this particular vuln),
            WinRAR (unrar), not to mention a number against the Linux kernel
            -   all for Linux kernel are privesc - most against either netfilter or
                various other systems like perf, `AF_PACKET`, tty, ptrace, futex and
                others
-   For Ubuntu, not surprisingly, we prioritise these vulnerabilities in our
    patching process


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
