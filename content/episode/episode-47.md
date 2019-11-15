+++
title = "Episode 47"
description = """
  We catch up on details of the past few weeks of security updates, including
  Python, curl, Linux kernel, Exim and more, plus Alex and Joe discuss the
  recent Ubuntu Engineering Sprint in Paris and building a HoneyBot for Admin
  Magazine.
  """
date = 2019-10-03T20:22:00+09:30
lastmod = 2019-11-15T18:21:57+10:30
draft = false
weight = 1007
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E047.mp3"
podcast_duration = "28:26"
podcast_bytes = 36399340
permalink = "https://ubuntusecuritypodcast.org/episode-47/"
guid = "eb97d501d3fc0165d53b74fa0f831d75a0b24d77763dc3f68787f6ce5f69dfe2caab85d941d6a0b81f110683ab34cb6cc01b365791d1cf9fdd8fae29494536cb"
+++

## Overview {#overview}

We catch up on details of the past few weeks of security updates, including
Python, curl, Linux kernel, Exim and more, plus Alex and Joe discuss the
recent Ubuntu Engineering Sprint in Paris and building a HoneyBot for Admin
Magazine.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

93 unique CVEs addressed


### [[USN-4125-1](https://usn.ubuntu.com/4125-1/)] Memcached vulnerability [00:42] {#usn-4125-1-memcached-vulnerability-00-42}

-   1 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-15026](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15026) <!-- medium -->
-   Possible stack buffer over-read when using UNIX sockets (copies address
    of UNIX socket using strncpy() which could possibly read past the end of
    the src buffer) - possible crash -> DoS - fixed to explicitly limit
    length to smallest of src/dst buffers rather than just size of dest
    buffer


