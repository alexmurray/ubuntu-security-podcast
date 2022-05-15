+++
title = "Episode 74"
description = """
  Special guest, Tim McNamara, author of Rust In Action talks all things Rust
  plus we look at security updates for Linux bluetooth firmware, OpenLDAP,
  PulseAudio, Squid and more.
  """
date = 2020-05-15T16:36:00+09:30
lastmod = 2022-05-15T18:06:40+09:30
draft = false
weight = 1086
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E074.mp3"
podcast_duration = "45:55"
podcast_bytes = 44084780
permalink = "https://ubuntusecuritypodcast.org/episode-74/"
guid = "2c79a703cf699e7143b7c01d3a81f866f97872eb6aad9604efb3f2919a8570af7cd8dd4505da621d5379bd5f3e6a69e86d313cfa6367dc9da73eac244abce8f5"
+++

## Overview {#overview}

Special guest, Tim McNamara, author of Rust In Action talks all things Rust
plus we look at security updates for Linux bluetooth firmware, OpenLDAP,
PulseAudio, Squid and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

17 unique CVEs addressed


### [[USN-4351-1](https://usn.ubuntu.com/4351-1/)] Linux firmware vulnerability [01:03] {#usn-4351-1-linux-firmware-vulnerability-01-03}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2018-5383](https://ubuntu.com/security/CVE-2018-5383) <!-- medium -->
-   Bluetooth devices failed to properly validate elliptic curve parameters
    used in key exchange - remote attacker could possibly force a weak key to
    be used and hence obtain the encryption key. Required changes to both the
    kernel and firmware blobs - kernel was updated previously ([Episode 43](https://ubuntusecuritypodcast.org/episode-43/)) -
    this is the corresponding update for firmware


### [[USN-4352-1](https://usn.ubuntu.com/4352-1/), USN-4352-2] OpenLDAP vulnerability [02:05] {#usn-4352-1-usn-4352-2-openldap-vulnerability-02-05}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM),
    Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-12243](https://ubuntu.com/security/CVE-2020-12243) <!-- medium -->
-   A search filter with a large number of nested boolean expressions could
    cause slapd daemon to crash via deep stack recursion - add a hard coded
    limit to resolve this


### [[USN-4353-1](https://usn.ubuntu.com/4353-1/)] Firefox vulnerabilities [02:46] {#usn-4353-1-firefox-vulnerabilities-02-46}

-   8 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-12392](https://ubuntu.com/security/CVE-2020-12392) <!-- medium -->
    -   [CVE-2020-12396](https://ubuntu.com/security/CVE-2020-12396) <!-- medium -->
    -   [CVE-2020-12395](https://ubuntu.com/security/CVE-2020-12395) <!-- medium -->
    -   [CVE-2020-12394](https://ubuntu.com/security/CVE-2020-12394) <!-- medium -->
    -   [CVE-2020-12391](https://ubuntu.com/security/CVE-2020-12391) <!-- medium -->
    -   [CVE-2020-12390](https://ubuntu.com/security/CVE-2020-12390) <!-- medium -->
    -   [CVE-2020-12387](https://ubuntu.com/security/CVE-2020-12387) <!-- medium -->
    -   [CVE-2020-6831](https://ubuntu.com/security/CVE-2020-6831) <!-- medium -->
-   76.0
-   Displays alerts for breached passwords stored in Lockwise
-   Usual UAF, sandbox escape, buffer overflows, content security policy
    bypass etc
-   <https://www.mozilla.org/en-US/firefox/76.0/releasenotes/>


### [[USN-4353-2](https://usn.ubuntu.com/4353-2/)] Firefox regression [03:34] {#usn-4353-2-firefox-regression-03-34}

-   8 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-12392](https://ubuntu.com/security/CVE-2020-12392) <!-- medium -->
    -   [CVE-2020-12396](https://ubuntu.com/security/CVE-2020-12396) <!-- medium -->
    -   [CVE-2020-12395](https://ubuntu.com/security/CVE-2020-12395) <!-- medium -->
    -   [CVE-2020-12394](https://ubuntu.com/security/CVE-2020-12394) <!-- medium -->
    -   [CVE-2020-12391](https://ubuntu.com/security/CVE-2020-12391) <!-- medium -->
    -   [CVE-2020-12390](https://ubuntu.com/security/CVE-2020-12390) <!-- medium -->
    -   [CVE-2020-12387](https://ubuntu.com/security/CVE-2020-12387) <!-- medium -->
    -   [CVE-2020-6831](https://ubuntu.com/security/CVE-2020-6831) <!-- medium -->
-   76.0.1
-   Regression in behaviour related to addons - could impair their
    functionality
-   <https://www.mozilla.org/en-US/firefox/76.0.1/releasenotes/>


### [[USN-4354-1](https://usn.ubuntu.com/4354-1/)] Mailman vulnerability [03:51] {#usn-4354-1-mailman-vulnerability-03-51}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)

    -   [CVE-2020-12108](https://ubuntu.com/security/CVE-2020-12108) <!-- medium -->
    -   Arbitrary content injection via options login page - if the submitted

    email address looking invalid it would be echo'd back to the user - and
    so anything supplied as the email address would be displayed


### [[USN-4355-1](https://usn.ubuntu.com/4355-1/)] PulseAudio vulnerability [04:23] {#usn-4355-1-pulseaudio-vulnerability-04-23}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-11931](https://ubuntu.com/security/CVE-2020-11931) <!-- medium -->
-   Snap policy module for pulseaudio - only exists in Ubuntu - is designed
    to allow snapd to mediate access to pulseaudio for snaps - so if plug
    pulseaudio (or audio-playback / record) interface(s) can talk to
    pulseaudio but then should only be able to do certain actions - however
    the policy did not restrict unloading the policy module itself so any
    snap with access could unload the policy and then have unrestricted
    access to pulseaudio - so could say record audio when only audio-playback
    interface was connected.


### [[USN-4357-1](https://usn.ubuntu.com/4357-1/)] IPRoute vulnerability [05:39] {#usn-4357-1-iproute-vulnerability-05-39}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-20795](https://ubuntu.com/security/CVE-2019-20795) <!-- medium -->
-   UAF when listing network namespaces (ip netns list)


### [[USN-4356-1](https://usn.ubuntu.com/4356-1/)] Squid vulnerabilities [05:59] {#usn-4356-1-squid-vulnerabilities-05-59}

-   4 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-11945](https://ubuntu.com/security/CVE-2020-11945) <!-- medium -->
    -   [CVE-2019-18860](https://ubuntu.com/security/CVE-2019-18860) <!-- low -->
    -   [CVE-2019-12521](https://ubuntu.com/security/CVE-2019-12521) <!-- medium -->
    -   [CVE-2019-12519](https://ubuntu.com/security/CVE-2019-12519) <!-- medium -->
-   Possible cache poisoning, crash or RE from malicious remote servers via
    Edge Side Includes
-   Failure to properly validate hostname in cachemanager for certain
    browsers -&gt; HTML injection
-   Nonce reply due to failure to properly validate Digest Authentication
    nonce values


### [[USN-3911-2](https://usn.ubuntu.com/3911-2/)] file regression [06:40] {#usn-3911-2-file-regression-06-40}

-   Affecting Xenial (16.04 LTS), Bionic (18.04 LTS)
-   [Episode 25](https://ubuntusecuritypodcast.org/episode-25/) - [USN-3911-1](https://usn.ubuntu.com/3911-1/) - update for file caused a regression where the
    name of the interpreter parsed by file would be truncated and so the
    output would be incorrect - used sizeof(var) - but var is a char \* and so
    sizeof() is size of a pointer - should instead be the length of the
    string - updated to use strlen(var) +1


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex talks Rust with Tim McNamara [08:14] {#alex-talks-rust-with-tim-mcnamara-08-14}

-   <https://tim.mcnamara.nz/>
-   <https://www.manning.com/books/rust-in-action>
-   Offer for listeners:
    -   40% off all Manning Products in all forms using the code: podubuntu20
-   5 copies of Rust in Action e-book to giveaway
    -   Send us your favourite security tools written in Rust or your thoughts
        on Rust in Ubuntu to win a copy


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)