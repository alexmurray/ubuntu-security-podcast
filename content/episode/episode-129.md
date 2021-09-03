+++
title = "Episode 129"
description = """
  This week we look at a malware campaign associated with the popular Krita
  painting application, plus we cover security updates for MongoDB, libssh,
  Squashfs-Tools, Thunderbird and more.
  """
date = 2021-09-03T14:23:00+09:30
lastmod = 2021-09-03T14:27:19+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E129.mp3"
podcast_duration = "16:48"
podcast_bytes = 12778566
permalink = "https://ubuntusecuritypodcast.org/episode-129/"
guid = "fc57cf07e7ce710ac5b60607ecb15972d4526e085181c8ca1d231b8e00c03f2cf9577a455593cf32a72c617828ae3cb4540882cf3a51e4ded0e3f636f658c5bd"
+++

## Overview {#overview}

This week we look at a malware campaign associated with the popular Krita
painting application, plus we cover security updates for MongoDB, libssh,
Squashfs-Tools, Thunderbird and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

17 unique CVEs addressed


### [[USN-5037-2](https://ubuntu.com/security/notices/USN-5037-2)] Firefox regression [00:47] {#usn-5037-2-firefox-regression-00-47}

-   Affecting Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
-   91.0.2 - upstream bug where as part of their advanced privacy protection,
    would purge cookies associated with ad trackers etc - but this would then
    clear authentication data as well and so would lose your master password
    for Lockwise - and hence prompt the re-enter it seemingly randomly.


### [[USN-5052-1](https://ubuntu.com/security/notices/USN-5052-1)] MongoDB vulnerability [01:31] {#usn-5052-1-mongodb-vulnerability-01-31}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2019-2386](https://ubuntu.com/security/CVE-2019-2386) <!-- low -->
-   Failed to invalidate existing sessions of users who are logged in and
    their account is then deleted - so if the account is recreated before
    they perform some action, the session gets reassociated with the new
    account of the same name which may have higher privileges.


