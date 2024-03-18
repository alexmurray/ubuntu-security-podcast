+++
title = "Episode 222"
description = """
  We cover recent Linux malware from the Magnet Goblin threat actor, plus the news
  of Ubuntu 23.10 as a target in Pwn2Own Vancouver 2024 and we detail
  vulnerabilities in the Puma, AccountsService, Open vSwitch, OVN, and more.
  """
date = 2024-03-18T14:32:00+10:30
lastmod = 2024-03-18T14:33:34+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E222.mp3"
podcast_duration = 1446
podcast_bytes = 25349545
permalink = "https://ubuntusecuritypodcast.org/episode-222/"
guid = "ff852f280b70cd8d6aa50eaa1d446f2a985c11666f1667ce5118acee340a3de659acc42b1c05f76f07e35f2c7f56a4bf297c94244725986733e7cdcf03cc108b"
+++

## Overview {#overview}

We cover recent Linux malware from the Magnet Goblin threat actor, plus the news
of Ubuntu 23.10 as a target in Pwn2Own Vancouver 2024 and we detail
vulnerabilities in the Puma, AccountsService, Open vSwitch, OVN, and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

102 unique CVEs addressed


### [[USN-6679-1](https://ubuntu.com/security/notices/USN-6679-1)] FRR vulnerability (01:11) {#usn-6679-1-frr-vulnerability--01-11}

