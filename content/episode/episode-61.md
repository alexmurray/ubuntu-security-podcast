+++
title = "Episode 61"
description = """
  Joe is back to discuss a recent breach against Wawa, plus we detail
  security updates from the past week including Apache Solr, OpenStack
  Keystone, Sudo, Django and more.
  """
date = 2020-02-07T16:15:00+10:30
lastmod = 2020-05-08T16:34:47+09:30
draft = false
weight = 1013
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E061.mp3"
podcast_duration = "19:16"
podcast_bytes = 18498167
permalink = "https://ubuntusecuritypodcast.org/episode-61/"
guid = "4d1e94a8f9c93dcb3069ca36dde6b773552b0a61a06f811702d0567654b3a3405d3fb891a51518dba4d3afe8e4f57640dd0f2b354e75d1cdb8684c6f2f78bc28"
+++

## Overview {#overview}

Joe is back to discuss a recent breach against Wawa, plus we detail
security updates from the past week including Apache Solr, OpenStack
Keystone, Sudo, Django and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

23 unique CVEs addressed


### [[USN-4259-1](https://usn.ubuntu.com/4259-1/)] Apache Solr vulnerability [00:50] {#usn-4259-1-apache-solr-vulnerability-00-50}

-   1 CVEs addressed in Xenial
    -   [CVE-2017-12629](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-12629) <!-- high -->
-   Enterprise search server based on Lucene with XML/HTTP and JSON APIs
-   Was vulnerable to an XML External Entity (XXE) attack - XML can include a
    reference to another XML resource which might then be fetched - this
    could then be combined with another flaw (use of Config API to obtain
    access to the RunExecutableListener class) to allow remote code fetched
    from the remote XML


### [[USN-4261-1](https://usn.ubuntu.com/4261-1/)] WebKitGTK+ vulnerabilities [01:44] {#usn-4261-1-webkitgtk-plus-vulnerabilities-01-44}

-   3 CVEs addressed in Bionic, Eoan
    -   [CVE-2019-8846](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8846) <!-- medium -->
    -   [CVE-2019-8844](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8844) <!-- medium -->
    -   [CVE-2019-8835](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-8835) <!-- medium -->
-   Various memory management issues which could be triggered via a malicious
    websites - possible remote code execution as a result


### [[USN-4262-1](https://usn.ubuntu.com/4262-1/)] OpenStack Keystone vulnerability [02:13] {#usn-4262-1-openstack-keystone-vulnerability-02-13}

-   1 CVEs addressed in Eoan
    -   [CVE-2019-19687](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19687) <!-- medium -->
-   Keystone provides identity services (client authentication etc) for
    OpenStack
-   credentials API allowed any user with a role on a project to list all
    credentials when enforce\_scope was false - so could view other users
    credentials.
-   Was introduced in keystone 15 so didn't affect bionic or older releases -
    only eoan


### [LSN-0062-1] Linux kernel vulnerability [03:01] {#lsn-0062-1-linux-kernel-vulnerability-03-01}

-   7 CVEs addressed in Xenial and Bionic
    -   [CVE-2019-18885](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18885) <!-- low -->
    -   [CVE-2019-14901](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14901) <!-- medium -->
    -   [CVE-2019-14897](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14897) <!-- medium -->
    -   [CVE-2019-14896](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14896) <!-- medium -->
    -   [CVE-2019-14895](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14895) <!-- medium -->
    -   [CVE-2019-14615](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14615) <!-- medium -->
    -   [CVE-2019-2214](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2214) <!-- medium -->
-   Heap and stack buffer overflows in Marvell Wifi drivers, Intel GPU info
    leak on context switch, binder IPC heap buffer overflow


### [[USN-4263-1](https://usn.ubuntu.com/4263-1/)] Sudo vulnerability [03:50] {#usn-4263-1-sudo-vulnerability-03-50}

-   1 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2019-18634](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18634) <!-- low -->
-   Lots of press around this but most people would not be vulnerable since
    need to run in an non-default configuration
-   When pwfeedback enabled in /etc/sudoers, stack buffer overflow able to be
    triggered in sudo during password authentication
-   Not enabled by default in Ubuntu


### [[USN-4264-1](https://usn.ubuntu.com/4264-1/)] Django vulnerability [05:00] {#usn-4264-1-django-vulnerability-05-00}

-   1 CVEs addressed in Bionic, Eoan
    -   [CVE-2020-7471](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7471) <!-- medium -->
-   Possible SQL injection via the PostgreSQL module if was using the
    StringAgg instance
-   Fixed to sanitize the input before processing it


### [[USN-4265-1](https://usn.ubuntu.com/4265-1/), [USN-4265-2](https://usn.ubuntu.com/4265-2/)] SpamAssassin vulnerabilities [05:29] {#usn-4265-1-usn-4265-2-spamassassin-vulnerabilities-05-29}

-   2 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Eoan
    -   [CVE-2020-1931](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1931) <!-- medium -->
    -   [CVE-2020-1930](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1930) <!-- medium -->
-   [Episode 59](https://ubuntusecuritypodcast.org/episode-59/) - possible RCE via crafted CF file - 2 more similar
    vulnerabilities fixed - again upstream advise should only use trusted
    update channels or 3rd parted .cf files


### [[USN-4266-1](https://usn.ubuntu.com/4266-1/)] GraphicsMagick vulnerabilities [06:37] {#usn-4266-1-graphicsmagick-vulnerabilities-06-37}

-   7 CVEs addressed in Xenial
    -   [CVE-2017-18231](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-18231) <!-- medium -->
    -   [CVE-2017-18230](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-18230) <!-- medium -->
    -   [CVE-2017-18229](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-18229) <!-- medium -->
    -   [CVE-2017-18219](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-18219) <!-- low -->
    -   [CVE-2017-17915](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-17915) <!-- medium -->
    -   [CVE-2017-17913](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-17913) <!-- medium -->
    -   [CVE-2017-17912](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-17912) <!-- medium -->
-   [Episode 55](https://ubuntusecuritypodcast.org/episode-55/), [Episode 57](https://ubuntusecuritypodcast.org/episode-57/), [Episode 59](https://ubuntusecuritypodcast.org/episode-59/), [Episode 60](https://ubuntusecuritypodcast.org/episode-60/)
-   NULL ptr dereferences -> crash, DoS
-   Large memory allocation -> crash, DoS
-   Heap + stack based buffer over-read and over-writes too


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe and Alex discuss recent Wawa breach [07:26] {#joe-and-alex-discuss-recent-wawa-breach-07-26}

-   <https://krebsonsecurity.com/2020/01/wawa-breach-may-have-compromised-more-than-30-million-payment-cards/>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)