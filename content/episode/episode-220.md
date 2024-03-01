+++
title = "Episode 220"
description = """
  The Linux kernel.org CNA has assigned their first CVEs so we revisit this topic
  to assess the initial impact on Ubuntu and the CVE ecosystem, plus we cover
  security updates for Roundcube Webmail, less, GNU binutils and the Linux kernel
  itself.
  """
date = 2024-03-01T17:01:00+10:30
lastmod = 2024-03-01T17:01:49+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E220.mp3"
podcast_duration = 1127
podcast_bytes = 18799323
permalink = "https://ubuntusecuritypodcast.org/episode-220/"
guid = "04536b47d2a272ae81484ef44ce18274b7d9afbdba33db1ebfa94db65bab06ee92f41f2d946e2618dbcf6c4fe282960420eb1a906e45a97f5effdc3576d48268"
+++

## Overview {#overview}

The Linux kernel.org CNA has assigned their first CVEs so we revisit this topic
to assess the initial impact on Ubuntu and the CVE ecosystem, plus we cover
security updates for Roundcube Webmail, less, GNU binutils and the Linux kernel
itself.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

64 unique CVEs addressed


### [[USN-6647-1](https://ubuntu.com/security/notices/USN-6647-1)] Linux kernel vulnerabilities (01:14) {#usn-6647-1-linux-kernel-vulnerabilities--01-14}

