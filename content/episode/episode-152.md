+++
title = "Episode 152"
description = """
  It's a big week for kernel security vulnerabilities - we cover Dirty Pipe
  and fixes for the latest microarchitectural side channel issues, plus we
  bring you the first in a 3 part series on hardening your Ubuntu systems
  against malicious attackers.
  """
date = 2022-03-11T14:19:00+10:30
lastmod = 2022-03-11T14:45:35+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E152.mp3"
podcast_duration = 1685
podcast_bytes = 18275840
permalink = "https://ubuntusecuritypodcast.org/episode-152/"
guid = "7911dd66f88917a50ea3ec6c6515b11c8313f155c05f8b049f75620b3ffa149d0d74dfb503b868f08237916267a8eb0b65aca16b2855fcf17345ebdba5aeaacd"
+++

## Overview {#overview}

It's a big week for kernel security vulnerabilities - we cover Dirty Pipe
and fixes for the latest microarchitectural side channel issues, plus we
bring you the first in a 3 part series on hardening your Ubuntu systems
against malicious attackers.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

34 unique CVEs addressed


### [[USN-5312-1](https://ubuntu.com/security/notices/USN-5312-1)] HAProxy vulnerability [00:46] {#usn-5312-1-haproxy-vulnerability-00-46}

-   1 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-0711](https://ubuntu.com/security/CVE-2022-0711)
-   CPU based DoS via the `Set-Cookie2` header - obsolete HTTP response header
    used to send cookies from the server to the user - possible infinite loop
    when parsing responses which contained this header


### [[USN-5300-2](https://ubuntu.com/security/notices/USN-5300-2), [USN-5300-3](https://ubuntu.com/security/notices/USN-5300-3)] PHP vulnerabilities [01:24] {#usn-5300-2-usn-5300-3-php-vulnerabilities-01-24}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-21707](https://ubuntu.com/security/CVE-2021-21707)
    -   [CVE-2017-9119](https://ubuntu.com/security/CVE-2017-9119)
    -   [CVE-2017-9120](https://ubuntu.com/security/CVE-2017-9120)
    -   [CVE-2017-9118](https://ubuntu.com/security/CVE-2017-9118)
    -   [CVE-2017-8923](https://ubuntu.com/security/CVE-2017-8923)
    -   [CVE-2015-9253](https://ubuntu.com/security/CVE-2015-9253)
-   [Episode 150](https://ubuntusecuritypodcast.org/episode-150/)


### [[USN-5311-1](https://ubuntu.com/security/notices/USN-5311-1)] containerd vulnerability [01:41] {#usn-5311-1-containerd-vulnerability-01-41}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-23648](https://ubuntu.com/security/CVE-2022-23648)
-   Able to access read-only copies of files from the host via specially
    crafted container image


### [[USN-5314-1](https://ubuntu.com/security/notices/USN-5314-1)] Firefox vulnerabilities [02:11] {#usn-5314-1-firefox-vulnerabilities-02-11}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-26486](https://ubuntu.com/security/CVE-2022-26486)
    -   [CVE-2022-26485](https://ubuntu.com/security/CVE-2022-26485)
-   2 critical impact (as defined by Mozilla) vulns - both UAFs
-   Mozilla reported seeing reports of both being exploited in the wild


### [[USN-5313-1](https://ubuntu.com/security/notices/USN-5313-1)] OpenJDK vulnerabilities [02:36] {#usn-5313-1-openjdk-vulnerabilities-02-36}

-   15 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-21365](https://ubuntu.com/security/CVE-2022-21365)
    -   [CVE-2022-21366](https://ubuntu.com/security/CVE-2022-21366)
    -   [CVE-2022-21360](https://ubuntu.com/security/CVE-2022-21360)
    -   [CVE-2022-21341](https://ubuntu.com/security/CVE-2022-21341)
    -   [CVE-2022-21340](https://ubuntu.com/security/CVE-2022-21340)
    -   [CVE-2022-21305](https://ubuntu.com/security/CVE-2022-21305)
    -   [CVE-2022-21299](https://ubuntu.com/security/CVE-2022-21299)
    -   [CVE-2022-21296](https://ubuntu.com/security/CVE-2022-21296)
    -   [CVE-2022-21294](https://ubuntu.com/security/CVE-2022-21294)
    -   [CVE-2022-21293](https://ubuntu.com/security/CVE-2022-21293)
    -   [CVE-2022-21291](https://ubuntu.com/security/CVE-2022-21291)
    -   [CVE-2022-21283](https://ubuntu.com/security/CVE-2022-21283)
    -   [CVE-2022-21282](https://ubuntu.com/security/CVE-2022-21282)
    -   [CVE-2022-21277](https://ubuntu.com/security/CVE-2022-21277)
    -   [CVE-2022-21248](https://ubuntu.com/security/CVE-2022-21248)
-   Thanks to Matthias Klose from the Ubuntu Foundations team for preparing
    these updates - latest upstream point releases
-   17.0.2 + 11.0.14


### [[USN-5310-2](https://ubuntu.com/security/notices/USN-5310-2)] GNU C Library vulnerabilities [02:56] {#usn-5310-2-gnu-c-library-vulnerabilities-02-56}

-   3 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-23219](https://ubuntu.com/security/CVE-2022-23219)
    -   [CVE-2022-23218](https://ubuntu.com/security/CVE-2022-23218)
    -   [CVE-2021-3999](https://ubuntu.com/security/CVE-2021-3999)
-   [Episode 151](https://ubuntusecuritypodcast.org/episode-151/) - this update is a subset of those


### [[USN-5316-1](https://ubuntu.com/security/notices/USN-5316-1)] Redis vulnerability [03:09] {#usn-5316-1-redis-vulnerability-03-09}

-   1 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-0543](https://ubuntu.com/security/CVE-2022-0543)
-   Redis contains a scripting interface using Lua and implements a sandbox
    for this to try and avoid scripts running arbitrary Lua code
-   Upstream has a vendored copy of lua but in Ubuntu + Debian the redis
    package links against the system installed liblua
    -   this is a good thing as it means that when say a vuln appears in Lua
        itself we only have to patch Lua to fix other applications like redis
        whereas otherwise we would also have to patch the embedded/vendored
        copy of lua in redis and release a redis update for every Lua
        vulnerability as well
-   As such we also want it to use the system lua libs of cjson and bitop
-   Included a small custom piece of code to have it load those instead of
    the ones that would usually be shipped in redis itself
-   Discovered that this shim code failed to set the `package` variable and as
    such left this global variable uninitialised - an attacker with the
    ability to execute a Lua script could then cause Lua to load the full
    system liblua unsandboxed and hence then use this to execute other
    arbitrary commands on the host
-   Note in general it doesn't look like upstream Redis consider the existing
    sandbox to be a security boundary so recommend to only give trusted users
    the permission to EVAL Lua in redis


### [[USN-5317-1](https://ubuntu.com/security/notices/USN-5317-1)] Linux kernel vulnerabilities [05:34] {#usn-5317-1-linux-kernel-vulnerabilities-05-34}

-   5 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-0002](https://ubuntu.com/security/CVE-2022-0002)
    -   [CVE-2022-0001](https://ubuntu.com/security/CVE-2022-0001)
    -   [CVE-2022-0847](https://ubuntu.com/security/CVE-2022-0847)
    -   [CVE-2022-23960](https://ubuntu.com/security/CVE-2022-23960)
    -   [CVE-2022-25636](https://ubuntu.com/security/CVE-2022-25636)
-   Thanks to Thadeu Cascardo from the kernel team for coordinating all the
    work on these fixes
-   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/DirtyPipe>
    -   <https://dirtypipe.cm4all.com/>
    -   Similar to "Dirty Cow" but easier to exploit - one of the more high
        profile vulnerabilities in recent times - due to mishandling of the
        page cache within the Linux kernel, a malicious process could abuse the
        `pipe` and `splice` system calls to cause the kernel to overwrite contents
        of arbitrary files even when a user had no write permission to the
        particular file (even on immutable and RO-filesystems)
    -   Very simple error due to the failure to initialize the flags element
        within a pipe buffer when handling pipe data within the kernel - fix is
        2 lines of code to initialise this to 0
    -   Flaw exists back to 4.9 but this is thought only to be exploitable
        since the 5.8 kernel which refactored this code
    -   As such for now have patched for the 5.13 kernels in 21.10 + 20.04 LTS
        but will also patch in the future during regular development cycle for
        the older kernels like 5.4 in 20.04 LTS as well as an additional
        hardening measure
-   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/BHI>
    -   Latest set of hardware microarchitectural issues - in the same vein as
        the original Spectre flaws from Jan 2018 (4 years ago!)
    -   Set of vulnerabilities affecting both Intel and ARM processors which
        can allow unprivileged user to leak (read) memory from kernel / other
        applications
    -   Requires the ability to execute a "gadget" in the kernel to do the
        speculative execution - and the only way known to get one of these is
        to inject it as BPF code
    -   As a result this update also disabled unprivileged eBPF loading as well
        to close off this attack vector


### [[USN-5318-1](https://ubuntu.com/security/notices/USN-5318-1)] Linux kernel vulnerabilities {#usn-5318-1-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-0002](https://ubuntu.com/security/CVE-2022-0002)
    -   [CVE-2022-0001](https://ubuntu.com/security/CVE-2022-0001)
    -   [CVE-2022-23960](https://ubuntu.com/security/CVE-2022-23960)
    -   [CVE-2022-25636](https://ubuntu.com/security/CVE-2022-25636)


### [[USN-5319-1](https://ubuntu.com/security/notices/USN-5319-1)] Linux kernel vulnerabilities {#usn-5319-1-linux-kernel-vulnerabilities}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2022-0002](https://ubuntu.com/security/CVE-2022-0002)
    -   [CVE-2022-0001](https://ubuntu.com/security/CVE-2022-0001)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Camila discusses Ubuntu hardening (part 1) [10:20] {#camila-discusses-ubuntu-hardening--part-1--10-20}

-   In response to a topic on discourse.ubuntu.com re [Basic security advice
    for running your own server](https://discourse.ubuntu.com/t/basic-security-advice-for-running-your-own-server/26786) - Camila has prepared a 3 part series on
    steps you can take to harden your Ubuntu machines against attack - part 1
    focuses on hardening at install time, part 2 is post install steps and
    part 3 looks at additional measures you can take once the machine is
    deployed - today we bring you the first part in this series


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)