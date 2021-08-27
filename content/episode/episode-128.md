+++
title = "Episode 128"
description = """
  This week we dive into Trend Micro's recent Linux Threat Report and the
  release of Ubuntu 20.04.3 LTS, plus we detail security updates for
  Inetutils telnetd, the Linux kernel and OpenSSL.
  """
date = 2021-08-27T12:23:00+09:30
lastmod = 2021-08-27T12:27:07+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E128.mp3"
podcast_duration = "17:56"
podcast_bytes = 13439687
permalink = "https://ubuntusecuritypodcast.org/episode-128/"
guid = "fb48a2b4f858022e2badbd76057680ed0553067fa1be365bd94c2e113b849329c388ef20395e365d381a3bb8607d801e59826d7d2aa2be890bae2af2144931e2"
+++

## Overview {#overview}

This week we dive into Trend Micro's recent Linux Threat Report and the
release of Ubuntu 20.04.3 LTS, plus we detail security updates for
Inetutils telnetd, the Linux kernel and OpenSSL.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

9 unique CVEs addressed


### [[USN-5048-1](https://ubuntu.com/security/notices/USN-5048-1)] Inetutils vulnerability [00:45] {#usn-5048-1-inetutils-vulnerability-00-45}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-10188](https://ubuntu.com/security/CVE-2020-10188) <!-- medium -->
-   Buffer overflow in inetutils telnetd - originally CVE was found in netkit
    telnetd - but subsequently the GNU inetutils version was also found to
    contain basically the same vulnerable function. Very detailed blog post
    re exploiting this on Fedora, great example if you are interested in vuln
    hunting etc - patched but why run telnetd?
-   <https://appgateresearch.blogspot.com/2020/02/bravestarr-fedora-31-netkit-telnetd%5F28.html>


### [[USN-5050-1](https://ubuntu.com/security/notices/USN-5050-1)] Linux kernel vulnerabilities [02:03] {#usn-5050-1-linux-kernel-vulnerabilities-02-03}

