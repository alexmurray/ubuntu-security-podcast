+++
title = "Episode 137"
description = """
  This week we look at some details of the 29 unique CVEs addressed across
  the supported Ubuntu releases in the past 7 days and more.
  """
date = 2021-11-12T14:48:00+10:30
lastmod = 2021-11-12T14:48:20+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E137.mp3"
podcast_duration = "7:20"
podcast_bytes = 5718463
permalink = "https://ubuntusecuritypodcast.org/episode-137/"
guid = "5d7f1408e458caa81870392ec5cff31f60da85ef26888a03f9e5601edb3bc7655e67e075bf64451c3990ff69123da31be75254488e9e209e85bbadf698da5990"
+++

## Overview {#overview}

This week we look at some details of the 29 unique CVEs addressed across
the supported Ubuntu releases in the past 7 days and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

29 unique CVEs addressed


### [[USN-5131-1](https://ubuntu.com/security/notices/USN-5131-1)] Firefox vulnerabilities [00:42] {#usn-5131-1-firefox-vulnerabilities-00-42}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-38509](https://ubuntu.com/security/CVE-2021-38509)
    -   [CVE-2021-38508](https://ubuntu.com/security/CVE-2021-38508)
    -   [CVE-2021-38507](https://ubuntu.com/security/CVE-2021-38507)
    -   [CVE-2021-38506](https://ubuntu.com/security/CVE-2021-38506)
    -   [CVE-2021-38504](https://ubuntu.com/security/CVE-2021-38504)
    -   [CVE-2021-38503](https://ubuntu.com/security/CVE-2021-38503)
-   94.0
    -   Copy image link - copies final image URL after redirects - if a page
        were to then combine this with a content security policy which blocked
        a redirect, the image URL may then contain any authentication tokens -
        and so if a page could trick a user into copying and pasting that image
        URL into the page an attacker could steal their auth token
    -   Various web framework issues


### [[USN-5132-1](https://ubuntu.com/security/notices/USN-5132-1)] Thunderbird vulnerabilities [01:56] {#usn-5132-1-thunderbird-vulnerabilities-01-56}

-   6 CVEs addressed in Impish (21.10)
    -   [CVE-2021-38501](https://ubuntu.com/security/CVE-2021-38501)
    -   [CVE-2021-38500](https://ubuntu.com/security/CVE-2021-38500)
    -   [CVE-2021-38498](https://ubuntu.com/security/CVE-2021-38498)
    -   [CVE-2021-38497](https://ubuntu.com/security/CVE-2021-38497)
    -   [CVE-2021-38496](https://ubuntu.com/security/CVE-2021-38496)
    -   [CVE-2021-32810](https://ubuntu.com/security/CVE-2021-32810)
-   91.2.1
    -   Usual web framework issues


### [[USN-5133-1](https://ubuntu.com/security/notices/USN-5133-1)] ICU vulnerability [02:17] {#usn-5133-1-icu-vulnerability-02-17}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2020-21913](https://ubuntu.com/security/CVE-2020-21913)
-   unicode handling library
-   UAF - could be triggered if was packaging the ICU data with malicious
    input -> crash / RCU


### [[USN-5135-1](https://ubuntu.com/security/notices/USN-5135-1)] Linux kernel vulnerability [02:43] {#usn-5135-1-linux-kernel-vulnerability-02-43}

-   1 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-3759](https://ubuntu.com/security/CVE-2021-3759)
-   impish (5.13), hirsute (5.11), focal hwe (5.11)
-   IPC memory objects not properly accounted for in memcg - could allow to
    bypass limits and cause DoS


### [[USN-5130-1](https://ubuntu.com/security/notices/USN-5130-1)] Linux kernel vulnerabilities [03:24] {#usn-5130-1-linux-kernel-vulnerabilities-03-24}

-   2 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2020-29660](https://ubuntu.com/security/CVE-2020-29660)
    -   [CVE-2020-29661](https://ubuntu.com/security/CVE-2020-29661)
-   3.13
-   2 vulns courtesy of Jann Horn (GPZ) - in tty subsystem - lock order
    issues - UAF - DoS/privesc ([Episode 106](https://ubuntusecuritypodcast.org/episode-106/))


### [[USN-5136-1](https://ubuntu.com/security/notices/USN-5136-1)] Linux kernel vulnerabilities [04:06] {#usn-5136-1-linux-kernel-vulnerabilities-04-06}

-   9 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-42252](https://ubuntu.com/security/CVE-2021-42252)
    -   [CVE-2021-38199](https://ubuntu.com/security/CVE-2021-38199)
    -   [CVE-2021-3759](https://ubuntu.com/security/CVE-2021-3759)
    -   [CVE-2021-3753](https://ubuntu.com/security/CVE-2021-3753)
    -   [CVE-2021-3743](https://ubuntu.com/security/CVE-2021-3743)
    -   [CVE-2021-3655](https://ubuntu.com/security/CVE-2021-3655)
    -   [CVE-2020-36385](https://ubuntu.com/security/CVE-2020-36385)
    -   [CVE-2020-36322](https://ubuntu.com/security/CVE-2020-36322)
    -   [CVE-2019-19449](https://ubuntu.com/security/CVE-2019-19449)
-   4.15 (bionic, xenial hwe, trusty azure)
-   IPC memory object leak plus various other vulns from [Episode 136](https://ubuntusecuritypodcast.org/episode-136/)


### [[USN-5137-1](https://ubuntu.com/security/notices/USN-5137-1)] Linux kernel vulnerabilities [04:48] {#usn-5137-1-linux-kernel-vulnerabilities-04-48}

-   10 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-42252](https://ubuntu.com/security/CVE-2021-42252)
    -   [CVE-2021-3759](https://ubuntu.com/security/CVE-2021-3759)
    -   [CVE-2021-3753](https://ubuntu.com/security/CVE-2021-3753)
    -   [CVE-2021-3743](https://ubuntu.com/security/CVE-2021-3743)
    -   [CVE-2021-3739](https://ubuntu.com/security/CVE-2021-3739)
    -   [CVE-2021-35477](https://ubuntu.com/security/CVE-2021-35477)
    -   [CVE-2021-34556](https://ubuntu.com/security/CVE-2021-34556)
    -   [CVE-2021-3428](https://ubuntu.com/security/CVE-2021-3428)
    -   [CVE-2020-36385](https://ubuntu.com/security/CVE-2020-36385)
    -   [CVE-2019-19449](https://ubuntu.com/security/CVE-2019-19449)
-   5.4 (focal, bionic hwe)


### [[USN-5134-1](https://ubuntu.com/security/notices/USN-5134-1)] Docker vulnerability [04:50] {#usn-5134-1-docker-vulnerability-04-50}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-41092](https://ubuntu.com/security/CVE-2021-41092)
-   If was using a private registry for `docker login` but also had configured
    `credsStore` and `credsHelper` in `~/.docker/config.json` **and** these were not
    able to be executed (ie. execute bit not set or not in `$PATH`), then creds
    would get sent to the **public** docker registry rather than the configured
    private registry.


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Hiring [06:00] {#hiring-06-00}


#### Security - Product Manager {#security-product-manager}

-   HOME BASED - EMEA (Europe, Middle East, Africa)
-   Role includes:
    -   guiding the evolution of security offerings from Canonical and Ubuntu
    -   driving compliance and certification of Ubuntu
    -   engaging with the open source security community
    -   telling the story of Canonical's work to deliver secure platforms
-   <https://canonical.com/careers/2278145/security-product-manager-remote>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
