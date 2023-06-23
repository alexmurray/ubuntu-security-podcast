+++
title = "Episode 200"
description = """
  For our 200th episode, we discuss the impact of Red Hat's decision to stop
  publicly releasing the RHEL source code, plus we cover security updates for
  libX11, GNU SASL, QEMU, VLC, pngcheck, the Linux kernel and a whole lot more.
  """
date = 2023-06-23T18:47:00+09:30
lastmod = 2023-06-23T18:48:28+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E200.mp3"
podcast_duration = 1193
podcast_bytes = 20478178
permalink = "https://ubuntusecuritypodcast.org/episode-200/"
guid = "317b704969a4c992e2e3179014dc72de646f1136def7c468d55bf7654dfc90c8f454e84cd3b17ecd06d071ee0021c01b011f12612816e14baf0296927b21d93a"
+++

## Overview {#overview}

For our 200th episode, we discuss the impact of Red Hat's decision to stop
publicly releasing the RHEL source code, plus we cover security updates for
libX11, GNU SASL, QEMU, VLC, pngcheck, the Linux kernel and a whole lot more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

73 unique CVEs addressed


### [[USN-6163-1](https://ubuntu.com/security/notices/USN-6163-1)] pano13 vulnerabilities (01:08) {#usn-6163-1-pano13-vulnerabilities--01-08}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2021-33293](https://ubuntu.com/security/CVE-2021-33293) <!-- medium -->
    -   [CVE-2021-20307](https://ubuntu.com/security/CVE-2021-20307) <!-- medium -->
-   use by hugin-tools for stitching together photos into a panorama
-   format-string vuln in `PTcrop` utility which could be abused to execute arbitrary code etc
-   OOB read (looks more like a NULL ptr deref from the upstream patch...) when
    parsing TIFF images


### [[USN-6168-1](https://ubuntu.com/security/notices/USN-6168-1), [USN-6168-2](https://ubuntu.com/security/notices/USN-6168-2)] libx11 vulnerability (01:55) {#usn-6168-1-usn-6168-2-libx11-vulnerability--01-55}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-3138](https://ubuntu.com/security/CVE-2023-3138) <!-- medium -->
-   libx11 mishandled various Request, Event and Error IDs - these IDs get used as
    indexes into various arrays and so can be used to trigger OOB writes up -
    these IDs get supplied back from the X server to the X client - if were
    tricked into connecting to a malicious X server, could then either crash X
    client -&gt; DoS or get code execution - in general, it is highly unlikely to be
    tricked into connecting to a malicious X server due to the nature of the X
    protocol (as the X server usually runs on the local machine)


### [[USN-6169-1](https://ubuntu.com/security/notices/USN-6169-1)] GNU SASL vulnerability (03:22) {#usn-6169-1-gnu-sasl-vulnerability--03-22}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-2469](https://ubuntu.com/security/CVE-2022-2469) <!-- low -->
-   library and CLI application for the Simple Authentication and Security Layer
    (SASL) framework - used by network servers like IMAP/XMPP etc and to
    authenticate clients etc
    -   e.g. mutt and neomutt both use this
-   Possible OOB read on server side if client provides crafted auth data -&gt; DoS /
    info leak against the server


### [[USN-6155-2](https://ubuntu.com/security/notices/USN-6155-2)] Requests vulnerability (04:02) {#usn-6155-2-requests-vulnerability--04-02}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-32681](https://ubuntu.com/security/CVE-2023-32681) <!-- medium -->
-   [[USN-6155-1] Requests vulnerability from Episode 199]({{< relref "episode-199#usn-6155-1-requests-vulnerability--05-56" >}})


### [[USN-6166-2](https://ubuntu.com/security/notices/USN-6166-2)] libcap2 vulnerability (04:21) {#usn-6166-2-libcap2-vulnerability--04-21}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-2603](https://ubuntu.com/security/CVE-2023-2603) <!-- medium -->
-   [[USN-6166-1] libcap2 vulnerabilities from Episode 199]({{< relref "episode-199#usn-6166-1-libcap2-vulnerabilities--11-35" >}})


### [[USN-6083-2](https://ubuntu.com/security/notices/USN-6083-2)] cups-filters vulnerability (04:30) {#usn-6083-2-cups-filters-vulnerability--04-30}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-24805](https://ubuntu.com/security/CVE-2023-24805) <!-- medium -->
-   [[USN-6083-1] cups-filters vulnerability from Episode 196]({{< relref "episode-196#usn-6083-1-cups-filters-vulnerability--01-03" >}})


### [[USN-6156-2](https://ubuntu.com/security/notices/USN-6156-2)] SSSD regression (04:40) {#usn-6156-2-sssd-regression--04-40}

-   Affecting Focal (20.04 LTS)
-   [[USN-6156-1] SSSD vulnerability from Episode 199]({{< relref "episode-199#usn-6156-1-sssd-vulnerability--06-11" >}})
-   possible issue if were to install only some of the newer binary packages from
    the previous security update - fixed by adding more specific dependency info
    in the package metadata but ideally users should just run `apt upgrade` or use
    `unattended-upgrades` to install security updates as this will upgrade all
    installed binary packages to all the newer versions, and not say just `apt
        install sssd` which would only pull in some of the binary packages


### [[USN-6167-1](https://ubuntu.com/security/notices/USN-6167-1)] QEMU vulnerabilities (05:31) {#usn-6167-1-qemu-vulnerabilities--05-31}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-0330](https://ubuntu.com/security/CVE-2023-0330) <!-- medium -->
    -   [CVE-2022-4172](https://ubuntu.com/security/CVE-2022-4172) <!-- medium -->
    -   [CVE-2022-4144](https://ubuntu.com/security/CVE-2022-4144) <!-- low -->
    -   [CVE-2022-1050](https://ubuntu.com/security/CVE-2022-1050) <!-- low -->
-   All various memory management issues in different guest drivers, which could
    allow a malicious guest to cause QEMU on the host to crash - not really
    surprising as the boundary between unprivileged and privileged components is
    the literal attack surface in this case and so is where security issues of
    this nature will likely be found


### [[USN-6176-1](https://ubuntu.com/security/notices/USN-6176-1)] PyPDF2 vulnerability (05:57) {#usn-6176-1-pypdf2-vulnerability--05-57}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-24859](https://ubuntu.com/security/CVE-2022-24859) <!-- medium -->
-   Library for handling PDF files
-   Possible infinite loop if input PDF was malformed and finished without
    containing an expected terminating element - would just keep trying to read
    even though there was nothing more to read


### [[USN-6170-1](https://ubuntu.com/security/notices/USN-6170-1)] Podman vulnerabilities (06:26) {#usn-6170-1-podman-vulnerabilities--06-26}

-   Affecting Jammy (22.04 LTS)
-   When using `podman play kube` to create containers / pods / volumes based on a
    k8s yaml, it would always pull in the `k8s.gcr.io/pause` image - this is not
    necessary and it not necessarily maintained and so could present a security
    issue as a result


### [[USN-6177-1](https://ubuntu.com/security/notices/USN-6177-1), USN-6179-1] Jettison vulnerabilities (07:01) {#usn-6177-1-usn-6179-1-jettison-vulnerabilities--07-01}

-   4 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-45693](https://ubuntu.com/security/CVE-2022-45693) <!-- medium -->
    -   [CVE-2022-45685](https://ubuntu.com/security/CVE-2022-45685) <!-- medium -->
    -   [CVE-2022-40150](https://ubuntu.com/security/CVE-2022-40150) <!-- low -->
    -   [CVE-2022-40149](https://ubuntu.com/security/CVE-2022-40149) <!-- low -->
-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-1436](https://ubuntu.com/security/CVE-2023-1436) <!-- medium -->
-   Java library for converting between XML and JSON
-   3 different stack overflows due to recursive parsing implementation for JSON -
    so could simply create a JSON structure that had a very deeply nested object
    to trigger this - plus an associated memory leak -&gt; OOM - fixed by counting
    number of recursions and bailing if get too deep


### [[USN-6178-1](https://ubuntu.com/security/notices/USN-6178-1)] SVG++ library vulnerabilities (07:37) {#usn-6178-1-svg-plus-plus-library-vulnerabilities--07-37}

-   2 CVEs addressed in Bionic ESM (18.04 ESM), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2021-44960](https://ubuntu.com/security/CVE-2021-44960) <!-- negligible -->
    -   [CVE-2019-6246](https://ubuntu.com/security/CVE-2019-6246) <!-- negligible -->
-   Possible OOB reads - one in demo code only - not much of a security impact -
    still assigned CVSS 6.5 for NULL ptr deref in demo code - shows the limits of
    CVSS as a metric - Daniel Stenberg (curl maintainer) has a good discussion of
    this on his blog -
-   <https://daniel.haxx.se/blog/2023/03/06/nvd-makes-up-vulnerability-severity-levels/>
-   <https://daniel.haxx.se/blog/2023/06/12/nvd-damage-continued/>
-   I even wrote something about this a few years ago -
    <https://ubuntu.com/blog/securing-open-source-through-cve-prioritisation> -
    there is more to CVEs than just their CVSS score - also CVSS 4 will help a bit
    but will still not capture enough nuance, and even if it does, it still won't
    stop the problem of CVEs being misclassified due to a lack of deep
    understanding by whoever assigns the CVSS score (and in fact this may be made
    worse by CVSS 4 since it contains more attributes used to compute a score)


### [[USN-6180-1](https://ubuntu.com/security/notices/USN-6180-1)] VLC media player vulnerabilities (09:58) {#usn-6180-1-vlc-media-player-vulnerabilities--09-58}

-   7 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-41325](https://ubuntu.com/security/CVE-2022-41325) <!-- medium -->
    -   [CVE-2021-25804](https://ubuntu.com/security/CVE-2021-25804) <!-- low -->
    -   [CVE-2021-25803](https://ubuntu.com/security/CVE-2021-25803) <!-- medium -->
    -   [CVE-2021-25802](https://ubuntu.com/security/CVE-2021-25802) <!-- medium -->
    -   [CVE-2021-25801](https://ubuntu.com/security/CVE-2021-25801) <!-- medium -->
    -   [CVE-2020-13428](https://ubuntu.com/security/CVE-2020-13428) <!-- medium -->
    -   [CVE-2019-19721](https://ubuntu.com/security/CVE-2019-19721) <!-- low -->
-   OOB reads / write when handling various image or video files -&gt; DoS / RCE


### [[USN-5948-2](https://ubuntu.com/security/notices/USN-5948-2)] Werkzeug vulnerabilities (10:16) {#usn-5948-2-werkzeug-vulnerabilities--10-16}

-   2 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-25577](https://ubuntu.com/security/CVE-2023-25577) <!-- medium -->
    -   [CVE-2023-23934](https://ubuntu.com/security/CVE-2023-23934) <!-- medium -->
-   various utilities for WSGI applications in python
-   one issue in cookie parsing which could allow a remote attacker to shadow
    other cookies, another CPU-based DoS via unlimited number of multipart form
    data parts - since each consumes only a small number of bytes but takes a
    reasonable amount of CPU time to parse (and also consumes RAM too)


### [[USN-6143-3](https://ubuntu.com/security/notices/USN-6143-3)] Firefox regressions (11:09) {#usn-6143-3-firefox-regressions--11-09}

-   4 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-34415](https://ubuntu.com/security/CVE-2023-34415) <!-- medium -->
    -   [CVE-2023-34417](https://ubuntu.com/security/CVE-2023-34417) <!-- medium -->
    -   [CVE-2023-34416](https://ubuntu.com/security/CVE-2023-34416) <!-- medium -->
    -   [CVE-2023-34414](https://ubuntu.com/security/CVE-2023-34414) <!-- medium -->
-   114.0.2 - Upstream regressions in native messaging handlers and some possible crashes as well


### [[USN-6181-1](https://ubuntu.com/security/notices/USN-6181-1)] Ruby vulnerabilities (11:24) {#usn-6181-1-ruby-vulnerabilities--11-24}

-   3 CVEs addressed in Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-28756](https://ubuntu.com/security/CVE-2023-28756) <!-- medium -->
    -   [CVE-2023-28755](https://ubuntu.com/security/CVE-2023-28755) <!-- medium -->
    -   [CVE-2021-33621](https://ubuntu.com/security/CVE-2021-33621) <!-- medium -->
-   2 different ReDoS, 1 issue in handling of responses in the cgi gem could allow
    an attacker to modify the response that would then be received by the user via
    a HTTP response splitting attack


### [[USN-6182-1](https://ubuntu.com/security/notices/USN-6182-1)] pngcheck vulnerabilities (11:51) {#usn-6182-1-pngcheck-vulnerabilities--11-51}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2020-35511](https://ubuntu.com/security/CVE-2020-35511) <!-- medium -->
    -   [CVE-2020-27818](https://ubuntu.com/security/CVE-2020-27818) <!-- medium -->
-   Used to verify the integrity of PNG and associated files (used by the
    forensics-extra package which contains various forensics and ethical hacking
    tools etc)
-   Ironically this contained a buffer overflow which could be triggered on a
    crafted file


### [[USN-6171-1](https://ubuntu.com/security/notices/USN-6171-1)] Linux kernel vulnerabilities (12:29) {#usn-6171-1-linux-kernel-vulnerabilities--12-29}

-   9 CVEs addressed in Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-2985](https://ubuntu.com/security/CVE-2023-2985) <!-- medium -->
    -   [CVE-2023-25012](https://ubuntu.com/security/CVE-2023-25012) <!-- low -->
    -   [CVE-2023-1998](https://ubuntu.com/security/CVE-2023-1998) <!-- medium -->
    -   [CVE-2023-1859](https://ubuntu.com/security/CVE-2023-1859) <!-- medium -->
    -   [CVE-2023-1670](https://ubuntu.com/security/CVE-2023-1670) <!-- low -->
    -   [CVE-2023-1079](https://ubuntu.com/security/CVE-2023-1079) <!-- low -->
    -   [CVE-2023-1077](https://ubuntu.com/security/CVE-2023-1077) <!-- medium -->
    -   [CVE-2023-1076](https://ubuntu.com/security/CVE-2023-1076) <!-- medium -->
    -   [CVE-2022-4269](https://ubuntu.com/security/CVE-2022-4269) <!-- medium -->
-   5.19
    -   22.10 - generic, AWS, Azure. GCP, KVM, Oracle, Raspi, Lowlatency
    -   22.04 - HWE
-   Various issues allowing local user to trigger deadlock, OOPS (crash), or read
    kernel memory (info leak) - none appear to be exploitable remotely


### [[USN-6172-1](https://ubuntu.com/security/notices/USN-6172-1)] Linux kernel vulnerabilities (13:02) {#usn-6172-1-linux-kernel-vulnerabilities--13-02}

-   8 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-2985](https://ubuntu.com/security/CVE-2023-2985) <!-- medium -->
    -   [CVE-2023-25012](https://ubuntu.com/security/CVE-2023-25012) <!-- low -->
    -   [CVE-2023-1998](https://ubuntu.com/security/CVE-2023-1998) <!-- medium -->
    -   [CVE-2023-1859](https://ubuntu.com/security/CVE-2023-1859) <!-- medium -->
    -   [CVE-2023-1670](https://ubuntu.com/security/CVE-2023-1670) <!-- low -->
    -   [CVE-2023-1079](https://ubuntu.com/security/CVE-2023-1079) <!-- low -->
    -   [CVE-2023-1077](https://ubuntu.com/security/CVE-2023-1077) <!-- medium -->
    -   [CVE-2023-1076](https://ubuntu.com/security/CVE-2023-1076) <!-- medium -->
-   5.15
    -   22.04 generic, GCP, GKE, Raspi, AWS, Azure, Oracle, KVM, lowlatency etc
-   5.4
    -   20.04 generic, GCP, GKE, Raspi, AWS, Azure, Oracle, KVM, lowlatency etc
-   Similar set of issues as above


### [[USN-6173-1](https://ubuntu.com/security/notices/USN-6173-1)] Linux kernel (OEM) vulnerabilities (13:32) {#usn-6173-1-linux-kernel--oem--vulnerabilities--13-32}

-   7 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-32254](https://ubuntu.com/security/CVE-2023-32254) <!-- medium -->
    -   [CVE-2023-32250](https://ubuntu.com/security/CVE-2023-32250) <!-- medium -->
    -   [CVE-2023-2269](https://ubuntu.com/security/CVE-2023-2269) <!-- medium -->
    -   [CVE-2023-2156](https://ubuntu.com/security/CVE-2023-2156) <!-- medium -->
    -   [CVE-2023-2002](https://ubuntu.com/security/CVE-2023-2002) <!-- medium -->
    -   [CVE-2023-1380](https://ubuntu.com/security/CVE-2023-1380) <!-- high -->
    -   [CVE-2023-31436](https://ubuntu.com/security/CVE-2023-31436) <!-- high -->
-   6.1 OEM
-   OOB read in the USB handling code for Broadcom FullMAC USB WiFi driver

    -   requires an attacker to create a malicious USB device and insert that into

    your machine to be able to trigger (shout out to [USBGuard](https://usbguard.github.io/))
-   OOB write in network queuing scheduler
    -   able to be triggered though an unprivileged user namespace (again)
-   [[USN-6130-1] Linux kernel vulnerabilities from Episode 198]({{< relref "episode-198#usn-6130-1-linux-kernel-vulnerabilities--02-23" >}})


### [[USN-6174-1](https://ubuntu.com/security/notices/USN-6174-1)] Linux kernel (OEM) vulnerabilities {#usn-6174-1-linux-kernel--oem--vulnerabilities}

-   3 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-26606](https://ubuntu.com/security/CVE-2023-26606) <!-- medium -->
    -   [CVE-2023-1073](https://ubuntu.com/security/CVE-2023-1073) <!-- medium -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
-   5.17 OEM


### [[USN-6175-1](https://ubuntu.com/security/notices/USN-6175-1)] Linux kernel vulnerabilities (14:11) {#usn-6175-1-linux-kernel-vulnerabilities--14-11}

-   20 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-33288](https://ubuntu.com/security/CVE-2023-33288) <!-- low -->
    -   [CVE-2023-33203](https://ubuntu.com/security/CVE-2023-33203) <!-- low -->
    -   [CVE-2023-30772](https://ubuntu.com/security/CVE-2023-30772) <!-- low -->
    -   [CVE-2023-28866](https://ubuntu.com/security/CVE-2023-28866) <!-- medium -->
    -   [CVE-2023-28466](https://ubuntu.com/security/CVE-2023-28466) <!-- medium -->
    -   [CVE-2023-2612](https://ubuntu.com/security/CVE-2023-2612) <!-- medium -->
    -   [CVE-2023-2235](https://ubuntu.com/security/CVE-2023-2235) <!-- low -->
    -   [CVE-2023-2194](https://ubuntu.com/security/CVE-2023-2194) <!-- medium -->
    -   [CVE-2023-1990](https://ubuntu.com/security/CVE-2023-1990) <!-- low -->
    -   [CVE-2023-1989](https://ubuntu.com/security/CVE-2023-1989) <!-- low -->
    -   [CVE-2023-1859](https://ubuntu.com/security/CVE-2023-1859) <!-- medium -->
    -   [CVE-2023-1855](https://ubuntu.com/security/CVE-2023-1855) <!-- low -->
    -   [CVE-2023-1670](https://ubuntu.com/security/CVE-2023-1670) <!-- low -->
    -   [CVE-2023-1611](https://ubuntu.com/security/CVE-2023-1611) <!-- low -->
    -   [CVE-2023-1583](https://ubuntu.com/security/CVE-2023-1583) <!-- medium -->
    -   [CVE-2022-4269](https://ubuntu.com/security/CVE-2022-4269) <!-- medium -->
    -   [CVE-2023-1380](https://ubuntu.com/security/CVE-2023-1380) <!-- high -->
    -   [CVE-2023-30456](https://ubuntu.com/security/CVE-2023-30456) <!-- high -->
    -   [CVE-2023-31436](https://ubuntu.com/security/CVE-2023-31436) <!-- high -->
    -   [CVE-2023-32233](https://ubuntu.com/security/CVE-2023-32233) <!-- high -->
-   6.2 GA (everything)
-   [[USN-6130-1] Linux kernel vulnerabilities from Episode 198]({{< relref "episode-198#usn-6130-1-linux-kernel-vulnerabilities--02-23" >}})


### [[LSN-0095-1](https://ubuntu.com/security/notices/LSN-0095-1)] Linux kernel vulnerability (14:25) {#lsn-0095-1-linux-kernel-vulnerability--14-25}

-   6 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-32233](https://ubuntu.com/security/CVE-2023-32233) <!-- high -->
    -   [CVE-2023-31436](https://ubuntu.com/security/CVE-2023-31436) <!-- high -->
    -   [CVE-2023-2612](https://ubuntu.com/security/CVE-2023-2612) <!-- medium -->
    -   [CVE-2023-1872](https://ubuntu.com/security/CVE-2023-1872) <!-- medium -->
    -   [CVE-2023-1380](https://ubuntu.com/security/CVE-2023-1380) <!-- high -->
    -   [CVE-2023-0386](https://ubuntu.com/security/CVE-2023-0386) <!-- high -->

| Kernel type    | 22.04 | 20.04 | 18.04 |
|----------------|-------|-------|-------|
| aws            | 95.4  | 95.4  | —     |
| aws-5.15       | —     | 95.4  | —     |
| aws-5.4        | —     | —     | 95.4  |
| azure          | 95.4  | 95.4  | —     |
| azure-5.4      | —     | —     | 95.4  |
| gcp            | 95.4  | 95.4  | —     |
| gcp-5.15       | —     | 95.4  | —     |
| gcp-5.4        | —     | —     | 95.4  |
| generic-5.4    | —     | 95.4  | 95.4  |
| gke            | 95.4  | 95.4  | —     |
| gke-5.15       | —     | 95.4  | —     |
| gke-5.4        | —     | —     | 95.4  |
| gkeop          | —     | 95.4  | —     |
| gkeop-5.4      | —     | —     | 95.4  |
| ibm            | 95.4  | 95.4  | —     |
| ibm-5.4        | —     | —     | 95.4  |
| linux          | 95.4  | —     | —     |
| lowlatency     | 95.1  | —     | —     |
| lowlatency-5.4 | —     | 95.4  | 95.4  |

To check your kernel type and Livepatch version, enter this command:

```shell
canonical-livepatch status
```


## Goings on in Linux Security Community {#goings-on-in-linux-security-community}


### Red Hat to stop publicly releasing source code for RHEL (14:59) {#red-hat-to-stop-publicly-releasing-source-code-for-rhel--14-59}

-   <https://www.redhat.com/en/blog/furthering-evolution-centos-stream>
    -   Previously would release sources for RHEL to git.centos.org - the repo which
        was used for the previous CentOS Linux - a freely available repackaging of
        RHEL, more like a downstream - was discontinued at the end of 2021 in favour
        of CentOS Stream which is positioned more as an upstream of RHEL now.
    -   By pushing these sources public, allowed others to inspect their work, but
        also to create competitor products based off that work - AlmaLinux / Rocky
        etc - both of which aim to be community versions of RHEL, bug-for-bug
        compatible etc
    -   <https://almalinux.org/blog/impact-of-rhel-changes/>
    -   <https://rockylinux.org/news/2023-06-22-press-release/>
    -   This change first occurred last week, noticed by the AlmaLinux developers -
        RHEL then released the public statement above
-   Red Hat say CentOS Stream will now be the only public repo for RHEL-related
    source code - but this does not necessarily contain all the patches and
    updates that end up in the various RHEL packages
    -   AlmaLinux plans to then use CentOS Stream to base their security updates
        off - as this is still public
    -   Rocky Linux is not so open about how they plan to deal with this - also
        looks like they will use CentOS Stream as their upstream - but will this
        then be bug-for-bug compatible with RHEL as they claim?
-   Red Hat also say the sources for RHEL will be available to customers and
    partners via their usual customer portal - however the standard RHEL license
    agreement prohibits these from being used to develop competitor products etc
-   Doesn't have a huge impact on Ubuntu as in general we take our patches direct
    from the upstream projects - and when we have to backport these to older
    versions, they are not necessarily the same version as used in RHEL anyway so
    we don't often use patches from RHEL
-   Will be interesting to see what impact this does have on AlmaLinux and Rocky
    Linux


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