-   6 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-38208](https://ubuntu.com/security/CVE-2021-38208) <!-- medium -->
    -   [CVE-2021-3573](https://ubuntu.com/security/CVE-2021-3573) <!-- medium -->
    -   [CVE-2021-3564](https://ubuntu.com/security/CVE-2021-3564) <!-- medium -->
    -   [CVE-2021-28691](https://ubuntu.com/security/CVE-2021-28691) <!-- medium -->
    -   [CVE-2021-0129](https://ubuntu.com/security/CVE-2021-0129) <!-- medium -->
    -   [CVE-2020-26558](https://ubuntu.com/security/CVE-2020-26558) <!-- medium -->
-   2 bluetooth HCI UAFs, NFC NULL ptr deref, Xen PV UAF from guest->host, 2
    other bluetooth vulns - info leak - all covered in previous episodes


### [[USN-5051-1](https://ubuntu.com/security/notices/USN-5051-1)] OpenSSL vulnerabilities [02:49] {#usn-5051-1-openssl-vulnerabilities-02-49}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-3712](https://ubuntu.com/security/CVE-2021-3712) <!-- medium -->
    -   [CVE-2021-3711](https://ubuntu.com/security/CVE-2021-3711) <!-- high -->
-   High profile vuln in SM2 algorithm impl in openssl - (Chinese and later
    ISO standard elliptic curve algo used for both signature and encryption)
    -   Usual scheme is to call the API function `EVP_PKEY_decrypt()` twice - call
        first time to get the required buffer size to hold the decrypted
        plaintext - second time to do the actual decryption passing a buffer of
        the specified length to hold the result
    -   Bug meant the returned length in first call would be smaller than
        required -> up to 62 byte buffer overflow using attacker controlled data
    -   Depending on application, could be heap or stack buffer
    -   Possible RCE
-   Buffer overread in handling of ASN.1 strings
    -   ASN1 strings in openssl are represented as the bytes plus a length -
        unlike normal C strings, bytes array of the string is NOT NUL
        terminated in general
    -   However some internal functions would actually add a NUL byte - and
        other functions ended up assuming ASN1 strings would all be NUL
        terminated - plus various functions to parse ASN1 data would also add
        NUL terminators too - so if had an application that was manually
        constructing ASN1 strings without adding a NUL terminator, this could
        result in a buffer overread if these were passed to a function which
        expected a NUL (ie functions which print the contents etc)
    -   Again depends on application that uses OpenSSL - so not all will be
        vulnerable - but fixed to ensure all internal functions which handle
        ASN1 strings in OpenSSL respect the length field and not assume is NUL
        terminated


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 20.04.3 LTS released [05:58] {#ubuntu-20-dot-04-dot-3-lts-released-05-58}

-   <https://lists.ubuntu.com/archives/ubuntu-announce/2021-August/000271.html>
-   Desktop installer uses HWE stack by default - Server uses GA but can
    select HWE during install process
-   Includes all security etc updates so less to download during / after
    install
-   Flavours have also updated
-   If already running 20.04 then no need to do anything - you already have
    this :)


### Trend Micro Linux Threat Report 2021 1H [07:20] {#trend-micro-linux-threat-report-2021-1h-07-20}

-   <https://www.trendmicro.com/vinfo/us/security/news/cybercrime-and-digital-threats/linux-threat-report-2021-1h-linux-threats-in-the-cloud-and-security-recommendations>
-   Report which collates data from Trend Micro™ Smart Protection Network™
    (SPN) (data lake) - collects data across all Trend Micro products plus
    various honeypots and other sensors etc - measure of real-world malware
    prevalence and vuln exploitation in enterprises
-   Linux makes up 61% of Cloud One users - cloud native product for
    protection of cloud deployments
-   Ubuntu makes up 16% of that (RH 30%, AWS Linux 18%)
-   Top threats:
    -   Coinminers, Web shells, Ransomware, Trojans, other
    -   For systems which contained these:
        -   51% CentOS, 31% CloudLinux, 10% Ubuntu, 3% RHEL
-   Intrusion Protection System (IPS) hits:
    -   36% Amazon Linux, 23% RHEL 7, 8% CentOS 7, 7% RHEL 6, Amazon Linux, Ubuntu 18.04, 4% Ubuntu 20.04, 16.04
-   Top 15 vulns with known exploits:
    -   5 were in Apache Struts2 - incl. vuln used in Equifax breach in 2017
    -   1 each in Drupal, Oracle WebLogic, WordPress file manager plugin,
        vBulletin, Eclipse Jetty, Alibaba Nacos, Atlassian Jira, NginX, Liferay
        -   Most of these are not shipped in Ubuntu but clearly orgs are
            deploying these sorts of applications on Ubuntu/RHEL etc
-   Of 20k vulns from 2020, only ~200 were observed with known public exploits
    -   roughly the same as above but more of the sorts of things we ship **and
        support** in Ubuntu
        -   struts, netty, drupal, **dnsmasq**, JIRA, WebLogic, Wordpress, **nginx**,
            **apache httpd**, **ISC BIND**, **openssl**, **tomcat**
-   76% are attacks against web apps
-   Looking at OWASP top 10 - of all attack by volume, only 21% fit into
    OWASP top 10 - ie. SQL injection, command injection, XSS, insecure
    deserialisation, XML EE,
    -   Looking at attacks outside OWASP top 10
        -   Brute force ~40% of all attacks
        -   Directory traversal 21%
        -   Request smuggling
-   Also briefly mentions how to secure Linux but only talks technologies -
    iptables, seccomp, AppArmor, SELinux etc - and on practical guidance
    mentions Antimalware (ie Trend 😉), IPS/IDS, application whitelisting,
    **vuln patching**, activity monitoring etc
-   Plus looks a bit at containers - ranks vulns in 15 most popular official
    docker images - Python comes in on top with 482 vulns, Node 470,
    Wordpress 402, Golang 288, nginx 118, postgres 86, influxdb 85, apache
    httpd 84, mysql 76...
    -   Not surprising perhaps that the more general purpose images have more
        vulns - more code, more vulns, also perhaps a larger attack surface etc
        too


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
