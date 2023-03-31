+++
title = "Episode 192"
description = """
  Ubuntu gets pwned at Pwn2Own 2023, plus we cover security updates for vulns in
  GitPython, object-path, amanda, url-parse and the Linux kernel - and we mention
  the recording of Alex's Everything Open 2023 presentation as well.
  """
date = 2023-03-31T23:25:00+10:30
lastmod = 2023-03-31T23:26:13+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E192.mp3"
podcast_duration = 947
podcast_bytes = 16326764
permalink = "https://ubuntusecuritypodcast.org/episode-192/"
guid = "12d01ba86f7c3cc2918861c83d374e6eabd2652e4a445923e27383dfd5a83596e8eaccb784bf84d84355cd509769a5594897c01932cca58b44f845bf69615f1e"
+++

## Overview {#overview}

Ubuntu gets pwned at Pwn2Own 2023, plus we cover security updates for vulns in
GitPython, object-path, amanda, url-parse and the Linux kernel - and we mention
the recording of Alex's Everything Open 2023 presentation as well.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

91 unique CVEs addressed


### [[USN-5968-1](https://ubuntu.com/security/notices/USN-5968-1)] GitPython vulnerability [00:46] {#usn-5968-1-gitpython-vulnerability-00-46}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-24439](https://ubuntu.com/security/CVE-2022-24439) <!-- medium -->
-   RCE via a malicious URL when cloning a repo - would call git clone under the
    hood and pass the purported URL in without any validation
-   Used as a dependency for other Python based tools etc - in particular by
    Bandit, Python security checking tool - used to scan python projects for
    security issues - would be ironic if a tool used to scan for security problems
    could be used to leverage an attack - so I took a quick look at the source
    code for bandit and it seems to only use GitPython to check if the current
    directory is a git repo or not - so would not be able to be exploited by this
    issue


