+++
title = "Episode 86"
description = """
  This week we discuss the recent announcement of a long-awaited native
  client for 1password, plus Google Chrome experiments with anti-phishing
  techniques, and we take a look at security updates for OpenJDK 8, Samba,
  NSS and more.
  """
date = 2020-08-13T15:05:00+09:30
lastmod = 2020-08-13T15:06:30+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E086.mp3"
podcast_duration = "09:05"
podcast_bytes = 8732957
permalink = "https://ubuntusecuritypodcast.org/episode-86/"
guid = "cb371a6fa4fa18b2d70733bdb903407e954c3b45ff4716bb4f3217d550360b201c064dbe34f0b29528f46c11ff310574bb0e59b921d4e4f8ebea274d10106741"
+++

## Overview {#overview}

This week we discuss the recent announcement of a long-awaited native
client for 1password, plus Google Chrome experiments with anti-phishing
techniques, and we take a look at security updates for OpenJDK 8, Samba,
NSS and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

13 unique CVEs addressed


### [[USN-4453-1](https://usn.ubuntu.com/4453-1/)] OpenJDK 8 vulnerabilities [01:03] {#usn-4453-1-openjdk-8-vulnerabilities-01-03}

-   8 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-14621](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14621)
    -   [CVE-2020-14593](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14593)
    -   [CVE-2020-14583](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14583)
    -   [CVE-2020-14581](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14581)
    -   [CVE-2020-14579](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14579)
    -   [CVE-2020-14578](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14578)
    -   [CVE-2020-14577](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14577)
    -   [CVE-2020-14556](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14556)
-   Usual mix of issues for a Java update - sandbox escape, DoS, information
    disclosure etc


### [[USN-4451-2](https://usn.ubuntu.com/4451-2/)] ppp vulnerability [01:29] {#usn-4451-2-ppp-vulnerability-01-29}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM)
    -   [CVE-2020-15704](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15704)
-   [Episode 85](https://ubuntusecuritypodcast.org/episode-85/)


### [[USN-4454-1](https://usn.ubuntu.com/4454-1/), [USN-4454-2](https://usn.ubuntu.com/4454-2/)] Samba vulnerability [01:50] {#usn-4454-1-usn-4454-2-samba-vulnerability-01-50}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM),
    Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-14303](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14303)
-   A remote attacker could send a zero length UDP packet to Samba when
    acting as a AD DC with NetBIOS over TCP (NBT) enabled - would effectively
    enter an infinite loop -> CPU-based DoS


### [[USN-4455-1](https://usn.ubuntu.com/4455-1/)] NSS vulnerabilities [02:41] {#usn-4455-1-nss-vulnerabilities-02-41}

-   3 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-6829](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6829)
    -   [CVE-2020-12401](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12401)
    -   [CVE-2020-12400](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12400)
-   Fixes for various side-channel attacks against elliptic curve crypto
    implementations - could allow an attacker to infer the private key


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Google Chrome 86 to only show domain in URL bar for phishing experiment [03:20] {#google-chrome-86-to-only-show-domain-in-url-bar-for-phishing-experiment-03-20}

-   Will only show just the domain in the URL bar to select users to see if
    this helps avoid phishing
    -   Presumably users will be less likely to mistake a URL like
        <http://h.paypal.de-checking.net/de/ID.php?u=LhsdoOKJfsjdsdvg>  for a
        real paypay.com URL
-   One way to help avoid phishing, particularly for credentials, is to use a
    password manager that associates credentials with the site in question -
    so it should only offer to say fill-in your paypal credentials on a
    paypal.com site - and if it does not this is a hint it is not legitimate
    -   Has other benefits too like being able to autogenerate unique passwords
        per site, sync across devices etc


### 1password just launched a beta of their Linux client [06:46] {#1password-just-launched-a-beta-of-their-linux-client-06-46}

-   <https://discussions.agilebits.com/discussion/114964/1password-for-linux-development-preview>
-   <https://snapcraft.io/1password>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
