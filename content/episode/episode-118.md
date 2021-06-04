+++
title = "Episode 118"
description = """
  This week we look at DMCA notices sent against Ubuntu ISOs plus security
  updates for nginx, DHCP, Lasso, Django, Dnsmasq and more.
  """
date = 2021-06-04T15:04:00+09:30
lastmod = 2021-06-04T15:05:21+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E118.mp3"
podcast_duration = "13:34"
podcast_bytes = 10194405
permalink = "https://ubuntusecuritypodcast.org/episode-118/"
guid = "147bfb7e506ff059e07375b957ab03b698f4831786804c5adcf05184baf7e102d928347faf826134ee4d7a9f0c9a43b2069872bcc1d17758e507b6b33a7cff8f"
+++

## Overview {#overview}

This week we look at DMCA notices sent against Ubuntu ISOs plus security
updates for nginx, DHCP, Lasso, Django, Dnsmasq and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

24 unique CVEs addressed


### [[USN-4967-1](https://ubuntu.com/security/notices/USN-4967-1), [USN-4967-2](https://ubuntu.com/security/notices/USN-4967-2)] nginx vulnerability [00:50] {#usn-4967-1-usn-4967-2-nginx-vulnerability-00-50}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-23017](https://ubuntu.com/security/CVE-2021-23017) <!-- medium -->
-   1 byte buffer overflow, able to be trigged by a crafted DNS response -
    UDP so could possibly be more easily forged than TCP (less state) -
    crash, RCE


### [[USN-4968-1](https://ubuntu.com/security/notices/USN-4968-1), [USN-4968-2](https://ubuntu.com/security/notices/USN-4968-2)] LZ4 vulnerability [01:27] {#usn-4968-1-usn-4968-2-lz4-vulnerability-01-27}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-3520](https://ubuntu.com/security/CVE-2021-3520) <!-- medium -->
-   integer overflow -> OOB write -> crash, RCE - crafted lz4 archive


### [[USN-4969-1](https://ubuntu.com/security/notices/USN-4969-1), [USN-4969-2](https://ubuntu.com/security/notices/USN-4969-2)] DHCP vulnerability [01:52] {#usn-4969-1-usn-4969-2-dhcp-vulnerability-01-52}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-25217](https://ubuntu.com/security/CVE-2021-25217) <!-- medium -->
-   Crafted lease file could trigger an OOB read - could be triggered against
    both dhclient and dhcpd - DoS. In case of dhcpd could also cause that
    lease to be deleted (and the one that follows it in the lease database).
    ISC claim impact is LESS is using compiler hardening
    (stack-protector-strong) - since in this case will trigger an abort - but
    if not used it will keep running...


### [[USN-4970-1](https://ubuntu.com/security/notices/USN-4970-1)] GUPnP vulnerability [03:15] {#usn-4970-1-gupnp-vulnerability-03-15}

