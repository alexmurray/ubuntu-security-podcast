+++
title = "Episode 229"
description = """
  As the podcast winds down for a break over the next month, this week we talk
  about RSA timing side-channel attacks and the recently announced DNSBomb
  vulnerability as we cover security updates in VLC, OpenSSL, Netatalk, WebKitGTK,
  amavisd-new, Unbound, Intel Microcode and more.
  """
date = 2024-05-31T19:46:00+09:30
lastmod = 2024-05-31T19:49:12+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E229.mp3"
podcast_duration = 802
podcast_bytes = 13102934
permalink = "https://ubuntusecuritypodcast.org/episode-229/"
guid = "7e4ca4c9cdaf52f180a585bb0f0c463a425c71a29e31d8e17dabbd32d14f4a7a11fca989b18e0d368381ec17721752fc9c4e2861ebb447d5cb25041ac1213394"
+++

## Overview {#overview}

As the podcast winds down for a break over the next month, this week we talk
about RSA timing side-channel attacks and the recently announced DNSBomb
vulnerability as we cover security updates in VLC, OpenSSL, Netatalk, WebKitGTK,
amavisd-new, Unbound, Intel Microcode and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

152 unique CVEs addressed


### [[USN-6783-1](https://ubuntu.com/security/notices/USN-6783-1)] VLC vulnerabilities (00:54) {#usn-6783-1-vlc-vulnerabilities--00-54}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-47360](https://ubuntu.com/security/CVE-2023-47360) <!-- medium -->
    -   [CVE-2023-47359](https://ubuntu.com/security/CVE-2023-47359) <!-- medium -->
-   integer underflow and a heap buffer overflow -&gt; RCE


### [[USN-6663-3](https://ubuntu.com/security/notices/USN-6663-3)] OpenSSL update (01:40) {#usn-6663-3-openssl-update--01-40}

-   Affecting Noble (24.04 LTS)
-   [[USN-6663-1] OpenSSL update from Episode 220]({{< relref "episode-220#usn-6663-1-openssl-update--08-40" >}}) - hardening improvement to return
    deterministic random bytes instead of an error when an incorrect padding
    length is detected during PKCS#1 v1.5 RSA to avoid this being used for
    possible Bleichenbacher timing attacks


### [[USN-6673-3](https://ubuntu.com/security/notices/USN-6673-3)] python-cryptography vulnerability (02:32) {#usn-6673-3-python-cryptography-vulnerability--02-32}

-   1 CVEs addressed in Noble (24.04 LTS)
    -   [CVE-2024-26130](https://ubuntu.com/security/CVE-2024-26130) <!-- medium -->
-   [[USN-6673-1] python-cryptography vulnerabilities from Episode 220]({{< relref "episode-221#usn-6673-1-python-cryptography-vulnerabilities--07-30" >}}) -
    counterpart to the OpenSSL update mentioned earlier


### [[USN-6736-2](https://ubuntu.com/security/notices/USN-6736-2)] klibc vulnerabilities (02:43) {#usn-6736-2-klibc-vulnerabilities--02-43}

-   4 CVEs addressed in Noble (24.04 LTS)
    -   [CVE-2022-37434](https://ubuntu.com/security/CVE-2022-37434) <!-- medium -->
    -   [CVE-2018-25032](https://ubuntu.com/security/CVE-2018-25032) <!-- medium -->
    -   [CVE-2016-9841](https://ubuntu.com/security/CVE-2016-9841) <!-- low -->
    -   [CVE-2016-9840](https://ubuntu.com/security/CVE-2016-9840) <!-- low -->
-   [[USN-6736-1] klibc vulnerabilities from Episode 228]({{< relref "episode-226#usn-6736-1-klibc-vulnerabilities--06-33" >}})


### [[USN-6784-1](https://ubuntu.com/security/notices/USN-6784-1)] cJSON vulnerabilities (02:58) {#usn-6784-1-cjson-vulnerabilities--02-58}

-   3 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-31755](https://ubuntu.com/security/CVE-2024-31755) <!-- medium -->
    -   [CVE-2023-50472](https://ubuntu.com/security/CVE-2023-50472) <!-- medium -->
    -   [CVE-2023-50471](https://ubuntu.com/security/CVE-2023-50471) <!-- medium -->
-   2 different researchers fuzzing cJSON APIs
    -   all different NULL ptr deref - requires particular / "incorrect" or possible
        misuse use of the APIs (like passing in purposefully corrupted values) so
        unlikely to be an issue in practice


### [[USN-6785-1](https://ubuntu.com/security/notices/USN-6785-1)] GNOME Remote Desktop vulnerability (03:52) {#usn-6785-1-gnome-remote-desktop-vulnerability--03-52}

-   1 CVEs addressed in Noble (24.04 LTS)
    -   [CVE-2024-5148](https://ubuntu.com/security/CVE-2024-5148) <!-- medium -->
-   Discovered by a member of the SUSE security team when reviewing g-r-d
-   Exposed various DBus services that were able to be called by any unprivileged
    user which would then return the SSL private key used to encrypt the
    connection - so could allow a local user to possibly spy on the sessions of
    other users remotely connected to the system


### [[USN-6786-1](https://ubuntu.com/security/notices/USN-6786-1)] Netatalk vulnerabilities (04:45) {#usn-6786-1-netatalk-vulnerabilities--04-45}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-22995](https://ubuntu.com/security/CVE-2022-22995) <!-- medium -->
-   Apple file sharing implementation for Linux
-   If the same path was shared via both AFP and SMB then a remote attacker could
    combine various operations through both file-systems (like creating a crafted
    symlink, which would then be followed during a second operation where a file
    is renamed) to allow them to overwrite arbirary files and hence achieve
    arbitrary code execution on the host


### [[USN-6788-1](https://ubuntu.com/security/notices/USN-6788-1)] WebKitGTK vulnerabilities (05:48) {#usn-6788-1-webkitgtk-vulnerabilities--05-48}

-   1 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-27834](https://ubuntu.com/security/CVE-2024-27834) <!-- medium -->
-   Possible pointer authentication bypass - used on arm64 in particular -
    demonstrated at Pwn2Own earlier this year by Manfred Paul - $60k


### [[USN-6789-1](https://ubuntu.com/security/notices/USN-6789-1)] LibreOffice vulnerability (06:28) {#usn-6789-1-libreoffice-vulnerability--06-28}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-3044](https://ubuntu.com/security/CVE-2024-3044) <!-- medium -->
-   Unchecked script execution triggered when clicking on a graphic - allows to
    run arbitrary scripts without the usual prompt


### [[USN-6790-1](https://ubuntu.com/security/notices/USN-6790-1)] amavisd-new vulnerability (07:09) {#usn-6790-1-amavisd-new-vulnerability--07-09}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-28054](https://ubuntu.com/security/CVE-2024-28054) <!-- medium -->
-   MTA / AV interface - often used in conjunction with Postfix, not just for AV
    but also can be used to do DKIM verification and integration with spamassassin
    etc
-   Misinterpreted MIME message boundaries in emails, allowing email parts to
    possibly bypass usual checks


### [[USN-6791-1](https://ubuntu.com/security/notices/USN-6791-1)] Unbound vulnerability (07:46) {#usn-6791-1-unbound-vulnerability--07-46}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-33655](https://ubuntu.com/security/CVE-2024-33655) <!-- low -->
-   DNSBomb attack announced recently at IEEE S&amp;P - affecting multiple different
    DNS implementations including BIND, Unbound, PowerDNS, Knot, DNSMasq and others
-   Unbound itself was not necessarily vulnerable to such an attack specifically,
    but could be used to generate such an attack against others - in particular
    Unbound had the highest amplification factor of ~22k times - next highest was
    DNSMasq at ~3k times
-   Fix involves introducing a number of timeout parameters for various operations
    and discarding operations if they take longer than this to avoid the ability
    to "store up" responses to be released at a later time


### [[USN-6793-1](https://ubuntu.com/security/notices/USN-6793-1)] Git vulnerabilities (09:31) {#usn-6793-1-git-vulnerabilities--09-31}

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-32465](https://ubuntu.com/security/CVE-2024-32465) <!-- medium -->
    -   [CVE-2024-32021](https://ubuntu.com/security/CVE-2024-32021) <!-- medium -->
    -   [CVE-2024-32020](https://ubuntu.com/security/CVE-2024-32020) <!-- medium -->
    -   [CVE-2024-32004](https://ubuntu.com/security/CVE-2024-32004) <!-- medium -->
    -   [CVE-2024-32002](https://ubuntu.com/security/CVE-2024-32002) <!-- medium -->


### [[USN-6792-1](https://ubuntu.com/security/notices/USN-6792-1)] Flask-Security vulnerability {#usn-6792-1-flask-security-vulnerability}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2021-23385](https://ubuntu.com/security/CVE-2021-23385) <!-- medium -->


### [[USN-6794-1](https://ubuntu.com/security/notices/USN-6794-1)] FRR vulnerabilities {#usn-6794-1-frr-vulnerabilities}

-   4 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-34088](https://ubuntu.com/security/CVE-2024-34088) <!-- medium -->
    -   [CVE-2024-31951](https://ubuntu.com/security/CVE-2024-31951) <!-- medium -->
    -   [CVE-2024-31950](https://ubuntu.com/security/CVE-2024-31950) <!-- medium -->
    -   [CVE-2024-31948](https://ubuntu.com/security/CVE-2024-31948) <!-- medium -->


### [[USN-6777-4](https://ubuntu.com/security/notices/USN-6777-4)] Linux kernel (HWE) vulnerabilities (09:40) {#usn-6777-4-linux-kernel--hwe--vulnerabilities--09-40}

-   17 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-52583](https://ubuntu.com/security/CVE-2023-52583) <!-- negligible -->
    -   [CVE-2024-26801](https://ubuntu.com/security/CVE-2024-26801) <!-- medium -->
    -   [CVE-2024-26805](https://ubuntu.com/security/CVE-2024-26805) <!-- medium -->
    -   [CVE-2024-26735](https://ubuntu.com/security/CVE-2024-26735) <!-- medium -->
    -   [CVE-2024-26622](https://ubuntu.com/security/CVE-2024-26622) <!-- medium -->
    -   [CVE-2021-46981](https://ubuntu.com/security/CVE-2021-46981) <!-- medium -->
    -   [CVE-2023-52566](https://ubuntu.com/security/CVE-2023-52566) <!-- medium -->
    -   [CVE-2023-52604](https://ubuntu.com/security/CVE-2023-52604) <!-- medium -->
    -   [CVE-2024-26704](https://ubuntu.com/security/CVE-2024-26704) <!-- medium -->
    -   [CVE-2024-26614](https://ubuntu.com/security/CVE-2024-26614) <!-- medium -->
    -   [CVE-2023-52602](https://ubuntu.com/security/CVE-2023-52602) <!-- medium -->
    -   [CVE-2024-26635](https://ubuntu.com/security/CVE-2024-26635) <!-- medium -->
    -   [CVE-2023-52439](https://ubuntu.com/security/CVE-2023-52439) <!-- medium -->
    -   [CVE-2023-52601](https://ubuntu.com/security/CVE-2023-52601) <!-- medium -->
    -   [CVE-2023-52530](https://ubuntu.com/security/CVE-2023-52530) <!-- medium -->
    -   [CVE-2023-52524](https://ubuntu.com/security/CVE-2023-52524) <!-- medium -->
    -   [CVE-2023-47233](https://ubuntu.com/security/CVE-2023-47233) <!-- low -->
-   [[USN-6777-1] Linux kernel vulnerabilities from Episode 228]({{< relref "episode-228#usn-6777-1-linux-kernel-vulnerabilities" >}})
-   AWS HWE kernel (4.15)


### [[USN-6795-1](https://ubuntu.com/security/notices/USN-6795-1)] Linux kernel (Intel IoTG) vulnerabilities (10:00) {#usn-6795-1-linux-kernel--intel-iotg--vulnerabilities--10-00}

-   95 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-52588](https://ubuntu.com/security/CVE-2023-52588) <!-- medium -->
    -   [CVE-2023-52622](https://ubuntu.com/security/CVE-2023-52622) <!-- medium -->
    -   [CVE-2024-26920](https://ubuntu.com/security/CVE-2024-26920) <!-- low -->
    -   [CVE-2023-52607](https://ubuntu.com/security/CVE-2023-52607) <!-- low -->
    -   [CVE-2023-52530](https://ubuntu.com/security/CVE-2023-52530) <!-- medium -->
    -   [CVE-2023-52435](https://ubuntu.com/security/CVE-2023-52435) <!-- medium -->
    -   [CVE-2023-52615](https://ubuntu.com/security/CVE-2023-52615) <!-- medium -->
    -   [CVE-2024-26684](https://ubuntu.com/security/CVE-2024-26684) <!-- medium -->
    -   [CVE-2024-26829](https://ubuntu.com/security/CVE-2024-26829) <!-- medium -->
    -   [CVE-2024-26614](https://ubuntu.com/security/CVE-2024-26614) <!-- medium -->
    -   [CVE-2023-52489](https://ubuntu.com/security/CVE-2023-52489) <!-- medium -->
    -   [CVE-2023-52642](https://ubuntu.com/security/CVE-2023-52642) <!-- low -->
    -   [CVE-2023-52583](https://ubuntu.com/security/CVE-2023-52583) <!-- negligible -->
    -   [CVE-2024-26696](https://ubuntu.com/security/CVE-2024-26696) <!-- medium -->
    -   [CVE-2024-26627](https://ubuntu.com/security/CVE-2024-26627) <!-- medium -->
    -   [CVE-2024-26636](https://ubuntu.com/security/CVE-2024-26636) <!-- medium -->
    -   [CVE-2024-26663](https://ubuntu.com/security/CVE-2024-26663) <!-- medium -->
    -   [CVE-2024-26702](https://ubuntu.com/security/CVE-2024-26702) <!-- medium -->
    -   [CVE-2024-26685](https://ubuntu.com/security/CVE-2024-26685) <!-- medium -->
    -   [CVE-2024-26715](https://ubuntu.com/security/CVE-2024-26715) <!-- medium -->
    -   [CVE-2024-26668](https://ubuntu.com/security/CVE-2024-26668) <!-- medium -->
    -   [CVE-2023-52492](https://ubuntu.com/security/CVE-2023-52492) <!-- medium -->
    -   [CVE-2023-52498](https://ubuntu.com/security/CVE-2023-52498) <!-- medium -->
    -   [CVE-2024-26825](https://ubuntu.com/security/CVE-2024-26825) <!-- medium -->
    -   [CVE-2023-52587](https://ubuntu.com/security/CVE-2023-52587) <!-- medium -->
    -   [CVE-2024-26615](https://ubuntu.com/security/CVE-2024-26615) <!-- medium -->
    -   [CVE-2023-52608](https://ubuntu.com/security/CVE-2023-52608) <!-- medium -->
    -   [CVE-2024-26660](https://ubuntu.com/security/CVE-2024-26660) <!-- medium -->
    -   [CVE-2023-52601](https://ubuntu.com/security/CVE-2023-52601) <!-- medium -->
    -   [CVE-2024-26910](https://ubuntu.com/security/CVE-2024-26910) <!-- low -->
    -   [CVE-2024-26676](https://ubuntu.com/security/CVE-2024-26676) <!-- medium -->
    -   [CVE-2023-52493](https://ubuntu.com/security/CVE-2023-52493) <!-- medium -->
    -   [CVE-2024-26673](https://ubuntu.com/security/CVE-2024-26673) <!-- medium -->
    -   [CVE-2024-26707](https://ubuntu.com/security/CVE-2024-26707) <!-- medium -->
    -   [CVE-2024-26698](https://ubuntu.com/security/CVE-2024-26698) <!-- medium -->
    -   [CVE-2024-26641](https://ubuntu.com/security/CVE-2024-26641) <!-- medium -->
    -   [CVE-2023-52494](https://ubuntu.com/security/CVE-2023-52494) <!-- medium -->
    -   [CVE-2023-52595](https://ubuntu.com/security/CVE-2023-52595) <!-- medium -->
    -   [CVE-2024-26697](https://ubuntu.com/security/CVE-2024-26697) <!-- medium -->
    -   [CVE-2023-52617](https://ubuntu.com/security/CVE-2023-52617) <!-- medium -->
    -   [CVE-2024-26675](https://ubuntu.com/security/CVE-2024-26675) <!-- medium -->
    -   [CVE-2024-26610](https://ubuntu.com/security/CVE-2024-26610) <!-- medium -->
    -   [CVE-2024-26606](https://ubuntu.com/security/CVE-2024-26606) <!-- medium -->
    -   [CVE-2023-52614](https://ubuntu.com/security/CVE-2023-52614) <!-- medium -->
    -   [CVE-2024-26712](https://ubuntu.com/security/CVE-2024-26712) <!-- medium -->
    -   [CVE-2023-52635](https://ubuntu.com/security/CVE-2023-52635) <!-- medium -->
    -   [CVE-2024-26689](https://ubuntu.com/security/CVE-2024-26689) <!-- medium -->
    -   [CVE-2024-26916](https://ubuntu.com/security/CVE-2024-26916) <!-- medium -->
    -   [CVE-2024-26665](https://ubuntu.com/security/CVE-2024-26665) <!-- medium -->
    -   [CVE-2023-52623](https://ubuntu.com/security/CVE-2023-52623) <!-- medium -->
    -   [CVE-2024-26635](https://ubuntu.com/security/CVE-2024-26635) <!-- medium -->
    -   [CVE-2024-26602](https://ubuntu.com/security/CVE-2024-26602) <!-- medium -->
    -   [CVE-2023-52597](https://ubuntu.com/security/CVE-2023-52597) <!-- medium -->
    -   [CVE-2023-52619](https://ubuntu.com/security/CVE-2023-52619) <!-- medium -->
    -   [CVE-2024-26808](https://ubuntu.com/security/CVE-2024-26808) <!-- high -->
    -   [CVE-2024-26600](https://ubuntu.com/security/CVE-2024-26600) <!-- medium -->
    -   [CVE-2024-26826](https://ubuntu.com/security/CVE-2024-26826) <!-- medium -->
    -   [CVE-2024-26644](https://ubuntu.com/security/CVE-2024-26644) <!-- medium -->
    -   [CVE-2024-26695](https://ubuntu.com/security/CVE-2024-26695) <!-- medium -->
    -   [CVE-2023-52604](https://ubuntu.com/security/CVE-2023-52604) <!-- medium -->
    -   [CVE-2024-26625](https://ubuntu.com/security/CVE-2024-26625) <!-- medium -->
    -   [CVE-2023-52618](https://ubuntu.com/security/CVE-2023-52618) <!-- medium -->
    -   [CVE-2024-26664](https://ubuntu.com/security/CVE-2024-26664) <!-- medium -->
    -   [CVE-2024-26593](https://ubuntu.com/security/CVE-2024-26593) <!-- medium -->
    -   [CVE-2023-52633](https://ubuntu.com/security/CVE-2023-52633) <!-- medium -->
    -   [CVE-2023-52606](https://ubuntu.com/security/CVE-2023-52606) <!-- medium -->
    -   [CVE-2024-26640](https://ubuntu.com/security/CVE-2024-26640) <!-- medium -->
    -   [CVE-2023-52486](https://ubuntu.com/security/CVE-2023-52486) <!-- medium -->
    -   [CVE-2023-52631](https://ubuntu.com/security/CVE-2023-52631) <!-- medium -->
    -   [CVE-2024-26720](https://ubuntu.com/security/CVE-2024-26720) <!-- medium -->
    -   [CVE-2023-52599](https://ubuntu.com/security/CVE-2023-52599) <!-- medium -->
    -   [CVE-2024-26671](https://ubuntu.com/security/CVE-2024-26671) <!-- medium -->
    -   [CVE-2024-26722](https://ubuntu.com/security/CVE-2024-26722) <!-- medium -->
    -   [CVE-2023-52602](https://ubuntu.com/security/CVE-2023-52602) <!-- medium -->
    -   [CVE-2024-26645](https://ubuntu.com/security/CVE-2024-26645) <!-- medium -->
    -   [CVE-2023-52637](https://ubuntu.com/security/CVE-2023-52637) <!-- medium -->
    -   [CVE-2024-26704](https://ubuntu.com/security/CVE-2024-26704) <!-- medium -->
    -   [CVE-2023-52638](https://ubuntu.com/security/CVE-2023-52638) <!-- medium -->
    -   [CVE-2024-26717](https://ubuntu.com/security/CVE-2024-26717) <!-- medium -->
    -   [CVE-2024-26592](https://ubuntu.com/security/CVE-2024-26592) <!-- medium -->
    -   [CVE-2023-52491](https://ubuntu.com/security/CVE-2023-52491) <!-- medium -->
    -   [CVE-2023-52627](https://ubuntu.com/security/CVE-2023-52627) <!-- medium -->
    -   [CVE-2023-52598](https://ubuntu.com/security/CVE-2023-52598) <!-- medium -->
    -   [CVE-2024-26594](https://ubuntu.com/security/CVE-2024-26594) <!-- medium -->
    -   [CVE-2023-52643](https://ubuntu.com/security/CVE-2023-52643) <!-- low -->
    -   [CVE-2024-26622](https://ubuntu.com/security/CVE-2024-26622) <!-- medium -->
    -   [CVE-2023-52594](https://ubuntu.com/security/CVE-2023-52594) <!-- medium -->
    -   [CVE-2024-26608](https://ubuntu.com/security/CVE-2024-26608) <!-- medium -->
    -   [CVE-2024-26679](https://ubuntu.com/security/CVE-2024-26679) <!-- medium -->
    -   [CVE-2023-52616](https://ubuntu.com/security/CVE-2023-52616) <!-- medium -->
    -   [CVE-2024-23849](https://ubuntu.com/security/CVE-2024-23849) <!-- low -->
    -   [CVE-2024-2201](https://ubuntu.com/security/CVE-2024-2201) <!-- medium -->
    -   [CVE-2022-0001](https://ubuntu.com/security/CVE-2022-0001) <!-- high -->
    -   [CVE-2024-1151](https://ubuntu.com/security/CVE-2024-1151) <!-- medium -->
    -   [CVE-2023-47233](https://ubuntu.com/security/CVE-2023-47233) <!-- low -->
-   Very similar to [[USN-6766-2] Linux kernel vulnerabilities from Episode 228]({{< relref "episode-228#usn-6766-2-linux-kernel-vulnerabilities--01-07" >}})
-   5.15 Intel IOTG - optimisations for various Intel IOT platforms like NUCs and
    Atom-based devices - low power x86


### [[USN-6779-2](https://ubuntu.com/security/notices/USN-6779-2)] Firefox regressions (10:30) {#usn-6779-2-firefox-regressions--10-30}

-   14 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2024-4770](https://ubuntu.com/security/CVE-2024-4770) <!-- medium -->
    -   [CVE-2024-4367](https://ubuntu.com/security/CVE-2024-4367) <!-- medium -->
    -   [CVE-2024-4764](https://ubuntu.com/security/CVE-2024-4764) <!-- medium -->
    -   [CVE-2024-4778](https://ubuntu.com/security/CVE-2024-4778) <!-- medium -->
    -   [CVE-2024-4777](https://ubuntu.com/security/CVE-2024-4777) <!-- medium -->
    -   [CVE-2024-4776](https://ubuntu.com/security/CVE-2024-4776) <!-- medium -->
    -   [CVE-2024-4775](https://ubuntu.com/security/CVE-2024-4775) <!-- medium -->
    -   [CVE-2024-4774](https://ubuntu.com/security/CVE-2024-4774) <!-- medium -->
    -   [CVE-2024-4773](https://ubuntu.com/security/CVE-2024-4773) <!-- medium -->
    -   [CVE-2024-4772](https://ubuntu.com/security/CVE-2024-4772) <!-- medium -->
    -   [CVE-2024-4771](https://ubuntu.com/security/CVE-2024-4771) <!-- medium -->
    -   [CVE-2024-4769](https://ubuntu.com/security/CVE-2024-4769) <!-- medium -->
    -   [CVE-2024-4768](https://ubuntu.com/security/CVE-2024-4768) <!-- medium -->
    -   [CVE-2024-4767](https://ubuntu.com/security/CVE-2024-4767) <!-- medium -->
-   126.0.1 - drag-and-drop was broken in 126.0


### [[USN-6787-1](https://ubuntu.com/security/notices/USN-6787-1)] Jinja2 vulnerability (10:48) {#usn-6787-1-jinja2-vulnerability--10-48}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-34064](https://ubuntu.com/security/CVE-2024-34064) <!-- medium -->
-   Incorrect handling of various HTML attributes - attacker could then possibly
    inject arbitrary HTML attrs/values and hence inject JS code to peform XSS
    attacks etc


### [[USN-6797-1](https://ubuntu.com/security/notices/USN-6797-1)] Intel Microcode vulnerabilities (11:22) {#usn-6797-1-intel-microcode-vulnerabilities--11-22}

-   9 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2023-46103](https://ubuntu.com/security/CVE-2023-46103) <!-- medium -->
    -   [CVE-2023-47855](https://ubuntu.com/security/CVE-2023-47855) <!-- medium -->
    -   [CVE-2023-45745](https://ubuntu.com/security/CVE-2023-45745) <!-- medium -->
    -   [CVE-2023-45733](https://ubuntu.com/security/CVE-2023-45733) <!-- medium -->
    -   [CVE-2023-43490](https://ubuntu.com/security/CVE-2023-43490) <!-- medium -->
    -   [CVE-2023-39368](https://ubuntu.com/security/CVE-2023-39368) <!-- medium -->
    -   [CVE-2023-38575](https://ubuntu.com/security/CVE-2023-38575) <!-- medium -->
    -   [CVE-2023-28746](https://ubuntu.com/security/CVE-2023-28746) <!-- medium -->
    -   [CVE-2023-22655](https://ubuntu.com/security/CVE-2023-22655) <!-- medium -->
-   Latest release from upstream - mitigates against various hardware vulns
    -   A couple issues in SGX/TDX on different Intel Xeon processors:
        -   Invalid restrictions -&gt; local root -&gt; super-privesc
        -   Invalid input on TDX -&gt; local root -&gt; super-privesc
        -   Invalid SGX base key calculation -&gt; info leak
    -   Transient execution attacks to read privileged information
    -   DoS through bus lock mishandling or through invalid instruction sequences


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
