+++
title = "Episode 45"
description = "This week we look at security updates for Dovecot, Ghostscript, a livepatch update for the Linux kernel, Ceph and Apache, plus Alex and Joe discuss recent Wordpress plugin vulnerabilities and the Hostinger breach, and more."
date = 2019-09-04T21:25:00+09:30
lastmod = 2022-05-15T18:07:02+09:30
draft = false
weight = 1115
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E045.mp3"
podcast_duration = "19:07"
podcast_bytes = 18353541
permalink = "https://ubuntusecuritypodcast.org/episode-45/"
guid = "f87b82df55da7b039ccf147c10a94c759ed46cab8a843d0e81c042222ce3f8373cf1abe1587107675c11187a834f6d5550da0e76ae338343ad75f1161c036ee5"
+++

## Overview {#overview}

This week we look at security updates for Dovecot, Ghostscript, a livepatch update for the Linux kernel, Ceph and Apache, plus Alex and Joe discuss recent Wordpress plugin vulnerabilities and the Hostinger breach, and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

22 unique CVEs addressed


### [[USN-4110-1](https://usn.ubuntu.com/4110-1/), [USN-4110-2](https://usn.ubuntu.com/4110-2/)] Dovecot vulnerability [00:52] {#usn-4110-1-usn-4110-2-dovecot-vulnerability-00-52}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-11500](https://ubuntu.com/security/CVE-2019-11500)
-   IMAP and ManageSieve protocol parsers would not check for embedded NUL bytes in strings
    -   When parsing these strings, would return indexes outside the normal
        string bounds as the first character which needed unescaping
    -   Would then go and try to unescape the string from this index, which
        rewrites the string on the fly, and so would then go and rewrite
        outside the bounds of the string
    -   Fixed to disallow embedded NUL bytes AND to not try and skip up to
        first unescaped character but instead loop over the whole string in
        unescaping


### [[USN-4110-3](https://usn.ubuntu.com/4110-3/), USN-4110-4] Dovecot regression [02:08] {#usn-4110-3-usn-4110-4-dovecot-regression-02-08}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-11500](https://ubuntu.com/security/CVE-2019-11500)
-   Original patch used pre-release version of the fix from upstream which
    contained an error such that the checking of NUL bytes was skipped -
    re-released with correct final upstream fix


### [[LSN-0054-1](https://lists.ubuntu.com/archives/ubuntu-security-announce/2019-August/005085.html)] Linux kernel vulnerability [02:38] {#lsn-0054-1-linux-kernel-vulnerability-02-38}