### [[USN-5051-2](https://ubuntu.com/security/notices/USN-5051-2), [USN-5051-3](https://ubuntu.com/security/notices/USN-5051-3)] OpenSSL vulnerability [02:14] {#usn-5051-2-usn-5051-3-openssl-vulnerability-02-14}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-3712](https://ubuntu.com/security/CVE-2021-3712) <!-- medium -->
-   [Episode 128](https://ubuntusecuritypodcast.org/episode-128/) - ASN.1 string handling vuln


### [[USN-5053-1](https://ubuntu.com/security/notices/USN-5053-1)] libssh vulnerability [02:42] {#usn-5053-1-libssh-vulnerability-02-42}

-   1 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-3634](https://ubuntu.com/security/CVE-2021-3634) <!-- medium -->
-   Small SSH lib - used by libcurl, remmina and others
-   Heap buffer overflow when re-keying - so a malicious client / server
    could cause crash / RCE on other side


### [[USN-5055-1](https://ubuntu.com/security/notices/USN-5055-1)] GNOME grilo vulnerability [03:22] {#usn-5055-1-gnome-grilo-vulnerability-03-22}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-39365](https://ubuntu.com/security/CVE-2021-39365) <!-- medium -->
-   GNOME media discovery framework
-   Failed to enable TLS certificate verification - so when connecting to a
    remote media source, an attacker could replace the TLS cert with their
    own self-signed one or similar and hence be able to intercept all
    encrypted comms - simple change to specify to the underlying network
    request library (libsoup) to check TLS certificate when making the
    connection


### [[USN-5056-1](https://ubuntu.com/security/notices/USN-5056-1)] APR vulnerability [04:18] {#usn-5056-1-apr-vulnerability-04-18}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Hirsute (21.04)
    -   [CVE-2021-35940](https://ubuntu.com/security/CVE-2021-35940) <!-- medium -->
-   abstraction layer library across platform specific services / APIs
-   used by apache2, subversion and others
-   OOB read in time handling functions - would fail to validate parameters
    were within expected range (ie only 12 months in a year but uses a signed
    int to represent this)


### [[USN-5054-1](https://ubuntu.com/security/notices/USN-5054-1)] uWSGI vulnerability [05:38] {#usn-5054-1-uwsgi-vulnerability-05-38}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-11984](https://ubuntu.com/security/CVE-2020-11984) <!-- medium -->
-   Buffer overflow in handling of large HTTP request headers - protocol
    represents header name/values and overall length in a uint16_t = so can
    only handle up to 16K headers so if more than that would cause an integer
    overflow and hence a buffer overread where it would read other memory
    instead of the actual request body


### [[USN-5057-1](https://ubuntu.com/security/notices/USN-5057-1)] Squashfs-Tools vulnerability [06:34] {#usn-5057-1-squashfs-tools-vulnerability-06-34}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-40153](https://ubuntu.com/security/CVE-2021-40153) <!-- medium -->
-   Failed to reject filenames in squashfs image containing relative path
    components - using a crafted mksquashfs could create such an image and
    then unsquashfs would happy create that file, outside of the extracted
    directory - path traversal vuln


### [[USN-5058-1](https://ubuntu.com/security/notices/USN-5058-1)] Thunderbird vulnerabilities [08:14] {#usn-5058-1-thunderbird-vulnerabilities-08-14}

-   10 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-30547](https://ubuntu.com/security/CVE-2021-30547) <!-- medium -->
    -   [CVE-2021-29989](https://ubuntu.com/security/CVE-2021-29989) <!-- medium -->
    -   [CVE-2021-29988](https://ubuntu.com/security/CVE-2021-29988) <!-- medium -->
    -   [CVE-2021-29986](https://ubuntu.com/security/CVE-2021-29986) <!-- medium -->
    -   [CVE-2021-29985](https://ubuntu.com/security/CVE-2021-29985) <!-- medium -->
    -   [CVE-2021-29984](https://ubuntu.com/security/CVE-2021-29984) <!-- medium -->
    -   [CVE-2021-29980](https://ubuntu.com/security/CVE-2021-29980) <!-- medium -->
    -   [CVE-2021-29976](https://ubuntu.com/security/CVE-2021-29976) <!-- medium -->
    -   [CVE-2021-29970](https://ubuntu.com/security/CVE-2021-29970) <!-- medium -->
    -   [CVE-2021-29969](https://ubuntu.com/security/CVE-2021-29969) <!-- medium -->
-   78.13
-   STARTTLS vuln - would accept IMAP responses received before had finished
    STARTTLS handshake - PiTM inject content etc - plus various vulns from
    Firefox re web rendering etc


### [[USN-5060-1](https://ubuntu.com/security/notices/USN-5060-1), [USN-5060-2](https://ubuntu.com/security/notices/USN-5060-2)] NTFS-3G vulnerabilities [09:51] {#usn-5060-1-usn-5060-2-ntfs-3g-vulnerabilities-09-51}

-   Affecting Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
-   A heap of vulns - 21 in total - integer overflows, buffer overflows etc -
    code execution, DoS etc - unlike say EXT4 and other drivers, this is FUSE
    so impact is limited to only user-level code execution, not root /
    in-kernel


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Krita Ransomware Email Campaign [11:17] {#krita-ransomware-email-campaign-11-17}

-   Emails sent to popular youtubers / facebook / instagrammers purportedly
    from Krita asking to collaborate on a paid advertising and a link to
    download some media pack - proposed videos to show on your youtube
    channel etc
-   The link is to krita.app or perhaps krita.io - not the official
    "krita.org" domain - looks the same as the real krita.org but is only
    just the homepage, other pages have redirects to the real krita.org
-   Download contains an encrypted zip file (alarm bell\*\*)
-   Video part has 3 seeming videos - 2 .mp4.scr files and one actual mp4 -
    (second alarm bell\*\*) .scr is really an exe - and a few vendors on VT
    already detects these as malicious - but a lot don't
-   Interesting to see an open source app being used to target content
    creators - seems both krita.app / krita.io now redirect to krita.org and
    the mediabank.zip is now longer up either
-   <https://krita.org/en/item/warning-scam-mails-about-krita-and-youtube-coming-from-krita-io/>


### Hiring [15:50] {#hiring-15-50}


#### Linux Cryptography and Security Engineer {#linux-cryptography-and-security-engineer}

-   <https://canonical.com/careers/2612092/linux-cryptography-and-security-engineer-remote>


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
