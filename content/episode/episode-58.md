+++
title = "Episode 58"
description = """
  In the first episode for 2020, we look at security updates for Django and
  the Linux kernel, plus Alex and Joe discuss security and privacy aspects of
  smart assistant connected devices.
  """
date = 2020-01-09T16:18:00+10:30
lastmod = 2022-05-15T18:06:52+09:30
draft = false
weight = 1102
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E058.mp3"
podcast_duration = "20:28"
podcast_bytes = 19662183
permalink = "https://ubuntusecuritypodcast.org/episode-58/"
guid = "aa89e8be26bc96c93cdda67991584e240fb69ddc262f36bc78c6a68036b1f3f625c4c73f925044ad21e00debb61ddf7498c304e58b97ad272607ec46c5835760"
+++

## Overview {#overview}

In the first episode for 2020, we look at security updates for Django and
the Linux kernel, plus Alex and Joe discuss security and privacy aspects of
smart assistant connected devices.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

34 unique CVEs addressed


### [[USN-4224-1](https://usn.ubuntu.com/4224-1/)] Django vulnerability [00:51] {#usn-4224-1-django-vulnerability-00-51}

-   1 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-19844](https://ubuntu.com/security/CVE-2019-19844) <!-- high -->
-   Account takeover via password reset - when comparing email addresses,
    would not do a proper unicode comparison - and so could specify an email
    address which appears equal to an existing users email address (after
    unicode case and character transmformation) and would then get sent a
    token to reset their accounts password to your doppleganger email
    address. Fix includes doing both a proper unicode case comparison AND
    sending the password reset token to the email address to the one
    registered against the user account, not the one input to the password
    reset field.


### [[USN-4225-1](https://usn.ubuntu.com/4225-1/)] Linux kernel vulnerabilities [02:25] {#usn-4225-1-linux-kernel-vulnerabilities-02-25}

-   5.3 kernel
-   18 CVEs addressed in Bionic (Azure and GCP edge), Eoan
    -   [CVE-2019-18813](https://ubuntu.com/security/CVE-2019-18813) <!-- negligible -->
    -   [CVE-2019-19807](https://ubuntu.com/security/CVE-2019-19807) <!-- medium -->
        -   UAF in ALSA timer implementation - local user - crash (DoS) / ACE
    -   [CVE-2019-19534](https://ubuntu.com/security/CVE-2019-19534) <!-- low -->
    -   [CVE-2019-19529](https://ubuntu.com/security/CVE-2019-19529) <!-- low -->
    -   [CVE-2019-19524](https://ubuntu.com/security/CVE-2019-19524) <!-- low -->
    -   [CVE-2019-19072](https://ubuntu.com/security/CVE-2019-19072) <!-- medium -->
        -   Memory leak in tracing subsystem -&gt; DoS
    -   [CVE-2019-19055](https://ubuntu.com/security/CVE-2019-19055) <!-- low -->
    -   [CVE-2019-19052](https://ubuntu.com/security/CVE-2019-19052) <!-- low -->
    -   [CVE-2019-19051](https://ubuntu.com/security/CVE-2019-19051) <!-- low -->
    -   [CVE-2019-19047](https://ubuntu.com/security/CVE-2019-19047) <!-- low -->
    -   [CVE-2019-19045](https://ubuntu.com/security/CVE-2019-19045) <!-- low -->
    -   [CVE-2019-19044](https://ubuntu.com/security/CVE-2019-19044) <!-- low -->
    -   [CVE-2019-18660](https://ubuntu.com/security/CVE-2019-18660) <!-- medium -->
        -   SpectreRSB mitigations not properly enforced on PPC
    -   [CVE-2019-16231](https://ubuntu.com/security/CVE-2019-16231) <!-- low -->
    -   [CVE-2019-14897](https://ubuntu.com/security/CVE-2019-14897) <!-- medium -->
    -   [CVE-2019-14896](https://ubuntu.com/security/CVE-2019-14896) <!-- medium -->
        -   2 heap overflows in Marvell Libertas Wifi Driver - OTA - crash / ACE
    -   [CVE-2019-14901](https://ubuntu.com/security/CVE-2019-14901) <!-- medium -->
    -   [CVE-2019-14895](https://ubuntu.com/security/CVE-2019-14895) <!-- medium -->
        -   2 heap overflows in Marvell Wifi-Ex Driver - OTA - crash / ACE


### [[USN-4226-1](https://usn.ubuntu.com/4226-1/)] Linux kernel vulnerabilities [03:58] {#usn-4226-1-linux-kernel-vulnerabilities-03-58}

-   5.0 kernel
-   28 CVEs addressed in Bionic (AWS &amp; Oracle Edge, Azure, GKE), Disco
    -   [CVE-2019-18813](https://ubuntu.com/security/CVE-2019-18813) <!-- negligible -->
    -   [CVE-2019-17075](https://ubuntu.com/security/CVE-2019-17075) <!-- negligible -->
    -   [CVE-2019-2214](https://ubuntu.com/security/CVE-2019-2214) <!-- medium -->
        -   Binder IPC OOB write - crash, ACE
    -   [CVE-2019-19922](https://ubuntu.com/security/CVE-2019-19922) <!-- medium -->
    -   [CVE-2019-19534](https://ubuntu.com/security/CVE-2019-19534) <!-- low -->
    -   [CVE-2019-19532](https://ubuntu.com/security/CVE-2019-19532) <!-- low -->
    -   [CVE-2019-19529](https://ubuntu.com/security/CVE-2019-19529) <!-- low -->
    -   [CVE-2019-19526](https://ubuntu.com/security/CVE-2019-19526) <!-- low -->
    -   [CVE-2019-19524](https://ubuntu.com/security/CVE-2019-19524) <!-- low -->
    -   [CVE-2019-19083](https://ubuntu.com/security/CVE-2019-19083) <!-- low -->
    -   [CVE-2019-19075](https://ubuntu.com/security/CVE-2019-19075) <!-- low -->
    -   [CVE-2019-19072](https://ubuntu.com/security/CVE-2019-19072) <!-- medium -->
        -   Memory leak in tracing subsystem -&gt; DoS
    -   [CVE-2019-19067](https://ubuntu.com/security/CVE-2019-19067) <!-- low -->
    -   [CVE-2019-19065](https://ubuntu.com/security/CVE-2019-19065) <!-- low -->
    -   [CVE-2019-19060](https://ubuntu.com/security/CVE-2019-19060) <!-- low -->
    -   [CVE-2019-19055](https://ubuntu.com/security/CVE-2019-19055) <!-- low -->
    -   [CVE-2019-19052](https://ubuntu.com/security/CVE-2019-19052) <!-- low -->
    -   [CVE-2019-19048](https://ubuntu.com/security/CVE-2019-19048) <!-- medium -->
        -   Memory leak in virtualbox guest driver -&gt; DoS
    -   [CVE-2019-19045](https://ubuntu.com/security/CVE-2019-19045) <!-- low -->
    -   [CVE-2019-18660](https://ubuntu.com/security/CVE-2019-18660) <!-- medium -->
        -   SpectreRSB mitigations not properly enforced on PPC
    -   [CVE-2019-17133](https://ubuntu.com/security/CVE-2019-17133) <!-- medium -->
        -   Wifi stack failed to validate SSID IE length - buffer overflow
    -   [CVE-2019-16233](https://ubuntu.com/security/CVE-2019-16233) <!-- low -->
    -   [CVE-2019-16231](https://ubuntu.com/security/CVE-2019-16231) <!-- low -->
    -   [CVE-2019-14897](https://ubuntu.com/security/CVE-2019-14897) <!-- medium -->
    -   [CVE-2019-14896](https://ubuntu.com/security/CVE-2019-14896) <!-- medium -->
        -   2 heap overflows in Marvell Libertas Wifi Driver - OTA - crash / ACE
    -   [CVE-2019-14901](https://ubuntu.com/security/CVE-2019-14901) <!-- medium -->
    -   [CVE-2019-14895](https://ubuntu.com/security/CVE-2019-14895) <!-- medium -->
        -   2 heap overflows in Marvell Wifi-Ex Driver - OTA - crash / ACE
    -   [CVE-2019-10220](https://ubuntu.com/security/CVE-2019-10220) <!-- medium -->
        -   Kernel CIFS impl failed to sanitize paths returned from SMB server -
            malicious server could overwrite arbitrary files on the client


### [[USN-4227-1](https://usn.ubuntu.com/4227-1/), [USN-4227-2](https://usn.ubuntu.com/4227-2/)] Linux kernel vulnerabilities [05:36] {#usn-4227-1-usn-4227-2-linux-kernel-vulnerabilities-05-36}

-   14 CVEs addressed in Xenial, Bionic, Trusty ESM (Azure)
    -   [CVE-2019-19807](https://ubuntu.com/security/CVE-2019-19807) <!-- medium -->
        -   UAF in ALSA timer implementation - local user - crash (DoS) / ACE
    -   [CVE-2019-19534](https://ubuntu.com/security/CVE-2019-19534) <!-- low -->
    -   [CVE-2019-19529](https://ubuntu.com/security/CVE-2019-19529) <!-- low -->
    -   [CVE-2019-19524](https://ubuntu.com/security/CVE-2019-19524) <!-- low -->
    -   [CVE-2019-19083](https://ubuntu.com/security/CVE-2019-19083) <!-- low -->
    -   [CVE-2019-19052](https://ubuntu.com/security/CVE-2019-19052) <!-- low -->
    -   [CVE-2019-19045](https://ubuntu.com/security/CVE-2019-19045) <!-- low -->
    -   [CVE-2019-18660](https://ubuntu.com/security/CVE-2019-18660) <!-- medium -->
        -   SpectreRSB mitigations not properly enforced on PPC
    -   [CVE-2019-16233](https://ubuntu.com/security/CVE-2019-16233) <!-- low -->
    -   [CVE-2019-16231](https://ubuntu.com/security/CVE-2019-16231) <!-- low -->
    -   [CVE-2019-14897](https://ubuntu.com/security/CVE-2019-14897) <!-- medium -->
    -   [CVE-2019-14896](https://ubuntu.com/security/CVE-2019-14896) <!-- medium -->
        -   2 heap overflows in Marvell Libertas Wifi Driver - OTA - crash / ACE
    -   [CVE-2019-14901](https://ubuntu.com/security/CVE-2019-14901) <!-- medium -->
    -   [CVE-2019-14895](https://ubuntu.com/security/CVE-2019-14895) <!-- medium -->
        -   2 heap overflows in Marvell Wifi-Ex Driver - OTA - crash / ACE


### [[USN-4228-1](https://usn.ubuntu.com/4228-1/), [USN-4228-2](https://usn.ubuntu.com/4228-2/)] Linux kernel vulnerabilities [06:17] {#usn-4228-1-usn-4228-2-linux-kernel-vulnerabilities-06-17}

-   8 CVEs addressed in Xenial, Trusty ESM (Xenial HWE)
    -   [CVE-2019-19534](https://ubuntu.com/security/CVE-2019-19534) <!-- low -->
    -   [CVE-2019-19524](https://ubuntu.com/security/CVE-2019-19524) <!-- low -->
    -   [CVE-2019-19052](https://ubuntu.com/security/CVE-2019-19052) <!-- low -->
    -   [CVE-2019-18660](https://ubuntu.com/security/CVE-2019-18660) <!-- medium -->
        -   SpectreRSB mitigations not properly enforced on PPC
    -   [CVE-2019-14897](https://ubuntu.com/security/CVE-2019-14897) <!-- medium -->
    -   [CVE-2019-14896](https://ubuntu.com/security/CVE-2019-14896) <!-- medium -->
        -   2 heap overflows in Marvell Libertas Wifi Driver - OTA - crash / ACE
    -   [CVE-2019-14901](https://ubuntu.com/security/CVE-2019-14901) <!-- medium -->
    -   [CVE-2019-14895](https://ubuntu.com/security/CVE-2019-14895) <!-- medium -->
        -   2 heap overflows in Marvell Wifi-Ex Driver - OTA - crash / ACE


### [LSN-0061-1] Linux kernel vulnerability [06:38] {#lsn-0061-1-linux-kernel-vulnerability-06-38}

-   5 CVEs addressed in Bionic &amp; Xenial
    -   [CVE-2019-15794](https://ubuntu.com/security/CVE-2019-15794) <!-- medium -->
        -   OverlayFS &amp; ShiftFS reference counting issue - [Episode 55](https://ubuntusecuritypodcast.org/episode-55/)
    -   [CVE-2019-14901](https://ubuntu.com/security/CVE-2019-14901) <!-- medium -->
    -   [CVE-2019-14895](https://ubuntu.com/security/CVE-2019-14895) <!-- medium -->
        -   2 heap overflows in Marvell Wifi-Ex Driver - OTA - crash / ACE
    -   [CVE-2019-14897](https://ubuntu.com/security/CVE-2019-14897) <!-- medium -->
    -   [CVE-2019-14896](https://ubuntu.com/security/CVE-2019-14896) <!-- medium -->
        -   2 heap overflows in Marvell Libertas Wifi Driver - OTA - crash / ACE


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe discuss connected devices and smart assistants [07:25] {#alex-and-joe-discuss-connected-devices-and-smart-assistants-07-25}


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)