### [[USN-5967-1](https://ubuntu.com/security/notices/USN-5967-1)] object-path vulnerabilities [02:11] {#usn-5967-1-object-path-vulnerabilities-02-11}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3805](https://ubuntu.com/security/CVE-2021-3805) <!-- medium -->
    -   [CVE-2021-23434](https://ubuntu.com/security/CVE-2021-23434) <!-- medium -->
    -   [CVE-2020-15256](https://ubuntu.com/security/CVE-2020-15256) <!-- low -->
-   all prototype pollution vulns - a type of injection attack that particularly
    applies for languages like Javascript, where an attacker can add arbitrary
    properties to global / default javascript objects that then get inherited by
    user-defined objects - and so can result in the ability to change the logic of
    the application or potentially even get remote code execution (depending on
    how those object properties are used by the application)


### [[USN-5942-2](https://ubuntu.com/security/notices/USN-5942-2)] Apache HTTP Server vulnerability [02:56] {#usn-5942-2-apache-http-server-vulnerability-02-56}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-25690](https://ubuntu.com/security/CVE-2023-25690) <!-- medium -->
-   request smuggling attack against `mod_proxy`


### [[USN-5966-1](https://ubuntu.com/security/notices/USN-5966-1), [USN-5966-2](https://ubuntu.com/security/notices/USN-5966-2)] amanda vulnerabilities [03:06] {#usn-5966-1-usn-5966-2-amanda-vulnerabilities-03-06}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-37705](https://ubuntu.com/security/CVE-2022-37705) <!-- high -->
    -   [CVE-2022-37704](https://ubuntu.com/security/CVE-2022-37704) <!-- medium -->
    -   [CVE-2022-37703](https://ubuntu.com/security/CVE-2022-37703) <!-- low -->
-   amanda has several suid-root binaries - each was able to be abused in a
    different way - one to see if a given directory existed or not (info leak),
    and the others to both get code execution etc - update introduced a regression
    which was then also fixed


### [[USN-5969-1](https://ubuntu.com/security/notices/USN-5969-1)] gif2apng vulnerabilities [04:00] {#usn-5969-1-gif2apng-vulnerabilities-04-00}

-   3 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-45911](https://ubuntu.com/security/CVE-2021-45911) <!-- medium -->
    -   [CVE-2021-45910](https://ubuntu.com/security/CVE-2021-45910) <!-- medium -->
    -   [CVE-2021-45909](https://ubuntu.com/security/CVE-2021-45909) <!-- medium -->


### [[USN-5971-1](https://ubuntu.com/security/notices/USN-5971-1)] Graphviz vulnerabilities [04:12] {#usn-5971-1-graphviz-vulnerabilities-04-12}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-18032](https://ubuntu.com/security/CVE-2020-18032) <!-- medium -->
    -   [CVE-2019-11023](https://ubuntu.com/security/CVE-2019-11023) <!-- low -->
    -   [CVE-2018-10196](https://ubuntu.com/security/CVE-2018-10196) <!-- low -->
-   2 different NULL ptr derefs, 1 buffer overflow -&gt; DoS / RCE


### [[USN-5954-2](https://ubuntu.com/security/notices/USN-5954-2)] Firefox regressions [04:40] {#usn-5954-2-firefox-regressions-04-40}

-   9 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2023-28161](https://ubuntu.com/security/CVE-2023-28161) <!-- low -->
    -   [CVE-2023-28164](https://ubuntu.com/security/CVE-2023-28164) <!-- medium -->
    -   [CVE-2023-28160](https://ubuntu.com/security/CVE-2023-28160) <!-- medium -->
    -   [CVE-2023-25751](https://ubuntu.com/security/CVE-2023-25751) <!-- medium -->
    -   [CVE-2023-28177](https://ubuntu.com/security/CVE-2023-28177) <!-- medium -->
    -   [CVE-2023-28176](https://ubuntu.com/security/CVE-2023-28176) <!-- medium -->
    -   [CVE-2023-28162](https://ubuntu.com/security/CVE-2023-28162) <!-- medium -->
    -   [CVE-2023-25752](https://ubuntu.com/security/CVE-2023-25752) <!-- medium -->
    -   [CVE-2023-25750](https://ubuntu.com/security/CVE-2023-25750) <!-- medium -->
-   111.0.1 - fixes a couple regressions on macOS and Windows apparently


### [[USN-5972-1](https://ubuntu.com/security/notices/USN-5972-1)] Thunderbird vulnerabilities [04:58] {#usn-5972-1-thunderbird-vulnerabilities-04-58}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-25752](https://ubuntu.com/security/CVE-2023-25752) <!-- medium -->
    -   [CVE-2023-28164](https://ubuntu.com/security/CVE-2023-28164) <!-- medium -->
    -   [CVE-2023-25751](https://ubuntu.com/security/CVE-2023-25751) <!-- medium -->
    -   [CVE-2023-28176](https://ubuntu.com/security/CVE-2023-28176) <!-- medium -->
    -   [CVE-2023-28162](https://ubuntu.com/security/CVE-2023-28162) <!-- medium -->
-   102.9.0


### [[USN-5973-1](https://ubuntu.com/security/notices/USN-5973-1)] url-parse vulnerabilities [05:11] {#usn-5973-1-url-parse-vulnerabilities-05-11}

-   8 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-0686](https://ubuntu.com/security/CVE-2022-0686) <!-- medium -->
    -   [CVE-2022-0691](https://ubuntu.com/security/CVE-2022-0691) <!-- medium -->
    -   [CVE-2022-0639](https://ubuntu.com/security/CVE-2022-0639) <!-- medium -->
    -   [CVE-2022-0512](https://ubuntu.com/security/CVE-2022-0512) <!-- medium -->
    -   [CVE-2021-3664](https://ubuntu.com/security/CVE-2021-3664) <!-- low -->
    -   [CVE-2021-27515](https://ubuntu.com/security/CVE-2021-27515) <!-- low -->
    -   [CVE-2020-8124](https://ubuntu.com/security/CVE-2020-8124) <!-- medium -->
    -   [CVE-2018-3774](https://ubuntu.com/security/CVE-2018-3774) <!-- medium -->
-   nodejs module for parsing URLs - even for such a seemingly simple task as
    parsing URLs, can have various vulnerabilities
    -   DoS, SSRF, open-redirect, or bypass various other authorisation checks
-   upstream project now recommends to use the URL interface from nodejs and the
    various browsers for "better security and accuracy"


### [[USN-5974-1](https://ubuntu.com/security/notices/USN-5974-1)] GraphicsMagick vulnerabilities [06:24] {#usn-5974-1-graphicsmagick-vulnerabilities-06-24}

-   7 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-1270](https://ubuntu.com/security/CVE-2022-1270) <!-- medium -->
    -   [CVE-2020-12672](https://ubuntu.com/security/CVE-2020-12672) <!-- medium -->
    -   [CVE-2019-11006](https://ubuntu.com/security/CVE-2019-11006) <!-- medium -->
    -   [CVE-2018-9018](https://ubuntu.com/security/CVE-2018-9018) <!-- medium -->
    -   [CVE-2018-5685](https://ubuntu.com/security/CVE-2018-5685) <!-- medium -->
    -   [CVE-2018-20189](https://ubuntu.com/security/CVE-2018-20189) <!-- medium -->
    -   [CVE-2018-20184](https://ubuntu.com/security/CVE-2018-20184) <!-- medium -->


### [[USN-5686-4](https://ubuntu.com/security/notices/USN-5686-4)] Git vulnerability [06:37] {#usn-5686-4-git-vulnerability-06-37}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-39253](https://ubuntu.com/security/CVE-2022-39253) <!-- medium -->
-   [[USN-5686-1] Git vulnerabilities from Episode 181]({{< relref "episode-181#usn-5686-1-git-vulnerabilities" >}})


### [[USN-5970-1](https://ubuntu.com/security/notices/USN-5970-1)] Linux kernel vulnerabilities [06:45] {#usn-5970-1-linux-kernel-vulnerabilities-06-45}

-   9 CVEs addressed in Kinetic (22.10)
    -   [CVE-2023-23559](https://ubuntu.com/security/CVE-2023-23559) <!-- medium -->
    -   [CVE-2023-1195](https://ubuntu.com/security/CVE-2023-1195) <!-- medium -->
    -   [CVE-2023-0469](https://ubuntu.com/security/CVE-2023-0469) <!-- medium -->
    -   [CVE-2023-0266](https://ubuntu.com/security/CVE-2023-0266) <!-- medium -->
    -   [CVE-2023-0045](https://ubuntu.com/security/CVE-2023-0045) <!-- low -->
    -   [CVE-2022-4382](https://ubuntu.com/security/CVE-2022-4382) <!-- low -->
    -   [CVE-2022-42329](https://ubuntu.com/security/CVE-2022-42329) <!-- medium -->
    -   [CVE-2022-42328](https://ubuntu.com/security/CVE-2022-42328) <!-- medium -->
    -   [CVE-2022-2196](https://ubuntu.com/security/CVE-2022-2196) <!-- medium -->


### [[LSN-0093-1](https://ubuntu.com/security/notices/LSN-0093-1)] Linux kernel vulnerability [07:15] {#lsn-0093-1-linux-kernel-vulnerability-07-15}

-   2 CVEs addressed in all the various Livepatch supported releases (LTS and
    16.04 ESM) across various different kernels
    -   [CVE-2023-0461](https://ubuntu.com/security/CVE-2023-0461) <!-- high -->
    -   [CVE-2023-0179](https://ubuntu.com/security/CVE-2023-0179) <!-- high -->
-   UAF in Upper Level Protocol and buffer overflow in netfilter when handling
    VLAN headers - both could allow a local user to DoS / code execution in kernel
    -&gt; EoP

| Kernel type     | 22.04 | 20.04 | 18.04 | 16.04 |
|-----------------|-------|-------|-------|-------|
| aws             | 93.1  | 93.1  | 93.1  | —     |
| aws-5.15        | —     | 93.1  | —     | —     |
| aws-5.4         | —     | —     | 93.1  | —     |
| aws-hwe         | —     | —     | —     | 93.1  |
| azure           | 93.1  | 93.1  | —     | 93.1  |
| azure-4.15      | —     | —     | 93.1  | —     |
| azure-5.4       | —     | —     | 93.1  | —     |
| gcp             | 93.2  | 93.1  | —     | 93.1  |
| gcp-4.15        | —     | —     | 93.1  | —     |
| gcp-5.15        | —     | 93.2  | —     | —     |
| gcp-5.4         | —     | —     | 93.1  | —     |
| generic-4.15    | —     | —     | 93.1  | 93.1  |
| generic-5.4     | —     | 93.1  | 93.1  | —     |
| gke             | 93.2  | 93.1  | —     | —     |
| gke-4.15        | —     | —     | 93.1  | —     |
| gke-5.15        | —     | 93.2  | —     | —     |
| gke-5.4         | —     | —     | 93.1  | —     |
| gkeop           | —     | 93.1  | —     | —     |
| gkeop-5.4       | —     | —     | 93.1  | —     |
| ibm             | 93.1  | 93.1  | —     | —     |
| linux           | 93.1  | —     | —     | —     |
| lowlatency-4.15 | —     | —     | 93.1  | 93.1  |
| lowlatency-5.4  | —     | 93.1  | 93.1  | —     |
| oem             | —     | —     | 93.1  | —     |

To check your kernel type and Livepatch version, enter this command:

```shell
canonical-livepatch status
```


### [[USN-5975-1](https://ubuntu.com/security/notices/USN-5975-1)] Linux kernel vulnerabilities {#usn-5975-1-linux-kernel-vulnerabilities}

-   31 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-28328](https://ubuntu.com/security/CVE-2023-28328) <!-- medium -->
    -   [CVE-2023-26607](https://ubuntu.com/security/CVE-2023-26607) <!-- low -->
    -   [CVE-2023-23559](https://ubuntu.com/security/CVE-2023-23559) <!-- medium -->
    -   [CVE-2023-23455](https://ubuntu.com/security/CVE-2023-23455) <!-- medium -->
    -   [CVE-2023-0394](https://ubuntu.com/security/CVE-2023-0394) <!-- medium -->
    -   [CVE-2023-0266](https://ubuntu.com/security/CVE-2023-0266) <!-- medium -->
    -   [CVE-2023-0045](https://ubuntu.com/security/CVE-2023-0045) <!-- low -->
    -   [CVE-2022-47929](https://ubuntu.com/security/CVE-2022-47929) <!-- medium -->
    -   [CVE-2022-43750](https://ubuntu.com/security/CVE-2022-43750) <!-- medium -->
    -   [CVE-2022-42895](https://ubuntu.com/security/CVE-2022-42895) <!-- medium -->
    -   [CVE-2022-42329](https://ubuntu.com/security/CVE-2022-42329) <!-- medium -->
    -   [CVE-2022-42328](https://ubuntu.com/security/CVE-2022-42328) <!-- medium -->
    -   [CVE-2022-41850](https://ubuntu.com/security/CVE-2022-41850) <!-- low -->
    -   [CVE-2022-41849](https://ubuntu.com/security/CVE-2022-41849) <!-- low -->
    -   [CVE-2022-41218](https://ubuntu.com/security/CVE-2022-41218) <!-- low -->
    -   [CVE-2022-39842](https://ubuntu.com/security/CVE-2022-39842) <!-- low -->
    -   [CVE-2022-3649](https://ubuntu.com/security/CVE-2022-3649) <!-- medium -->
    -   [CVE-2022-3646](https://ubuntu.com/security/CVE-2022-3646) <!-- medium -->
    -   [CVE-2022-3640](https://ubuntu.com/security/CVE-2022-3640) <!-- medium -->
    -   [CVE-2022-36280](https://ubuntu.com/security/CVE-2022-36280) <!-- medium -->
    -   [CVE-2022-3628](https://ubuntu.com/security/CVE-2022-3628) <!-- medium -->
    -   [CVE-2022-3545](https://ubuntu.com/security/CVE-2022-3545) <!-- medium -->
    -   [CVE-2022-3521](https://ubuntu.com/security/CVE-2022-3521) <!-- medium -->
    -   [CVE-2022-3424](https://ubuntu.com/security/CVE-2022-3424) <!-- medium -->
    -   [CVE-2022-29901](https://ubuntu.com/security/CVE-2022-29901) <!-- medium -->
    -   [CVE-2022-29900](https://ubuntu.com/security/CVE-2022-29900) <!-- medium -->
    -   [CVE-2022-2663](https://ubuntu.com/security/CVE-2022-2663) <!-- medium -->
    -   [CVE-2022-26373](https://ubuntu.com/security/CVE-2022-26373) <!-- medium -->
    -   [CVE-2022-20369](https://ubuntu.com/security/CVE-2022-20369) <!-- medium -->
    -   [CVE-2021-3669](https://ubuntu.com/security/CVE-2021-3669) <!-- low -->
    -   [CVE-2023-0461](https://ubuntu.com/security/CVE-2023-0461) <!-- high -->


### [[USN-5976-1](https://ubuntu.com/security/notices/USN-5976-1)] Linux kernel (OEM) vulnerabilities {#usn-5976-1-linux-kernel--oem--vulnerabilities}

-   9 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-0394](https://ubuntu.com/security/CVE-2023-0394) <!-- medium -->
    -   [CVE-2022-41850](https://ubuntu.com/security/CVE-2022-41850) <!-- low -->
    -   [CVE-2022-3649](https://ubuntu.com/security/CVE-2022-3649) <!-- medium -->
    -   [CVE-2022-3646](https://ubuntu.com/security/CVE-2022-3646) <!-- medium -->
    -   [CVE-2022-36280](https://ubuntu.com/security/CVE-2022-36280) <!-- medium -->
    -   [CVE-2022-3628](https://ubuntu.com/security/CVE-2022-3628) <!-- medium -->
    -   [CVE-2022-3061](https://ubuntu.com/security/CVE-2022-3061) <!-- medium -->
    -   [CVE-2022-2196](https://ubuntu.com/security/CVE-2022-2196) <!-- medium -->
    -   [CVE-2023-0461](https://ubuntu.com/security/CVE-2023-0461) <!-- high -->


### [[USN-5977-1](https://ubuntu.com/security/notices/USN-5977-1)] Linux kernel (OEM) vulnerabilities {#usn-5977-1-linux-kernel--oem--vulnerabilities}

-   3 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-1032](https://ubuntu.com/security/CVE-2023-1032) <!-- medium -->
    -   [CVE-2022-2196](https://ubuntu.com/security/CVE-2022-2196) <!-- medium -->
    -   [CVE-2023-1281](https://ubuntu.com/security/CVE-2023-1281) <!-- high -->


### [[USN-5978-1](https://ubuntu.com/security/notices/USN-5978-1)] Linux kernel (OEM) vulnerabilities {#usn-5978-1-linux-kernel--oem--vulnerabilities}

-   12 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-26545](https://ubuntu.com/security/CVE-2023-26545) <!-- medium -->
    -   [CVE-2023-23559](https://ubuntu.com/security/CVE-2023-23559) <!-- medium -->
    -   [CVE-2023-1078](https://ubuntu.com/security/CVE-2023-1078) <!-- medium -->
    -   [CVE-2023-1075](https://ubuntu.com/security/CVE-2023-1075) <!-- medium -->
    -   [CVE-2023-1074](https://ubuntu.com/security/CVE-2023-1074) <!-- medium -->
    -   [CVE-2023-1073](https://ubuntu.com/security/CVE-2023-1073) <!-- medium -->
    -   [CVE-2023-0394](https://ubuntu.com/security/CVE-2023-0394) <!-- medium -->
    -   [CVE-2022-4842](https://ubuntu.com/security/CVE-2022-4842) <!-- medium -->
    -   [CVE-2022-4382](https://ubuntu.com/security/CVE-2022-4382) <!-- low -->
    -   [CVE-2022-27672](https://ubuntu.com/security/CVE-2022-27672) <!-- medium -->
    -   [CVE-2022-2196](https://ubuntu.com/security/CVE-2022-2196) <!-- medium -->
    -   [CVE-2023-1281](https://ubuntu.com/security/CVE-2023-1281) <!-- high -->


### [[USN-5979-1](https://ubuntu.com/security/notices/USN-5979-1)] Linux kernel (HWE) vulnerabilities {#usn-5979-1-linux-kernel--hwe--vulnerabilities}

-   9 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-23559](https://ubuntu.com/security/CVE-2023-23559) <!-- medium -->
    -   [CVE-2023-1195](https://ubuntu.com/security/CVE-2023-1195) <!-- medium -->
    -   [CVE-2023-0469](https://ubuntu.com/security/CVE-2023-0469) <!-- medium -->
    -   [CVE-2023-0266](https://ubuntu.com/security/CVE-2023-0266) <!-- medium -->
    -   [CVE-2023-0045](https://ubuntu.com/security/CVE-2023-0045) <!-- low -->
    -   [CVE-2022-4382](https://ubuntu.com/security/CVE-2022-4382) <!-- low -->
    -   [CVE-2022-42329](https://ubuntu.com/security/CVE-2022-42329) <!-- medium -->
    -   [CVE-2022-42328](https://ubuntu.com/security/CVE-2022-42328) <!-- medium -->
    -   [CVE-2022-2196](https://ubuntu.com/security/CVE-2022-2196) <!-- medium -->


### [[USN-5980-1](https://ubuntu.com/security/notices/USN-5980-1)] Linux kernel vulnerabilities {#usn-5980-1-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-23559](https://ubuntu.com/security/CVE-2023-23559) <!-- medium -->
    -   [CVE-2022-4382](https://ubuntu.com/security/CVE-2022-4382) <!-- low -->
    -   [CVE-2022-2196](https://ubuntu.com/security/CVE-2022-2196) <!-- medium -->
    -   [CVE-2021-3669](https://ubuntu.com/security/CVE-2021-3669) <!-- low -->


### [[USN-5981-1](https://ubuntu.com/security/notices/USN-5981-1)] Linux kernel vulnerabilities {#usn-5981-1-linux-kernel-vulnerabilities}

-   11 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-28328](https://ubuntu.com/security/CVE-2023-28328) <!-- medium -->
    -   [CVE-2023-23559](https://ubuntu.com/security/CVE-2023-23559) <!-- medium -->
    -   [CVE-2023-23455](https://ubuntu.com/security/CVE-2023-23455) <!-- medium -->
    -   [CVE-2023-0394](https://ubuntu.com/security/CVE-2023-0394) <!-- medium -->
    -   [CVE-2023-0266](https://ubuntu.com/security/CVE-2023-0266) <!-- medium -->
    -   [CVE-2023-0045](https://ubuntu.com/security/CVE-2023-0045) <!-- low -->
    -   [CVE-2022-47929](https://ubuntu.com/security/CVE-2022-47929) <!-- medium -->
    -   [CVE-2022-41218](https://ubuntu.com/security/CVE-2022-41218) <!-- low -->
    -   [CVE-2022-36280](https://ubuntu.com/security/CVE-2022-36280) <!-- medium -->
    -   [CVE-2022-3424](https://ubuntu.com/security/CVE-2022-3424) <!-- medium -->
    -   [CVE-2021-3669](https://ubuntu.com/security/CVE-2021-3669) <!-- low -->


### [[USN-5982-1](https://ubuntu.com/security/notices/USN-5982-1)] Linux kernel vulnerabilities {#usn-5982-1-linux-kernel-vulnerabilities}

-   15 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-28328](https://ubuntu.com/security/CVE-2023-28328) <!-- medium -->
    -   [CVE-2023-26606](https://ubuntu.com/security/CVE-2023-26606) <!-- medium -->
    -   [CVE-2023-23559](https://ubuntu.com/security/CVE-2023-23559) <!-- medium -->
    -   [CVE-2023-23455](https://ubuntu.com/security/CVE-2023-23455) <!-- medium -->
    -   [CVE-2023-23454](https://ubuntu.com/security/CVE-2023-23454) <!-- medium -->
    -   [CVE-2023-0266](https://ubuntu.com/security/CVE-2023-0266) <!-- medium -->
    -   [CVE-2023-0210](https://ubuntu.com/security/CVE-2023-0210) <!-- medium -->
    -   [CVE-2023-0045](https://ubuntu.com/security/CVE-2023-0045) <!-- low -->
    -   [CVE-2022-48424](https://ubuntu.com/security/CVE-2022-48424) <!-- low -->
    -   [CVE-2022-48423](https://ubuntu.com/security/CVE-2022-48423) <!-- medium -->
    -   [CVE-2022-4382](https://ubuntu.com/security/CVE-2022-4382) <!-- low -->
    -   [CVE-2022-41218](https://ubuntu.com/security/CVE-2022-41218) <!-- low -->
    -   [CVE-2022-36280](https://ubuntu.com/security/CVE-2022-36280) <!-- medium -->
    -   [CVE-2022-3424](https://ubuntu.com/security/CVE-2022-3424) <!-- medium -->
    -   [CVE-2022-2196](https://ubuntu.com/security/CVE-2022-2196) <!-- medium -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### pwn2own 2023 [08:02] {#pwn2own-2023-08-02}

-   pwn2own - part of CanSecWest security conference in Vancouver, Canada
-   originally started as an informal event, now is organised by Trend's ZDI and
    is attended by many of the best offensive security research teams in the world
-   compete to hack various known targets under various categories
-   Runs over 3 days
-   Ubuntu Desktop was a target again this year, in particular in the local user
    elevation of privilege category - standard unprivileged user account which can
    be used to escalate privileges to root - targeting the latest Ubuntu interim
    release 22.10 (Kinetic)
-   competitors get 3 attempts, each with a time limit of 10 minutes to get their
    exploit to work
-   From our side, we had a team of 4 engineers (Steve Beattie, John Johansen and
    Georgia Garcia from the Ubuntu Security team and Thadeu Cascardo from the
    Ubuntu Kernel team) who were on call to be shown the exploit and vulnerability
    and within 30 minutes would have to determine if it was already known or not
-   Day 1 saw 2 attempts
    -   one unsuccessful, the other was a previously known (but unpatched)
-   Day 2 saw 1 successful attempt (incorrect pointer scaling issue)
-   Day 3 saw 3 successful attempts
    -   one also previously known, the other two double free and a UAF
-   In total, 6 separate teams targeted Ubuntu Desktop, 5 were successful, and the
    other was not able to get their exploit to work in the allotted time limit
    -   Details surrounding all of these vulnerabilities is embargoed for now, but
        will become available in the future
    -   Only minor details have been released publicly by ZDI at this time (ie
        incorrect pointer scaling, double free and UAF) but all (unsurprisingly)
        related to the memory unsafety of C
-   Interesting to see the macOS was only targeted once (successful), and Windows
    11 twice (both successful too) yet Ubuntu had 6
-   Yet last year, there were 6 for WIndows 11, and 4 for Ubuntu
-   Is Ubuntu seen as an easy target? Or are there more security researchers
    looking at Ubuntu compared to Windows nowadays?
-   Does the open source nature of Linux make it easier to find vulns since the
    source code is easily able to be inspected?
-   Pace of development of the upstream kernel is quite fast, lots of new
    subsystems like `io_uring` and large attack surfaces through unprivileged user
    namespaces perhaps make Ubuntu more of an easy target
    -   Part of the motivation to want to restrict access to unprivileged user
        namespaces in the future
-   More details to follow once vulns have been made public
-   Thanks to Steve, JJ, Georgia and Thadeu
-   [Day 1 Results](https://www.zerodayinitiative.com/blog/2023/3/22/pwn2own-vancouver-2023-day-one-results)
-   [Day 2 Results](https://www.zerodayinitiative.com/blog/2023/3/23/pwn2own-vancouver-2023-day-two-results)
-   [Day 3 Results](https://www.zerodayinitiative.com/blog/2023/3/24/pwn2own-vancouver-2023-day)


### Securing a distro and you own open source project - Everything Open 2023 [14:27] {#securing-a-distro-and-you-own-open-source-project-everything-open-2023-14-27}

-   <https://youtu.be/a-_5aJIjjLQ>
-   Ubuntu is one of the most popular Linux distributions and is used by millions
    of people all over the world. It contains software from a wide array of
    different upstream projects and communities across a number of different
    language ecosystems. Ubuntu also aims to provide the best user experience for
    consuming all these various pieces of software, whilst being both as secure
    and usable as possible.

-   The Ubuntu Security team is responsible for keeping all of this software
    secure and patched against known vulnerabilities, as well as proactively
    looking for new possible security issues, and finally for ensuring the
    distribution as a whole is secured through proactive hardening work. They also
    have a huge depth of experience in working with upstream open source projects
    to report, manage patch and disclose security vulnerabilities. Find out both
    how they keep Ubuntu secure and how you can improve the security of your own
    open source project or the projects you contribute to.


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
