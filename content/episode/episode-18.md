+++
title = "Episode 18"
description = "This week we look at some details of the 46 unique CVEs addressed across the supported Ubuntu releases and take a deep dive into the recent apt security bug."
date = 2019-01-29
lastmod = 2022-05-15T18:07:23+09:30
draft = false
weight = 1142
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E018.mp3"
podcast_duration = "14:27"
podcast_bytes = 13886823
permalink = "https://ubuntusecuritypodcast.org/episode-18/"
+++

## Overview {#overview}

This week we look at some details of the 46 unique CVEs addressed across the supported Ubuntu releases and take a deep dive into the recent apt security bug.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

46 unique CVEs addressed


### [[USN-3863-1](https://usn.ubuntu.com/3863-1/), [USN-3863-2](https://usn.ubuntu.com/3863-2/)] APT vulnerability {#usn-3863-1-usn-3863-2-apt-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-3462](https://ubuntu.com/security/CVE-2019-3462)
-   MITM allowing RCE as root in the context of apt
-   Due to mishandling of HTTP redirect which would allow malicious mirror / MITM to inject content and then could allow arbitrary command execution
-   Fixed by simply disallowing control characters in HTTP redirect responses
    -   See detailed discussion later in show


### [[USN-3864-1](https://usn.ubuntu.com/3864-1/)] LibTIFF vulnerabilities {#usn-3864-1-libtiff-vulnerabilities}

