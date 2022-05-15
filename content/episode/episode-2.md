+++
title = "Episode 2"
description = "L1TF kernel regressions, WPA2 key recovery, mirror fail and more!"
date = 2018-08-28
lastmod = 2022-05-15T18:07:36+09:30
draft = false
weight = 1158
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E002.mp3"
podcast_duration = "08:15"
podcast_bytes = 7935502
permalink = "https://ubuntusecuritypodcast.org/episode-2/"
+++

## Overview {#overview}

83 unique CVEs addressed across the supported Ubuntu releases.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}


### [[USN-3742-3](https://usn.ubuntu.com/3742-3/)] Linux kernel (Trusty HWE) regressions {#usn-3742-3-linux-kernel--trusty-hwe--regressions}

-   Security team issues USNs for package updates caused by regressions in previous security updates
-   Fix for regressions caused by the original kernel update for L1TF
-   Could cause Java applications to fail to start and possible kernel panics on
    boot for some hardware configurations


### [[USN-3745-1](https://usn.ubuntu.com/3745-1/)] wpa_supplicant and hostapd vulnerability {#usn-3745-1-wpa-supplicant-and-hostapd-vulnerability}

-   1 CVEs addressed in Bionic
    -   [CVE-2018-14526](https://ubuntu.com/security/CVE-2018-14526)
-   Researchers analysed WPA2 4-way handshake via symbolic execution to find weaknesses
    -   Found a number of issues including a decryption oracle
    -   In this case, the would decrypt but not authenticate frame and then could allow recovery of the group key via a timing side-channel
    -   In theory, allows an unauthenticated attacker to recover WPA2 group key via frame manipulation when used with TKIP
        -   NOTE: is not advised to use TKIP in practice anyway (should use WPA2/CCMP) and so should have limited applicability
    -   In practice, due to large number of attempts needed to recover the full key, this is impractical (especially given that the group key is changed periodically)
-   <https://w1.fi/security/2018-1/unauthenticated-eapol-key-decryption.txt>
-   <https://papers.mathyvanhoef.com/woot2018.pdf>


### [[USN-3746-1](https://usn.ubuntu.com/3746-1/)] APT vulnerability {#usn-3746-1-apt-vulnerability}

-   1 CVEs addressed in Bionic
    -   [CVE-2018-0501](https://ubuntu.com/security/CVE-2018-0501)
-   Dubbed "mirror fail" by the author and even a website - <https://mirror.fail/>
-   mirror protocol in apt allows to specify a list of mirrors to try rather than just a single mirror in source.list
    -   not enabled by default
-   in APT 1.6 this was reworked and a bug introduced
    -   on fallback from one mirror to the next, the previous mirrors InRelease file would be used without checking the one from the new mirror
    -   hence failing to authenticate the one from the new mirror
    -   could potentially allow installation of untrusted packages BUT would need at least two mirrors to be compromised AND for the user to have setup use of multiple mirrors in the first place


### [[USN-3748-1](https://usn.ubuntu.com/3748-1/)] base-files vulnerability {#usn-3748-1-base-files-vulnerability}

-   1 CVEs addressed in Bionic
    -   [CVE-2018-6557](https://ubuntu.com/security/CVE-2018-6557)
-   Vulnerability in the motd update script via insecure use of temporary files
    -   Could allow DoS or privelege escalation if user has turned off kernel symlink restrictions


### [[USN-3751-1](https://usn.ubuntu.com/3751-1/)] Spice vulnerability {#usn-3751-1-spice-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic
    -   [CVE-2018-10873](https://ubuntu.com/security/CVE-2018-10873)
-   Insufficient bounds checks could allow to crash a server OR client from an authenticated peer
-   Requires authentication


### [[USN-3747-1](https://usn.ubuntu.com/3747-1/)] OpenJDK 10 vulnerabilities {#usn-3747-1-openjdk-10-vulnerabilities}

-   4 CVEs addressed in Bionic
    -   [CVE-2018-2972](https://ubuntu.com/security/CVE-2018-2972)
    -   [CVE-2018-2952](https://ubuntu.com/security/CVE-2018-2952)
    -   [CVE-2018-2826](https://ubuntu.com/security/CVE-2018-2826)
    -   [CVE-2018-2825](https://ubuntu.com/security/CVE-2018-2825)
-   Regular Java update to fix multiple vulnerabilities


### [[USN-3749-1](https://usn.ubuntu.com/3749-1/)] Spidermonkey vulnerabilities {#usn-3749-1-spidermonkey-vulnerabilities}

-   1 CVEs addressed in Bionic
    -   [CVE-2018-5188](https://ubuntu.com/security/CVE-2018-5188)
-   Regular Spidermonkey update to fix vulnerabilities


### [[USN-3750-1](https://usn.ubuntu.com/3750-1/)] Pango vulnerability {#usn-3750-1-pango-vulnerability}

-   1 CVEs addressed in Bionic
    -   [CVE-2018-15120](https://ubuntu.com/security/CVE-2018-15120)


### Kernel packages updated {#kernel-packages-updated}


#### [[USN-3752-1](https://usn.ubuntu.com/3752-1/)] Linux kernel vulnerabilities {#usn-3752-1-linux-kernel-vulnerabilities}

-   18 CVEs addressed in Bionic
    -   [CVE-2018-1000204](https://ubuntu.com/security/CVE-2018-1000204)
    -   [CVE-2018-9415](https://ubuntu.com/security/CVE-2018-9415)
    -   [CVE-2018-5814](https://ubuntu.com/security/CVE-2018-5814)
    -   [CVE-2018-13406](https://ubuntu.com/security/CVE-2018-13406)
    -   [CVE-2018-13405](https://ubuntu.com/security/CVE-2018-13405)
    -   [CVE-2018-13094](https://ubuntu.com/security/CVE-2018-13094)
    -   [CVE-2018-12904](https://ubuntu.com/security/CVE-2018-12904)
    -   [CVE-2018-12233](https://ubuntu.com/security/CVE-2018-12233)
    -   [CVE-2018-12232](https://ubuntu.com/security/CVE-2018-12232)
    -   [CVE-2018-11506](https://ubuntu.com/security/CVE-2018-11506)
    -   [CVE-2018-11412](https://ubuntu.com/security/CVE-2018-11412)
    -   [CVE-2018-1120](https://ubuntu.com/security/CVE-2018-1120)
    -   [CVE-2018-1108](https://ubuntu.com/security/CVE-2018-1108)
    -   [CVE-2018-1093](https://ubuntu.com/security/CVE-2018-1093)
    -   [CVE-2018-10881](https://ubuntu.com/security/CVE-2018-10881)
    -   [CVE-2018-10840](https://ubuntu.com/security/CVE-2018-10840)
    -   [CVE-2018-10323](https://ubuntu.com/security/CVE-2018-10323)
    -   [CVE-2018-1000200](https://ubuntu.com/security/CVE-2018-1000200)


#### [[USN-3752-2](https://usn.ubuntu.com/3752-2/)] Linux kernel (HWE) vulnerabilities {#usn-3752-2-linux-kernel--hwe--vulnerabilities}

-   18 CVEs addressed in Xenial
    -   [CVE-2018-1000204](https://ubuntu.com/security/CVE-2018-1000204)
    -   [CVE-2018-9415](https://ubuntu.com/security/CVE-2018-9415)
    -   [CVE-2018-5814](https://ubuntu.com/security/CVE-2018-5814)
    -   [CVE-2018-13406](https://ubuntu.com/security/CVE-2018-13406)
    -   [CVE-2018-13405](https://ubuntu.com/security/CVE-2018-13405)
    -   [CVE-2018-13094](https://ubuntu.com/security/CVE-2018-13094)
    -   [CVE-2018-12904](https://ubuntu.com/security/CVE-2018-12904)
    -   [CVE-2018-12233](https://ubuntu.com/security/CVE-2018-12233)
    -   [CVE-2018-12232](https://ubuntu.com/security/CVE-2018-12232)
    -   [CVE-2018-11506](https://ubuntu.com/security/CVE-2018-11506)
    -   [CVE-2018-11412](https://ubuntu.com/security/CVE-2018-11412)
    -   [CVE-2018-1120](https://ubuntu.com/security/CVE-2018-1120)
    -   [CVE-2018-1108](https://ubuntu.com/security/CVE-2018-1108)
    -   [CVE-2018-1093](https://ubuntu.com/security/CVE-2018-1093)
    -   [CVE-2018-10881](https://ubuntu.com/security/CVE-2018-10881)
    -   [CVE-2018-10840](https://ubuntu.com/security/CVE-2018-10840)
    -   [CVE-2018-10323](https://ubuntu.com/security/CVE-2018-10323)
    -   [CVE-2018-1000200](https://ubuntu.com/security/CVE-2018-1000200)


#### [[USN-3753-1](https://usn.ubuntu.com/3753-1/)] Linux kernel vulnerabilities {#usn-3753-1-linux-kernel-vulnerabilities}

-   11 CVEs addressed in Xenial
    -   [CVE-2018-13406](https://ubuntu.com/security/CVE-2018-13406)
    -   [CVE-2018-13405](https://ubuntu.com/security/CVE-2018-13405)
    -   [CVE-2018-13094](https://ubuntu.com/security/CVE-2018-13094)
    -   [CVE-2018-12233](https://ubuntu.com/security/CVE-2018-12233)
    -   [CVE-2018-10881](https://ubuntu.com/security/CVE-2018-10881)
    -   [CVE-2018-10882](https://ubuntu.com/security/CVE-2018-10882)
    -   [CVE-2018-10878](https://ubuntu.com/security/CVE-2018-10878)
    -   [CVE-2018-10877](https://ubuntu.com/security/CVE-2018-10877)
    -   [CVE-2018-10879](https://ubuntu.com/security/CVE-2018-10879)
    -   [CVE-2018-10876](https://ubuntu.com/security/CVE-2018-10876)
    -   [CVE-2017-13168](https://ubuntu.com/security/CVE-2017-13168)


#### [[USN-3753-2](https://usn.ubuntu.com/3753-2/)] Linux kernel (Xenial HWE) vulnerabilities {#usn-3753-2-linux-kernel--xenial-hwe--vulnerabilities}

-   11 CVEs addressed in Trusty
    -   [CVE-2018-13406](https://ubuntu.com/security/CVE-2018-13406)
    -   [CVE-2018-13405](https://ubuntu.com/security/CVE-2018-13405)
    -   [CVE-2018-13094](https://ubuntu.com/security/CVE-2018-13094)
    -   [CVE-2018-12233](https://ubuntu.com/security/CVE-2018-12233)
    -   [CVE-2018-10881](https://ubuntu.com/security/CVE-2018-10881)
    -   [CVE-2018-10882](https://ubuntu.com/security/CVE-2018-10882)
    -   [CVE-2018-10878](https://ubuntu.com/security/CVE-2018-10878)
    -   [CVE-2018-10877](https://ubuntu.com/security/CVE-2018-10877)
    -   [CVE-2018-10879](https://ubuntu.com/security/CVE-2018-10879)
    -   [CVE-2018-10876](https://ubuntu.com/security/CVE-2018-10876)
    -   [CVE-2017-13168](https://ubuntu.com/security/CVE-2017-13168)


#### [[USN-3754-1](https://usn.ubuntu.com/3754-1/)] Linux kernel vulnerabilities {#usn-3754-1-linux-kernel-vulnerabilities}

-   53 CVEs addressed in Trusty
    -   [CVE-2018-10021](https://ubuntu.com/security/CVE-2018-10021)
    -   [CVE-2018-1000204](https://ubuntu.com/security/CVE-2018-1000204)
    -   [CVE-2017-2671](https://ubuntu.com/security/CVE-2017-2671)
    -   [CVE-2018-13406](https://ubuntu.com/security/CVE-2018-13406)
    -   [CVE-2018-13405](https://ubuntu.com/security/CVE-2018-13405)
    -   [CVE-2018-13094](https://ubuntu.com/security/CVE-2018-13094)
    -   [CVE-2018-12233](https://ubuntu.com/security/CVE-2018-12233)
    -   [CVE-2018-10940](https://ubuntu.com/security/CVE-2018-10940)
    -   [CVE-2018-1093](https://ubuntu.com/security/CVE-2018-1093)
    -   [CVE-2018-1092](https://ubuntu.com/security/CVE-2018-1092)
    -   [CVE-2018-10881](https://ubuntu.com/security/CVE-2018-10881)
    -   [CVE-2018-10877](https://ubuntu.com/security/CVE-2018-10877)
    -   [CVE-2018-10675](https://ubuntu.com/security/CVE-2018-10675)
    -   [CVE-2018-10323](https://ubuntu.com/security/CVE-2018-10323)
    -   [CVE-2018-10124](https://ubuntu.com/security/CVE-2018-10124)
    -   [CVE-2018-10087](https://ubuntu.com/security/CVE-2018-10087)
    -   [CVE-2017-9985](https://ubuntu.com/security/CVE-2017-9985)
    -   [CVE-2017-9984](https://ubuntu.com/security/CVE-2017-9984)
    -   [CVE-2017-8831](https://ubuntu.com/security/CVE-2017-8831)
    -   [CVE-2017-7645](https://ubuntu.com/security/CVE-2017-7645)
    -   [CVE-2017-7518](https://ubuntu.com/security/CVE-2017-7518)
    -   [CVE-2017-6348](https://ubuntu.com/security/CVE-2017-6348)
    -   [CVE-2017-6345](https://ubuntu.com/security/CVE-2017-6345)
    -   [CVE-2017-5897](https://ubuntu.com/security/CVE-2017-5897)
    -   [CVE-2017-5549](https://ubuntu.com/security/CVE-2017-5549)
    -   [CVE-2017-2584](https://ubuntu.com/security/CVE-2017-2584)
    -   [CVE-2017-2583](https://ubuntu.com/security/CVE-2017-2583)
    -   [CVE-2017-18270](https://ubuntu.com/security/CVE-2017-18270)
    -   [CVE-2017-18255](https://ubuntu.com/security/CVE-2017-18255)
    -   [CVE-2017-17558](https://ubuntu.com/security/CVE-2017-17558)
    -   [CVE-2017-16914](https://ubuntu.com/security/CVE-2017-16914)
    -   [CVE-2017-16913](https://ubuntu.com/security/CVE-2017-16913)
    -   [CVE-2017-16912](https://ubuntu.com/security/CVE-2017-16912)
    -   [CVE-2017-16911](https://ubuntu.com/security/CVE-2017-16911)
    -   [CVE-2017-16650](https://ubuntu.com/security/CVE-2017-16650)
    -   [CVE-2017-16645](https://ubuntu.com/security/CVE-2017-16645)
    -   [CVE-2017-16644](https://ubuntu.com/security/CVE-2017-16644)
    -   [CVE-2017-16643](https://ubuntu.com/security/CVE-2017-16643)
    -   [CVE-2017-16538](https://ubuntu.com/security/CVE-2017-16538)
    -   [CVE-2017-16537](https://ubuntu.com/security/CVE-2017-16537)
    -   [CVE-2017-16536](https://ubuntu.com/security/CVE-2017-16536)
    -   [CVE-2017-16535](https://ubuntu.com/security/CVE-2017-16535)
    -   [CVE-2017-16533](https://ubuntu.com/security/CVE-2017-16533)
    -   [CVE-2017-16532](https://ubuntu.com/security/CVE-2017-16532)
    -   [CVE-2017-16531](https://ubuntu.com/security/CVE-2017-16531)
    -   [CVE-2017-16529](https://ubuntu.com/security/CVE-2017-16529)
    -   [CVE-2017-16527](https://ubuntu.com/security/CVE-2017-16527)
    -   [CVE-2017-16526](https://ubuntu.com/security/CVE-2017-16526)
    -   [CVE-2017-15649](https://ubuntu.com/security/CVE-2017-15649)
    -   [CVE-2017-14991](https://ubuntu.com/security/CVE-2017-14991)
    -   [CVE-2017-11473](https://ubuntu.com/security/CVE-2017-11473)
    -   [CVE-2017-11472](https://ubuntu.com/security/CVE-2017-11472)
    -   [CVE-2016-10208](https://ubuntu.com/security/CVE-2016-10208)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Hiring {#hiring}


#### Ubuntu Security Manager {#ubuntu-security-manager}

-   <https://boards.greenhouse.io/canonical/jobs/1278287>


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1158266>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)