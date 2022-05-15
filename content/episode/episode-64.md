+++
title = "Episode 64"
description = """
  This week we look at security updates for ppp, Squid, rsync + more, and Joe
  and Alex discuss the wide scope of the Ubuntu Security Team including some
  current open positions.
  """
date = 2020-02-27T22:01:00+10:30
lastmod = 2022-05-15T18:06:48+09:30
draft = false
weight = 1096
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E064.mp3"
podcast_duration = "23:25"
podcast_bytes = 22494275
permalink = "https://ubuntusecuritypodcast.org/episode-64/"
guid = "c706dda9eb6c395624a28a4f83cb71742f753e95b91b85208b207bf2c164f29301c2bd4caec2157c09758119db4f1de9118be3b5d9706aa0a2e65b04adf9401d"
+++

## Overview {#overview}

This week we look at security updates for ppp, Squid, rsync + more, and Joe
and Alex discuss the wide scope of the Ubuntu Security Team including some
current open positions.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

19 unique CVEs addressed


### [[LSN-0063-1](https://lists.ubuntu.com/archives/ubuntu-security-announce/2020-February/005341.html)] Linux kernel vulnerability [00:43] {#lsn-0063-1-linux-kernel-vulnerability-00-43}

-   5 CVEs addressed in Xenial, Bionic
    -   [CVE-2020-7053](https://ubuntu.com/security/CVE-2020-7053) <!-- medium -->
    -   [CVE-2019-20096](https://ubuntu.com/security/CVE-2019-20096) <!-- medium -->
    -   [CVE-2019-19050](https://ubuntu.com/security/CVE-2019-19050) <!-- medium -->
    -   [CVE-2019-14615](https://ubuntu.com/security/CVE-2019-14615) <!-- medium -->
    -   [CVE-2019-5108](https://ubuntu.com/security/CVE-2019-5108) <!-- medium -->
-   i915 UAF ([Episode 60](https://ubuntusecuritypodcast.org/episode-60/)), DCCP memory leak -&gt; DoS ([Episode 63](https://ubuntusecuritypodcast.org/episode-63/)), crypto
    subsystem memory leaks ([Episode 60](https://ubuntusecuritypodcast.org/episode-60/)), i915 info leak ([Episode 60](https://ubuntusecuritypodcast.org/episode-60/), [Episode
    53](https://ubuntusecuritypodcast.org/episode-53/)), WiFi AP mode DoS ([Episode 53](https://ubuntusecuritypodcast.org/episode-53/))


### [[USN-4279-2](https://usn.ubuntu.com/4279-2/)] PHP regression [01:51] {#usn-4279-2-php-regression-01-51}

-   3 CVEs addressed in Xenial
    -   [CVE-2020-7060](https://ubuntu.com/security/CVE-2020-7060) <!-- medium -->
    -   [CVE-2020-7059](https://ubuntu.com/security/CVE-2020-7059) <!-- medium -->
    -   [CVE-2015-9253](https://ubuntu.com/security/CVE-2015-9253) <!-- low -->
-   [Episode 63](https://ubuntusecuritypodcast.org/episode-63/) - Upstream fix for [CVE-2015-9253](https://ubuntu.com/security/CVE-2015-9253) contained a memory leak -
    this fix was backed-out in this update


### [[USN-4288-1](https://usn.ubuntu.com/4288-1/)] ppp vulnerability [02:16] {#usn-4288-1-ppp-vulnerability-02-16}

-   1 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-8597](https://ubuntu.com/security/CVE-2020-8597) <!-- medium -->
-   Included a check for possible buffer overflow a an rhostname but the
    check was incorrect :( so could still overflow - fixed by making the
    correct check


### [[USN-4289-1](https://usn.ubuntu.com/4289-1/)] Squid vulnerabilities [02:41] {#usn-4289-1-squid-vulnerabilities-02-41}

-   4 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-8517](https://ubuntu.com/security/CVE-2020-8517) <!-- medium -->
    -   [CVE-2020-8450](https://ubuntu.com/security/CVE-2020-8450) <!-- medium -->
    -   [CVE-2020-8449](https://ubuntu.com/security/CVE-2020-8449) <!-- medium -->
    -   [CVE-2019-12528](https://ubuntu.com/security/CVE-2019-12528) <!-- medium -->
-   Buffer overflow in NTLM credentials parser - out-of-process so would just
    result in a DoS
-   Buffer overflow when acting as a reverse proxy
-   Incorrect input validation leading to access to server resources which
    should have been prohibited
-   Info disclosure due to heap buffer over-read when acting as an FTP client
    from a malicious FTP server


### [[USN-4290-1](https://usn.ubuntu.com/4290-1/)] libpam-radius-auth vulnerability [03:26] {#usn-4290-1-libpam-radius-auth-vulnerability-03-26}

-   1 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2015-9542](https://ubuntu.com/security/CVE-2015-9542) <!-- medium -->
-   Stack overflow in password field handling -&gt; crash, DoS


### [[USN-4291-1](https://usn.ubuntu.com/4291-1/)] mod-auth-mellon vulnerability [03:49] {#usn-4291-1-mod-auth-mellon-vulnerability-03-49}

-   1 CVEs addressed in Bionic, Eoan
    -   [CVE-2019-13038](https://ubuntu.com/security/CVE-2019-13038) <!-- medium -->
-   SAML 2.0 authentication module for Apache
-   Open redirect - didn't properly validate the ReturnTo substring of the
    login API endpoint - could allow to launch possible phishing attacks etc
    by masquerading as another domain via the redirect


### [[USN-4292-1](https://usn.ubuntu.com/4292-1/)] rsync vulnerabilities [04:33] {#usn-4292-1-rsync-vulnerabilities-04-33}

-   4 CVEs addressed in Xenial, Bionic
    -   [CVE-2016-9843](https://ubuntu.com/security/CVE-2016-9843) <!-- low -->
    -   [CVE-2016-9842](https://ubuntu.com/security/CVE-2016-9842) <!-- low -->
    -   [CVE-2016-9841](https://ubuntu.com/security/CVE-2016-9841) <!-- low -->
    -   [CVE-2016-9840](https://ubuntu.com/security/CVE-2016-9840) <!-- low -->
-   All issues with the vendored copy of zlib contained within rsync -
    various low-level memory management issues (discussed back in [Episode 60](https://ubuntusecuritypodcast.org/episode-60/)
    in the context of zlib - as a result of a security audit a few years ago
    by Trail of Bits )


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe discuss the larger scope of the Ubuntu Security Team and current open positions [05:05] {#alex-and-joe-discuss-the-larger-scope-of-the-ubuntu-security-team-and-current-open-positions-05-05}


#### Kyle Fazzari's ROS and Ubuntu Video Series {#kyle-fazzari-s-ros-and-ubuntu-video-series}

-   <https://ubuntu.com/blog/from-ros-prototype-to-production-on-ubuntu-core>
-   <https://ubuntu.com/blog/your-first-robot-a-beginners-guide-to-ros-and-ubuntu-core-1-5>


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://canonical.com/careers/1550997>


#### Security Engineer - Certifications (FIPS, Common Criteria) {#security-engineer-certifications--fips-common-criteria}

-   <https://canonical.com/careers/2085468>


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://canonical.com/careers/2085023>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)