-   1 CVEs addressed in Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-33516](https://ubuntu.com/security/CVE-2021-33516) <!-- medium -->
-   DNS rebinding attack - able to be exploited by a remote web server -
    cause the local web browser into triggering actions against local UPnP
    services that use gupnp library as it would not check that the Host
    header specified the expected IP address. Could then be used for data
    exfil / tampering etc.
-   Can be mitigated against by using a DNS resolver that prevents DNS
    rebinding


### [[USN-4971-1](https://ubuntu.com/security/notices/USN-4971-1)] libwebp vulnerabilities [04:11] {#usn-4971-1-libwebp-vulnerabilities-04-11}

-   11 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2020-36332](https://ubuntu.com/security/CVE-2020-36332) <!-- medium -->
    -   [CVE-2020-36331](https://ubuntu.com/security/CVE-2020-36331) <!-- medium -->
    -   [CVE-2020-36330](https://ubuntu.com/security/CVE-2020-36330) <!-- medium -->
    -   [CVE-2020-36329](https://ubuntu.com/security/CVE-2020-36329) <!-- medium -->
    -   [CVE-2020-36328](https://ubuntu.com/security/CVE-2020-36328) <!-- medium -->
    -   [CVE-2018-25014](https://ubuntu.com/security/CVE-2018-25014) <!-- medium -->
    -   [CVE-2018-25013](https://ubuntu.com/security/CVE-2018-25013) <!-- medium -->
    -   [CVE-2018-25012](https://ubuntu.com/security/CVE-2018-25012) <!-- medium -->
    -   [CVE-2018-25011](https://ubuntu.com/security/CVE-2018-25011) <!-- medium -->
    -   [CVE-2018-25010](https://ubuntu.com/security/CVE-2018-25010) <!-- medium -->
    -   [CVE-2018-25009](https://ubuntu.com/security/CVE-2018-25009) <!-- medium -->
-   Google's image format to relace both jpg/png and be faster (like vp8
    video codec using predictive encoding - uses neighboring pixels to
    predict values in a block and then encodes only the difference)
-   C library :( - memory unsafe
-   OOB reads, heap buffer overflow, UAF, excessive memory allocation etc
    -   DoS, RCE etc


### [[USN-4972-1](https://ubuntu.com/security/notices/USN-4972-1)] PostgreSQL vulnerabilities [05:05] {#usn-4972-1-postgresql-vulnerabilities-05-05}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-32029](https://ubuntu.com/security/CVE-2021-32029) <!-- medium -->
    -   [CVE-2021-32028](https://ubuntu.com/security/CVE-2021-32028) <!-- medium -->
    -   [CVE-2021-32027](https://ubuntu.com/security/CVE-2021-32027) <!-- medium -->
-   Thanks to Christian Ehrhardt from the Ubuntu Server team for preparing
    these updates
-   Latest upstream point-releases
    -   10.17 - 18.04
    -   12.7 - 20.04 LTS, 20.10
    -   13.3 - 21.04


### [[USN-4973-1](https://ubuntu.com/security/notices/USN-4973-1)] Python vulnerability [05:44] {#usn-4973-1-python-vulnerability-05-44}

-   1 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-29921](https://ubuntu.com/security/CVE-2021-29921) <!-- medium -->
-   ipaddress library in the python stdlib mishandled leading zero characters
    in octets of an IP address - could allow bypass of access controls that
    are based on IP addresses. Now treats leading zeros as invalid input
    (before would try and treat them as octal... but could end up confused as
    a result)


### [[USN-4974-1](https://ubuntu.com/security/notices/USN-4974-1)] Lasso vulnerability [06:40] {#usn-4974-1-lasso-vulnerability-06-40}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-28091](https://ubuntu.com/security/CVE-2021-28091) <!-- medium -->
-   SAML protocol library
-   Reported by Akamai (uses Lasso in their Enterprise Application Access
    product) - and coordinated between affected distros and vendors etc
-   Could allow unauthenticated access to applications that use SAMLv2
    (Security Assertion Markup Language v2) for authentication
-   If a SAML response contained both a signed and valid assertion, plus
    additional unsigned assertions appened to this, these unsigned assertions
    would be treated as valid as well.
-   So could allow an authenticated user to take their own signed SAML
    assertion and append assertions for other users to the end to then
    impersonate those other users.
-   <https://blogs.akamai.com/2021/06/saml-implementation-vulnerability-impacting-some-akamai-services.html>


### [[USN-4975-1](https://ubuntu.com/security/notices/USN-4975-1)] Django vulnerabilities [08:19] {#usn-4975-1-django-vulnerabilities-08-19}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-33571](https://ubuntu.com/security/CVE-2021-33571) <!--  -->
    -   [CVE-2021-33203](https://ubuntu.com/security/CVE-2021-33203) <!--  -->
    -   [CVE-2021-32052](https://ubuntu.com/security/CVE-2021-32052) <!-- medium -->
-   URLValidator failed to properly handle newlines, tabs - could be used to
    inject other headers into responses etc
-   Paths not properly sanitized in the admindocs module - could be used to
    probe for the existence of files or possibly obtain their contents
-   Leading zeros in IPv4 addresses - basically identical to the Python issue
    above


### [[USN-4976-1](https://ubuntu.com/security/notices/USN-4976-1)] Dnsmasq vulnerability [08:56] {#usn-4976-1-dnsmasq-vulnerability-08-56}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10), Hirsute (21.04)
    -   [CVE-2021-3448](https://ubuntu.com/security/CVE-2021-3448) <!-- medium -->
-   Failed to properly randomise source port (ie used a fixed port) when
    forwarding queries when configured to use a specific server for a given
    network interface - could then allow a remote attacker to more easily
    perform cache poisoning attacks (ie just need to guess the transmission
    ID once know the source port to get a forged reply accepted)
    -   Very similar to the issues that were discovered back in 2008 by Dan
        Kaminsky - the whole reason source port randomisation was introduced as
        part of the DNS protocol


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu user's DMCA violation [09:58] {#ubuntu-user-s-dmca-violation-09-58}

-   Last week was [reported](https://torrentfreak.com/comcast-subscriber-receives-dmca-notice-for-downloading-ubuntu-210526/) that a user downloading Ubuntu 20.04.2 iso via
    bittorrent received a DMCA violation notice from their ISP (Comcast)
-   Clearly absurd given Ubuntu is free (beer & freedom/libre)
-   Also the hash of the iso in question was legit too
-   Sent by "OpSec Online Antipiracy" not Canonical
-   OpSec [responded](https://torrentfreak.com/opsec-says-dmca-notice-system-was-spoofed-to-target-ubuntu-download-210527/) saying their notice sending program was "spoofed" by
    unknown parties across multiple streaming platforms
-   Not clear then if the user spoofed it directly or if someone else spoofed
    the notice and sent it to the user...
-   Still being investigated by OpSec apparently - our legal team is also
    looking into it as well
-   Not the first time this sort of thing has happened - [back in 2016](https://torrentfreak.com/paramount-wipes-infringing-ubuntu-torrent-google-160909/)
    Paramount Pictures used the DMCA to send a takedown request to Google to
    remove a search result linking to the Ubuntu 12.04.2 alternate ISO at
    extratorrent.cc - this was listed as apparently being a link to the
    Transformers: Age of Extinction movie...
    -   Google did follow through on this - likely an automated system due to
        the sheer volume of such requests they get per day (3 million p/d
        pirate URLs to be removed from search results)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
