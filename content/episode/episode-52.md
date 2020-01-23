+++
title = "Episode 52"
description = """
  This week we look at security updates for FreeTDS, HAProxy, Nokogiri, plus
  some regressions in Whoopsie, Apport and Firefox, and Joe and Alex discuss
  the release of 14.04 ESM for personal use under the Ubuntu Advantage
  program.
  """
date = 2019-11-08T21:48:00+10:30
lastmod = 2020-01-24T08:53:42+10:30
draft = false
weight = 1008
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E052.mp3"
podcast_duration = "18:24"
podcast_bytes = 23822197
permalink = "https://ubuntusecuritypodcast.org/episode-52/"
guid = "acc482d7fd9d6f693da4ad85290ddb6ce4e775ac3c5488f1118fe6541a94e2c405f3cb8481ebd9f9d92cf7056ac083cf1173c9e386c45b9efb922620986532be"
+++

## Overview {#overview}

This week we look at security updates for FreeTDS, HAProxy, Nokogiri, plus
some regressions in Whoopsie, Apport and Firefox, and Joe and Alex discuss
the release of 14.04 ESM for personal use under the Ubuntu Advantage
program.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

9 unique CVEs addressed


### [[USN-4171-2](https://usn.ubuntu.com/4171-2/)] Apport vulnerabilities [00:44] {#usn-4171-2-apport-vulnerabilities-00-44}

-   5 CVEs addressed in Trusty ESM
    -   [CVE-2019-15790](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15790) <!-- medium -->
    -   [CVE-2019-11485](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11485) <!-- medium -->
    -   [CVE-2019-11483](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11483) <!-- medium -->
    -   [CVE-2019-11482](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11482) <!-- medium -->
    -   [CVE-2019-11481](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11481) <!-- low -->
-   [Episode 51](https://ubuntusecuritypodcast.org/episode-51/)


### [[USN-4172-1](https://usn.ubuntu.com/4172-1/), [USN-4172-2](https://usn.ubuntu.com/4172-2/)] file vulnerability [00:58] {#usn-4172-1-usn-4172-2-file-vulnerability-00-58}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-18218](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18218) <!-- medium -->
-   OSS-Fuzz using libFuzzer - heap based buffer overflow of up to 4 bytes in
    the CDF parser when handing vector elements - Composite Document File -
    used in MS Office prior to new zipped XML format - ie. the old .doc /
    .xls etc


### [[USN-4173-1](https://usn.ubuntu.com/4173-1/)] FreeTDS vulnerability [01:48] {#usn-4173-1-freetds-vulnerability-01-48}

-   1 CVEs addressed in Bionic, Disco, Eoan
    -   [CVE-2019-13508](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13508) <!-- medium -->
-   Felix Wilhelm for Google Security Team - if a server were to downgrade
    the protocol to version 5 and send a UDT type to the client, would cause
    a heap buffer overflow due to mismatch in size - fixed by forcing the
    size to an appropriate value


### [[USN-4170-2](https://usn.ubuntu.com/4170-2/), [USN-4170-3](https://usn.ubuntu.com/4170-3/)] Whoopsie regressions [02:22] {#usn-4170-2-usn-4170-3-whoopsie-regressions-02-22}

-   Affecting Xenial, Bionic, Disco, Eoan
-   [Episode 51](https://ubuntusecuritypodcast.org/episode-51/) - update caused crash on upload to server due to mismatch in
    size and resulting partial uninitialized variable - fixed to intialize
    but realised this could still potentially crash on big-endian
    architectures so fixed properly by changing size to 32-bit to match
    memcpy()


### [[USN-4171-3](https://usn.ubuntu.com/4171-3/), [USN-4171-4](https://usn.ubuntu.com/4171-4/)] Apport regression [04:07] {#usn-4171-3-usn-4171-4-apport-regression-04-07}

-   5 CVEs addressed in Trusty ESM, Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-15790](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15790) <!-- medium -->
    -   [CVE-2019-11485](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11485) <!-- medium -->
    -   [CVE-2019-11483](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11483) <!-- medium -->
    -   [CVE-2019-11482](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11482) <!-- medium -->
    -   [CVE-2019-11481](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11481) <!-- low -->
-   [Episode 51](https://ubuntusecuritypodcast.org/episode-51/) - regression due to missing change to python code to handle
    new internal API - fixed by updating the API to be backwards compatible


### [[USN-4174-1](https://usn.ubuntu.com/4174-1/)] HAproxy vulnerability [04:55] {#usn-4174-1-haproxy-vulnerability-04-55}

-   1 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-18277](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18277) <!-- medium -->
-   HTTP Request Smuggling attack
    -   <https://nathandavison.com/blog/haproxy-http-request-smuggling>
-   Wouldn't reject messages that specified transfer-encoding without
    "chunked" value
-   Could be combined with http reuse for request smuggling - ie. the ability
    to get an attacker controlled chunk appended to a legitimate request and
    hence the response sent back to the attacker etc - fixed to reject if
    transfer-encoding is used without also specifying "chunked"


### [[USN-4175-1](https://usn.ubuntu.com/4175-1/)] Nokogiri vulnerability [06:36] {#usn-4175-1-nokogiri-vulnerability-06-36}

-   1 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-5477](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5477) <!-- medium -->
-   Ruby based parser for HTML/XML/SAS etc with XPath & CSS selector support
    etc
-   Command-injection vulnerability - due to use of the Rexical gem - and
    would need to have code which then calls the undocumented load\_file
    method within the CSS tokenizer with user supplied input for the
    filename - due to use of eval()...


### [[USN-4165-2](https://usn.ubuntu.com/4165-2/)] Firefox regressions [07:38] {#usn-4165-2-firefox-regressions-07-38}

-   Affecting Xenial, Bionic, Disco, Eoan
-   Upstream Firefox 70.0.1 release to fix a regression in the 70.0 release
    (some pages with dynamic javascript would fail to load - v 70.0 had
    enabled a new next-gen local storage feature which caused issues so this
    is now disabled by default)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe discuss news that 14.04 ESM is free for personal use via new UA client [08:19] {#alex-and-joe-discuss-news-that-14-dot-04-esm-is-free-for-personal-use-via-new-ua-client-08-19}

-   <https://ubuntu.com/blog/ua-services-deployed-from-the-command-line-with-ua-client>
-   <https://ubuntu.com/esm>
-   <https://wiki.ubuntu.com/SecurityTeam/ESM/14.04>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)