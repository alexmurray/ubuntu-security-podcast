+++
title = "Episode 57"
description = """
  In the final episode of 2019, we look at security updates for RabbitMQ,
  GraphicsMagick, OpenJDK and more, plus Joe and Alex discuss a typical
  day-in-the-life of a Ubuntu Security Team member.
  """
date = 2019-12-19T13:36:00+10:30
lastmod = 2019-12-19T13:37:22+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E057.mp3"
podcast_duration = "18:50"
podcast_bytes = 18082298
permalink = "https://ubuntusecuritypodcast.org/episode-57/"
guid = "b113e6411042301448ceef505c8f2dd3c9a8081cc39c6a7758beb85d457fe90468ce0d6dd8f225cdb41fef3f48a53672c0b6cceaace7af7c18dea7cae8f09dd3"
+++

## Overview {#overview}

In the final episode of 2019, we look at security updates for RabbitMQ,
GraphicsMagick, OpenJDK and more, plus Joe and Alex discuss a typical
day-in-the-life of a Ubuntu Security Team member.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

34 unique CVEs addressed


### [[USN-4217-2](https://usn.ubuntu.com/4217-2/)] Samba vulnerabilities [01:00] {#usn-4217-2-samba-vulnerabilities-01-00}

-   2 CVEs addressed in Trusty ESM
    -   [CVE-2019-14870](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14870) <!-- medium -->
    -   [CVE-2019-14861](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14861) <!-- medium -->
-   See [Episode 56](https://ubuntusecuritypodcast.org/episode-56/)


### [[USN-4214-2](https://usn.ubuntu.com/4214-2/)] RabbitMQ vulnerability [01:23] {#usn-4214-2-rabbitmq-vulnerability-01-23}

-   1 CVEs addressed in Xenial, Bionic
    -   [CVE-2019-18609](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18609) <!-- medium -->
-   AMQP implementation
-   Possible integer overflow when handling the CONNECTION\_STATE\_HEADER
    frame - rogue server could return a malicious frame header which is then
    processed by the client and leads to a smaller target\_size value due to
    integer overflow - then when the frame data is copied in via memcpy()
    this would overwrite past the bounds of the heap allocation, and with
    attacker controlled data
-   Not an issue if connecting to trusted servers


### [[USN-4222-1](https://usn.ubuntu.com/4222-1/)] GraphicsMagick vulnerabilities [02:28] {#usn-4222-1-graphicsmagick-vulnerabilities-02-28}

-   15 CVEs addressed in Xenial
    -   [CVE-2017-13777](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-13777) <!-- medium -->
    -   [CVE-2017-13776](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-13776) <!-- medium -->
    -   [CVE-2017-13775](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-13775) <!-- medium -->
    -   [CVE-2017-13737](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-13737) <!-- low -->
    -   [CVE-2017-13134](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-13134) <!-- medium -->
    -   [CVE-2017-13065](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-13065) <!-- medium -->
    -   [CVE-2017-13064](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-13064) <!-- medium -->
    -   [CVE-2017-13063](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-13063) <!-- medium -->
    -   [CVE-2017-12937](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-12937) <!-- low -->
    -   [CVE-2017-12936](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-12936) <!-- medium -->
    -   [CVE-2017-12935](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-12935) <!-- low -->
    -   [CVE-2017-11643](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-11643) <!-- medium -->
    -   [CVE-2017-11642](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-11642) <!-- medium -->
    -   [CVE-2017-11641](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-11641) <!-- medium -->
    -   [CVE-2017-11638](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-11638) <!-- medium -->
-   [Episode 55](https://ubuntusecuritypodcast.org/episode-55/) covered previous update for GraphicsMagick - more of the same
    here


### [[USN-4223-1](https://usn.ubuntu.com/4223-1/)] OpenJDK vulnerabilities [03:00] {#usn-4223-1-openjdk-vulnerabilities-03-00}

-   16 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-2999](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2999) <!-- medium -->
    -   [CVE-2019-2992](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2992) <!-- medium -->
    -   [CVE-2019-2989](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2989) <!-- medium -->
    -   [CVE-2019-2988](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2988) <!-- medium -->
    -   [CVE-2019-2987](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2987) <!-- medium -->
    -   [CVE-2019-2983](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2983) <!-- medium -->
    -   [CVE-2019-2978](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2978) <!-- medium -->
    -   [CVE-2019-2977](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2977) <!-- medium -->
    -   [CVE-2019-2975](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2975) <!-- medium -->
    -   [CVE-2019-2981](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2981) <!-- medium -->
    -   [CVE-2019-2973](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2973) <!-- medium -->
    -   [CVE-2019-2964](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2964) <!-- medium -->
    -   [CVE-2019-2962](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2962) <!-- medium -->
    -   [CVE-2019-2949](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2949) <!-- medium -->
    -   [CVE-2019-2945](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2945) <!-- medium -->
    -   [CVE-2019-2894](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-2894) <!-- medium -->
-   Latest upstream micro-release for openjdk 8 and openjdk 11
-   Various mix of issues (buffer overflows, NULL pointer dereferences and
    various denial of service issues on application crashes in different
    scenarios) - see the full USN for details


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe and Alex discuss a day-in-the-life of a Ubuntu Security Team member [03:50] {#joe-and-alex-discuss-a-day-in-the-life-of-a-ubuntu-security-team-member-03-50}


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)