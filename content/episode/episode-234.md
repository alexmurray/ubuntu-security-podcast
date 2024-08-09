+++
title = "Episode 234"
description = """
  This week we take a deep dive behind-the-scenes look into how the team handled a
  recent report from Snyk's Security Lab of a local privilege escalation
  vulnerability in `wpa_supplicant` plus we cover security updates in Prometheus
  Alertmanager, OpenSSL, Exim, snapd, Gross, curl and more.
  """
date = 2024-08-09T19:22:00+09:30
lastmod = 2024-08-09T19:27:55+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E234.mp3"
podcast_duration = 1751
podcast_bytes = 29004202
permalink = "https://ubuntusecuritypodcast.org/episode-234/"
guid = "04b1a93e2d4d7f4fea77cc02ee6d87880ec672bd9ebf8b726787a02b2d62a6af6373dfcf2df8c259b2e85c3b8c7fd45b1fb30bbf960b7e48fcd2cdb6b0013d61"
+++

## Overview {#overview}

This week we take a deep dive behind-the-scenes look into how the team handled a
recent report from Snyk's Security Lab of a local privilege escalation
vulnerability in `wpa_supplicant` plus we cover security updates in Prometheus
Alertmanager, OpenSSL, Exim, snapd, Gross, curl and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

185 unique CVEs addressed


### [[USN-6935-1](https://ubuntu.com/security/notices/USN-6935-1)] Prometheus Alertmanager vulnerability (01:08) {#usn-6935-1-prometheus-alertmanager-vulnerability--01-08}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-40577](https://ubuntu.com/security/CVE-2023-40577) <!-- medium -->
-   Stored XSS via the Alertmanager UI - alerts API allows to specify a URL which
    should be able to be called interactively by the user from the UI - an
    attacker instead could POST to this with arbitrary JavaScript which would then
    get included in the generated HTML and hence run on users when viewing the UI
-   Fixed to validate this field is actually a URL before including in the
    generated UI page


### [[USN-6938-1](https://ubuntu.com/security/notices/USN-6938-1)] Linux kernel vulnerabilities (02:05) {#usn-6938-1-linux-kernel-vulnerabilities--02-05}

