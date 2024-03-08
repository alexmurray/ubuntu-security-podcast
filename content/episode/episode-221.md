+++
title = "Episode 221"
description = """
  Andrei is back to discuss recent academic research into malware within the
  Python/PyPI ecosystem and whether it is possible to effectively combat it with
  open source tooling, plus we cover security updates for Unbound, libuv, node.js,
  the Linux kernel, libgit2 and more.
  """
date = 2024-03-09T09:23:00+10:30
lastmod = 2024-03-09T09:26:52+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E221.mp3"
podcast_duration = 1394
podcast_bytes = 24247149
permalink = "https://ubuntusecuritypodcast.org/episode-221/"
guid = "d0313887e011deeeb9b1c69573b4c97c96b416d56fada7785a53df16330055081e579712d80b8aca11fe38fb40f917943d49582eb31a55344081db6eff6627c3"
+++

## Overview {#overview}

Andrei is back to discuss recent academic research into malware within the
Python/PyPI ecosystem and whether it is possible to effectively combat it with
open source tooling, plus we cover security updates for Unbound, libuv, node.js,
the Linux kernel, libgit2 and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

56 unique CVEs addressed


### [[USN-6665-1](https://ubuntu.com/security/notices/USN-6665-1)] Unbound vulnerabilities (00:50) {#usn-6665-1-unbound-vulnerabilities--00-50}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-50868](https://ubuntu.com/security/CVE-2023-50868) <!-- medium -->
    -   [CVE-2023-50387](https://ubuntu.com/security/CVE-2023-50387) <!-- medium -->
-   Another update for recent vulns discovered in DNSSEC standard - [[USN-6633-1]
    Bind vulnerabilities from Episode 219]({{< relref "episode-219#usn-6633-1-bind-vulnerabilities--07-33" >}}) and [[USN-6657-1] Dnsmasq
    vulnerabilities from Episode 220]({{< relref "episode-220#usn-6657-1-dnsmasq-vulnerabilities--07-10" >}})


### [[USN-6666-1](https://ubuntu.com/security/notices/USN-6666-1)] libuv vulnerability (01:16) {#usn-6666-1-libuv-vulnerability--01-16}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-24806](https://ubuntu.com/security/CVE-2024-24806) <!-- medium -->
-   Async event handling library - used by nodejs and others - supports async
    handling TCP/UDP sockets, DNS resolution, file system operations etc
-   Would truncate hostnames to 256 characters before calling `getaddrinfo()` - but
    would then fail to NUL-terminate the string - as such, `getaddrinfo()` would
    read past the end of the buffer and the address that got resolved may not be
    the intended one - so then a remote attacker who could influence this could
    end up causing the application to contact a different address than expected
    and so perhaps access internal services etc


### [[USN-6667-1](https://ubuntu.com/security/notices/USN-6667-1)] Cpanel-JSON-XS vulnerability (02:21) {#usn-6667-1-cpanel-json-xs-vulnerability--02-21}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-48623](https://ubuntu.com/security/CVE-2022-48623) <!-- medium -->
-   Perl module for JSON serialisation
-   OOB read on crafted JSON - when parsing in relaxed mode, if JSON was malformed
    and missing a colon would read beyond the end of the data and so potentially
    could result in an info-leak or a crash


### [[USN-6668-1](https://ubuntu.com/security/notices/USN-6668-1)] python-openstackclient vulnerability (02:55) {#usn-6668-1-python-openstackclient-vulnerability--02-55}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-6110](https://ubuntu.com/security/CVE-2023-6110) <!-- medium -->
-   When deleting an access rule, would search for it by name - if it didn't exist
    may end up returning a different rule which would then get deleted instead -
    changes the semantics to only allow rules to be deleted via their ID which is
    unique


### [[USN-6648-2](https://ubuntu.com/security/notices/USN-6648-2)] Linux kernel (Azure) vulnerabilities (03:23) {#usn-6648-2-linux-kernel--azure--vulnerabilities--03-23}

-   4 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2024-0646](https://ubuntu.com/security/CVE-2024-0646) <!-- high -->
    -   [CVE-2024-0565](https://ubuntu.com/security/CVE-2024-0565) <!-- medium -->
    -   [CVE-2023-6915](https://ubuntu.com/security/CVE-2023-6915) <!-- medium -->
    -   [CVE-2023-51781](https://ubuntu.com/security/CVE-2023-51781) <!-- high -->
-   [[USN-6648-1] Linux kernel vulnerabilities from Episode 220]({{< relref "episode-220#usn-6648-1-linux-kernel-vulnerabilities--02-00" >}})
-   OOB write in KTLS
-   UAF in AppleTalk network driver


### [[USN-6651-2](https://ubuntu.com/security/notices/USN-6651-2), [USN-6651-3](https://ubuntu.com/security/notices/USN-6651-3)] Linux kernel (including StarFive) vulnerabilities (03:52) {#usn-6651-2-usn-6651-3-linux-kernel--including-starfive--vulnerabilities--03-52}

-   6 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-0646](https://ubuntu.com/security/CVE-2024-0646) <!-- high -->
    -   [CVE-2024-0582](https://ubuntu.com/security/CVE-2024-0582) <!-- medium -->
    -   [CVE-2024-0565](https://ubuntu.com/security/CVE-2024-0565) <!-- medium -->
    -   [CVE-2023-6915](https://ubuntu.com/security/CVE-2023-6915) <!-- medium -->
    -   [CVE-2023-51781](https://ubuntu.com/security/CVE-2023-51781) <!-- high -->
    -   [CVE-2023-51780](https://ubuntu.com/security/CVE-2023-51780) <!-- medium -->


### [[USN-6653-2](https://ubuntu.com/security/notices/USN-6653-2), [USN-6653-3](https://ubuntu.com/security/notices/USN-6653-3), [USN-6653-4](https://ubuntu.com/security/notices/USN-6653-4)] Linux kernel (AWS, Low Latency &amp; GKE) vulnerabilities (04:07) {#usn-6653-2-usn-6653-3-usn-6653-4-linux-kernel--aws-low-latency-and-gke--vulnerabilities--04-07}

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-0646](https://ubuntu.com/security/CVE-2024-0646) <!-- high -->
    -   [CVE-2024-0565](https://ubuntu.com/security/CVE-2024-0565) <!-- medium -->
    -   [CVE-2023-6915](https://ubuntu.com/security/CVE-2023-6915) <!-- medium -->
    -   [CVE-2023-51781](https://ubuntu.com/security/CVE-2023-51781) <!-- high -->
    -   [CVE-2023-51780](https://ubuntu.com/security/CVE-2023-51780) <!-- medium -->


### [[USN-6647-2](https://ubuntu.com/security/notices/USN-6647-2)] Linux kernel (Azure) vulnerabilities (04:15) {#usn-6647-2-linux-kernel--azure--vulnerabilities--04-15}

-   3 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2023-7192](https://ubuntu.com/security/CVE-2023-7192) <!-- high -->
    -   [CVE-2023-51782](https://ubuntu.com/security/CVE-2023-51782) <!-- medium -->
    -   [CVE-2023-51780](https://ubuntu.com/security/CVE-2023-51780) <!-- medium -->
-   [[USN-6647-1] Linux kernel vulnerabilities from Episode 220]({{< relref "episode-220#usn-6647-1-linux-kernel-vulnerabilities--01-14" >}})
-   Memory leak in netfilter able to be abused via an unprivileged user
    namespace - DoS via exhausting system memory


### [[USN-6670-1](https://ubuntu.com/security/notices/USN-6670-1)] php-guzzlehttp-psr7 vulnerabilities (04:36) {#usn-6670-1-php-guzzlehttp-psr7-vulnerabilities--04-36}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-29197](https://ubuntu.com/security/CVE-2023-29197) <!-- medium -->
    -   [CVE-2022-24775](https://ubuntu.com/security/CVE-2022-24775) <!-- medium -->
-   HTTP message library conforming the the PSR-7 specification - failed to
    properly account for embedded newlines in HTTP headers - classic HTTP
    smuggling attack vuln
-   Original fix from 2022 was found to be incomplete so additional CVE assigned
    for the follow-up fix


### [[USN-6671-1](https://ubuntu.com/security/notices/USN-6671-1)] php-nyholm-psr7 vulnerability (05:15) {#usn-6671-1-php-nyholm-psr7-vulnerability--05-15}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-29197](https://ubuntu.com/security/CVE-2023-29197) <!-- medium -->
-   Alternative PSR-7 implementation which also suffered from the same issue


### [[USN-6669-1](https://ubuntu.com/security/notices/USN-6669-1)] Thunderbird vulnerabilities (05:35) {#usn-6669-1-thunderbird-vulnerabilities--05-35}

-   17 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-1552](https://ubuntu.com/security/CVE-2024-1552) <!-- medium -->
    -   [CVE-2024-1551](https://ubuntu.com/security/CVE-2024-1551) <!-- medium -->
    -   [CVE-2024-1546](https://ubuntu.com/security/CVE-2024-1546) <!-- medium -->
    -   [CVE-2024-0746](https://ubuntu.com/security/CVE-2024-0746) <!-- low -->
    -   [CVE-2024-1553](https://ubuntu.com/security/CVE-2024-1553) <!-- medium -->
    -   [CVE-2024-1550](https://ubuntu.com/security/CVE-2024-1550) <!-- medium -->
    -   [CVE-2024-1549](https://ubuntu.com/security/CVE-2024-1549) <!-- medium -->
    -   [CVE-2024-1548](https://ubuntu.com/security/CVE-2024-1548) <!-- medium -->
    -   [CVE-2024-1547](https://ubuntu.com/security/CVE-2024-1547) <!-- medium -->
    -   [CVE-2024-0755](https://ubuntu.com/security/CVE-2024-0755) <!-- medium -->
    -   [CVE-2024-0753](https://ubuntu.com/security/CVE-2024-0753) <!-- medium -->
    -   [CVE-2024-0751](https://ubuntu.com/security/CVE-2024-0751) <!-- low -->
    -   [CVE-2024-0750](https://ubuntu.com/security/CVE-2024-0750) <!-- medium -->
    -   [CVE-2024-0749](https://ubuntu.com/security/CVE-2024-0749) <!-- medium -->
    -   [CVE-2024-0747](https://ubuntu.com/security/CVE-2024-0747) <!-- medium -->
    -   [CVE-2024-0742](https://ubuntu.com/security/CVE-2024-0742) <!-- medium -->
    -   [CVE-2024-0741](https://ubuntu.com/security/CVE-2024-0741) <!-- medium -->
-   115.8.1


### [[USN-6672-1](https://ubuntu.com/security/notices/USN-6672-1)] Node.js vulnerabilities (06:03) {#usn-6672-1-node-dot-js-vulnerabilities--06-03}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-2650](https://ubuntu.com/security/CVE-2023-2650) <!-- medium -->
    -   [CVE-2023-23920](https://ubuntu.com/security/CVE-2023-23920) <!-- medium -->
    -   [CVE-2023-23919](https://ubuntu.com/security/CVE-2023-23919) <!-- medium -->
-   Leverages OpenSSL for cryptographic related work - failed to clear the OpenSSL
    error stack in when calling various routines - as such, may get false-positive
    errors on subsequent calls to OpenSSL from the same thread and hence DoS - so
    a remote attacker could provide an invalid cert which would then set this
    error and subsequent routines to validate certs would also appear to fail even
    if they were valid
-   Uses ICU for unicode handling - allows a user to specify their own ICU data
    via an environment variable - but node.js can run in different privilege
    contexts so a user could then force it to load data under their control when
    running with elevated privileges
-   ASN.1 encoding issue inherited from OpenSSL


### [[USN-6673-1](https://ubuntu.com/security/notices/USN-6673-1)] python-cryptography vulnerabilities (07:30) {#usn-6673-1-python-cryptography-vulnerabilities--07-30}

-   2 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-26130](https://ubuntu.com/security/CVE-2024-26130) <!-- medium -->
    -   [CVE-2023-50782](https://ubuntu.com/security/CVE-2023-50782) <!-- medium -->
-   Another issue of mishandling the OpenSSL API - in this case would not properly
    handle errors returned from OpenSSL when processing certificates that had
    incorrect padding (talked about this last week in [[USN-6663-1] OpenSSL update]({{< relref "episode-220#usn-6663-1-openssl-update--08-40" >}}))
-   Mishandled error case when a PKCS+12 key and certificate did not match
    one-another - would trigger an exception at runtime


### [[USN-6674-1](https://ubuntu.com/security/notices/USN-6674-1), [USN-6674-2](https://ubuntu.com/security/notices/USN-6674-2)] Django vulnerability (08:22) {#usn-6674-1-usn-6674-2-django-vulnerability--08-22}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-27351](https://ubuntu.com/security/CVE-2024-27351) <!-- medium -->
-   ReDoS in Truncator template filter - if supplied an input string of all
    opening angle brackets `<<<<<<....` then would cause exponential performance
    degredation


### [[USN-6675-1](https://ubuntu.com/security/notices/USN-6675-1)] ImageProcessing vulnerability (08:52) {#usn-6675-1-imageprocessing-vulnerability--08-52}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-24720](https://ubuntu.com/security/CVE-2022-24720) <!-- medium -->
-   Image processing library for ruby based on ImageMagick
-   If an application allowed the user to specify the set of operations to be
    performed, could then be abused to get arbitrary shell command execution -
    internally used `send()` rather than `public_send()` which allowed access to
    private methods to directly execute system calls


### [[USN-6677-1](https://ubuntu.com/security/notices/USN-6677-1)] libde265 vulnerabilities (09:23) {#usn-6677-1-libde265-vulnerabilities--09-23}

-   7 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-49468](https://ubuntu.com/security/CVE-2023-49468) <!-- medium -->
    -   [CVE-2023-49467](https://ubuntu.com/security/CVE-2023-49467) <!-- medium -->
    -   [CVE-2023-49465](https://ubuntu.com/security/CVE-2023-49465) <!-- medium -->
    -   [CVE-2023-47471](https://ubuntu.com/security/CVE-2023-47471) <!-- medium -->
    -   [CVE-2023-43887](https://ubuntu.com/security/CVE-2023-43887) <!-- medium -->
    -   [CVE-2023-27103](https://ubuntu.com/security/CVE-2023-27103) <!-- medium -->
    -   [CVE-2023-27102](https://ubuntu.com/security/CVE-2023-27102) <!-- medium -->
-   Next lot of libde265 vulns after discussed previously in both
    [[USN-6659-1] libde265 vulnerabilities from
    Episode 221]({{< relref "episode-220#usn-6659-1-libde265-vulnerabilities--07-52" >}}) and
    [[USN-6627-1] libde265 vulnerabilities from
    Episode 219]({{< relref "episode-219#usn-6627-1-libde265-vulnerabilities--04-10" >}}) - more fuzzing related fixes for usual sorts of issues - this
    time includes a couple from our own David (aka [@litios](https://litios.github.io/))


### [[USN-6678-1](https://ubuntu.com/security/notices/USN-6678-1)] libgit2 vulnerabilities (09:50) {#usn-6678-1-libgit2-vulnerabilities--09-50}

-   5 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-24577](https://ubuntu.com/security/CVE-2024-24577) <!-- medium -->
    -   [CVE-2024-24575](https://ubuntu.com/security/CVE-2024-24575) <!-- medium -->
    -   [CVE-2023-22742](https://ubuntu.com/security/CVE-2023-22742) <!-- medium -->
    -   [CVE-2020-12279](https://ubuntu.com/security/CVE-2020-12279) <!-- medium -->
    -   [CVE-2020-12278](https://ubuntu.com/security/CVE-2020-12278) <!-- medium -->
-   Used by various tools like cargo, gnome-builder etc
-   Fix for a possible infinite loop (CPU-based DoS) when parsing a crafted
    revision named simply `@`
-   Use-after free when handling crafted input to `git_index_add`
-   Mishandles equivalent filenames due to NTFS Data Streams (similar to
    CVE-2019-1352 - [[USN-4220-1] Git vulnerabilities from Episode 56]({{< relref "episode-56#usn-4220-1-git-vulnerabilities-08-16" >}}))
-   Failed to perform certificate checking when using an SSH remote via the
    optional libssh2 backend - which we do in Ubuntu


### [[USN-6649-2](https://ubuntu.com/security/notices/USN-6649-2)] Firefox regressions (10:47) {#usn-6649-2-firefox-regressions--10-47}

-   12 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2024-1556](https://ubuntu.com/security/CVE-2024-1556) <!-- medium -->
    -   [CVE-2024-1552](https://ubuntu.com/security/CVE-2024-1552) <!-- medium -->
    -   [CVE-2024-1551](https://ubuntu.com/security/CVE-2024-1551) <!-- medium -->
    -   [CVE-2024-1546](https://ubuntu.com/security/CVE-2024-1546) <!-- medium -->
    -   [CVE-2024-1557](https://ubuntu.com/security/CVE-2024-1557) <!-- medium -->
    -   [CVE-2024-1555](https://ubuntu.com/security/CVE-2024-1555) <!-- medium -->
    -   [CVE-2024-1554](https://ubuntu.com/security/CVE-2024-1554) <!-- medium -->
    -   [CVE-2024-1553](https://ubuntu.com/security/CVE-2024-1553) <!-- medium -->
    -   [CVE-2024-1550](https://ubuntu.com/security/CVE-2024-1550) <!-- medium -->
    -   [CVE-2024-1549](https://ubuntu.com/security/CVE-2024-1549) <!-- medium -->
    -   [CVE-2024-1548](https://ubuntu.com/security/CVE-2024-1548) <!-- medium -->
    -   [CVE-2024-1547](https://ubuntu.com/security/CVE-2024-1547) <!-- medium -->
-   123.0.1


### [[USN-6676-1](https://ubuntu.com/security/notices/USN-6676-1)] c-ares vulnerability (10:55) {#usn-6676-1-c-ares-vulnerability--10-55}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-25629](https://ubuntu.com/security/CVE-2024-25629) <!-- medium -->
-   async DNS lookup library
-   Failed to properly handle embedded NUL characters when parsing
    `/erc/resolv.conf` `/etc/hosts`, `/etc/nsswitch.conf` or anything specifed via the
    `HOSTALIASES` environment variable - if has an embedded NUL as the first
    character in a new line, would then attempt to read memory prior to the start
    of the buffer and hence an OOB read -&gt; crash


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Andrei discusses malware detection with the Python and PyPi ecosystem (11:46) {#andrei-discusses-malware-detection-with-the-python-and-pypi-ecosystem--11-46}

-   [Bad Snakes: Understanding and Improving Python Package Index Malware Scanning](https://ieeexplore.ieee.org/document/10172836)

Hey, Alex!

We will continue our journey today beyond the scope of the previous episodes. We've delved into the realms of network security, federated infrastructures, and vulnerability detection and assessment.


#### Today’s paper {#today-s-paper}

Last year, the Ubuntu Security Team participated in the Linux Security Summit in Bilbao. At that time, I managed to have a discussion with Zach, who hosted a presentation at the Supply Chain Security Con entitled “Will Large-Scale Automated Scanning Stop Malware on OSS Repositories?”. I later discovered that his talk was backed by a paper that he and his colleagues from Chainguard had published.

With this in mind, today we will be examining “Bad Snakes: Understanding and Improving Python Package Index Malware Scanning”, which was published last year in ACM’s International Conference on Software Engineering.

The aim of the paper is to highlight the current state of the Python and PyPi ecosystems from a malware detection standpoint, identify the requirements for a mature malware scanner that can be integrated into PyPi, and ascertain whether the existing open-source tools meet these objectives.


#### Repositories. PyPi {#repositories-dot-pypi}

With this in mind, let's start by understanding the context.

Applications can be distributed through repositories. This means that the applications are packaged into a generic format and published in either managed or unmanaged repositories. Users can then install the application by querying the repositories, downloading the application in a format that they can unpack through a client, and subsequently run on their hosts.

There are numerous repositories out there. Some target specific operating systems, as is the case with Debian repositories, the Snap Store, Google Play, or the Microsoft Store. Others are designed to store packages for a specific programming language, such as PyPi, npm, and RubyGems. Firefox Add-ons and the Chrome extension store target a specific platform, namely the browser.

Another relevant characteristic when discussing repositories is the level of curation. The Ubuntu Archive is considered a curated repository of software packages because there are several trustworthy contributors able to publish software within the repository. Conversely, npm is unmanaged because any member of the open-source community can publish anything in it.

We will discuss the Python Package Index extensively, which is the de facto unmanaged repository for the Python programming language. As of the 7th of March 2024, there were 5.4 million releases for 520 thousand projects and nearly 800 thousand users. It is governed by a non-profit organisation and run by volunteers worldwide.


#### Supply chain attacks {#supply-chain-attacks}

Software repositories foster the dependencies of software on other pieces of software, controlled by different parties. As seen in campaigns such as the SolarWinds SUNBURST attack, this can go awry. Attackers can gain control over software in a company's supply chain, gain initial access to their infrastructure, and exploit this advantage.

Multiple attack vectors are possible. Accounts can be hijacked. Attackers may publish packages with similar names (in a tactic known as typosquatting). They can also leverage shrink-wrapped clones, which are duplicates of existing packages, where malicious code is injected after gaining users' trust. While covering all attack vectors is beyond the scope of this podcast episode, you can find a comprehensive taxonomy in a paper called “Taxonomy of Attacks on Open-Source Software Supply Chains”, which lists over 100 unique attack vectors.

From 2017 to 2022, the number of unique projects removed from PyPi increased rapidly: 38 in the first year, followed by 130, 60, 500, 27 thousands, and finally 12 thousands in the last year. Despite the fact that most of these were reported as malware, it's worth noting that the impact of some of them is limited due to the lack of organic usage.


#### Malware analysis {#malware-analysis}

These attacks can be mitigated by implementing techniques such as multi-factor authentication, software signing, update frameworks, or reproducible builds, but the most widespread method is malware analysis.

Some engines check for anomalies via static and dynamic heuristics, while others rely on signatures due to their simplicity. Once a piece of software is detected as malicious, its hash is added to a deny list that is embedded in the anti-malware engine. Each file is then hashed and the result is checked against the deny list. If the heuristics or the hash comparison identifies the file as malicious, it is either reported, blocked, or deleted depending on the strategy implemented by the anti-malware engine.


#### Malware analysis in PyPi {#malware-analysis-in-pypi}

These solutions are already implemented in software repositories. In the case of PyPi, malware scanning was introduced in February 2022 with the assistance of a malware check feature in Warehouse, the application serving PyPi. However, it was disabled by the administrators two years later and ultimately removed in May 2023 due to an overload of alerts.

In addition to this technical solution, PyPi also capitalises on a form of social symbiosis. Software security companies and individuals conduct security research, reporting any discovered malware to the PyPi administrators via email. The administrators typically allocate 20 minutes per week to review these malware reports and remove any packages that can be verified as true positives. Ultimately, the reporting companies and individuals gain reputation or attention for their brands, products, and services.


#### Requirements {#requirements}

In addition to information about software repositories, supply chain attacks, malware analysis, and PyPi, the researchers also interviewed administrators from PyPi to understand their requirements for a malware analysis tool that could assist them. The three interviews, each lasting one hour, were conducted in July and August 2022 and involved only three individuals. This limited number of interviews is due to the focus on the PyPi ecosystem, where only ten people are directly involved in malware scanning activities.

When discussing requirements, the administrators desired tools with a binary outcome, which could be determined by checking if a numerical score exceeds a threshold or not. The decision should also be supported by arguments. While administrators can tolerate false negatives, they aim to reduce the rate of false positives to zero. The tool should also operate on limited resources and be easy to adopt, use and maintain.


#### Current tooling {#current-tooling}

But do the current solutions tick these boxes?

The researchers selected tools based on a set of criteria: analysing the code of the packages, having public detection techniques, and detection rules. Upon examining the available solutions, they found that only three could be used for evaluation in the context of their research: PyPi's malware checks, Bandit4Mal, and OSSGadget's OSS Detect Backdoor.

Regarding the former, it should be noted that the researchers did not match the YARA rules only against the setup files, but also against all files in the Python package. The second, Bandit4Mal, is an open-source version of Bandit that has been adapted to include multiple rules for detecting malicious patterns in the AST generated from a program's codebase. The last, OSSGadget's OSS Detect Backdoor, is a tool developed by Microsoft in June 2020 to perform rule-based malware detection on each file in a package.

These tools were tested against both malicious and benign Python packages. The researchers used two datasets containing 168 manually-selected malicious packages. For the benign packages, they selected 1,400 popular packages and one thousand randomly-selected benign Python packages.

For the evaluation process, they considered an alert in a malicious package to be a true positive and an alert in a benign package to be a false positive.

The true positive rate was 85% for the PyPi checks, the same for OSS Detect Backdoor and 90% for Bandit4Mal. The false positive rates ranged from 15% for the PyPi checks over the random packages, to 80% for Bandit4Mal on popular packages.

The tools ran in a time-effective manner, with a median time of around two seconds per package across all datasets. The maximum runtime was recorded for Ansible’s package, which was scanned in 26 minutes.

Despite their efficient run times, we can infer from these results that the tools are not accurate enough to meet the demands of PyPi’s administrators. The analysts may be overwhelmed by alerts for benign packages, which could interfere with their other operations.


#### Conclusions {#conclusions}

And with this, we can conclude the episode of the Ubuntu Security Podcast, which details the paper “Bad Snakes: Understanding and Improving Python Package Index Malware Scanning”. We have discussed software repositories, malware analysis, and malware-related operations within PyPi. We've also explored the requirements that would make a new open-source Python malware scanner suitable for the PyPi administrators and evaluated how the current solutions perform.

If you come across any interesting topics that you believe should be discussed, please email us at [security@ubuntu.com](mailto:security@ubuntu.com).

Over to you, Alex!


#### Resources {#resources}

-   [Bad Snakes: Understanding and Improving Python Package Index Malware Scanning](https://ieeexplore.ieee.org/document/10172836)
-   [Taxonomy of Attacks on Open-Source Software Supply Chains](https://arxiv.org/abs/2204.04008)
-   [Bandit4Mal](https://github.com/lyvd/bandit4mal)
-   [OSS Detect Backdoor](https://github.com/microsoft/OSSGadget/tree/main/src/oss-detect-backdoor)
-   [PyPi’s malware checks](https://github.com/pypi/warehouse/commit/319cbc0cc2bb6d721d04d49dbf3c82445eca4000)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
