+++
title = "Episode 217"
description = """
  For the first episode of 2024 we take a look at the case of a raft of bogus FOSS
  CVEs reported on full-disclosure as well as AppSec tools in Ubuntu and the EOL
  announcement for 23.04, plus we cover vulnerabilities in the Linux kernel, Puma,
  Paramiko and more.
  """
date = 2024-02-02T19:23:00+10:30
lastmod = 2024-02-02T19:24:27+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E217.mp3"
podcast_duration = 906
podcast_bytes = 15306664
permalink = "https://ubuntusecuritypodcast.org/episode-217/"
guid = "56d36447aec636e059c32ae020f68d2e342acbf89085e34d02f4d09443e16a2945e20812f5bbb3aab5a6b8e636e0da5f19b9a1e7babeaac4a4d0bff4d46f923a"
+++

## Overview {#overview}

For the first episode of 2024 we take a look at the case of a raft of bogus FOSS
CVEs reported on full-disclosure as well as AppSec tools in Ubuntu and the EOL
announcement for 23.04, plus we cover vulnerabilities in the Linux kernel, Puma,
Paramiko and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

81 unique CVEs addressed


### [[USN-6601-1](https://ubuntu.com/security/notices/USN-6601-1)] Linux kernel vulnerability (01:16) {#usn-6601-1-linux-kernel-vulnerability--01-16}

-   1 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
-   UAF in IGMP protocol (allows multiple devices to share the same IPv4 address
    and hence all receive the same data via multicasting - often used for things
    like video streaming) - race condition between two different threads in the
    handling of a timer which could cause the timer to be registered on an object
    that is then later freed by another thread - when the timer then fires the
    thread will try and access the object which has now been freed
-   Can be exploited by an unprivileged local user in a user namespace


