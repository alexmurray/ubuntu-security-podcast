+++
title = "Episode 139"
description = """
  This week we put out a call for testing and feedback on proposed Samba
  updates for Ubuntu 18.04 LTS plus we look at security updates for Mailman,
  Thunderbird, LibreOffice, BlueZ and more.
  """
date = 2021-11-26T15:19:00+10:30
lastmod = 2022-05-15T18:05:50+09:30
draft = false
weight = 1021
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E139.mp3"
podcast_duration = "7:49"
podcast_bytes = 5930294
permalink = "https://ubuntusecuritypodcast.org/episode-139/"
guid = "ca90d0671dad9395b79082838517120c0f2e6bf8b9bbb3074db98bb73096e39c5042a7ffcd7b0985a4bc89fc7a7e6b1efb44456e004945fd7be502360c7d13fc"
+++

## Overview {#overview}

This week we put out a call for testing and feedback on proposed Samba
updates for Ubuntu 18.04 LTS plus we look at security updates for Mailman,
Thunderbird, LibreOffice, BlueZ and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

15 unique CVEs addressed


### [[USN-5150-1](https://ubuntu.com/security/notices/USN-5150-1)] OpenEXR vulnerability [00:39] {#usn-5150-1-openexr-vulnerability-00-39}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-3941](https://ubuntu.com/security/CVE-2021-3941) <!-- medium -->
-   oss-fuzz -&gt; div-by-zero with crafted image using YUV-encoded colors


### [[USN-5151-1](https://ubuntu.com/security/notices/USN-5151-1)] Mailman vulnerabilities [00:58] {#usn-5151-1-mailman-vulnerabilities-00-58}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-43332](https://ubuntu.com/security/CVE-2021-43332) <!-- low -->
    -   [CVE-2021-43331](https://ubuntu.com/security/CVE-2021-43331) <!-- medium -->
-   Similar to vulns in last Mailman update ([Episode 136](https://ubuntusecuritypodcast.org/episode-136/))


### [[USN-5152-1](https://ubuntu.com/security/notices/USN-5152-1)] Thunderbird vulnerabilities [01:27] {#usn-5152-1-thunderbird-vulnerabilities-01-27}

-   5 CVEs addressed in Impish (21.10)
    -   [CVE-2021-38509](https://ubuntu.com/security/CVE-2021-38509) <!-- medium -->
    -   [CVE-2021-38507](https://ubuntu.com/security/CVE-2021-38507) <!-- medium -->
    -   [CVE-2021-38506](https://ubuntu.com/security/CVE-2021-38506) <!-- medium -->
    -   [CVE-2021-38504](https://ubuntu.com/security/CVE-2021-38504) <!-- medium -->
    -   [CVE-2021-38503](https://ubuntu.com/security/CVE-2021-38503) <!-- medium -->
-   91.3.1
-   Usual web framework issues (HTML email etc) - one TB specific issue
    around the ability to force TB into full-screen via web content
    navigation - could then spoof usual chrome which is hidden in fullscreen
    and get user input unexpectedly


### [[USN-5153-1](https://ubuntu.com/security/notices/USN-5153-1)] LibreOffice vulnerabilities [02:23] {#usn-5153-1-libreoffice-vulnerabilities-02-23}

-   2 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-25634](https://ubuntu.com/security/CVE-2021-25634) <!-- medium -->
    -   [CVE-2021-25633](https://ubuntu.com/security/CVE-2021-25633) <!-- medium -->
-   2 issues around interpretation / display of details for signed
    documents - could inject a new timestamp and get this shown as the time
    the document was signed, or could cause to show incorrect details for a
    signed document by adding details from another certificate
-   Too invasive to backport for 18.04 LTS


### [[USN-5154-1](https://ubuntu.com/security/notices/USN-5154-1)] FreeRDP vulnerabilities [03:28] {#usn-5154-1-freerdp-vulnerabilities-03-28}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-41160](https://ubuntu.com/security/CVE-2021-41160) <!-- medium -->
    -   [CVE-2021-41159](https://ubuntu.com/security/CVE-2021-41159) <!-- medium -->
-   OOB write in client if sent malicious data from server -&gt; crash / code-exec
-   if using a gateway and the RPC protocol, would fail to validate input -&gt;
    malicious gateway could then corrupt client memory -&gt; crash / code-exec


### [[USN-5155-1](https://ubuntu.com/security/notices/USN-5155-1)] BlueZ vulnerabilities [04:07] {#usn-5155-1-bluez-vulnerabilities-04-07}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-43400](https://ubuntu.com/security/CVE-2021-43400) <!-- medium -->
    -   [CVE-2021-41229](https://ubuntu.com/security/CVE-2021-41229) <!-- low -->
    -   [CVE-2021-3658](https://ubuntu.com/security/CVE-2021-3658) <!-- low -->
-   Would save and restore discoverable status on power down / power up - so
    if powered down when discoverable would power up as discoverable
-   UAF if gatt client disconnected during a particular write operation with
    dbus - so would likely need bad luck or cooperation between a local
    application / user and the device to trigger
-   Memory leak in handling of SDP devices -&gt; DoS


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Samba updates available for testing for Ubuntu 18.04 LTS [05:24] {#samba-updates-available-for-testing-for-ubuntu-18-dot-04-lts-05-24}

-   <https://discourse.ubuntu.com/t/samba-update-for-ubuntu-18-04-lts-bionic/25408>
-   [Episode 138](https://ubuntusecuritypodcast.org/episode-138/) discussed difficulties in handling large security updates for
    ageing software
-   Backport ~700 patches (with potential regressions) or backport newer
    version, possibly breaking things in the process due to new features /
    changes in behaviour etc (plus incompatibilities with other software in
    Ubuntu archive)
-   Upstream released
-   Contains fixes for the most severe CVEs from the most recent updates for
    Samba ([USN-5142-1](https://ubuntu.com/security/notices/USN-5142-1)) - [CVE-2016-2124](https://ubuntu.com/security/CVE-2016-2124), [CVE-2020-25717](https://ubuntu.com/security/CVE-2020-25717), [CVE-2020-25722](https://ubuntu.com/security/CVE-2020-25722),
    [CVE-2021-3671](https://ubuntu.com/security/CVE-2021-3671)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)