-   3 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-7192](https://ubuntu.com/security/CVE-2023-7192) <!-- high -->
    -   [CVE-2023-51782](https://ubuntu.com/security/CVE-2023-51782) <!-- medium -->
    -   [CVE-2023-51780](https://ubuntu.com/security/CVE-2023-51780) <!-- medium -->
-   4.15 - AWS/Azure/GCP/HWE/KVM/Oracle
-   Memory leak in netfilter able to be abused via an unprivileged user
    namespace - DoS via exhausting system memory


### [[USN-6648-1](https://ubuntu.com/security/notices/USN-6648-1)] Linux kernel vulnerabilities (02:00) {#usn-6648-1-linux-kernel-vulnerabilities--02-00}

-   4 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2024-0646](https://ubuntu.com/security/CVE-2024-0646) <!-- high -->
    -   [CVE-2024-0565](https://ubuntu.com/security/CVE-2024-0565) <!-- medium -->
    -   [CVE-2023-6915](https://ubuntu.com/security/CVE-2023-6915) <!-- medium -->
    -   [CVE-2023-51781](https://ubuntu.com/security/CVE-2023-51781) <!-- high -->
-   5.4 - IOT/Xilinx ZynqMP/IBM/Bluefield/GKEOP/Raspi/KVM/Oracle/AWS/GCP/Generic/LowLatency/OEM
-   OOB write in KTLS reported by Jann Horn - if a user can get the kernel to
    splice a ktls socket can possibly escalate privileges
-   UAF in AppleTalk network driver - could be abused by a local unprivileged
    user - can be mitigated by blocklisting in `/etc/modprobe.d/blacklist-rare-network.conf`
    ```cfg
    # appletalk
    alias net-pf-5 off
    ```


### [[USN-6650-1](https://ubuntu.com/security/notices/USN-6650-1)] Linux kernel (OEM) vulnerability (03:30) {#usn-6650-1-linux-kernel--oem--vulnerability--03-30}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-6915](https://ubuntu.com/security/CVE-2023-6915) <!-- medium -->
-   NULL ptr deref in generic ID allocator


### [[USN-6651-1](https://ubuntu.com/security/notices/USN-6651-1)] Linux kernel vulnerabilities (03:38) {#usn-6651-1-linux-kernel-vulnerabilities--03-38}

-   6 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-0646](https://ubuntu.com/security/CVE-2024-0646) <!-- high -->
    -   [CVE-2024-0582](https://ubuntu.com/security/CVE-2024-0582) <!-- medium -->
    -   [CVE-2024-0565](https://ubuntu.com/security/CVE-2024-0565) <!-- medium -->
    -   [CVE-2023-6915](https://ubuntu.com/security/CVE-2023-6915) <!-- medium -->
    -   [CVE-2023-51781](https://ubuntu.com/security/CVE-2023-51781) <!-- high -->
    -   [CVE-2023-51780](https://ubuntu.com/security/CVE-2023-51780) <!-- medium -->
-   ktls + appletalk


### [[USN-6653-1](https://ubuntu.com/security/notices/USN-6653-1)] Linux kernel vulnerabilities {#usn-6653-1-linux-kernel-vulnerabilities}

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-0646](https://ubuntu.com/security/CVE-2024-0646) <!-- high -->
    -   [CVE-2024-0565](https://ubuntu.com/security/CVE-2024-0565) <!-- medium -->
    -   [CVE-2023-6915](https://ubuntu.com/security/CVE-2023-6915) <!-- medium -->
    -   [CVE-2023-51781](https://ubuntu.com/security/CVE-2023-51781) <!-- high -->
    -   [CVE-2023-51780](https://ubuntu.com/security/CVE-2023-51780) <!-- medium -->
-   ktls + appletalk


### [[USN-6652-1](https://ubuntu.com/security/notices/USN-6652-1)] Linux kernel (Azure) vulnerabilities (03:47) {#usn-6652-1-linux-kernel--azure--vulnerabilities--03-47}

-   15 CVEs addressed in Mantic (23.10)
    -   [CVE-2024-0646](https://ubuntu.com/security/CVE-2024-0646) <!-- high -->
    -   [CVE-2024-0641](https://ubuntu.com/security/CVE-2024-0641) <!-- medium -->
    -   [CVE-2024-0582](https://ubuntu.com/security/CVE-2024-0582) <!-- medium -->
    -   [CVE-2024-0565](https://ubuntu.com/security/CVE-2024-0565) <!-- medium -->
    -   [CVE-2023-6915](https://ubuntu.com/security/CVE-2023-6915) <!-- medium -->
    -   [CVE-2023-6622](https://ubuntu.com/security/CVE-2023-6622) <!-- medium -->
    -   [CVE-2023-6531](https://ubuntu.com/security/CVE-2023-6531) <!-- medium -->
    -   [CVE-2023-6176](https://ubuntu.com/security/CVE-2023-6176) <!-- high -->
    -   [CVE-2023-5972](https://ubuntu.com/security/CVE-2023-5972) <!-- medium -->
    -   [CVE-2023-51781](https://ubuntu.com/security/CVE-2023-51781) <!-- high -->
    -   [CVE-2023-51780](https://ubuntu.com/security/CVE-2023-51780) <!-- medium -->
    -   [CVE-2023-46862](https://ubuntu.com/security/CVE-2023-46862) <!-- medium -->
    -   [CVE-2023-46813](https://ubuntu.com/security/CVE-2023-46813) <!-- medium -->
    -   [CVE-2023-35827](https://ubuntu.com/security/CVE-2023-35827) <!-- low -->
    -   [CVE-2023-34324](https://ubuntu.com/security/CVE-2023-34324) <!-- medium -->
-   ktls + appletalk + NULL ptr deref in TLS impl ([[LSN-0100-1] Linux kernel vulnerability from Episode 219]({{< relref "episode-219#lsn-0100-1-linux-kernel-vulnerability--00-56" >}}))


### [[USN-6649-1](https://ubuntu.com/security/notices/USN-6649-1)] Firefox vulnerabilities (04:14) {#usn-6649-1-firefox-vulnerabilities--04-14}

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
-   123.0


### [[USN-6654-1](https://ubuntu.com/security/notices/USN-6654-1)] Roundcube Webmail vulnerability (04:35) {#usn-6654-1-roundcube-webmail-vulnerability--04-35}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-43770](https://ubuntu.com/security/CVE-2023-43770) <!-- medium -->
-   XSS able to abused by simple text/plain emails with crafted links - included
    the ability to detect link references like `[1]` and linkify them to the
    source - if an attacker used a form like `[<script>evil</script>]` this would be
    included in the generated HTML without escaping and so could get arbitrary XSS
-   Since is in universe, this update is available via Ubuntu Pro


### [[USN-6655-1](https://ubuntu.com/security/notices/USN-6655-1)] GNU binutils vulnerabilities (05:54) {#usn-6655-1-gnu-binutils-vulnerabilities--05-54}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-48065](https://ubuntu.com/security/CVE-2022-48065) <!-- medium -->
    -   [CVE-2022-48063](https://ubuntu.com/security/CVE-2022-48063) <!-- medium -->
    -   [CVE-2022-47695](https://ubuntu.com/security/CVE-2022-47695) <!-- medium -->
-   3 instances of DoS via excessive memory consumption, one of NULL ptr deref -
    in general upstream does not consider binutils safe for analysing untrusted
    inputs


### [[USN-6656-1](https://ubuntu.com/security/notices/USN-6656-1)] PostgreSQL vulnerability (06:31) {#usn-6656-1-postgresql-vulnerability--06-31}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-0985](https://ubuntu.com/security/CVE-2024-0985) <!-- medium -->
-   Failed to properly drop privileges when handling `REFRESH MATERIALIZED VIEW
        CONCURRENTLY` commands - should drop privileges so that the SQL is executed as
    the owner of the materialized view - as such, if an attacker could get a user
    or automated system to run such a command they could possibly execute
    arbitrary SQL as the user rather than as the owner of the view as expected


### [[USN-6657-1](https://ubuntu.com/security/notices/USN-6657-1)] Dnsmasq vulnerabilities (07:10) {#usn-6657-1-dnsmasq-vulnerabilities--07-10}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-28450](https://ubuntu.com/security/CVE-2023-28450) <!-- low -->
    -   [CVE-2023-50868](https://ubuntu.com/security/CVE-2023-50868) <!-- medium -->
    -   [CVE-2023-50387](https://ubuntu.com/security/CVE-2023-50387) <!-- medium -->
-   KeyTrap and NSEC3 proof related vuln in DNSSEC - [[USN-6633-1] Bind
    vulnerabilities from Episode 219]({{< relref "episode-219#usn-6633-1-bind-vulnerabilities--07-33" >}})


### [[USN-6658-1](https://ubuntu.com/security/notices/USN-6658-1)] libxml2 vulnerability (07:33) {#usn-6658-1-libxml2-vulnerability--07-33}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-25062](https://ubuntu.com/security/CVE-2024-25062) <!-- medium -->
-   UAF if using DTD validation with XInclude expansion enabled


### [[USN-6659-1](https://ubuntu.com/security/notices/USN-6659-1)] libde265 vulnerabilities (07:52) {#usn-6659-1-libde265-vulnerabilities--07-52}

-   13 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-24758](https://ubuntu.com/security/CVE-2023-24758) <!-- medium -->
    -   [CVE-2023-24757](https://ubuntu.com/security/CVE-2023-24757) <!-- medium -->
    -   [CVE-2023-24756](https://ubuntu.com/security/CVE-2023-24756) <!-- medium -->
    -   [CVE-2023-24755](https://ubuntu.com/security/CVE-2023-24755) <!-- medium -->
    -   [CVE-2023-24754](https://ubuntu.com/security/CVE-2023-24754) <!-- medium -->
    -   [CVE-2023-24752](https://ubuntu.com/security/CVE-2023-24752) <!-- medium -->
    -   [CVE-2023-24751](https://ubuntu.com/security/CVE-2023-24751) <!-- medium -->
    -   [CVE-2022-43245](https://ubuntu.com/security/CVE-2022-43245) <!-- medium -->
    -   [CVE-2023-25221](https://ubuntu.com/security/CVE-2023-25221) <!-- medium -->
    -   [CVE-2022-47665](https://ubuntu.com/security/CVE-2022-47665) <!-- medium -->
    -   [CVE-2022-43250](https://ubuntu.com/security/CVE-2022-43250) <!-- medium -->
    -   [CVE-2022-43249](https://ubuntu.com/security/CVE-2022-43249) <!-- medium -->
    -   [CVE-2022-43244](https://ubuntu.com/security/CVE-2022-43244) <!-- medium -->
-   Next lot of libde265 vulns after discussed previously in
    [[USN-6627-1] libde265 vulnerabilities from
    Episode 219]({{< relref "episode-219#usn-6627-1-libde265-vulnerabilities--04-10" >}}) - more fuzzing related fixes for usual sorts of issues


### [[USN-6660-1](https://ubuntu.com/security/notices/USN-6660-1), [USN-6661-1](https://ubuntu.com/security/notices/USN-6661-1)] OpenJDK 11 &amp; 17 vulnerabilities (08:17) {#usn-6660-1-usn-6661-1-openjdk-11-and-17-vulnerabilities--08-17}

-   6 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-20952](https://ubuntu.com/security/CVE-2024-20952) <!-- medium -->
    -   [CVE-2024-20945](https://ubuntu.com/security/CVE-2024-20945) <!-- medium -->
    -   [CVE-2024-20926](https://ubuntu.com/security/CVE-2024-20926) <!-- medium -->
    -   [CVE-2024-20921](https://ubuntu.com/security/CVE-2024-20921) <!-- medium -->
    -   [CVE-2024-20919](https://ubuntu.com/security/CVE-2024-20919) <!-- medium -->
    -   [CVE-2024-20918](https://ubuntu.com/security/CVE-2024-20918) <!-- medium -->
-   11.0.22; 17.0.10


### [[USN-6662-1](https://ubuntu.com/security/notices/USN-6662-1)] OpenJDK 21 vulnerabilities {#usn-6662-1-openjdk-21-vulnerabilities}

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-20952](https://ubuntu.com/security/CVE-2024-20952) <!-- medium -->
    -   [CVE-2024-20945](https://ubuntu.com/security/CVE-2024-20945) <!-- medium -->
    -   [CVE-2024-20921](https://ubuntu.com/security/CVE-2024-20921) <!-- medium -->
    -   [CVE-2024-20919](https://ubuntu.com/security/CVE-2024-20919) <!-- medium -->
    -   [CVE-2024-20918](https://ubuntu.com/security/CVE-2024-20918) <!-- medium -->
-   21.0.2


### [[USN-6305-2](https://ubuntu.com/security/notices/USN-6305-2)] PHP vulnerabilities (08:37) {#usn-6305-2-php-vulnerabilities--08-37}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-3824](https://ubuntu.com/security/CVE-2023-3824) <!-- medium -->
    -   [CVE-2023-3823](https://ubuntu.com/security/CVE-2023-3823) <!-- medium -->


### [[USN-6663-1](https://ubuntu.com/security/notices/USN-6663-1)] OpenSSL update (08:40) {#usn-6663-1-openssl-update--08-40}

-   Affecting Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
-   Hardening update for openssl 3.0 / 1.0 - OpenSSL 3.2.0 introduced a change to
    return random output instead of an exception when it detected wrong padding
    for PKCS#1 v1.5 encryption - without this there is a timing side-channel which
    can be used to infer the secret key and hence break confidentiality


### [[USN-6664-1](https://ubuntu.com/security/notices/USN-6664-1)] less vulnerability (09:40) {#usn-6664-1-less-vulnerability--09-40}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2022-48624](https://ubuntu.com/security/CVE-2022-48624) <!-- medium -->
-   Failed to quote filenames when using `LESSCLOSE` - could then get arbitrary
    shell commands - env var that tells less to invoke a particular command as an
    input post-processor (this is used in conjunction with `LESSOPEN` to
    pre-processor the file before it is displayed by less - for instance, if you
    wanted to use less to page through a HTML file you might perhaps use this to
    run it via `html2text` first - then use `LESSCLOSE` to do any cleanup)


### [[USN-6644-2](https://ubuntu.com/security/notices/USN-6644-2)] LibTIFF vulnerabilities (10:51) {#usn-6644-2-libtiff-vulnerabilities--10-51}

-   3 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-6277](https://ubuntu.com/security/CVE-2023-6277) <!-- low -->
    -   [CVE-2023-6228](https://ubuntu.com/security/CVE-2023-6228) <!-- low -->
    -   [CVE-2023-52356](https://ubuntu.com/security/CVE-2023-52356) <!-- medium -->
-   Heap buffer overflow in libtiff itself, plus a heap buffer overflow in the
    tiffcp tool (used to combine multiple TIFF files into a single one) and
    finally a possible OOM issue in libtiff if an input file specified a very
    large size but then failed to actually contain such data (ie the headers
    specify a certain size but the file itself doesn't contain that amount of
    data)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Follow up to Linux kernel CNA (11:40) {#follow-up-to-linux-kernel-cna--11-40}

-   Since announcing kernel.org has now started assigning CVEs
-   First CVE assigned
    -   <https://lore.kernel.org/linux-cve-announce/2024022058-outsell-equator-e1c5@gregkh/T/#u>
    -   `CVE-2023-52433: netfilter: nft_set_rbtree: skip sync GC for new elements in this transaction`
    -   [CVE-2023-52433](https://ubuntu.com/security/CVE-2023-52433)
    -   Assigned on 2024-02-20 12:53 UTC
-   Both historical and recent
    -   40 from 2024
    -   66 from 2023
    -   1 from 2022
    -   165 from 2021
    -   13 from 2020
    -   3 from 2019
-   As of `Fri 01 Mar 2024 04:04:26 UTC` have assigned 288 CVEs
    -   9 days, 15 hours and 11 minutes or so
    -   231 hours
    -   Currently assigning more than 1 CVE per hour
-   Looking at these, 8 appear to be due to reported issues from Coverity -
    popular static analysis tool which is not infallible. Others appear to come
    directly from the [GSD project](https://github.com/cloudsecurityalliance/gsd-database) (Global Security Database)
    -   e.g. [CVE-2019-25160](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-25160)
        (<https://lore.kernel.org/linux-cve-announce/2024022657-CVE-2019-25160-e487@gregkh/T/#u>)
        is the same as [GSD-2022-1001715](https://github.com/cloudsecurityalliance/gsd-database/blob/a75adc6d8e399af40b8208001f2d581d3601f7fc/2022/1001xxx/GSD-2022-1001715.json#L30)
    -   As I mentioned in Episode 219, GSD has over 13573 Linux kernel issues
    -   Whilst I also said that I hoped that the kernel CNA wouldn't be so much of a
        firehose, currently it seems to be quite significant
-   On a personal note - I have been doing the CVE Triage role on our team this
    week - in past weeks, I would normally spend about 30-minutes to 1 hour each
    day doing this - and this week it has been at least 2 hours each day, mostly
    due to the large influx of kernel CVEs
-   Perhaps the only way to solve this is better tooling - on our side, mdeslaur
    added support for automatically extracting the required git commits from the
    CVE notifications and the kernel team already has tooling which checks if the
    required commits are in the git trees of the various Ubuntu kernels
-   Hopefully that helps - but it doesn't help to assign priorities to each CVE
-   The kernel CNA is not assigning CVSS scores and they don't intend to -
    although my understanding is this is required - and so we can't use this to help
-   So then we need to try and manually assess the impact of each CVE - but even
    the kernel CNA says this is not obvious - so then perhaps the solution is to
    just assign them all to medium and deal with them as part of the usual [kernel
    SRU cycle](https://wiki.ubuntu.com/Kernel/kernel-sru-workflow)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