### [[USN-6602-1](https://ubuntu.com/security/notices/USN-6602-1)] Linux kernel vulnerabilities (02:23) {#usn-6602-1-linux-kernel-vulnerabilities--02-23}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
    -   [CVE-2023-6931](https://ubuntu.com/security/CVE-2023-6931) <!-- high -->
    -   [CVE-2023-6606](https://ubuntu.com/security/CVE-2023-6606) <!-- medium -->
    -   [CVE-2023-45863](https://ubuntu.com/security/CVE-2023-45863) <!-- medium -->
    -   [CVE-2023-20588](https://ubuntu.com/security/CVE-2023-20588) <!-- high -->
-   IGMP UAF
-   OOB write in perf - didn't properly check the size of all events when
    processing them - direct memory corruption able to be triggered by a local
    user - and on older kernels like the 4.4 kernel shipped in Ubuntu 16.04 this
    can be done from userspace directly
-   Divide-by-zero error on some AMD processors could return speculative data -&gt;
    info leak ([[USN-6383-1] Linux kernel vulnerabilities from Episode 210]({{< relref "episode-210#usn-6383-1-linux-kernel-vulnerabilities--11-15" >}}))


### [[USN-6603-1](https://ubuntu.com/security/notices/USN-6603-1)] Linux kernel (AWS) vulnerabilities {#usn-6603-1-linux-kernel--aws--vulnerabilities}

-   3 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
    -   [CVE-2023-6931](https://ubuntu.com/security/CVE-2023-6931) <!-- high -->
    -   [CVE-2023-6606](https://ubuntu.com/security/CVE-2023-6606) <!-- medium -->


### [[USN-6604-1](https://ubuntu.com/security/notices/USN-6604-1)] Linux kernel vulnerabilities {#usn-6604-1-linux-kernel-vulnerabilities}

-   6 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
    -   [CVE-2023-6931](https://ubuntu.com/security/CVE-2023-6931) <!-- high -->
    -   [CVE-2023-6606](https://ubuntu.com/security/CVE-2023-6606) <!-- medium -->
    -   [CVE-2023-45863](https://ubuntu.com/security/CVE-2023-45863) <!-- medium -->
    -   [CVE-2023-20588](https://ubuntu.com/security/CVE-2023-20588) <!-- high -->
    -   [CVE-2023-1079](https://ubuntu.com/security/CVE-2023-1079) <!-- low -->


### [[USN-6604-2](https://ubuntu.com/security/notices/USN-6604-2)] Linux kernel (Azure) vulnerabilities {#usn-6604-2-linux-kernel--azure--vulnerabilities}

-   6 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
    -   [CVE-2023-6931](https://ubuntu.com/security/CVE-2023-6931) <!-- high -->
    -   [CVE-2023-6606](https://ubuntu.com/security/CVE-2023-6606) <!-- medium -->
    -   [CVE-2023-45863](https://ubuntu.com/security/CVE-2023-45863) <!-- medium -->
    -   [CVE-2023-20588](https://ubuntu.com/security/CVE-2023-20588) <!-- high -->
    -   [CVE-2023-1079](https://ubuntu.com/security/CVE-2023-1079) <!-- low -->


### [[USN-6605-1](https://ubuntu.com/security/notices/USN-6605-1)] Linux kernel vulnerabilities {#usn-6605-1-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
    -   [CVE-2023-6931](https://ubuntu.com/security/CVE-2023-6931) <!-- high -->
    -   [CVE-2023-6606](https://ubuntu.com/security/CVE-2023-6606) <!-- medium -->
    -   [CVE-2023-6040](https://ubuntu.com/security/CVE-2023-6040) <!-- medium -->


### [[USN-6605-2](https://ubuntu.com/security/notices/USN-6605-2)] Linux kernel (KVM) vulnerabilities {#usn-6605-2-linux-kernel--kvm--vulnerabilities}

-   4 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
    -   [CVE-2023-6931](https://ubuntu.com/security/CVE-2023-6931) <!-- high -->
    -   [CVE-2023-6606](https://ubuntu.com/security/CVE-2023-6606) <!-- medium -->
    -   [CVE-2023-6040](https://ubuntu.com/security/CVE-2023-6040) <!-- medium -->


### [[USN-6606-1](https://ubuntu.com/security/notices/USN-6606-1)] Linux kernel (OEM) vulnerabilities (03:04) {#usn-6606-1-linux-kernel--oem--vulnerabilities--03-04}

-   5 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2024-0193](https://ubuntu.com/security/CVE-2024-0193) <!-- high -->
    -   [CVE-2023-6931](https://ubuntu.com/security/CVE-2023-6931) <!-- high -->
    -   [CVE-2023-6817](https://ubuntu.com/security/CVE-2023-6817) <!-- high -->
    -   [CVE-2023-6606](https://ubuntu.com/security/CVE-2023-6606) <!-- medium -->
    -   [CVE-2023-51779](https://ubuntu.com/security/CVE-2023-51779) <!-- medium -->
-   perf OOB write
-   2 very similar UAFs in netfilter - both require `CAP_NET_ADMIN` to be able to
    exploit (ie to create a netfilter chain etc) but this can easily be obtained
    in an unprivileged user namespace -&gt; privesc for unprivileged local user


### [[USN-6608-1](https://ubuntu.com/security/notices/USN-6608-1)] Linux kernel vulnerabilities {#usn-6608-1-linux-kernel-vulnerabilities}

-   5 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-0193](https://ubuntu.com/security/CVE-2024-0193) <!-- high -->
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
    -   [CVE-2023-6931](https://ubuntu.com/security/CVE-2023-6931) <!-- high -->
    -   [CVE-2023-6817](https://ubuntu.com/security/CVE-2023-6817) <!-- high -->
    -   [CVE-2023-6606](https://ubuntu.com/security/CVE-2023-6606) <!-- medium -->


### [[USN-6609-1](https://ubuntu.com/security/notices/USN-6609-1)] Linux kernel vulnerabilities {#usn-6609-1-linux-kernel-vulnerabilities}

-   6 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-0193](https://ubuntu.com/security/CVE-2024-0193) <!-- high -->
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
    -   [CVE-2023-6931](https://ubuntu.com/security/CVE-2023-6931) <!-- high -->
    -   [CVE-2023-6817](https://ubuntu.com/security/CVE-2023-6817) <!-- high -->
    -   [CVE-2023-6606](https://ubuntu.com/security/CVE-2023-6606) <!-- medium -->
    -   [CVE-2023-6040](https://ubuntu.com/security/CVE-2023-6040) <!-- medium -->


### [[USN-6609-2](https://ubuntu.com/security/notices/USN-6609-2)] Linux kernel (NVIDIA) vulnerabilities {#usn-6609-2-linux-kernel--nvidia--vulnerabilities}

-   6 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2024-0193](https://ubuntu.com/security/CVE-2024-0193) <!-- high -->
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
    -   [CVE-2023-6931](https://ubuntu.com/security/CVE-2023-6931) <!-- high -->
    -   [CVE-2023-6817](https://ubuntu.com/security/CVE-2023-6817) <!-- high -->
    -   [CVE-2023-6606](https://ubuntu.com/security/CVE-2023-6606) <!-- medium -->
    -   [CVE-2023-6040](https://ubuntu.com/security/CVE-2023-6040) <!-- medium -->


### [[USN-6607-1](https://ubuntu.com/security/notices/USN-6607-1)] Linux kernel (Azure) vulnerabilities (03:32) {#usn-6607-1-linux-kernel--azure--vulnerabilities--03-32}

-   7 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-0193](https://ubuntu.com/security/CVE-2024-0193) <!-- high -->
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
    -   [CVE-2023-6931](https://ubuntu.com/security/CVE-2023-6931) <!-- high -->
    -   [CVE-2023-6817](https://ubuntu.com/security/CVE-2023-6817) <!-- high -->
    -   [CVE-2023-6606](https://ubuntu.com/security/CVE-2023-6606) <!-- medium -->
    -   [CVE-2023-6040](https://ubuntu.com/security/CVE-2023-6040) <!-- medium -->
    -   [CVE-2023-5345](https://ubuntu.com/security/CVE-2023-5345) <!-- high -->
-   2 netfilter UAFs, IGMP UAF, perf OOB write
-   UAF in SMB client implementation - local crash / privesc


### [[USN-6596-1](https://ubuntu.com/security/notices/USN-6596-1)] Apache::Session::LDAP vulnerability (03:45) {#usn-6596-1-apache-session-ldap-vulnerability--03-45}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2020-36658](https://ubuntu.com/security/CVE-2020-36658) <!-- medium -->
-   Would not check the validity of an X.509 certificate since uses the Net::LDAPS
    Perl module which by default doesn't do this and requires applications to
    explicitly instruct it to do so


### [[USN-6597-1](https://ubuntu.com/security/notices/USN-6597-1)] Puma vulnerability (04:24) {#usn-6597-1-puma-vulnerability--04-24}

-   1 CVEs addressed in Lunar (23.04), Mantic (23.10)
    -   [CVE-2024-21647](https://ubuntu.com/security/CVE-2024-21647) <!-- medium -->
-   HTTP server for Ruby/Rack applications that uses threading for improved performance
-   Vulnerable to a HTTP request smuggling attack since it would fail to properly
    parse packets with chunked transfer encoding
-   Also failed to set a limit on the size of chunk extensions which could then
    allow a CPU or network-bandwidth based DoS attack


### [[USN-6598-1](https://ubuntu.com/security/notices/USN-6598-1)] Paramiko vulnerability (04:58) {#usn-6598-1-paramiko-vulnerability--04-58}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-48795](https://ubuntu.com/security/CVE-2023-48795) <!-- medium -->
-   Fix for [Terrapin attack](https://terrapin-attack.com/) disclosed back in December - flaw in SSH protocol
    itself which allows an attacker who can interpose on the connection to drop
    the `EXT_INFO` message which is sent during the handshake to negotiate various
    protocol extensions in a way that neither the client or server will notice
    (since they can just send an empty ignored packet with the same sequence
    number).  This can be done quite easily by an attacker since during this stage
    of the connection there is no encryption in place. End result is the attacker
    can cause either a loss of integrity (since this won't be detected by the
    other party) or potentially to compromise the key exchange itself and hence
    cause a loss of confidentiality as well


### [[USN-6599-1](https://ubuntu.com/security/notices/USN-6599-1)] Jinja2 vulnerabilities {#usn-6599-1-jinja2-vulnerabilities}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-22195](https://ubuntu.com/security/CVE-2024-22195) <!-- medium -->
    -   [CVE-2020-28493](https://ubuntu.com/security/CVE-2020-28493) <!-- low -->


### [[USN-6600-1](https://ubuntu.com/security/notices/USN-6600-1)] MariaDB vulnerabilities {#usn-6600-1-mariadb-vulnerabilities}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-22084](https://ubuntu.com/security/CVE-2023-22084) <!-- medium -->
    -   [CVE-2022-47015](https://ubuntu.com/security/CVE-2022-47015) <!-- medium -->


### [[USN-6611-1](https://ubuntu.com/security/notices/USN-6611-1)] Exim vulnerability {#usn-6611-1-exim-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-51766](https://ubuntu.com/security/CVE-2023-51766) <!-- medium -->


### [[USN-6610-1](https://ubuntu.com/security/notices/USN-6610-1)] Firefox vulnerabilities {#usn-6610-1-firefox-vulnerabilities}

-   14 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2024-0746](https://ubuntu.com/security/CVE-2024-0746) <!-- low -->
    -   [CVE-2024-0755](https://ubuntu.com/security/CVE-2024-0755) <!-- medium -->
    -   [CVE-2024-0754](https://ubuntu.com/security/CVE-2024-0754) <!-- low -->
    -   [CVE-2024-0753](https://ubuntu.com/security/CVE-2024-0753) <!-- medium -->
    -   [CVE-2024-0751](https://ubuntu.com/security/CVE-2024-0751) <!-- low -->
    -   [CVE-2024-0750](https://ubuntu.com/security/CVE-2024-0750) <!-- medium -->
    -   [CVE-2024-0749](https://ubuntu.com/security/CVE-2024-0749) <!-- medium -->
    -   [CVE-2024-0748](https://ubuntu.com/security/CVE-2024-0748) <!-- medium -->
    -   [CVE-2024-0747](https://ubuntu.com/security/CVE-2024-0747) <!-- medium -->
    -   [CVE-2024-0745](https://ubuntu.com/security/CVE-2024-0745) <!-- medium -->
    -   [CVE-2024-0744](https://ubuntu.com/security/CVE-2024-0744) <!-- medium -->
    -   [CVE-2024-0743](https://ubuntu.com/security/CVE-2024-0743) <!-- medium -->
    -   [CVE-2024-0742](https://ubuntu.com/security/CVE-2024-0742) <!-- medium -->
    -   [CVE-2024-0741](https://ubuntu.com/security/CVE-2024-0741) <!-- medium -->


### [[USN-6613-1](https://ubuntu.com/security/notices/USN-6613-1)] Ceph vulnerability {#usn-6613-1-ceph-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-43040](https://ubuntu.com/security/CVE-2023-43040) <!-- medium -->


### [[USN-6612-1](https://ubuntu.com/security/notices/USN-6612-1)] TinyXML vulnerability {#usn-6612-1-tinyxml-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-34194](https://ubuntu.com/security/CVE-2023-34194) <!-- medium -->


### [[USN-6614-1](https://ubuntu.com/security/notices/USN-6614-1)] amanda vulnerability {#usn-6614-1-amanda-vulnerability}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-30577](https://ubuntu.com/security/CVE-2023-30577) <!-- medium -->


### [[USN-6615-1](https://ubuntu.com/security/notices/USN-6615-1)] MySQL vulnerabilities {#usn-6615-1-mysql-vulnerabilities}

-   22 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-20985](https://ubuntu.com/security/CVE-2024-20985) <!-- medium -->
    -   [CVE-2024-20984](https://ubuntu.com/security/CVE-2024-20984) <!-- medium -->
    -   [CVE-2024-20983](https://ubuntu.com/security/CVE-2024-20983) <!-- medium -->
    -   [CVE-2024-20982](https://ubuntu.com/security/CVE-2024-20982) <!-- medium -->
    -   [CVE-2024-20981](https://ubuntu.com/security/CVE-2024-20981) <!-- medium -->
    -   [CVE-2024-20978](https://ubuntu.com/security/CVE-2024-20978) <!-- medium -->
    -   [CVE-2024-20977](https://ubuntu.com/security/CVE-2024-20977) <!-- medium -->
    -   [CVE-2024-20976](https://ubuntu.com/security/CVE-2024-20976) <!-- medium -->
    -   [CVE-2024-20974](https://ubuntu.com/security/CVE-2024-20974) <!-- medium -->
    -   [CVE-2024-20973](https://ubuntu.com/security/CVE-2024-20973) <!-- medium -->
    -   [CVE-2024-20972](https://ubuntu.com/security/CVE-2024-20972) <!-- medium -->
    -   [CVE-2024-20971](https://ubuntu.com/security/CVE-2024-20971) <!-- medium -->
    -   [CVE-2024-20970](https://ubuntu.com/security/CVE-2024-20970) <!-- medium -->
    -   [CVE-2024-20969](https://ubuntu.com/security/CVE-2024-20969) <!-- medium -->
    -   [CVE-2024-20967](https://ubuntu.com/security/CVE-2024-20967) <!-- medium -->
    -   [CVE-2024-20966](https://ubuntu.com/security/CVE-2024-20966) <!-- medium -->
    -   [CVE-2024-20965](https://ubuntu.com/security/CVE-2024-20965) <!-- medium -->
    -   [CVE-2024-20964](https://ubuntu.com/security/CVE-2024-20964) <!-- medium -->
    -   [CVE-2024-20963](https://ubuntu.com/security/CVE-2024-20963) <!-- medium -->
    -   [CVE-2024-20962](https://ubuntu.com/security/CVE-2024-20962) <!-- medium -->
    -   [CVE-2024-20961](https://ubuntu.com/security/CVE-2024-20961) <!-- medium -->
    -   [CVE-2024-20960](https://ubuntu.com/security/CVE-2024-20960) <!-- medium -->


### [[USN-6616-1](https://ubuntu.com/security/notices/USN-6616-1)] OpenLDAP vulnerability {#usn-6616-1-openldap-vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-2953](https://ubuntu.com/security/CVE-2023-2953) <!-- low -->


### [[USN-6587-3](https://ubuntu.com/security/notices/USN-6587-3)] X.Org X Server regression {#usn-6587-3-x-dot-org-x-server-regression}

-   6 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-21886](https://ubuntu.com/security/CVE-2024-21886) <!-- medium -->
    -   [CVE-2024-21885](https://ubuntu.com/security/CVE-2024-21885) <!-- medium -->
    -   [CVE-2024-0409](https://ubuntu.com/security/CVE-2024-0409) <!-- medium -->
    -   [CVE-2024-0408](https://ubuntu.com/security/CVE-2024-0408) <!-- medium -->
    -   [CVE-2024-0229](https://ubuntu.com/security/CVE-2024-0229) <!-- medium -->
    -   [CVE-2023-6816](https://ubuntu.com/security/CVE-2023-6816) <!-- medium -->


### [[USN-6618-1](https://ubuntu.com/security/notices/USN-6618-1)] Pillow vulnerabilities {#usn-6618-1-pillow-vulnerabilities}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-50447](https://ubuntu.com/security/CVE-2023-50447) <!-- medium -->
    -   [CVE-2023-44271](https://ubuntu.com/security/CVE-2023-44271) <!-- low -->


### [[USN-6617-1](https://ubuntu.com/security/notices/USN-6617-1)] libde265 vulnerabilities {#usn-6617-1-libde265-vulnerabilities}

-   14 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2021-36408](https://ubuntu.com/security/CVE-2021-36408) <!-- medium -->
    -   [CVE-2020-21606](https://ubuntu.com/security/CVE-2020-21606) <!-- medium -->
    -   [CVE-2020-21598](https://ubuntu.com/security/CVE-2020-21598) <!-- medium -->
    -   [CVE-2020-21597](https://ubuntu.com/security/CVE-2020-21597) <!-- medium -->
    -   [CVE-2020-21605](https://ubuntu.com/security/CVE-2020-21605) <!-- medium -->
    -   [CVE-2020-21604](https://ubuntu.com/security/CVE-2020-21604) <!-- medium -->
    -   [CVE-2020-21603](https://ubuntu.com/security/CVE-2020-21603) <!-- medium -->
    -   [CVE-2020-21602](https://ubuntu.com/security/CVE-2020-21602) <!-- medium -->
    -   [CVE-2020-21601](https://ubuntu.com/security/CVE-2020-21601) <!-- medium -->
    -   [CVE-2020-21600](https://ubuntu.com/security/CVE-2020-21600) <!-- medium -->
    -   [CVE-2020-21599](https://ubuntu.com/security/CVE-2020-21599) <!-- medium -->
    -   [CVE-2020-21596](https://ubuntu.com/security/CVE-2020-21596) <!-- medium -->
    -   [CVE-2020-21595](https://ubuntu.com/security/CVE-2020-21595) <!-- medium -->
    -   [CVE-2020-21594](https://ubuntu.com/security/CVE-2020-21594) <!-- medium -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 23.04 (Lunar Lobster) EOL (06:48) {#ubuntu-23-dot-04--lunar-lobster--eol--06-48}

-   Released back in April 2023 - like all interim releases, supported for 9 months
-   Reached EOL on 25th January - won't receive any package updates (security or
    bug fix) and will be archived to old-releases.ubuntu.com in the coming weeks
-   Urge to [upgrade to the currently supported interim release 23.10](https://help.ubuntu.com/community/ManticUpgrades) ASAP as once
    it does get archived the process to upgrade becomes harder (since you have to
    [manually update](https://help.ubuntu.com/community/EOLUpgrades) your apt sources to refer to the old-releases server first)
-   23.10 (Mantic Minotaur) will then be supported for about 5 more months until
    July this year


### Awesome AppSec in Ubuntu (08:22) {#awesome-appsec-in-ubuntu--08-22}

-   <https://discourse.ubuntu.com/t/awesome-appsec-in-ubuntu/41922/1>
-   Andrei has compiled a list of tools available in Ubuntu which can be used by
    security researchers
-   Includes tools for:
    -   Coordinated Vulnerability Disclosure
    -   Fuzzing
    -   License scanning
    -   Reverse engineering
    -   Runtime process analysis
    -   Security linting
    -   Symbolic execution
    -   Threat modelling
    -   Scanning for vulnerable dependencies
    -   Web scanning
    -   Runtime application isolation (sandboxing)
-   Whether you are an software engineer looking to make your software more secure
    or a security researcher trying to find vulns or even a security engineer
    wanting tools to help with vulnerabililty management, there is likely
    something in the list for you
-   If you find anything missing, send Andrei a PR as the list is hosted on Github


### full-disclosure spammed with zombie CVEs (09:52) {#full-disclosure-spammed-with-zombie-cves--09-52}

-   [full-disclosure](https://seclists.org/fulldisclosure/) mailing list slowly declining in popularity but was once the
    go-to place to discuss and disclose vulnerabilities
-   In January, saw a large increase in the number of messages posted (75 compared
    to 15-30 which was the usual number posted for any month in 2023)
-   Meng Ruijie from National University in Singapore posted 36 different CVE
    reports across a large range of OSS projects, including Redis Raft, TinyDTLS,
    Mesa, ncurses, vim, GTK and more - and almost all of them were described as
    NULL pointer dereferences or buffer overflows etc
-   Alan Coppersmith [raised this](https://marc.info/?l=oss-security&m=170630598729784) on the oss-security mailing list, since none of
    these issues had been raised privately with any of these projects but also
    that most of the CVE descriptions appeared to be quite bogus - e.g. for a CVE
    in Mesa, where Meng describes them as a NULL pointer deref the associated
    issue that the CVE points to in the upstream mesa gitlab describes a possible
    OOB read but where there is no good evidence that this is able to be
    influenced by the caller and hence there is no evidence that there is a
    security issue here at all
-   They appear to have been assigned by just looking for either reports in
    upstream issue trackers that mention possible security issues OR upstream
    commits that mention words like NULL pointer dereference but without any
    consideration as to whether these are actual vulnerabilities
    -   For example - just because some code may potentially dereference a NULL
        pointer, if the caller cannot influence that to occur then there is no way
        to trigger it and so it is not an actual vulnerability
-   Likely almost all of these CVEs will get disputed and so provide no real
    value - also they waste the time of OSS developers to respond to these reports
    as well as distros and others to investigate them etc


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