-   1 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-27913](https://ubuntu.com/security/CVE-2024-27913) <!-- medium -->
-   OOB read when parsing a malformed OSPF LSA packet - would try and access
    attributes fields even if none where present


### [[LSN-0101-1](https://ubuntu.com/security/notices/LSN-0101-1)] Linux kernel vulnerability (01:50) {#lsn-0101-1-linux-kernel-vulnerability--01-50}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-0646](https://ubuntu.com/security/CVE-2024-0646) <!-- high -->
    -   [CVE-2024-0193](https://ubuntu.com/security/CVE-2024-0193) <!-- high -->
    -   [CVE-2023-7192](https://ubuntu.com/security/CVE-2023-7192) <!-- high -->
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
    -   [CVE-2023-6817](https://ubuntu.com/security/CVE-2023-6817) <!-- high -->
-   [[USN-6648-1] Linux kernel vulnerabilities from Episode 220]({{< relref "episode-220#usn-6648-1-linux-kernel-vulnerabilities--02-00" >}})
-   [[USN-6606-1] Linux kernel (OEM) vulnerabilities from Episode 217]({{< relref "episode-217#usn-6606-1-linux-kernel--oem--vulnerabilities--03-04" >}})
-   [[USN-6647-1] Linux kernel vulnerabilities from Episode 220]({{< relref "episode-220#usn-6647-1-linux-kernel-vulnerabilities--01-14" >}})
-   [[USN-6601-1] Linux kernel vulnerability from Episode 217]({{< relref "episode-217#usn-6601-1-linux-kernel-vulnerability--01-16" >}})

| Kernel type     | 22.04 | 20.04 | 18.04 | 16.04 | 14.04 |
|-----------------|-------|-------|-------|-------|-------|
| aws             | 101.1 | 101.1 | 101.1 | 101.1 | —     |
| aws-5.15        | —     | 101.1 | —     | —     | —     |
| aws-5.4         | —     | —     | 101.1 | —     | —     |
| aws-6.5         | 101.1 | —     | —     | —     | —     |
| aws-hwe         | —     | —     | —     | 101.1 | —     |
| azure           | 101.1 | 101.1 | —     | 101.1 | —     |
| azure-4.15      | —     | —     | 101.1 | —     | —     |
| azure-5.4       | —     | —     | 101.1 | —     | —     |
| azure-6.5       | 101.1 | —     | —     | —     | —     |
| gcp             | 101.1 | 101.1 | —     | 101.1 | —     |
| gcp-4.15        | —     | —     | 101.1 | —     | —     |
| gcp-5.15        | —     | 101.1 | —     | —     | —     |
| gcp-5.4         | —     | —     | 101.1 | —     | —     |
| gcp-6.5         | 101.1 | —     | —     | —     | —     |
| generic-4.15    | —     | —     | 101.1 | 101.1 | —     |
| generic-4.4     | —     | —     | —     | 101.1 | 101.1 |
| generic-5.15    | —     | 101.2 | —     | —     | —     |
| generic-5.4     | —     | 101.1 | 101.1 | —     | —     |
| gke             | 101.1 | —     | —     | —     | —     |
| gke-5.15        | —     | 101.1 | —     | —     | —     |
| gkeop           | —     | 101.1 | —     | —     | —     |
| hwe-6.5         | 101.1 | —     | —     | —     | —     |
| ibm             | 101.1 | 101.1 | —     | —     | —     |
| ibm-5.15        | —     | 101.1 | —     | —     | —     |
| linux           | 101.2 | —     | —     | —     | —     |
| lowlatency-4.15 | —     | —     | 101.1 | 101.1 | —     |
| lowlatency-4.4  | —     | —     | —     | 101.1 | 101.1 |
| lowlatency-5.15 | —     | 101.2 | —     | —     | —     |
| lowlatency-5.4  | —     | 101.1 | 101.1 | —     | —     |

To check your kernel type and Livepatch version, enter this command:

```shell
canonical-livepatch status
```


### [[USN-6680-1](https://ubuntu.com/security/notices/USN-6680-1)] Linux kernel vulnerabilities (02:47) {#usn-6680-1-linux-kernel-vulnerabilities--02-47}

-   7 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-25744](https://ubuntu.com/security/CVE-2024-25744) <!-- medium -->
    -   [CVE-2024-0607](https://ubuntu.com/security/CVE-2024-0607) <!-- medium -->
    -   [CVE-2023-6560](https://ubuntu.com/security/CVE-2023-6560) <!-- medium -->
    -   [CVE-2023-6121](https://ubuntu.com/security/CVE-2023-6121) <!-- medium -->
    -   [CVE-2023-51782](https://ubuntu.com/security/CVE-2023-51782) <!-- medium -->
    -   [CVE-2023-51779](https://ubuntu.com/security/CVE-2023-51779) <!-- medium -->
    -   [CVE-2023-46343](https://ubuntu.com/security/CVE-2023-46343) <!-- medium -->


### [[USN-6681-1](https://ubuntu.com/security/notices/USN-6681-1)] Linux kernel vulnerabilities {#usn-6681-1-linux-kernel-vulnerabilities}

-   8 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2024-0340](https://ubuntu.com/security/CVE-2024-0340) <!-- low -->
    -   [CVE-2023-6121](https://ubuntu.com/security/CVE-2023-6121) <!-- medium -->
    -   [CVE-2023-51782](https://ubuntu.com/security/CVE-2023-51782) <!-- medium -->
    -   [CVE-2023-51780](https://ubuntu.com/security/CVE-2023-51780) <!-- medium -->
    -   [CVE-2023-51779](https://ubuntu.com/security/CVE-2023-51779) <!-- medium -->
    -   [CVE-2023-4244](https://ubuntu.com/security/CVE-2023-4244) <!-- high -->
    -   [CVE-2023-22995](https://ubuntu.com/security/CVE-2023-22995) <!-- low -->
    -   [CVE-2021-44879](https://ubuntu.com/security/CVE-2021-44879) <!-- low -->


### [[USN-6686-1](https://ubuntu.com/security/notices/USN-6686-1)] Linux kernel vulnerabilities {#usn-6686-1-linux-kernel-vulnerabilities}

-   9 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-0607](https://ubuntu.com/security/CVE-2024-0607) <!-- medium -->
    -   [CVE-2024-0340](https://ubuntu.com/security/CVE-2024-0340) <!-- low -->
    -   [CVE-2023-6121](https://ubuntu.com/security/CVE-2023-6121) <!-- medium -->
    -   [CVE-2023-51782](https://ubuntu.com/security/CVE-2023-51782) <!-- medium -->
    -   [CVE-2023-51779](https://ubuntu.com/security/CVE-2023-51779) <!-- medium -->
    -   [CVE-2023-46862](https://ubuntu.com/security/CVE-2023-46862) <!-- medium -->
    -   [CVE-2023-46343](https://ubuntu.com/security/CVE-2023-46343) <!-- medium -->
    -   [CVE-2023-4134](https://ubuntu.com/security/CVE-2023-4134) <!-- low -->
    -   [CVE-2023-22995](https://ubuntu.com/security/CVE-2023-22995) <!-- low -->


### [[USN-6680-2](https://ubuntu.com/security/notices/USN-6680-2)] Linux kernel vulnerabilities {#usn-6680-2-linux-kernel-vulnerabilities}

-   7 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-25744](https://ubuntu.com/security/CVE-2024-25744) <!-- medium -->
    -   [CVE-2024-0607](https://ubuntu.com/security/CVE-2024-0607) <!-- medium -->
    -   [CVE-2023-6560](https://ubuntu.com/security/CVE-2023-6560) <!-- medium -->
    -   [CVE-2023-6121](https://ubuntu.com/security/CVE-2023-6121) <!-- medium -->
    -   [CVE-2023-51782](https://ubuntu.com/security/CVE-2023-51782) <!-- medium -->
    -   [CVE-2023-51779](https://ubuntu.com/security/CVE-2023-51779) <!-- medium -->
    -   [CVE-2023-46343](https://ubuntu.com/security/CVE-2023-46343) <!-- medium -->


### [[USN-6681-2](https://ubuntu.com/security/notices/USN-6681-2)] Linux kernel vulnerabilities {#usn-6681-2-linux-kernel-vulnerabilities}

-   8 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2024-0340](https://ubuntu.com/security/CVE-2024-0340) <!-- low -->
    -   [CVE-2023-6121](https://ubuntu.com/security/CVE-2023-6121) <!-- medium -->
    -   [CVE-2023-51782](https://ubuntu.com/security/CVE-2023-51782) <!-- medium -->
    -   [CVE-2023-51780](https://ubuntu.com/security/CVE-2023-51780) <!-- medium -->
    -   [CVE-2023-51779](https://ubuntu.com/security/CVE-2023-51779) <!-- medium -->
    -   [CVE-2023-4244](https://ubuntu.com/security/CVE-2023-4244) <!-- high -->
    -   [CVE-2023-22995](https://ubuntu.com/security/CVE-2023-22995) <!-- low -->
    -   [CVE-2021-44879](https://ubuntu.com/security/CVE-2021-44879) <!-- low -->


### [[USN-6688-1](https://ubuntu.com/security/notices/USN-6688-1)] Linux kernel (OEM) vulnerabilities (03:32) {#usn-6688-1-linux-kernel--oem--vulnerabilities--03-32}

-   63 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2024-26600](https://ubuntu.com/security/CVE-2024-26600) <!-- medium -->
    -   [CVE-2023-52467](https://ubuntu.com/security/CVE-2023-52467) <!-- low -->
    -   [CVE-2023-52588](https://ubuntu.com/security/CVE-2023-52588) <!-- medium -->
    -   [CVE-2023-52594](https://ubuntu.com/security/CVE-2023-52594) <!-- medium -->
    -   [CVE-2023-52470](https://ubuntu.com/security/CVE-2023-52470) <!-- low -->
    -   [CVE-2024-26598](https://ubuntu.com/security/CVE-2024-26598) <!-- medium -->
    -   [CVE-2023-52589](https://ubuntu.com/security/CVE-2023-52589) <!-- medium -->
    -   [CVE-2023-52583](https://ubuntu.com/security/CVE-2023-52583) <!-- negligible -->
    -   [CVE-2023-52444](https://ubuntu.com/security/CVE-2023-52444) <!-- medium -->
    -   [CVE-2023-52449](https://ubuntu.com/security/CVE-2023-52449) <!-- medium -->
    -   [CVE-2024-26591](https://ubuntu.com/security/CVE-2024-26591) <!-- medium -->
    -   [CVE-2023-52598](https://ubuntu.com/security/CVE-2023-52598) <!-- medium -->
    -   [CVE-2023-52448](https://ubuntu.com/security/CVE-2023-52448) <!-- medium -->
    -   [CVE-2024-26597](https://ubuntu.com/security/CVE-2024-26597) <!-- high -->
    -   [CVE-2023-52605](https://ubuntu.com/security/CVE-2023-52605) <!-- medium -->
    -   [CVE-2023-52451](https://ubuntu.com/security/CVE-2023-52451) <!-- medium -->
    -   [CVE-2023-52454](https://ubuntu.com/security/CVE-2023-52454) <!-- medium -->
    -   [CVE-2023-52445](https://ubuntu.com/security/CVE-2023-52445) <!-- medium -->
    -   [CVE-2023-52587](https://ubuntu.com/security/CVE-2023-52587) <!-- medium -->
    -   [CVE-2023-52447](https://ubuntu.com/security/CVE-2023-52447) <!-- medium -->
    -   [CVE-2023-52436](https://ubuntu.com/security/CVE-2023-52436) <!-- medium -->
    -   [CVE-2023-52593](https://ubuntu.com/security/CVE-2023-52593) <!-- medium -->
    -   [CVE-2023-52601](https://ubuntu.com/security/CVE-2023-52601) <!-- medium -->
    -   [CVE-2024-26594](https://ubuntu.com/security/CVE-2024-26594) <!-- medium -->
    -   [CVE-2024-26592](https://ubuntu.com/security/CVE-2024-26592) <!-- medium -->
    -   [CVE-2024-26589](https://ubuntu.com/security/CVE-2024-26589) <!-- medium -->
    -   [CVE-2023-52462](https://ubuntu.com/security/CVE-2023-52462) <!-- medium -->
    -   [CVE-2023-52469](https://ubuntu.com/security/CVE-2023-52469) <!-- low -->
    -   [CVE-2023-52438](https://ubuntu.com/security/CVE-2023-52438) <!-- medium -->
    -   [CVE-2023-52457](https://ubuntu.com/security/CVE-2023-52457) <!-- medium -->
    -   [CVE-2023-52458](https://ubuntu.com/security/CVE-2023-52458) <!-- medium -->
    -   [CVE-2023-52595](https://ubuntu.com/security/CVE-2023-52595) <!-- medium -->
    -   [CVE-2023-52597](https://ubuntu.com/security/CVE-2023-52597) <!-- medium -->
    -   [CVE-2023-52464](https://ubuntu.com/security/CVE-2023-52464) <!-- medium -->
    -   [CVE-2023-52463](https://ubuntu.com/security/CVE-2023-52463) <!-- medium -->
    -   [CVE-2023-52606](https://ubuntu.com/security/CVE-2023-52606) <!-- medium -->
    -   [CVE-2024-26625](https://ubuntu.com/security/CVE-2024-26625) <!-- medium -->
    -   [CVE-2023-52584](https://ubuntu.com/security/CVE-2023-52584) <!-- medium -->
    -   [CVE-2024-26624](https://ubuntu.com/security/CVE-2024-26624) <!-- medium -->
    -   [CVE-2023-52600](https://ubuntu.com/security/CVE-2023-52600) <!-- medium -->
    -   [CVE-2024-26581](https://ubuntu.com/security/CVE-2024-26581) <!-- medium -->
    -   [CVE-2024-26588](https://ubuntu.com/security/CVE-2024-26588) <!-- medium -->
    -   [CVE-2023-52603](https://ubuntu.com/security/CVE-2023-52603) <!-- medium -->
    -   [CVE-2023-52599](https://ubuntu.com/security/CVE-2023-52599) <!-- medium -->
    -   [CVE-2023-52443](https://ubuntu.com/security/CVE-2023-52443) <!-- medium -->
    -   [CVE-2023-52602](https://ubuntu.com/security/CVE-2023-52602) <!-- medium -->
    -   [CVE-2023-52456](https://ubuntu.com/security/CVE-2023-52456) <!-- medium -->
    -   [CVE-2023-52607](https://ubuntu.com/security/CVE-2023-52607) <!-- low -->
    -   [CVE-2024-26628](https://ubuntu.com/security/CVE-2024-26628) <!-- medium -->
    -   [CVE-2024-26601](https://ubuntu.com/security/CVE-2024-26601) <!-- medium -->
    -   [CVE-2024-26627](https://ubuntu.com/security/CVE-2024-26627) <!-- medium -->
    -   [CVE-2023-52439](https://ubuntu.com/security/CVE-2023-52439) <!-- medium -->
    -   [CVE-2023-52604](https://ubuntu.com/security/CVE-2023-52604) <!-- medium -->
    -   [CVE-2024-26599](https://ubuntu.com/security/CVE-2024-26599) <!-- medium -->
    -   [CVE-2024-24860](https://ubuntu.com/security/CVE-2024-24860) <!-- low -->
    -   [CVE-2024-23849](https://ubuntu.com/security/CVE-2024-23849) <!-- low -->
    -   [CVE-2024-1086](https://ubuntu.com/security/CVE-2024-1086) <!-- high -->
    -   [CVE-2024-1085](https://ubuntu.com/security/CVE-2024-1085) <!-- high -->
    -   [CVE-2024-0340](https://ubuntu.com/security/CVE-2024-0340) <!-- low -->
    -   [CVE-2023-6610](https://ubuntu.com/security/CVE-2023-6610) <!-- medium -->
    -   [CVE-2023-5633](https://ubuntu.com/security/CVE-2023-5633) <!-- high -->
    -   [CVE-2023-50431](https://ubuntu.com/security/CVE-2023-50431) <!-- medium -->
    -   [CVE-2023-46838](https://ubuntu.com/security/CVE-2023-46838) <!-- medium -->


### [[USN-6682-1](https://ubuntu.com/security/notices/USN-6682-1)] Puma vulnerabilities (05:00) {#usn-6682-1-puma-vulnerabilities--05-00}

-   6 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-21647](https://ubuntu.com/security/CVE-2024-21647) <!-- medium -->
    -   [CVE-2023-40175](https://ubuntu.com/security/CVE-2023-40175) <!-- medium -->
    -   [CVE-2022-24790](https://ubuntu.com/security/CVE-2022-24790) <!-- medium -->
    -   [CVE-2022-23634](https://ubuntu.com/security/CVE-2022-23634) <!-- medium -->
    -   [CVE-2020-11077](https://ubuntu.com/security/CVE-2020-11077) <!-- medium -->
    -   [CVE-2020-11076](https://ubuntu.com/security/CVE-2020-11076) <!-- medium -->
-   HTTP server for Ruby/Rack applications that uses threading for improved performance
-   [[USN-6597-1] Puma vulnerability from Episode 217]({{< relref "episode-217#usn-6597-1-puma-vulnerability--04-24" >}}) - HTTP request smuggling
    attack - fixed for mantic and lunar - now for older releases, plus a bunch of
    other older HTTP request smuggling issues as well


### [[USN-6683-1](https://ubuntu.com/security/notices/USN-6683-1)] HtmlCleaner vulnerability (05:45) {#usn-6683-1-htmlcleaner-vulnerability--05-45}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-34624](https://ubuntu.com/security/CVE-2023-34624) <!-- low -->
-   Java library for parsing HTML
-   DoS through crafted objects with cyclic dependencies


### [[USN-6684-1](https://ubuntu.com/security/notices/USN-6684-1)] ncurses vulnerability (06:01) {#usn-6684-1-ncurses-vulnerability--06-01}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-50495](https://ubuntu.com/security/CVE-2023-50495) <!-- low -->
-   Possible issue when parsing terminfo files - these are generally trusted, and
    since the previous update for CVE-2023-29491 in
    [[USN-6099-1] ncurses vulnerabilities from
    Episode 196]({{< relref "episode-196#usn-6099-1-ncurses-vulnerabilities--07-27" >}}) untrusted terminfo files are not parsed when the application is
    setuid root. So has no real security impact.


### [[USN-6685-1](https://ubuntu.com/security/notices/USN-6685-1)] mqtt-client vulnerability () {#usn-6685-1-mqtt-client-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2019-0222](https://ubuntu.com/security/CVE-2019-0222) <!-- medium -->
-   Java MQTT Client library
-   Unmarshalling a crafted MQTT frame could lead to a OOM exception -&gt; DoS


### [[USN-6687-1](https://ubuntu.com/security/notices/USN-6687-1)] AccountsService vulnerability (07:25) {#usn-6687-1-accountsservice-vulnerability--07-25}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2012-6655](https://ubuntu.com/security/CVE-2012-6655) <!-- low -->
-   Oldest CVE this week?
-   Only fixed 1 year ago by upstream
-   To change the user's password, Would invoke usermod with -p option and the new
    encrypted/salted password - as such any user on the system would be able to
    see that via inspection of `/proc/<pid>/cmdline` - very low risk since the
    process only exists for a very small time AND it is encrypted already - so
    instead now invokes `chpasswd` and specifies the new _encrypted_ password over
    standard input - would then need to be able to ptrace to see it which with
    [YAMA](https://www.kernel.org/doc/Documentation/security/Yama.txt) `ptrace_scope` enabled in Ubuntu means you need to be root (or a parent
    process of accountsservice, which is started by dbus for the current user) -
    so then an attacker would have to be able to cause the existing accountservice
    to stop and then start their own to see the new encrypted password


### [[USN-6658-2](https://ubuntu.com/security/notices/USN-6658-2)] libxml2 vulnerability (09:41) {#usn-6658-2-libxml2-vulnerability--09-41}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2024-25062](https://ubuntu.com/security/CVE-2024-25062) <!-- medium -->
-   [[USN-6658-1] libxml2 vulnerability from Episode 220]({{< relref "episode-220#usn-6658-1-libxml2-vulnerability--07-33" >}})
-   UAF if using DTD validation with XInclude expansion enabled


### [[USN-6690-1](https://ubuntu.com/security/notices/USN-6690-1)] Open vSwitch vulnerabilities (10:01) {#usn-6690-1-open-vswitch-vulnerabilities--10-01}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-5366](https://ubuntu.com/security/CVE-2023-5366) <!-- medium -->
    -   [CVE-2023-3966](https://ubuntu.com/security/CVE-2023-3966) <!-- medium -->
-   [[USN-6514-1] Open vSwitch vulnerability from Episode 214]({{< relref "episode-214#usn-6514-1-open-vswitch-vulnerability--18-18" >}})
-   Original fix was incomplete - required additional fixes
-   OOB read in hardware offload of Geneve packets (protocol for generic network
    virtualisation encapsulation) - can mitigate by disabling this option in
    config


### [[USN-6689-1](https://ubuntu.com/security/notices/USN-6689-1)] Rack vulnerabilities (10:41) {#usn-6689-1-rack-vulnerabilities--10-41}

-   3 CVEs addressed in Mantic (23.10)
    -   [CVE-2024-26146](https://ubuntu.com/security/CVE-2024-26146) <!-- medium -->
    -   [CVE-2024-26141](https://ubuntu.com/security/CVE-2024-26141) <!-- medium -->
    -   [CVE-2023-27539](https://ubuntu.com/security/CVE-2023-27539) <!-- medium -->
-   Modular Ruby web server
-   Possible reflected DoS - crafted Range header can result in unexpectedly large
    responses - can request ranges for a file which ends up being larger than the
    file itself - so now just return nothing
-   ReDoS in header parsing - used a regex to split options and strip - now just splits on a
    comma directly then strip each separately


### [[USN-6656-2](https://ubuntu.com/security/notices/USN-6656-2)] PostgreSQL vulnerability (11:51) {#usn-6656-2-postgresql-vulnerability--11-51}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2024-0985](https://ubuntu.com/security/CVE-2024-0985) <!-- medium -->
-   [[USN-6656-1] PostgreSQL vulnerability from Episode 220]({{< relref "episode-220#usn-6656-1-postgresql-vulnerability--06-31" >}})


### [[USN-6691-1](https://ubuntu.com/security/notices/USN-6691-1)] OVN vulnerability (12:00) {#usn-6691-1-ovn-vulnerability--12-00}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-2182](https://ubuntu.com/security/CVE-2024-2182) <!-- medium -->
-   Enabled bidirectional forwarding detection on logical ports - this is used to
    monitor the health of remote nodes and the tunnels between them - BFD packets
    are then transmitted in-band in these tunnels along with other traffic - OVN
    would then process any BFD packet received on a tunnel where it was enabled -
    as such a remote attacker within a container/VM connected to a OVN logical
    switch port of such a tunnel could craft BFD packets which would then get
    tunnelled to and processed by another node and then change the BFD state of
    the tunnel and hence affect future forwarding decisions - ie. could
    essentially cause a DoS to future traffic along the tunnel


### [[USN-6692-1](https://ubuntu.com/security/notices/USN-6692-1)] Gson vulnerability (13:04) {#usn-6692-1-gson-vulnerability--13-04}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-25647](https://ubuntu.com/security/CVE-2022-25647) <!-- medium -->
-   Java library for JSON serialisation/deserialisation to/from Java objects
-   Only affected Java Serialisation - and then only if you were not careful when
    deserialising to not include circular references between objects


### [[USN-6693-1](https://ubuntu.com/security/notices/USN-6693-1)] .NET vulnerability (13:27) {#usn-6693-1-dot-net-vulnerability--13-27}

-   1 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-21392](https://ubuntu.com/security/CVE-2024-21392) <!-- medium -->
-   Patch Tuesday for dotnet7/8 - no real details from MS


### [[USN-6663-2](https://ubuntu.com/security/notices/USN-6663-2)] OpenSSL update (13:55) {#usn-6663-2-openssl-update--13-55}

-   Affecting Xenial ESM (16.04 ESM)
-   [[USN-6663-1] OpenSSL update from Episode 220]({{< relref "episode-220#usn-6663-1-openssl-update--08-40" >}})
-   Hardening update to return output instead of an exception when wrong padding
    was used - removes a timing side-channel for inferring secret key


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 23.10 to be a target in Pwn2Own Vancouver 2024 (14:26) {#ubuntu-23-dot-10-to-be-a-target-in-pwn2own-vancouver-2024--14-26}

-   Part of CanSecWest in Vancouver March 20-22 2024
-   Ubuntu Desktop 23.10 target in Local Escalation of Privilege Category - must
    leverage a kernel vuln to escalate privs
-   Unfortunately the userns restrictions are not enabled by default in 23.10
    (Mantic) so will be interesting to see what kinds of vulns get turned up
-   Will report back on findings in later episodes


### Check Point Research report on Magnet Goblin's Linux Malware Variants (15:42) {#check-point-research-report-on-magnet-goblin-s-linux-malware-variants--15-42}

-   <https://research.checkpoint.com/2024/magnet-goblin-targets-publicly-facing-servers-using-1-day-vulnerabilities/>
-   Check Point Research reported on recent attacks targeting Ivanti Connect
    Secure VPN by a threat actor they call Magnet Goblin
    -   Ivanti Connect Secure VPN CVEs were made public in January and have been [exploited in the wild](https://www.mandiant.com/resources/blog/investigating-ivanti-zero-day-exploitation)
    -   CPR decided to investigate a cluster of attacks
    -   In doing so cover the details of MGs Nerbian family of malware
    -   [Report from Eclypsium](https://eclypsium.com/blog/flatlined-analyzing-pulse-secure-firmware-and-bypassing-integrity-checking/) suggests running an old version of Linux
        -   CentOS 6.4; which was released in 2013 and officially end of life in 2020
            -   Linux kernel 2.6.32 (EOL Feb 2016)
            -   openssl 1.0.2n (EOL Dec 2017)
            -   Perl 5.6.1 (EOL April 2001)
        -   Clear then that the malware not only exploits Ivanti Connect but also Linux in general
    -   CPR report includes details on what TTPs to look for - IP addresses / domains etc
    -   Then details the NerbianRAT malware
        -   First disclosed in 2022 by ProofPoint when detailing the Windows variant
        -   Earliest sample of this Linux variant is in an upload to VT from May 2022
        -   But unlike the Windows variant, the Linux one does not include any
            hardening measures - even has DWARF debugging info present so can easily
            decompile
        -   Only anti-debug/analysis trick is to check there are no other variants of
            itself running by trying to allocate a static shared memory segment - if
            this succeeds then assumes it is not running and proceeds to:
            -   collect basic info like current time, $USER, machine name etc
            -   loads a public RSA key which is later used to encrypt network comms back to a hardcoded IP address used for C2
            -   then loads config which allows to configure things like when to start /
                end, other C2 hosts to use, time to sleep during file transfers and more
            -   for C2 uses raw TCP sockets and encrypts using the RSA key
            -   waits for magic string which contains the command to run from C2
    -   Also detail the MiniNerbian which is a simplified form for just command
        execution but which used HTTP and sends POST requests to a `/dashboard/`
        endpoint - likely to try and hide its network traffic in plain-sight (rather
        than the raw TCP sockets with custom encrypted protocol employed by
        NerbianRAT)
-   For initial access, details are less clear but appears to exploit vulns in
    Ivanti, Magento, Qlink Sense and possibly Apache ActiveMQ - dubbed 1-day
    exploits
-   What do we learn?
    -   Device makers who use OSS need to keep it up-to-date (or build on top of
        systems like Ubuntu Core which come with OTA etc OOTB)
    -   End-users of devices need to keep them up-to-date and deploy usual
        defence-in-depth practices (but this is hard when the device is intended to
        be deployed on the edge of a network - hard to add additional DiD to a VPN
        concentrator)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