-   31 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2024-35978](https://ubuntu.com/security/CVE-2024-35978) <!-- medium -->
    -   [CVE-2024-35984](https://ubuntu.com/security/CVE-2024-35984) <!-- medium -->
    -   [CVE-2024-35997](https://ubuntu.com/security/CVE-2024-35997) <!-- medium -->
    -   [CVE-2024-26840](https://ubuntu.com/security/CVE-2024-26840) <!-- medium -->
    -   [CVE-2024-27020](https://ubuntu.com/security/CVE-2024-27020) <!-- medium -->
    -   [CVE-2023-52752](https://ubuntu.com/security/CVE-2023-52752) <!-- medium -->
    -   [CVE-2021-47194](https://ubuntu.com/security/CVE-2021-47194) <!-- medium -->
    -   [CVE-2021-46960](https://ubuntu.com/security/CVE-2021-46960) <!-- medium -->
    -   [CVE-2024-26884](https://ubuntu.com/security/CVE-2024-26884) <!-- medium -->
    -   [CVE-2024-36016](https://ubuntu.com/security/CVE-2024-36016) <!-- high -->
    -   [CVE-2023-52436](https://ubuntu.com/security/CVE-2023-52436) <!-- medium -->
    -   [CVE-2024-36902](https://ubuntu.com/security/CVE-2024-36902) <!-- medium -->
    -   [CVE-2024-26886](https://ubuntu.com/security/CVE-2024-26886) <!-- medium -->
    -   [CVE-2023-52469](https://ubuntu.com/security/CVE-2023-52469) <!-- low -->
    -   [CVE-2024-26923](https://ubuntu.com/security/CVE-2024-26923) <!-- high -->
    -   [CVE-2023-52444](https://ubuntu.com/security/CVE-2023-52444) <!-- medium -->
    -   [CVE-2023-52620](https://ubuntu.com/security/CVE-2023-52620) <!-- high -->
    -   [CVE-2021-46933](https://ubuntu.com/security/CVE-2021-46933) <!-- medium -->
    -   [CVE-2024-35982](https://ubuntu.com/security/CVE-2024-35982) <!-- medium -->
    -   [CVE-2023-52449](https://ubuntu.com/security/CVE-2023-52449) <!-- medium -->
    -   [CVE-2024-26934](https://ubuntu.com/security/CVE-2024-26934) <!-- medium -->
    -   [CVE-2024-26882](https://ubuntu.com/security/CVE-2024-26882) <!-- medium -->
    -   [CVE-2024-26857](https://ubuntu.com/security/CVE-2024-26857) <!-- medium -->
    -   [CVE-2021-46932](https://ubuntu.com/security/CVE-2021-46932) <!-- medium -->
    -   [CVE-2024-26901](https://ubuntu.com/security/CVE-2024-26901) <!-- medium -->
    -   [CVE-2024-25739](https://ubuntu.com/security/CVE-2024-25739) <!-- medium -->
    -   [CVE-2024-24859](https://ubuntu.com/security/CVE-2024-24859) <!-- low -->
    -   [CVE-2024-24858](https://ubuntu.com/security/CVE-2024-24858) <!-- low -->
    -   [CVE-2024-24857](https://ubuntu.com/security/CVE-2024-24857) <!-- low -->
    -   [CVE-2023-46343](https://ubuntu.com/security/CVE-2023-46343) <!-- medium -->
    -   [CVE-2022-48619](https://ubuntu.com/security/CVE-2022-48619) <!-- medium -->
-   4.4 - generic, AWS, KVM, Low Latency, Virtual


### [[USN-6922-2](https://ubuntu.com/security/notices/USN-6922-2)] Linux kernel vulnerabilities {#usn-6922-2-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2024-25739](https://ubuntu.com/security/CVE-2024-25739) <!-- medium -->
    -   [CVE-2024-24859](https://ubuntu.com/security/CVE-2024-24859) <!-- low -->
    -   [CVE-2024-24858](https://ubuntu.com/security/CVE-2024-24858) <!-- low -->
    -   [CVE-2024-24857](https://ubuntu.com/security/CVE-2024-24857) <!-- low -->
-   6.5 lowlatency


### [[USN-6926-2](https://ubuntu.com/security/notices/USN-6926-2)] Linux kernel vulnerabilities {#usn-6926-2-linux-kernel-vulnerabilities}

-   30 CVEs addressed in Trusty ESM (14.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-52620](https://ubuntu.com/security/CVE-2023-52620) <!-- high -->
    -   [CVE-2023-52444](https://ubuntu.com/security/CVE-2023-52444) <!-- medium -->
    -   [CVE-2024-26901](https://ubuntu.com/security/CVE-2024-26901) <!-- medium -->
    -   [CVE-2023-52449](https://ubuntu.com/security/CVE-2023-52449) <!-- medium -->
    -   [CVE-2024-27013](https://ubuntu.com/security/CVE-2024-27013) <!-- medium -->
    -   [CVE-2024-26934](https://ubuntu.com/security/CVE-2024-26934) <!-- medium -->
    -   [CVE-2024-35978](https://ubuntu.com/security/CVE-2024-35978) <!-- medium -->
    -   [CVE-2024-27020](https://ubuntu.com/security/CVE-2024-27020) <!-- medium -->
    -   [CVE-2023-52469](https://ubuntu.com/security/CVE-2023-52469) <!-- low -->
    -   [CVE-2024-35982](https://ubuntu.com/security/CVE-2024-35982) <!-- medium -->
    -   [CVE-2024-35997](https://ubuntu.com/security/CVE-2024-35997) <!-- medium -->
    -   [CVE-2023-52443](https://ubuntu.com/security/CVE-2023-52443) <!-- medium -->
    -   [CVE-2024-36902](https://ubuntu.com/security/CVE-2024-36902) <!-- medium -->
    -   [CVE-2024-26857](https://ubuntu.com/security/CVE-2024-26857) <!-- medium -->
    -   [CVE-2024-36016](https://ubuntu.com/security/CVE-2024-36016) <!-- high -->
    -   [CVE-2023-52436](https://ubuntu.com/security/CVE-2023-52436) <!-- medium -->
    -   [CVE-2023-52752](https://ubuntu.com/security/CVE-2023-52752) <!-- medium -->
    -   [CVE-2024-26886](https://ubuntu.com/security/CVE-2024-26886) <!-- medium -->
    -   [CVE-2024-35984](https://ubuntu.com/security/CVE-2024-35984) <!-- medium -->
    -   [CVE-2023-52435](https://ubuntu.com/security/CVE-2023-52435) <!-- medium -->
    -   [CVE-2024-26840](https://ubuntu.com/security/CVE-2024-26840) <!-- medium -->
    -   [CVE-2024-26923](https://ubuntu.com/security/CVE-2024-26923) <!-- high -->
    -   [CVE-2024-26882](https://ubuntu.com/security/CVE-2024-26882) <!-- medium -->
    -   [CVE-2024-26884](https://ubuntu.com/security/CVE-2024-26884) <!-- medium -->
    -   [CVE-2024-25744](https://ubuntu.com/security/CVE-2024-25744) <!-- medium -->
    -   [CVE-2024-25739](https://ubuntu.com/security/CVE-2024-25739) <!-- medium -->
    -   [CVE-2024-24859](https://ubuntu.com/security/CVE-2024-24859) <!-- low -->
    -   [CVE-2024-24858](https://ubuntu.com/security/CVE-2024-24858) <!-- low -->
    -   [CVE-2024-24857](https://ubuntu.com/security/CVE-2024-24857) <!-- low -->
    -   [CVE-2023-46343](https://ubuntu.com/security/CVE-2023-46343) <!-- medium -->
-   4.15 Azure


### [[USN-6895-4](https://ubuntu.com/security/notices/USN-6895-4)] Linux kernel vulnerabilities {#usn-6895-4-linux-kernel-vulnerabilities}

-   100 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2024-26802](https://ubuntu.com/security/CVE-2024-26802) <!-- medium -->
    -   [CVE-2024-26664](https://ubuntu.com/security/CVE-2024-26664) <!-- medium -->
    -   [CVE-2023-52880](https://ubuntu.com/security/CVE-2023-52880) <!-- high -->
    -   [CVE-2024-26695](https://ubuntu.com/security/CVE-2024-26695) <!-- medium -->
    -   [CVE-2024-27416](https://ubuntu.com/security/CVE-2024-27416) <!-- medium -->
    -   [CVE-2024-26714](https://ubuntu.com/security/CVE-2024-26714) <!-- medium -->
    -   [CVE-2024-26603](https://ubuntu.com/security/CVE-2024-26603) <!-- medium -->
    -   [CVE-2024-26920](https://ubuntu.com/security/CVE-2024-26920) <!-- low -->
    -   [CVE-2024-26736](https://ubuntu.com/security/CVE-2024-26736) <!-- medium -->
    -   [CVE-2024-26593](https://ubuntu.com/security/CVE-2024-26593) <!-- medium -->
    -   [CVE-2024-26922](https://ubuntu.com/security/CVE-2024-26922) <!-- medium -->
    -   [CVE-2024-26600](https://ubuntu.com/security/CVE-2024-26600) <!-- medium -->
    -   [CVE-2024-26702](https://ubuntu.com/security/CVE-2024-26702) <!-- medium -->
    -   [CVE-2024-26782](https://ubuntu.com/security/CVE-2024-26782) <!-- medium -->
    -   [CVE-2024-26685](https://ubuntu.com/security/CVE-2024-26685) <!-- medium -->
    -   [CVE-2024-26691](https://ubuntu.com/security/CVE-2024-26691) <!-- medium -->
    -   [CVE-2024-26734](https://ubuntu.com/security/CVE-2024-26734) <!-- medium -->
    -   [CVE-2024-26822](https://ubuntu.com/security/CVE-2024-26822) <!-- medium -->
    -   [CVE-2024-35833](https://ubuntu.com/security/CVE-2024-35833) <!-- medium -->
    -   [CVE-2024-26792](https://ubuntu.com/security/CVE-2024-26792) <!-- medium -->
    -   [CVE-2024-26674](https://ubuntu.com/security/CVE-2024-26674) <!-- medium -->
    -   [CVE-2024-26889](https://ubuntu.com/security/CVE-2024-26889) <!-- medium -->
    -   [CVE-2024-26712](https://ubuntu.com/security/CVE-2024-26712) <!-- medium -->
    -   [CVE-2024-26917](https://ubuntu.com/security/CVE-2024-26917) <!-- medium -->
    -   [CVE-2024-26919](https://ubuntu.com/security/CVE-2024-26919) <!-- low -->
    -   [CVE-2023-52637](https://ubuntu.com/security/CVE-2023-52637) <!-- medium -->
    -   [CVE-2024-26700](https://ubuntu.com/security/CVE-2024-26700) <!-- medium -->
    -   [CVE-2024-26661](https://ubuntu.com/security/CVE-2024-26661) <!-- medium -->
    -   [CVE-2024-26926](https://ubuntu.com/security/CVE-2024-26926) <!-- medium -->
    -   [CVE-2023-52631](https://ubuntu.com/security/CVE-2023-52631) <!-- medium -->
    -   [CVE-2024-26679](https://ubuntu.com/security/CVE-2024-26679) <!-- medium -->
    -   [CVE-2024-26798](https://ubuntu.com/security/CVE-2024-26798) <!-- medium -->
    -   [CVE-2024-26667](https://ubuntu.com/security/CVE-2024-26667) <!-- medium -->
    -   [CVE-2024-26689](https://ubuntu.com/security/CVE-2024-26689) <!-- medium -->
    -   [CVE-2024-26681](https://ubuntu.com/security/CVE-2024-26681) <!-- medium -->
    -   [CVE-2024-26910](https://ubuntu.com/security/CVE-2024-26910) <!-- low -->
    -   [CVE-2024-26828](https://ubuntu.com/security/CVE-2024-26828) <!-- high -->
    -   [CVE-2024-26790](https://ubuntu.com/security/CVE-2024-26790) <!-- medium -->
    -   [CVE-2024-26606](https://ubuntu.com/security/CVE-2024-26606) <!-- medium -->
    -   [CVE-2024-26825](https://ubuntu.com/security/CVE-2024-26825) <!-- medium -->
    -   [CVE-2024-26677](https://ubuntu.com/security/CVE-2024-26677) <!-- medium -->
    -   [CVE-2024-26722](https://ubuntu.com/security/CVE-2024-26722) <!-- medium -->
    -   [CVE-2024-26923](https://ubuntu.com/security/CVE-2024-26923) <!-- high -->
    -   [CVE-2024-26803](https://ubuntu.com/security/CVE-2024-26803) <!-- medium -->
    -   [CVE-2024-26898](https://ubuntu.com/security/CVE-2024-26898) <!-- medium -->
    -   [CVE-2023-52642](https://ubuntu.com/security/CVE-2023-52642) <!-- low -->
    -   [CVE-2024-26660](https://ubuntu.com/security/CVE-2024-26660) <!-- medium -->
    -   [CVE-2024-26716](https://ubuntu.com/security/CVE-2024-26716) <!-- medium -->
    -   [CVE-2023-52645](https://ubuntu.com/security/CVE-2023-52645) <!-- medium -->
    -   [CVE-2024-26602](https://ubuntu.com/security/CVE-2024-26602) <!-- medium -->
    -   [CVE-2024-26711](https://ubuntu.com/security/CVE-2024-26711) <!-- medium -->
    -   [CVE-2024-26826](https://ubuntu.com/security/CVE-2024-26826) <!-- medium -->
    -   [CVE-2024-26601](https://ubuntu.com/security/CVE-2024-26601) <!-- medium -->
    -   [CVE-2024-26890](https://ubuntu.com/security/CVE-2024-26890) <!-- medium -->
    -   [CVE-2024-26698](https://ubuntu.com/security/CVE-2024-26698) <!-- medium -->
    -   [CVE-2024-26693](https://ubuntu.com/security/CVE-2024-26693) <!-- medium -->
    -   [CVE-2024-26665](https://ubuntu.com/security/CVE-2024-26665) <!-- medium -->
    -   [CVE-2024-26676](https://ubuntu.com/security/CVE-2024-26676) <!-- medium -->
    -   [CVE-2024-26824](https://ubuntu.com/security/CVE-2024-26824) <!-- medium -->
    -   [CVE-2024-26838](https://ubuntu.com/security/CVE-2024-26838) <!-- medium -->
    -   [CVE-2024-26720](https://ubuntu.com/security/CVE-2024-26720) <!-- medium -->
    -   [CVE-2024-26666](https://ubuntu.com/security/CVE-2024-26666) <!-- medium -->
    -   [CVE-2024-26718](https://ubuntu.com/security/CVE-2024-26718) <!-- medium -->
    -   [CVE-2024-26723](https://ubuntu.com/security/CVE-2024-26723) <!-- medium -->
    -   [CVE-2024-26675](https://ubuntu.com/security/CVE-2024-26675) <!-- medium -->
    -   [CVE-2024-26680](https://ubuntu.com/security/CVE-2024-26680) <!-- medium -->
    -   [CVE-2024-26642](https://ubuntu.com/security/CVE-2024-26642) <!-- high -->
    -   [CVE-2024-26710](https://ubuntu.com/security/CVE-2024-26710) <!-- medium -->
    -   [CVE-2024-26696](https://ubuntu.com/security/CVE-2024-26696) <!-- medium -->
    -   [CVE-2024-26748](https://ubuntu.com/security/CVE-2024-26748) <!-- medium -->
    -   [CVE-2024-26717](https://ubuntu.com/security/CVE-2024-26717) <!-- medium -->
    -   [CVE-2024-26735](https://ubuntu.com/security/CVE-2024-26735) <!-- medium -->
    -   [CVE-2024-26916](https://ubuntu.com/security/CVE-2024-26916) <!-- medium -->
    -   [CVE-2024-26697](https://ubuntu.com/security/CVE-2024-26697) <!-- medium -->
    -   [CVE-2024-26829](https://ubuntu.com/security/CVE-2024-26829) <!-- medium -->
    -   [CVE-2024-26715](https://ubuntu.com/security/CVE-2024-26715) <!-- medium -->
    -   [CVE-2024-26694](https://ubuntu.com/security/CVE-2024-26694) <!-- medium -->
    -   [CVE-2024-26830](https://ubuntu.com/security/CVE-2024-26830) <!-- medium -->
    -   [CVE-2024-26726](https://ubuntu.com/security/CVE-2024-26726) <!-- medium -->
    -   [CVE-2024-26719](https://ubuntu.com/security/CVE-2024-26719) <!-- medium -->
    -   [CVE-2024-26820](https://ubuntu.com/security/CVE-2024-26820) <!-- low -->
    -   [CVE-2024-26707](https://ubuntu.com/security/CVE-2024-26707) <!-- medium -->
    -   [CVE-2024-26818](https://ubuntu.com/security/CVE-2024-26818) <!-- low -->
    -   [CVE-2024-26733](https://ubuntu.com/security/CVE-2024-26733) <!-- medium -->
    -   [CVE-2024-26688](https://ubuntu.com/security/CVE-2024-26688) <!-- medium -->
    -   [CVE-2023-52643](https://ubuntu.com/security/CVE-2023-52643) <!-- low -->
    -   [CVE-2024-26703](https://ubuntu.com/security/CVE-2024-26703) <!-- medium -->
    -   [CVE-2024-26831](https://ubuntu.com/security/CVE-2024-26831) <!-- medium -->
    -   [CVE-2024-26789](https://ubuntu.com/security/CVE-2024-26789) <!-- medium -->
    -   [CVE-2024-26662](https://ubuntu.com/security/CVE-2024-26662) <!-- medium -->
    -   [CVE-2024-26663](https://ubuntu.com/security/CVE-2024-26663) <!-- medium -->
    -   [CVE-2024-26708](https://ubuntu.com/security/CVE-2024-26708) <!-- medium -->
    -   [CVE-2024-26659](https://ubuntu.com/security/CVE-2024-26659) <!-- medium -->
    -   [CVE-2024-26684](https://ubuntu.com/security/CVE-2024-26684) <!-- medium -->
    -   [CVE-2023-52638](https://ubuntu.com/security/CVE-2023-52638) <!-- medium -->
    -   [CVE-2024-24861](https://ubuntu.com/security/CVE-2024-24861) <!-- medium -->
    -   [CVE-2024-23307](https://ubuntu.com/security/CVE-2024-23307) <!-- low -->
    -   [CVE-2024-1151](https://ubuntu.com/security/CVE-2024-1151) <!-- medium -->
    -   [CVE-2024-0841](https://ubuntu.com/security/CVE-2024-0841) <!-- low -->
    -   [CVE-2023-6270](https://ubuntu.com/security/CVE-2023-6270) <!-- high -->
-   6.5 OEM


### [[USN-6937-1](https://ubuntu.com/security/notices/USN-6937-1)] OpenSSL vulnerabilities (03:04) {#usn-6937-1-openssl-vulnerabilities--03-04}

-   4 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-5535](https://ubuntu.com/security/CVE-2024-5535) <!-- low -->
    -   [CVE-2024-4741](https://ubuntu.com/security/CVE-2024-4741) <!-- low -->
    -   [CVE-2024-4603](https://ubuntu.com/security/CVE-2024-4603) <!-- low -->
    -   [CVE-2024-2511](https://ubuntu.com/security/CVE-2024-2511) <!-- low -->
-   Four low priority issues
    -   Possible UAF in `SSL_free_buffers` API - requires an application to directly
        call this function - across the entire Ubuntu package ecosystem there
        doesn't appear to be any packages that do this so highly unlikely to be an
        issue in practice
    -   Similarly, in another rarely used function `SSL_select_next_proto` - if called
        with an empty buffer list would read other private memory - ie OOB read -
        and potentially then either crash or return private data
        -   but again this is not expected to occur in practice
    -   CPU-based DoS when validating long / crafted DSA keys
        -   simply check if using to large a modulus and error in that case
    -   If had set the `SSL_OP_NO_TICKET` option would possibly get into a state where
        the session cache would not be flushed and so would grow unbounded - memory
        based DoS


### [[USN-6913-2](https://ubuntu.com/security/notices/USN-6913-2)] phpCAS vulnerability (04:51) {#usn-6913-2-phpcas-vulnerability--04-51}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-39369](https://ubuntu.com/security/CVE-2022-39369) <!-- medium -->
-   [[USN-6913-1] phpCAS vulnerability from Episode 233]({{< relref "episode-233#usn-6913-1-phpcas-vulnerability--02-26" >}})


### [[USN-6936-1](https://ubuntu.com/security/notices/USN-6936-1)] Apache Commons Collections vulnerability (05:03) {#usn-6936-1-apache-commons-collections-vulnerability--05-03}

-   1 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2015-4852](https://ubuntu.com/security/CVE-2015-4852) <!-- low -->
-   Unsafe deserialisation - could allow to overwrite an object with an attacker
    controlled version containing code to be executed - RCE


### [[USN-6939-1](https://ubuntu.com/security/notices/USN-6939-1)] Exim vulnerability (05:31) {#usn-6939-1-exim-vulnerability--05-31}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-39929](https://ubuntu.com/security/CVE-2024-39929) <!-- medium -->
-   Mishandles multiline filename header and so a crafted value could bypass the
    MIME type extension blocking mechanism - allowing executables etc to be
    delivered to users


### [[USN-6933-1](https://ubuntu.com/security/notices/USN-6933-1)] ClickHouse vulnerabilities (06:00) {#usn-6933-1-clickhouse-vulnerabilities--06-00}

-   5 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-42388](https://ubuntu.com/security/CVE-2021-42388) <!-- medium -->
    -   [CVE-2021-43305](https://ubuntu.com/security/CVE-2021-43305) <!-- medium -->
    -   [CVE-2021-43304](https://ubuntu.com/security/CVE-2021-43304) <!-- medium -->
    -   [CVE-2021-42387](https://ubuntu.com/security/CVE-2021-42387) <!-- medium -->
-   real-time analytics DBMS
-   Mostly written in C++ so not surprisingly has various memory safety issues
    -   All in the the LZ4 compression codec - uses an attacker controlled 16-bit
        unsiged value as the offset to read from the compressed data - then this
        value is also used when copying the data but there is no check on the upper
        bound so could index outside of the data
    -   Also a heap buffer overflow during this same data copy since doesn't verify
        the size of the destination either


### [[USN-6940-1](https://ubuntu.com/security/notices/USN-6940-1)] snapd vulnerabilities (06:55) {#usn-6940-1-snapd-vulnerabilities--06-55}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-29069](https://ubuntu.com/security/CVE-2024-29069) <!-- medium -->
    -   [CVE-2024-29068](https://ubuntu.com/security/CVE-2024-29068) <!-- medium -->
    -   [CVE-2024-1724](https://ubuntu.com/security/CVE-2024-1724) <!-- medium -->
-   2 quite similar issues discovered by one of the engineers on the snapd team - Zeyad Gouda
    -   snaps are squashfs images - in general they are just mounted but certain
        files from the squashfs get extracted by snapd and placed on the regular
        file-system (ie. desktop files and icons for launchers etc) - as such, snapd
        would read the contents of these files and then write them out - if the file
        was actually a named pipe, snapd would block forever - DoS
    -   similarly, if the file was a symlink that pointed to an existing file on the
        file-system, when opening that file (which is a symlink) snapd would read
        the contents of the other file and write it out - recall these are desktop
        files etc so they get written to `/usr/share/applications` which is
        world-readable - so if the symlink pointed to `/etc/shadow` then you would get
        a copy of this written out as world-readable - so an unprivileged user on
        the system could then possibly escalate their privileges
-   3rd issue was AppArmor sandbox
    -   home interface allows snaps to read/write to your home directory
    -   On Ubuntu, if the bin directory exists, it gets automatically added to your PATH
    -   AppArmor policy for snapd took this into account and would stop snaps from
        writing files into this directory (and hence say creating a shell script
        that you would then execute later, outside of the snap sandbox)
    -   BUT it did not prevent a snap from **creating** this directory if it didn't
        already exist


### [[USN-6941-1](https://ubuntu.com/security/notices/USN-6941-1)] Python vulnerability (11:15) {#usn-6941-1-python-vulnerability--11-15}

-   1 CVEs addressed in Noble (24.04 LTS)
    -   [CVE-2024-4032](https://ubuntu.com/security/CVE-2024-4032) <!-- low -->
-   [[USN-6928-1] Python vulnerabilities from Episode 233]({{< relref "episode-233#usn-6928-1-python-vulnerabilities--05-49" >}})


### [[USN-6909-2](https://ubuntu.com/security/notices/USN-6909-2)] Bind vulnerabilities (11:30) {#usn-6909-2-bind-vulnerabilities--11-30}

-   2 CVEs addressed in Bionic ESM (18.04 ESM)
    -   [CVE-2024-1975](https://ubuntu.com/security/CVE-2024-1975) <!-- medium -->
    -   [CVE-2024-1737](https://ubuntu.com/security/CVE-2024-1737) <!-- medium -->
-   2 different CPU-based DoS
    -   Didn't restrict the number of resource records
        for a given hostname - if an attacker could arrange so a large number of RRs
        then could degrade the performace of bind due to it having to perform
        expensive lookups across all the records
        -   introduce a limit of 100 RRs for a given name
    -   Removed support DNSSEC SIG(0) transaction signatures since they could be
        abused to perform a CPU-based DoS


### [[USN-6943-1](https://ubuntu.com/security/notices/USN-6943-1)] Tomcat vulnerabilities (12:26) {#usn-6943-1-tomcat-vulnerabilities--12-26}

-   5 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-29885](https://ubuntu.com/security/CVE-2022-29885) <!-- low -->
    -   [CVE-2022-23181](https://ubuntu.com/security/CVE-2022-23181) <!-- low -->
    -   [CVE-2021-41079](https://ubuntu.com/security/CVE-2021-41079) <!-- medium -->
    -   [CVE-2021-25122](https://ubuntu.com/security/CVE-2021-25122) <!-- medium -->
    -   [CVE-2020-9484](https://ubuntu.com/security/CVE-2020-9484) <!-- low -->


### [[USN-6942-1](https://ubuntu.com/security/notices/USN-6942-1)] Gross vulnerability (12:33) {#usn-6942-1-gross-vulnerability--12-33}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2023-52159](https://ubuntu.com/security/CVE-2023-52159) <!-- medium -->
-   greylisting server used in MTA setup to minimise spam - uses DNS block lists
    to tag mails which come from these domains as possible spam
-   stack buffer overflow through the use of `strncat()` during logging
    -   would concatenate a list of parameters as string into a fixed size buffer on
        the stack but would pass the entire buffer size as the length argument
        rather than accounting for the remaining space in the buffer
    -   as these parameters can be controlled by an attacker can be used to either
        crash grossd or get RCE


### [[USN-6944-1](https://ubuntu.com/security/notices/USN-6944-1)] curl vulnerability (13:55) {#usn-6944-1-curl-vulnerability--13-55}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-7264](https://ubuntu.com/security/CVE-2024-7264) <!-- medium -->
-   Possible OOB read through crafted ASN.1 Generalized Time field when parsing TLS certificate chain - would
    potentially use a negative length value and hence try calculate the length of
    a string but pointing to the wrong memory region - crash / info leak
-   Need to specifically use the <https://curl.se/libcurl/c/CURLINFO_CERTINFO.html>
    option though to be vulnerable


### [[USN-6200-2](https://ubuntu.com/security/notices/USN-6200-2)] ImageMagick vulnerabilities (14:52) {#usn-6200-2-imagemagick-vulnerabilities--14-52}

-   20 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-34151](https://ubuntu.com/security/CVE-2023-34151) <!-- medium -->
    -   [CVE-2023-3195](https://ubuntu.com/security/CVE-2023-3195) <!-- medium -->
    -   [CVE-2023-1289](https://ubuntu.com/security/CVE-2023-1289) <!-- low -->
    -   [CVE-2023-3428](https://ubuntu.com/security/CVE-2023-3428) <!-- medium -->
    -   [CVE-2023-1906](https://ubuntu.com/security/CVE-2023-1906) <!-- low -->
    -   [CVE-2021-3610](https://ubuntu.com/security/CVE-2021-3610) <!-- medium -->
    -   [CVE-2022-32547](https://ubuntu.com/security/CVE-2022-32547) <!-- medium -->
    -   [CVE-2022-32546](https://ubuntu.com/security/CVE-2022-32546) <!-- medium -->
    -   [CVE-2022-32545](https://ubuntu.com/security/CVE-2022-32545) <!-- medium -->
    -   [CVE-2022-28463](https://ubuntu.com/security/CVE-2022-28463) <!-- medium -->
    -   [CVE-2021-39212](https://ubuntu.com/security/CVE-2021-39212) <!-- low -->
    -   [CVE-2021-20313](https://ubuntu.com/security/CVE-2021-20313) <!-- low -->
    -   [CVE-2021-20312](https://ubuntu.com/security/CVE-2021-20312) <!-- low -->
    -   [CVE-2021-20246](https://ubuntu.com/security/CVE-2021-20246) <!-- low -->
    -   [CVE-2021-20309](https://ubuntu.com/security/CVE-2021-20309) <!-- low -->
    -   [CVE-2021-20244](https://ubuntu.com/security/CVE-2021-20244) <!-- low -->
    -   [CVE-2021-20243](https://ubuntu.com/security/CVE-2021-20243) <!-- low -->
    -   [CVE-2021-20241](https://ubuntu.com/security/CVE-2021-20241) <!-- low -->
    -   [CVE-2021-20224](https://ubuntu.com/security/CVE-2021-20224) <!-- medium -->
    -   [CVE-2020-29599](https://ubuntu.com/security/CVE-2020-29599) <!-- negligible -->
-   [[USN-6200-1] ImageMagick vulnerabilities from Episode 202]({{< relref "episode-202#usn-6200-1-imagemagick-vulnerabilities--11-27" >}})


### [[USN-6946-1](https://ubuntu.com/security/notices/USN-6946-1)] Django vulnerabilities (15:04) {#usn-6946-1-django-vulnerabilities--15-04}

-   4 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-42005](https://ubuntu.com/security/CVE-2024-42005) <!-- medium -->
    -   [CVE-2024-41991](https://ubuntu.com/security/CVE-2024-41991) <!-- medium -->
    -   [CVE-2024-41990](https://ubuntu.com/security/CVE-2024-41990) <!-- medium -->
    -   [CVE-2024-41989](https://ubuntu.com/security/CVE-2024-41989) <!-- medium -->
-   SQL injection via crafted JSON in methods on the QuerySet class, and various
    DoS - one via very large inputs of Unicode characters in certain input fields,
    another through floatformat template filter - would use a large amount of
    memory if given a number in scientific notation with a large exponent


### [[USN-6945-1](https://ubuntu.com/security/notices/USN-6945-1)] wpa_supplicant and hostapd vulnerability (15:42) {#usn-6945-1-wpa-supplicant-and-hostapd-vulnerability--15-42}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-5290](https://ubuntu.com/security/CVE-2024-5290) <!-- medium -->
-   Possible privilege escalation through abuse of DBus method to get
    `wpa_supplicant` to load an attacker controlled shared object into memory


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Discussion of [CVE-2024-5290](https://ubuntu.com/security/CVE-2024-5290) in `wpa_supplicant` (16:10) {#discussion-of-cve-2024-5290-in-wpa-supplicant--16-10}

-   Reported privately to us by Rory McNamara from Snyk as part of a larger
    disclosure of various security issues they had found
-   Issue specific to Debian and Ubuntu - includes patch to the dbus policy for
    `wpa_supplicant` to allow various methods to be called by users in the netdev
    group
    -   historical hangover before we had network manager etc to do this
    -   nowadays, Network Manager allows the user who is logged in to control access to wireless networks etc
    -   historically though, Debian had the netdev group instead - so you would add
        your user to this group to allow them to configure network settings etc
    -   so makes sense to allow that group to control `wpa_supplicant` via its dbus interface
-   [DBus API](https://w1.fi/wpa_supplicant/devel/dbus.html) includes a method called `CreateInterface`
    -   takes an argument called `ConfigFile` which specifies the path to a configuration file using the format of [wpa_supplicant.conf](https://manpages.ubuntu.com/manpages/noble/man5/wpa_supplicant.conf.5.html)
    -   config file includes a parameter for [`opensc_engine_path`](https://w1.fi/cgit/hostap/tree/wpa_supplicant/wpa_supplicant.conf#n177) or similarly PKCS11 engine and module paths
    -   these are shared object which then get dynamically loaded into memory by `wpa_supplicant`
-   hence could overwrite existing functions and therefore get code execution **as
    root** - since `wpa_supplicant` runs as root
-   upstream actually includes a patch to hard-code these values at compile-time
    and not allow them to be specified in the config file BUT we don't use this in
    Ubuntu since it was only introduced recently (so not all Ubuntu releases
    include it) but regardless, we want to support setups where these modules may
    live in different locations
-   Discussed how to possibly fix this in [LP: #2067613](https://bugs.launchpad.net/ubuntu/+source/wpa/+bug/2067613)
    -   Is not an issue for upstream since the upstream policy only allows root to
        use this dbus method so there is no privilege escalation
    -   Could allow-list various paths but was not clear which ones to use
        -   [Lukas](https://launchpad.net/~slyon) from Foundations team (and maintainer of Netplan) tried searching
            for any users of these config parameters but couldn't find anything in the
            archive
        -   However, users may still be configuring things so don't want to break
            their setups
    -   Or could tighten up the DBus policy for the netdev group to NOT include
        access to this method - but this may break existing things that are using
        the netdev group and this method
        -   [Marc](https://launchpad.net/~mdeslaur) from our team then tried looking for anything in Ubuntu which used
            the `wpa_supplicant` DBus interface - none appear to make use of the netdev
            group
        -   Considered dropping support entirely for this feature which allows the
            netdev group access since in general this should be done with
            NetworkManager or netplan nowadays anyway
        -   But this is such a long-standing piece of functionality it wasn't clear
            what the possible regression potential would be
    -   Or we could patch `wpa_supplicant` to check that the specified module was
        owned by root - this should then stop an unprivileged user from creating
        their own module and specifying it as it wouldn't be owned by root
        -   This looked promising and a patch was drafted and tested against the
            proof-of-concept and was able to block it
        -   However, Rory came back with some excellent research showing it could be
            bypassed by some quite creative use of a crafted FUSE filesystem in
            combination with overlayfs inside an unprivileged user namespace
            (ie. unpriv userns strikes again)
            -   create a FUSE which lies about the uid of a file to say it is 0 (root)
            -   mount this as an unprivileged user
            -   create a new user and mount namespace through unshare
            -   within that (since you are "root") mount an overlay filesystem using the FUSE fs
            -   Specify the path to this file using the special `root` link inside the
                proc filesystem - which points to the actual root directory of that
                process - and since the FUSE fs lies about the UID it looks like root
                owned
    -   So at this point we were running out of ideas - [Luci](https://launchpad.net/~lucistanescu) from our team suggested
        manually walking the path to the specified file akin to how `realpath` works
        (which should block the ability to read it via the proc symlink)
        -   but this was considered too complicated and possibly prone to a TOCTOU
            race
    -   Finally Marc proposed to simply allow-list anything under `/usr/lib` - since
        anything installed from the archive would live here - in this case we simply
        call `realpath()` directly on the provided path name and if it doesn't start
        with /usr/lib then deny loading of the module
    -   No way to race against this and would seem to have the least chance of regression
        -   Yes if using a non-standard location like `/opt` would now fail BUT if you
            can write to `/opt` then you can write to somewhere in `/usr/lib` - so is easy
            to fix as well
    -   Was tested significantly both with a dummy PKCS11 provider as well as a real
        one to ensure works as expected (both to prevent the exploit but also to
        work as intended)
-   Eventual solution then was both secure but also would appear to minimise the
    chance of regressions
    -   None reported so far anyway ;)
-   Demonstrates the careful balance between security and possible regressions
-   Also the team effort of both the security team and other Ubuntu teams
    -   Thanks to Marc, Luci, Mark E, and Sudhakar on our side, and Lukas from
        Foundations, but most importantly to Rory from Snyk for both reporting the
        vuln but also in their help evaluating the various proposed solutions


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