-   7 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-8905](https://ubuntu.com/security/CVE-2018-8905)
    -   [CVE-2018-7456](https://ubuntu.com/security/CVE-2018-7456)
    -   [CVE-2018-18661](https://ubuntu.com/security/CVE-2018-18661)
    -   [CVE-2018-18557](https://ubuntu.com/security/CVE-2018-18557)
    -   [CVE-2018-17101](https://ubuntu.com/security/CVE-2018-17101)
    -   [CVE-2018-17100](https://ubuntu.com/security/CVE-2018-17100)
    -   [CVE-2018-10963](https://ubuntu.com/security/CVE-2018-10963)
-   Multiple NULL pointer dereferences and assertion failures (crash -&gt; DoS)
-   Multiple heap-based buffer overflows and an integer overflow (crash -&gt; DoS / possible RCE)


### [[USN-3865-1](https://usn.ubuntu.com/3865-1/)] poppler vulnerabilities {#usn-3865-1-poppler-vulnerabilities}

-   2 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-20650](https://ubuntu.com/security/CVE-2018-20650)
    -   [CVE-2018-20481](https://ubuntu.com/security/CVE-2018-20481)
-   Assertion failure and NULL pointer dereference triggered by crafted PDFs (crash -&gt; DoS)


### [[USN-3707-2](https://usn.ubuntu.com/3707-2/)] NTP vulnerabilities {#usn-3707-2-ntp-vulnerabilities}

-   9 CVEs addressed in Precise ESM
    -   [CVE-2018-7185](https://ubuntu.com/security/CVE-2018-7185)
    -   [CVE-2018-7183](https://ubuntu.com/security/CVE-2018-7183)
    -   [CVE-2017-6463](https://ubuntu.com/security/CVE-2017-6463)
    -   [CVE-2017-6462](https://ubuntu.com/security/CVE-2017-6462)
    -   [CVE-2016-9311](https://ubuntu.com/security/CVE-2016-9311)
    -   [CVE-2016-9310](https://ubuntu.com/security/CVE-2016-9310)
    -   [CVE-2016-7428](https://ubuntu.com/security/CVE-2016-7428)
    -   [CVE-2016-7427](https://ubuntu.com/security/CVE-2016-7427)
    -   [CVE-2016-7426](https://ubuntu.com/security/CVE-2016-7426)
-   NTP updated for Bionic, Artful, Xenial and Trusty in July 2018 - this is the corresponding update for Precise ESM
-   Multiple issues including: RCE in ntpq from a crafted response from
    the server, various DoS at both protocol level between client and
    server (disrupt a client talking to server) and at application level
    (to crash the application)


### [[USN-3866-1](https://usn.ubuntu.com/3866-1/)] Ghostscript vulnerability {#usn-3866-1-ghostscript-vulnerability}

-   1 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2019-6116](https://ubuntu.com/security/CVE-2019-6116)
-   Another week, another Ghostscript vulnerability courtesy of Tavis Ormandy (GPZ) (after a random look at the latest GS release 9.26)
    -   See Episodes 5, 7, 10, 14 for more
-   Code execution via subroutine operators
    -   Patches to fix quite invasive
-   Ghostscript is included in evince, ImageMagick, nautilus, GIMP, even less so able to target various commands to exploit


### [[USN-3867-1](https://usn.ubuntu.com/3867-1/)] MySQL vulnerabilities {#usn-3867-1-mysql-vulnerabilities}

-   15 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2019-2537](https://ubuntu.com/security/CVE-2019-2537)
    -   [CVE-2019-2534](https://ubuntu.com/security/CVE-2019-2534)
    -   [CVE-2019-2532](https://ubuntu.com/security/CVE-2019-2532)
    -   [CVE-2019-2531](https://ubuntu.com/security/CVE-2019-2531)
    -   [CVE-2019-2529](https://ubuntu.com/security/CVE-2019-2529)
    -   [CVE-2019-2528](https://ubuntu.com/security/CVE-2019-2528)
    -   [CVE-2019-2510](https://ubuntu.com/security/CVE-2019-2510)
    -   [CVE-2019-2507](https://ubuntu.com/security/CVE-2019-2507)
    -   [CVE-2019-2503](https://ubuntu.com/security/CVE-2019-2503)
    -   [CVE-2019-2486](https://ubuntu.com/security/CVE-2019-2486)
    -   [CVE-2019-2482](https://ubuntu.com/security/CVE-2019-2482)
    -   [CVE-2019-2481](https://ubuntu.com/security/CVE-2019-2481)
    -   [CVE-2019-2455](https://ubuntu.com/security/CVE-2019-2455)
    -   [CVE-2019-2434](https://ubuntu.com/security/CVE-2019-2434)
    -   [CVE-2019-2420](https://ubuntu.com/security/CVE-2019-2420)
-   Updated to latest MySQL version (5.7.25) in all releases to fix numerous issues including:
    -   Multiple DoS via low privileged attacker, multiple unauthorized access to complete MySQL server data etc


### [[USN-3869-1](https://usn.ubuntu.com/3869-1/)] Subversion vulnerability {#usn-3869-1-subversion-vulnerability}

-   1 CVEs addressed in Cosmic
    -   [CVE-2018-11803](https://ubuntu.com/security/CVE-2018-11803)
-   DoS against Subversion server (mod_dav_svn) (only affects 1.10.0+ -&gt; Cosmic)
-   Triggered by listing remote recursive directory contents BUT not
    providing the path to list - NULL pointer dereference -&gt; crash


### [[USN-3868-1](https://usn.ubuntu.com/3868-1/)] Thunderbird vulnerabilities {#usn-3868-1-thunderbird-vulnerabilities}

-   10 CVEs addressed in Trusty, Xenial, Bionic, Cosmic
    -   [CVE-2018-18498](https://ubuntu.com/security/CVE-2018-18498)
    -   [CVE-2018-18494](https://ubuntu.com/security/CVE-2018-18494)
    -   [CVE-2018-18493](https://ubuntu.com/security/CVE-2018-18493)
    -   [CVE-2018-18492](https://ubuntu.com/security/CVE-2018-18492)
    -   [CVE-2018-17466](https://ubuntu.com/security/CVE-2018-17466)
    -   [CVE-2018-12405](https://ubuntu.com/security/CVE-2018-12405)
    -   [CVE-2018-12393](https://ubuntu.com/security/CVE-2018-12393)
    -   [CVE-2018-12392](https://ubuntu.com/security/CVE-2018-12392)
    -   [CVE-2018-12390](https://ubuntu.com/security/CVE-2018-12390)
    -   [CVE-2018-12389](https://ubuntu.com/security/CVE-2018-12389)
-   Latest Thunderbird release (60.4) to resolve multiple issues


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


## apt / apt-get RCE (CVE-2019-3462) {#apt-apt-get-rce--cve-2019-3462}

-   Discovered by Max Justicz ([provides a detailed write-up on his blog](//justi.cz/security/2019/01/22/apt-rce.html))
-   apt uses worker processes which communicate back to the main process when fetching content
    -   workers get told what to download and where to put it and communicate back with parent via stdin/stdout
    -   protocol is like HTTP, human readable text
    -   can include directives from workers regarding redirects, completion (DONE) etc
    -   when handling a HTTP Redirect from the server, apt http worker would append this contents in message sent back to parent
        -   expect just a URI as the redirect content but could be anything - so could contain directives in the apt worker protocol which then get interpreted by the main apt process
        -   so could signal DONE to parent **as well** as follow-up directives such as reporting false hashes for debs or even falsifying the location of the deb on the filesystem
        -   So could use the Releases.gpg file as the location of the package on the filesystem - and actually inject our malicious package into the start of Releases.gpg - with trusted Releases.gpg content afterwards
        -   Releases.gpg will still validate (since it ignores junk at the start) AND apt will still use the package since it will ignore the signature at the end
        -   So can get malicious package installed - which due to debian packaging can run scripts on install etc and hence get RCE as root :(
-   Fixed by simply disallowing control characters in HTTP redirect responses
-   If we assume the mirrors are trusted, could have been mitigated via HTTPS
    -   Since HTTPS would stop MITM attacks
    -   Some Ubuntu mirrors offer HTTPS but this is not enabled by default since not **all** mirrors offer HTTPS
    -   Official mirrors do not currently offer HTTPS - this is being reevaluated but is difficult for a number of reasons
    -   Users can still easily enable HTTPS themselves by choosing an appropriate mirror with a HTTPS URI
-   If assume mirrors are untrusted then they could still have exploited this
    -   So whilst HTTPS could help in this case is not a panacea


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)