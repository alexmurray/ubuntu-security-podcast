+++
title = "Episode 159"
description = """
  This week we bring you part 2 of our look at the new Ubuntu 22.04 LTS
  release and what's in it for security, plus we cover security updates for
  DPDK, OpenSSL, Cron, RSyslog, Curl and more.
  """
date = 2022-05-15T17:31:00+09:30
lastmod = 2022-05-15T17:33:08+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E159.mp3"
podcast_duration = 1157
podcast_bytes = 15367285
permalink = "https://ubuntusecuritypodcast.org/episode-159/"
guid = "ff91aae365d281753f772bda601156f2df3509650a25570e838b8518c31a1a3e397997a66e8eb30e61f7c6ffa1939d0634f715c8f652be67782557608b096996"
+++

## Overview {#overview}

This week we bring you part 2 of our look at the new Ubuntu 22.04 LTS
release and what's in it for security, plus we cover security updates for
DPDK, OpenSSL, Cron, RSyslog, Curl and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

37 unique CVEs addressed


### [[USN-5401-1](https://ubuntu.com/security/notices/USN-5401-1)] DPDK vulnerabilities [00:54] {#usn-5401-1-dpdk-vulnerabilities-00-54}

-   2 CVEs addressed in Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-0669](https://ubuntu.com/security/CVE-2022-0669) <!-- medium -->
    -   [CVE-2021-3839](https://ubuntu.com/security/CVE-2021-3839) <!-- medium -->
-   Data-plane development kit (provides TCP offloading to userspace to
    accelerate package processing workloads)
-   Used by openvswitch for OpenStack software defined networking
-   OOB write due to missing check on queue length in vhost comms - could
    allow a malicious guest to crash or get code execution on the host
-   Also fixed a possible DoS attack between a malicious vhost-user primary
    and secondary where the primary can spam the secondary with with a huge
    number of open file-descriptors which eventually leads the secondary to
    exhaust it's fd limit and hence DoS


### [[USN-5402-1](https://ubuntu.com/security/notices/USN-5402-1)] OpenSSL vulnerabilities [01:36] {#usn-5402-1-openssl-vulnerabilities-01-36}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-1473](https://ubuntu.com/security/CVE-2022-1473) <!-- low, 22.04 only -->
    -   [CVE-2022-1434](https://ubuntu.com/security/CVE-2022-1434) <!-- low, 22.04 only -->
    -   [CVE-2022-1343](https://ubuntu.com/security/CVE-2022-1343) <!-- medium, 22.04 only -->
    -   [CVE-2022-1292](https://ubuntu.com/security/CVE-2022-1292) <!-- medium -->
-   All 4 affect 22.04 whilst only one affects the older releases - in this
    case if running 22.04, exposed to 4 vulns whilst for the older releases
    only 1
    -   Would be interesting to try and compare number of CVEs over the
        lifetime of a piece of software - if always running the latest version
        do you get exposed to more and more CVEs each time you upgrade? Is it
        better to stick with older software since the rate of vulns found over
        time likely decreases as it gets older...
-   Anyway, of these vulns 1 is a memory leak during certificate decoding
    which could usually affect something like an TLS server which uses client
    certs for authentication, plus a possible MiTM attack against RC4-MD5,
    incorrect return code when validating OCSP messages which could cause a
    user / application to believe was valid when in fact was not plus
    possible code execution via the `c_rehash` script through
    shell-metacharacters - but no privilege escalation so only get whatever
    privileges the script is executing under (`c_rehash` is used to create
    symlinks named as the hashes of certs etc when importing a cert into a
    cert store so it can then easily be looked up via it's hash value as the
    filename)


### [[USN-5395-2](https://ubuntu.com/security/notices/USN-5395-2)] networkd-dispatcher regression [03:44] {#usn-5395-2-networkd-dispatcher-regression-03-44}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-29800](https://ubuntu.com/security/CVE-2022-29800) <!-- high -->
    -   [CVE-2022-29799](https://ubuntu.com/security/CVE-2022-29799) <!-- high -->
-   [Episode 158](https://ubuntusecuritypodcast.org/episode-158/) - upstream fix contained a small regression where an error
    would be encountered under certain situations


### [[USN-5354-2](https://ubuntu.com/security/notices/USN-5354-2)] Twisted vulnerability [04:06] {#usn-5354-2-twisted-vulnerability-04-06}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Jammy (22.04 LTS)
    -   [CVE-2022-21716](https://ubuntu.com/security/CVE-2022-21716) <!-- medium -->
-   [Episode 156](https://ubuntusecuritypodcast.org/episode-156/) - Equivalent update for ESM releases plus latest Ubuntu LTS release


### [[USN-5403-1](https://ubuntu.com/security/notices/USN-5403-1)] SQLite vulnerability [04:20] {#usn-5403-1-sqlite-vulnerability-04-20}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-36690](https://ubuntu.com/security/CVE-2021-36690) <!-- negligible -->
-   Crash / possible code execution in CLI client when using a crafted
    query - upstream dispute this as an actual vuln since if can execute
    sqlite cli then can already execute arbitrary commands


### [[USN-5405-1](https://ubuntu.com/security/notices/USN-5405-1)] jbig2dec vulnerabilities [04:40] {#usn-5405-1-jbig2dec-vulnerabilities-04-40}

-   2 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2020-12268](https://ubuntu.com/security/CVE-2020-12268) <!-- low -->
    -   [CVE-2017-9216](https://ubuntu.com/security/CVE-2017-9216) <!-- low -->
-   used in ghostscript, mupdf and others for handling JBIG2 files
-   NULL ptr dereference -&gt; crash -&gt; DoS
-   Heap buffer overflow -&gt; crash / code execution


### [[USN-5259-2](https://ubuntu.com/security/notices/USN-5259-2)] Cron vulnerabilities [04:58] {#usn-5259-2-cron-vulnerabilities-04-58}

-   4 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-9706](https://ubuntu.com/security/CVE-2019-9706) <!-- low -->
    -   [CVE-2019-9705](https://ubuntu.com/security/CVE-2019-9705) <!-- low -->
    -   [CVE-2019-9704](https://ubuntu.com/security/CVE-2019-9704) <!-- low -->
    -   [CVE-2017-9525](https://ubuntu.com/security/CVE-2017-9525) <!-- low -->
-   DoS via a very large crontab file with many many lines or very long lines
-   Ubuntu specific vuln allowing possible privesc from crontab group to root
    **when the crontab package is upgraded** via a symlink attack - so in general
    was a dormant / latent vuln that would only be able to be triggered if a
    sysadmin manually reinstalled cron **or** we released a new update 😁 - so
    fixed now


### [[USN-5259-3](https://ubuntu.com/security/notices/USN-5259-3)] Cron regression [05:47] {#usn-5259-3-cron-regression-05-47}

-   4 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2019-9706](https://ubuntu.com/security/CVE-2019-9706) <!-- low -->
    -   [CVE-2019-9705](https://ubuntu.com/security/CVE-2019-9705) <!-- low -->
    -   [CVE-2019-9704](https://ubuntu.com/security/CVE-2019-9704) <!-- low -->
    -   [CVE-2017-9525](https://ubuntu.com/security/CVE-2017-9525) <!-- low -->
-   but unfortunately caused a minor regression where some harmless but
    possibly scary looking error messages would be printed when cron was
    upgraded - fixed with this further update


### [[USN-5404-1](https://ubuntu.com/security/notices/USN-5404-1)] Rsyslog vulnerability [05:57] {#usn-5404-1-rsyslog-vulnerability-05-57}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-24903](https://ubuntu.com/security/CVE-2022-24903) <!-- medium -->
-   Potential heap buffer overflow in TCP syslog reception - so a malicious
    host which is logging to a centralized syslog server could possibly crash
    or get code execution on the server (as the `syslog` user only)


### [[USN-5244-2](https://ubuntu.com/security/notices/USN-5244-2)] DBus vulnerability [06:18] {#usn-5244-2-dbus-vulnerability-06-18}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-35512](https://ubuntu.com/security/CVE-2020-35512) <!-- low -->
-   Possible UAF when running on a system where multiple usernames are mapped
    to the same UID - if policy references these usernames, may free it via
    one username whilst it is still being accessed by the other
-   Not really likely to encounter this setup or be able to easily exploit it


### [[USN-5179-2](https://ubuntu.com/security/notices/USN-5179-2)] BusyBox vulnerability [07:03] {#usn-5179-2-busybox-vulnerability-07-03}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-28831](https://ubuntu.com/security/CVE-2021-28831) <!-- low -->
-   [Episode 141](https://ubuntusecuritypodcast.org/episode-141/)


### [[USN-5407-1](https://ubuntu.com/security/notices/USN-5407-1)] Cairo vulnerabilities [07:10] {#usn-5407-1-cairo-vulnerabilities-07-10}

-   4 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2020-35492](https://ubuntu.com/security/CVE-2020-35492) <!-- low -->
    -   [CVE-2019-6462](https://ubuntu.com/security/CVE-2019-6462) <!-- low -->
    -   [CVE-2017-9814](https://ubuntu.com/security/CVE-2017-9814) <!-- low -->
    -   [CVE-2016-9082](https://ubuntu.com/security/CVE-2016-9082) <!-- low -->
-   2 OOB reads, stack buffer overflow and infinite loop in handling of
    crafted image / font files


### [[USN-5408-1](https://ubuntu.com/security/notices/USN-5408-1)] Dnsmasq vulnerability [07:24] {#usn-5408-1-dnsmasq-vulnerability-07-24}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-0934](https://ubuntu.com/security/CVE-2022-0934) <!-- medium -->
-   Heap-based UAF found by oss-fuzz when handling malicious DHCPv6 requests


### [[USN-5409-1](https://ubuntu.com/security/notices/USN-5409-1)] libsndfile vulnerability [07:46] {#usn-5409-1-libsndfile-vulnerability-07-46}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-4156](https://ubuntu.com/security/CVE-2021-4156) <!-- low -->
-   OOB read in FLAC codec -&gt; crash / possible info leak


### [[USN-5410-1](https://ubuntu.com/security/notices/USN-5410-1)] NSS vulnerability [07:54] {#usn-5410-1-nss-vulnerability-07-54}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-25648](https://ubuntu.com/security/CVE-2020-25648) <!-- low -->
-   Mishandled `ChangeCipherSpec` messages in TLS 1.3 - remote client could
    crash a server by sending multiple of these


### [[USN-5411-1](https://ubuntu.com/security/notices/USN-5411-1)] Firefox vulnerabilities [08:06] {#usn-5411-1-firefox-vulnerabilities-08-06}

-   8 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-29918](https://ubuntu.com/security/CVE-2022-29918) <!-- medium -->
    -   [CVE-2022-29917](https://ubuntu.com/security/CVE-2022-29917) <!-- medium -->
    -   [CVE-2022-29916](https://ubuntu.com/security/CVE-2022-29916) <!-- medium -->
    -   [CVE-2022-29915](https://ubuntu.com/security/CVE-2022-29915) <!-- low -->
    -   [CVE-2022-29914](https://ubuntu.com/security/CVE-2022-29914) <!-- medium -->
    -   [CVE-2022-29912](https://ubuntu.com/security/CVE-2022-29912) <!-- medium -->
    -   [CVE-2022-29911](https://ubuntu.com/security/CVE-2022-29911) <!-- medium -->
    -   [CVE-2022-29909](https://ubuntu.com/security/CVE-2022-29909) <!-- medium -->
-   100.0 - usual mix of issues for web browsers/rendering engines (XSS, RCE,
    DoS, bypass permission checks etc)


### [[USN-5412-1](https://ubuntu.com/security/notices/USN-5412-1)] curl vulnerabilities [08:24] {#usn-5412-1-curl-vulnerabilities-08-24}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-27782](https://ubuntu.com/security/CVE-2022-27782) <!-- medium -->
    -   [CVE-2022-27781](https://ubuntu.com/security/CVE-2022-27781) <!-- low -->
    -   [CVE-2022-27780](https://ubuntu.com/security/CVE-2022-27780) <!-- medium -->
-   More curl vulns - seems to be more every 5-10 weeks or so lately -
    fuzzing?
    -   logic error on connection reuse could reuse an old connection after
        parameters had been changed
    -   Possible infinite loop when constructing a server's TLS cert chain -&gt;
        DoS
    -   incorrect handling of %-encoded URL separators - could parse URL
        wrongly and so end up visiting wrong URL or bypassing access checks /
        filters etc
-   curl is part of [hackerone](https://hackerone.com/ibb/hacktivity?type=team) and has so far paid out $17k USD in bounties
-   Whilst preparing this week's episode 6 more vulns were announced in curl
-   Interesting [twitter thread](https://twitter.com/bagder/status/1524379653464592384) from curl maintainer on the ratio of vulns
    which are due to C mistakes vs general programming logic mistakes -
    general mistakes higher so I assume this is used as an argument as to why
    implementing such a ubiquitous piece of software in such an unsafe
    language is "ok" - can't say I agree
-   Also [compared](https://twitter.com/bagder/status/1524497676137598976) how long it takes to find vulns from C mistakes vs non-C
    mistakes - non-C mistakes take longer to find, presumably due to lack of
    good tools for finding them (compared to say UBSan, Coverity etc for
    finding C specific mistakes)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### What's new in security in Ubuntu 22.04 LTS (part 2) [11:35] {#what-s-new-in-security-in-ubuntu-22-dot-04-lts--part-2--11-35}

-   In part 1 we covered new security features in the kernel
-   This week we look at userspace security improvements
    -   OpenSSL 3
        -   disables a lot of legacy algorithms by default, upstream have a
            [migration guide](https://www.openssl.org/docs/manmaster/man7/migration_guide.html) which explains the main changes from 1.1.1 as well
            as how to enable the legacy provider if you still require access to
            them
        -   Default security level is still 2 but it now disables (D)TLS 1.2
            protocols (and below)
    -   openssh 8.9
        -   Lots of changes since 8.2 in 20.04 LTS, but in particular has
            improved handling of FIDO/U2F hardware tokens - openssh in 20.04 LTS
            first introduced support for FIDO/U2F tokens as 2FA for remote SSH
            logins - basically would generate a new openssh key where the private
            half of the key is only accessible with the FIDO/U2F token - this new
            release brings support for using a PIN with the token **and** much better
            improved UX so that users don't have to keep getting prompted for
            their PIN each time. Plus supports verifying WebAuthn signatures
    -   nftables as default firewall backend
        -   firewalling on Linux has 2 components - kernel-space mechanism and
            userspace tooling to control that
        -   traditionally kernel supported iptables (aka xtables - ip,ip6,arp,eb -tables)
        -   nftables as introduced into the kernel in 3.13 as a new mechanism to
            implement network packet classification and handling - aka firewalling
            etc
        -   kernel has 2 mechanisms then - xtables and nftables
        -   userspace then has 2 primary tools for handling these - iptables for
            xtables and nftables (nft) for nftables
        -   iptables userspace added a nft backend so existing iptables rules and
            users would be switched to that automatically - so can still use
            traditional `iptables` command to configure firewall rules etc but they
            will then be loaded into the kernel's `nft` backend rather than `xtables`
        -   also has a separate userspace command `nft` to directly configure `nft`
            backend which supports more advanced rule types
        -   Need to be careful that all tools which configure firewall rules use
            the same backend in the kernel otherwise they may conflict and get
            weird results
    -   gcc 11 with improved static analysis via `-fanalyzer`
        -   Double free, UAF, free of non-heap memory, malloc leak, NULL ptr
            deref, unsafe calls within signal handlers and more
    -   bash 5.1 - `$SRANDOM` vs `$RANDOM`
        -   RANDOM is a psuedo-random number which comes internally from bash and
            hence is deterministic based on the original seed value
        -   SRANDOM is derived from the kernel's `/dev/urandom` and hence is not
            reproducible / deterministic - ie. is actually more truly random
    -   [Private home directories by default](https://ubuntu.com/blog/private-home-directories-for-ubuntu-21-04)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)