### [[USN-4126-1](https://usn.ubuntu.com/4126-1/)] FreeType vulnerability [01:49] {#usn-4126-1-freetype-vulnerability-01-49}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial
    -   [CVE-2015-9383](https://people.canonical.com/~ubuntu-security/cve/CVE-2015-9383) <!-- medium -->
-   2 CVEs addressed in Precise ESM, Trusty ESM only
    -   [CVE-2015-9382](https://people.canonical.com/~ubuntu-security/cve/CVE-2015-9382) <!-- medium -->
    -   [CVE-2015-9381](https://people.canonical.com/~ubuntu-security/cve/CVE-2015-9381) <!-- low -->
-   All various heap based buffer over-reads - crash -> DoS


### [[USN-4127-1](https://usn.ubuntu.com/4127-1/), [USN-4127-2](https://usn.ubuntu.com/4127-2/)] Python vulnerabilities [02:13] {#usn-4127-1-usn-4127-2-python-vulnerabilities-02-13}

-   8 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-9948](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9948) <!-- medium -->
    -   [CVE-2019-9947](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9947) <!-- medium -->
    -   [CVE-2019-9740](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9740) <!-- medium -->
    -   [CVE-2019-5010](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5010) <!-- low -->
    -   [CVE-2019-10160](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10160) <!-- medium -->
    -   [CVE-2019-9636](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9636) <!-- medium -->
    -   [CVE-2018-20852](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20852) <!-- medium -->
    -   [CVE-2018-20406](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20406) <!-- low -->
-   4 issues in urllib:
    -   would allow to easily open files from local file-system
    -   2 different CRLF injection issues
    -   specially crafted URL could cause urllib to send cookies / auth data
        for wrong host
        -   Fixed incorrectly upstream so had a two CVEs assigned
-   http cookiejar wouldn't validate URL correctly so could also send cookies
    for another domain
-   Possible NULL ptr deref when parsing X509 certs if had an empty CRL
    distpoint / URI
-   Possible integer overflow when serializing a tens of hundreds of
    gigabytes of data via the pickle format - could cause memory exhaustion


### [[USN-4128-1](https://usn.ubuntu.com/4128-1/), [USN-4128-2](https://usn.ubuntu.com/4128-2/)] Tomcat vulnerabilities [03:35] {#usn-4128-1-usn-4128-2-tomcat-vulnerabilities-03-35}

-   3 CVEs addressed in Xenial, Bionic (tomcat-8) and Bionic, Disco (tomcat-9)
    -   [CVE-2019-10072](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10072) <!-- medium -->
    -   [CVE-2019-0199](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0199) <!-- medium -->
    -   [CVE-2019-0221](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-0221) <!-- low -->
-   HTTP/2 server would accept streams with an excessive number of SETTINGS
    frames and would permit clients to keep streams open without reading /
    writing anything - could lead to DoS by causing server-side threads to
    block
    -   Original fix was incomplete - so got a second CVE
-   Possible XSS injection if using SSI printenv command as would echo user
    provided data without escaping - intended only for debugging so shouldn't
    be used in a production website anyway


### [[USN-4120-2](https://usn.ubuntu.com/4120-2/)] systemd regression [04:45] {#usn-4120-2-systemd-regression-04-45}

-   Affecting Bionic, Disco
-   [Episode 46](https://ubuntusecuritypodcast.org/episode-46/) - systemd-resolved dbus access control - the update was
    prepared using a pending SRU update - but this contained a regression in
    networking - re-released the security fix but without this SRU update
    included.


### [[USN-4115-2](https://usn.ubuntu.com/4115-2/)] Linux kernel regression [05:18] {#usn-4115-2-linux-kernel-regression-05-18}

-   Affecting Xenial (HWE), Bionic
-   Recent kernel update ([Episode 46](https://ubuntusecuritypodcast.org/episode-46/)) could possibly crash on handling
    fragmented packets


### [[USN-4129-1](https://usn.ubuntu.com/4129-1/), [USN-4129-2](https://usn.ubuntu.com/4129-2/)] curl vulnerabilities [05:42] {#usn-4129-1-usn-4129-2-curl-vulnerabilities-05-42}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-5482](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5482) <!-- medium -->
        -   Heap buffer overflow in TFTP protocol handler
-   1 extra CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-5481](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5481) <!-- medium -->
        -   Double free in FTP-kerberos code


### [[USN-4130-1](https://usn.ubuntu.com/4130-1/)] WebKitGTK+ vulnerabilities [06:15] {#usn-4130-1-webkitgtk-plus-vulnerabilities-06-15}

-   16 CVEs addressed in Bionic, Disco
    -   [CVE-2019-8690](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8690) <!-- medium -->
    -   [CVE-2019-8689](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8689) <!-- medium -->
    -   [CVE-2019-8688](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8688) <!-- medium -->
    -   [CVE-2019-8687](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8687) <!-- medium -->
    -   [CVE-2019-8684](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8684) <!-- medium -->
    -   [CVE-2019-8683](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8683) <!-- medium -->
    -   [CVE-2019-8681](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8681) <!-- medium -->
    -   [CVE-2019-8680](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8680) <!-- medium -->
    -   [CVE-2019-8678](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8678) <!-- medium -->
    -   [CVE-2019-8676](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8676) <!-- medium -->
    -   [CVE-2019-8673](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8673) <!-- medium -->
    -   [CVE-2019-8669](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8669) <!-- medium -->
    -   [CVE-2019-8666](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8666) <!-- medium -->
    -   [CVE-2019-8658](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8658) <!-- medium -->
    -   [CVE-2019-8649](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8649) <!-- medium -->
    -   [CVE-2019-8644](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8644) <!-- medium -->
-   Update to latest WebKitGTK upstream release (2.24.4)


### [[USN-4131-1](https://usn.ubuntu.com/4131-1/)] VLC vulnerabilities [06:38] {#usn-4131-1-vlc-vulnerabilities-06-38}

-   11 CVEs addressed in Bionic, Disco
    -   [CVE-2019-14970](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14970) <!-- medium -->
    -   [CVE-2019-14778](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14778) <!-- medium -->
    -   [CVE-2019-14777](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14777) <!-- medium -->
    -   [CVE-2019-14776](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14776) <!-- medium -->
    -   [CVE-2019-14535](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14535) <!-- medium -->
    -   [CVE-2019-14534](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14534) <!-- medium -->
    -   [CVE-2019-14533](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14533) <!-- medium -->
    -   [CVE-2019-14498](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14498) <!-- medium -->
    -   [CVE-2019-14438](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14438) <!-- medium -->
    -   [CVE-2019-14437](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14437) <!-- medium -->
    -   [CVE-2019-13962](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13962) <!-- low -->
-   Update to latest VLC upstream release (3.0.8)


### [[USN-4133-1](https://usn.ubuntu.com/4133-1/)] Wireshark vulnerabilities [06:48] {#usn-4133-1-wireshark-vulnerabilities-06-48}

-   2 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-13619](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13619) <!-- medium -->
    -   [CVE-2019-12295](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12295) <!-- low -->
-   Update to latest upstream release (2.6.10-1)


### [[USN-4132-1](https://usn.ubuntu.com/4132-1/), [USN-4132-2](https://usn.ubuntu.com/4132-2/)] Expat vulnerability [06:55] {#usn-4132-1-usn-4132-2-expat-vulnerability-06-55}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-15903](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15903) <!-- medium -->
-   Crafted XML could fool the parser to switch to document parsing too early
    (whilst still in DTD) - could then result in a heap-based buffer
    over-read when looking up current line / column number - possible crash
    -> DoS


### [[USN-4134-1](https://usn.ubuntu.com/4134-1/)] IBus vulnerability [07:30] {#usn-4134-1-ibus-vulnerability-07-30}

-   1 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-14822](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14822) <!-- medium -->
-   Failed to apply access controls to D-Bus server socket - could allow
    another local user to connect to logged in local user's IBus daemon and
    snoop on keystrokes etc
    -   Attacker needs to know IBus socket address which is randomised and not
        easily discoverable


### [[USN-4134-2](https://usn.ubuntu.com/4134-2/)] IBus regression [08:00] {#usn-4134-2-ibus-regression-08-00}

-   Affecting Xenial, Bionic, Disco
-   Regressed for Qt users - Qt seems unable to connect to IBus socket - so
    reverted


### [[USN-4124-2](https://usn.ubuntu.com/4124-2/)] Exim vulnerability [08:25] {#usn-4124-2-exim-vulnerability-08-25}

-   1 CVEs addressed in Trusty ESM
    -   [CVE-2019-15846](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15846) <!-- high -->
-   [Episode 46](https://ubuntusecuritypodcast.org/episode-46/) - high profile possible remote root exploit


### [[USN-4113-2](https://usn.ubuntu.com/4113-2/)] Apache HTTP Server regression [08:38] {#usn-4113-2-apache-http-server-regression-08-38}

-   Affecting Xenial, Bionic, Disco
-   [Episode 45](https://ubuntusecuritypodcast.org/episode-45/) - HTTP/2 DoS issues - update caused a regression when proxying
    balance manager connections - fixed by incorporating missing upstream
    patches


### [[USN-4135-1](https://usn.ubuntu.com/4135-1/), [USN-4135-2](https://usn.ubuntu.com/4135-2/)] Linux kernel vulnerabilities [09:01] {#usn-4135-1-usn-4135-2-linux-kernel-vulnerabilities-09-01}

-   3 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-15031](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15031) <!-- medium -->
    -   [CVE-2019-15030](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15030) <!-- medium -->
    -   [CVE-2019-14835](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14835) <!-- high -->
-   Possible host privilege escalation from a libvirt guest (guest user needs
    to be privileged)
-   2 related info disclosures on PowerPC - local user could possibly read
    vector registers of other users' processes either during an interrupt or
    via a facility unavailable exception


### [LSN-0056-1] Linux kernel vulnerability [09:51] {#lsn-0056-1-linux-kernel-vulnerability-09-51}

-   1 CVEs addressed in Xenial, Bionic
    -   [CVE-2019-14835](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14835) <!-- high -->
-   Livepatch notification of above libvirt host privesc


### [[USN-4136-1](https://usn.ubuntu.com/4136-1/), [USN-4136-2](https://usn.ubuntu.com/4136-2/)] wpa\_supplicant and hostapd vulnerability [10:06] {#usn-4136-1-usn-4136-2-wpa-supplicant-and-hostapd-vulnerability-10-06}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-16275](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16275) <!-- medium -->
-   Attacker in radio range could cause a station to disconnect by sending a
    specially crafted management frame (since would not properly validate the
    source address of the frame)


### [[USN-4137-1](https://usn.ubuntu.com/4137-1/)] Mosquitto vulnerability [10:44] {#usn-4137-1-mosquitto-vulnerability-10-44}

-   1 CVEs addressed in Disco
    -   [CVE-2019-11779](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11779) <!-- medium -->
-   Stack overflow if a malicious client sends a SUBSCRIBE with a topic of
    ~65k '/' characters


### [[USN-4138-1](https://usn.ubuntu.com/4138-1/)] LibreOffice vulnerability [10:56] {#usn-4138-1-libreoffice-vulnerability-10-56}

-   1 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-9854](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9854) <!-- medium -->
-   [Episode 44](https://ubuntusecuritypodcast.org/episode-44/) - able to bypass protections added to try and stop inclusion
    of code on local file-system in macros etc via URL encoding


### [[USN-4139-1](https://usn.ubuntu.com/4139-1/)] File Roller vulnerability [11:18] {#usn-4139-1-file-roller-vulnerability-11-18}

-   1 CVEs addressed in Xenial, Bionic
    -   [CVE-2019-16680](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16680) <!-- medium -->
-   Path traversal outside of CWD to parent


### [[USN-4140-1](https://usn.ubuntu.com/4140-1/)] Firefox vulnerability [11:33] {#usn-4140-1-firefox-vulnerability-11-33}

-   1 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-11754](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11754) <!-- medium -->
-   Latest upstream release (69.0.1) - pointer lock able to be enabled
    without any notification to user - could allow a malicious website to
    hijack mouse cursor and confuse user


### [[USN-4141-1](https://usn.ubuntu.com/4141-1/)] Exim vulnerability [11:54] {#usn-4141-1-exim-vulnerability-11-54}

-   1 CVEs addressed in Disco
    -   [CVE-2019-16928](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16928) <!-- medium -->
-   Heap-based buffer overflow - could possibly allow remote code execution -
    was announced on Saturday 28th - thanks Marc for the quick update :)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe and Alex talk about the Paris Engineering Sprint and Joe's recent article in Admin Magazine [12:42] {#joe-and-alex-talk-about-the-paris-engineering-sprint-and-joe-s-recent-article-in-admin-magazine-12-42}

-   <http://www.admin-magazine.com/Articles/Build-a-honeypot-with-real-world-alerts?utm%5Fsource=AMTW>
-   <https://github.com/joemcmanus/honeybot>


### New security category on discourse.ubuntu.com [25:52] {#new-security-category-on-discourse-dot-ubuntu-dot-com-25-52}

-   <https://discourse.ubuntu.com/c/security>
-   Created to allow discussion of security relevant Ubuntu topics and issues
    in a more user-friendly and centralised location
    -   Will be used in addition to the existing [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
        and [#ubuntu-hardened IRC channel](http://webchat.freenode.net/#ubuntu-hardened)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)