-   9 CVEs addressed in Xenial, Bionic
    -   [CVE-2018-1129](https://ubuntu.com/security/CVE-2018-1129)
    -   [CVE-2019-13272](https://ubuntu.com/security/CVE-2019-13272)
    -   [CVE-2019-12984](https://ubuntu.com/security/CVE-2019-12984)
    -   [CVE-2019-12819](https://ubuntu.com/security/CVE-2019-12819)
    -   [CVE-2019-12818](https://ubuntu.com/security/CVE-2019-12818)
    -   [CVE-2019-12614](https://ubuntu.com/security/CVE-2019-12614)
    -   [CVE-2019-10126](https://ubuntu.com/security/CVE-2019-10126)
    -   [CVE-2019-3846](https://ubuntu.com/security/CVE-2019-3846)
    -   [CVE-2019-2101](https://ubuntu.com/security/CVE-2019-2101)
-   Livepatch for CVEs addressed in regular kernel updates ([Episode 43](https://ubuntusecuritypodcast.org/episode-43/))
    -   ptrace credentials race, Marvell Wifi heap-buffer overflows, NULL
        pointer dereferences


### [[USN-4111-1](https://usn.ubuntu.com/4111-1/)] Ghostscript vulnerabilities [03:20] {#usn-4111-1-ghostscript-vulnerabilities-03-20}

-   4 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-14817](https://ubuntu.com/security/CVE-2019-14817)
    -   [CVE-2019-14813](https://ubuntu.com/security/CVE-2019-14813)
    -   [CVE-2019-14812](https://ubuntu.com/security/CVE-2019-14812)
    -   [CVE-2019-14811](https://ubuntu.com/security/CVE-2019-14811)
-   Four more -dSAFER sandbox bypasses (see [Episode 43](https://ubuntusecuritypodcast.org/episode-43/) for the last one)
-   All variations on the theme of using the .forceput operator to escape the
    sandbox


### [[USN-4112-1](https://usn.ubuntu.com/4112-1/)] Ceph vulnerability [04:01] {#usn-4112-1-ceph-vulnerability-04-01}

-   1 CVEs addressed in Bionic, Disco
    -   [CVE-2019-10222](https://ubuntu.com/security/CVE-2019-10222)
-   DoS - unauthenticated clients can crash the rados gateway by
    disconnecting at certain time (triggering a NULL pointer deference when
    looking up the remote address for a connected client)
    -   Older versions are not affected since this is in the beast RGW
        frontend - which is not in the versions in trusty / xenial - and only
        in the bionic version as an experimental feature


### [[USN-4113-1](https://usn.ubuntu.com/4113-1/)] Apache HTTP Server vulnerabilities [04:41] {#usn-4113-1-apache-http-server-vulnerabilities-04-41}

-   7 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-9517](https://ubuntu.com/security/CVE-2019-9517)
    -   [CVE-2019-10098](https://ubuntu.com/security/CVE-2019-10098)
    -   [CVE-2019-10097](https://ubuntu.com/security/CVE-2019-10097)
    -   [CVE-2019-10092](https://ubuntu.com/security/CVE-2019-10092)
    -   [CVE-2019-10082](https://ubuntu.com/security/CVE-2019-10082)
    -   [CVE-2019-10081](https://ubuntu.com/security/CVE-2019-10081)
    -   [CVE-2019-0197](https://ubuntu.com/security/CVE-2019-0197)

-   HTTP/2 DoS issue (Internal Data Buffering) - [Episode 43](https://ubuntusecuritypodcast.org/episode-43/) for nginx
    -   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/http2>
-   Open redirect in mod_rewrite if have self-referential redirects
-   Stack buffer overflow + NULL pointer dereference in mod_remoteip
-   Possible XSS in mod_proxy where the link shown on error pages could be
    controlled by an attacker - but only possible where configured with
    proxying enable but misconfigured so that Proxy Error page is shown.
-   UAF (read) during HTTP/2 connection shutdown
-   HTTP/2 push - allows server to send resources to a client before it
    requests them - could overwrite memory of the server's request pool -
    this is preconfigured and not under control of client but could cause a
    crash etc.
-   HTTP/2 upgrade - can configure to automatically upgrade HTTP/1.1 requests
    to HTTP/2 - but if this was not the first request on the connection could
    lead to crash


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe talk Wordpress plugin vulnerabiliies and Hostinger password breach [07:03] {#alex-and-joe-talk-wordpress-plugin-vulnerabiliies-and-hostinger-password-breach-07-03}

-   <https://threatpost.com/wordpress-plugins-exploited-in-ongoing-attack-researchers-warn/147671/>
-   <https://www.zdnet.com/article/hostinger-resets-customer-passwords-after-security-incident/>
-   <https://www.nccgroup.trust/us/about-us/newsroom-and-events/blog/2009/july/if-youre-typing-the-letters-a-e-s-into-your-code-youre-doing-it-wrong/>


### OpenSSL 1.1.1 with TLS 1.3 support complete for Ubuntu 18.04 LTS (Bionic) [17:29] {#openssl-1-dot-1-dot-1-with-tls-1-dot-3-support-complete-for-ubuntu-18-dot-04-lts--bionic--17-29}

-   OpenSSL upgraded to version 1.1.1 in Ubuntu 18.04 LTS - supports TLS
    1.3 - now published via -updates and -security


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)