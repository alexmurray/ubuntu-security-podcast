+++
title = "Episode 180"
description = """
  Ubuntu Pro beta is announced and we cover all the details with Lech Sandecki and
  Eduardo Barretto, plus we cover security updates for DHCP, kitty, Thunderbird,
  LibreOffice, the Linux kernel, .NET 6 and more.
  """
date = 2022-10-14T16:30:00+10:30
lastmod = 2022-10-14T16:30:54+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E180.mp3"
podcast_duration = 2148
podcast_bytes = 33679525
permalink = "https://ubuntusecuritypodcast.org/episode-180/"
guid = "360807e8b17230ed2504da3edd48d1b4818a29016f34e960de08d0f5b010eb83d45a90b65f68faf7b5d3f987df13b5564e7c58210f180d6810dbadd85880812d"
+++

## Overview {#overview}

Ubuntu Pro beta is announced and we cover all the details with Lech Sandecki and
Eduardo Barretto, plus we cover security updates for DHCP, kitty, Thunderbird,
LibreOffice, the Linux kernel, .NET 6 and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

49 unique CVEs addressed


### [[USN-5658-1](https://ubuntu.com/security/notices/USN-5658-1)] DHCP vulnerabilities [00:53] {#usn-5658-1-dhcp-vulnerabilities-00-53}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-2929](https://ubuntu.com/security/CVE-2022-2929) <!-- medium -->
    -   [CVE-2022-2928](https://ubuntu.com/security/CVE-2022-2928) <!-- medium -->
-   2 different DoS against ISC DHCP server

    -   a client could send a lease query to the server

    which would fail to properly decrement a reference count and hence eventually
    could overflow the reference counter -&gt; abort -&gt; DoS

    -   memory leak could be triggered by a client sending a crafted DHCP packet
        with a FQDN label longer than 64 bytes - eventually would run out of memory
        -&gt; crash -&gt; DoS


### [[USN-5659-1](https://ubuntu.com/security/notices/USN-5659-1)] kitty vulnerabilities [01:45] {#usn-5659-1-kitty-vulnerabilities-01-45}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-41322](https://ubuntu.com/security/CVE-2022-41322) <!-- medium -->
    -   [CVE-2020-35605](https://ubuntu.com/security/CVE-2020-35605) <!-- medium -->
-   Cross-platform, fast, feature-rich, GPU based terminal
-   Includes support for image display, but if it failed to read an image file
    then would display an error message containing the file name - as such, could
    craft the name of the filename to then inject terminal control characters and
    hence arbitrary input into the shell itself and hence execute arbitrary
    code
-   Also supports showing [desktop notifications via OSC escape codes](https://sw.kovidgoyal.net/kitty/desktop-notifications/) - ie. a shell
    script or even a file could output these and kitty would interpret that to
    show a desktop notification. Also includes support for actions on
    notifications through a named notification id. However, would also fail to
    sanitize these ids, again allowing terminal control characters to be injected
    and hence arbitrary code to be executed **if** the user were to then click on a
    notification popup
    -   requires an attacker can get the user to display arbitrary content, and then
        for the user to click the notification


### [[USN-5657-1](https://ubuntu.com/security/notices/USN-5657-1)] Graphite2 vulnerability [03:16] {#usn-5657-1-graphite2-vulnerability-03-16}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2018-7999](https://ubuntu.com/security/CVE-2018-7999) <!-- low -->
-   NULL pointer deref via crafted ttf


### [[USN-5663-1](https://ubuntu.com/security/notices/USN-5663-1)] Thunderbird vulnerabilities [03:27] {#usn-5663-1-thunderbird-vulnerabilities-03-27}

-   12 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-36059](https://ubuntu.com/security/CVE-2022-36059) <!-- medium -->
    -   [CVE-2022-3033](https://ubuntu.com/security/CVE-2022-3033) <!-- medium -->
    -   [CVE-2022-3034](https://ubuntu.com/security/CVE-2022-3034) <!-- medium -->
    -   [CVE-2022-3032](https://ubuntu.com/security/CVE-2022-3032) <!-- medium -->
    -   [CVE-2022-38478](https://ubuntu.com/security/CVE-2022-38478) <!-- medium -->
    -   [CVE-2022-38477](https://ubuntu.com/security/CVE-2022-38477) <!-- medium -->
    -   [CVE-2022-38476](https://ubuntu.com/security/CVE-2022-38476) <!-- medium -->
    -   [CVE-2022-38473](https://ubuntu.com/security/CVE-2022-38473) <!-- medium -->
    -   [CVE-2022-38472](https://ubuntu.com/security/CVE-2022-38472) <!-- medium -->
    -   [CVE-2022-36319](https://ubuntu.com/security/CVE-2022-36319) <!-- medium -->
    -   [CVE-2022-36318](https://ubuntu.com/security/CVE-2022-36318) <!-- medium -->
    -   [CVE-2022-2505](https://ubuntu.com/security/CVE-2022-2505) <!-- medium -->
-   102.2.2
-   DoS against the inbuilt Matrix client
-   2 different methods to cause TB to make a network request when an email was
    opened - both via html within an iframe - allows sender to track whether the
    email was opened etc
-   Various web framework issues via rendering untrusted content - DoS, mount
    pointer and addressbar spoofing, RCE etc


### [[USN-5371-3](https://ubuntu.com/security/notices/USN-5371-3)] nginx vulnerability [04:22] {#usn-5371-3-nginx-vulnerability-04-22}

-   3 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-3618](https://ubuntu.com/security/CVE-2021-3618) <!-- low -->
    -   [CVE-2020-36309](https://ubuntu.com/security/CVE-2020-36309) <!-- low -->
    -   [CVE-2020-11724](https://ubuntu.com/security/CVE-2020-11724) <!-- medium -->
-   HTTP request smuggling, first covered back in [[USN-5371-1] nginx vulnerabilities in Episode 157]({{< relref "episode-157#usn-5371-1-nginx-vulnerabilities-05-55" >}})


### [[USN-5666-1](https://ubuntu.com/security/notices/USN-5666-1)] OpenSSH vulnerability [04:35] {#usn-5666-1-openssh-vulnerability-04-35}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-41617](https://ubuntu.com/security/CVE-2021-41617) <!-- low -->
-   Failed to properly drop permissions when executing helper commands for
    `AuthorizedKeysCommand` and `AuthorizedPrincipalsCommand` and so would run these
    with group membership of the sshd process itself (even if configured to run as
    a different user)
-   As such is a form of privilege escalation - low impact since is a non-default
    configuration


### [[USN-5665-1](https://ubuntu.com/security/notices/USN-5665-1)] PCRE vulnerabilities [05:19] {#usn-5665-1-pcre-vulnerabilities-05-19}

-   2 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2017-7186](https://ubuntu.com/security/CVE-2017-7186) <!-- low -->
    -   [CVE-2017-6004](https://ubuntu.com/security/CVE-2017-6004) <!-- low -->
-   2 different OOB read via crafted regexs -&gt; DoS


### [[USN-5661-1](https://ubuntu.com/security/notices/USN-5661-1)] LibreOffice vulnerabilities [05:31] {#usn-5661-1-libreoffice-vulnerabilities-05-31}

-   3 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-26307](https://ubuntu.com/security/CVE-2022-26307) <!-- medium -->
    -   [CVE-2022-26306](https://ubuntu.com/security/CVE-2022-26306) <!-- medium -->
    -   [CVE-2022-26305](https://ubuntu.com/security/CVE-2022-26305) <!-- medium -->
-   Document macros have been a common attack vector for Microsoft Office
-   To mitigate this, can configure to only execute macros which have a trusted
    signature
-   Failed to properly validate these (would only verify that the certificate for
    the signature had the same serial number and issuer string of the trusted
    certificate) - instead has to actually compare the hash of the certificate
    itself as well
-   Also has its own password database for storing authentication info for various
    web connections
-   A couple issues existing when encrypting the master key which result in it
    being much easier to crack the encryption via a brute force attack than should
    otherwise be - a local attacker with access to a user's LibreOffice config
    (and hence PW DB) could potentially get access to their credentials as used by
    LO


### [[USN-5660-1](https://ubuntu.com/security/notices/USN-5660-1)] Linux kernel (GCP) vulnerabilities [07:02] {#usn-5660-1-linux-kernel--gcp--vulnerabilities-07-02}

-   6 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2022-36946](https://ubuntu.com/security/CVE-2022-36946) <!-- medium -->
    -   [CVE-2022-2503](https://ubuntu.com/security/CVE-2022-2503) <!-- medium -->
    -   [CVE-2022-1729](https://ubuntu.com/security/CVE-2022-1729) <!-- low -->
    -   [CVE-2022-32296](https://ubuntu.com/security/CVE-2022-32296) <!-- medium -->
    -   [CVE-2022-1012](https://ubuntu.com/security/CVE-2022-1012) <!-- medium -->
    -   [CVE-2021-33655](https://ubuntu.com/security/CVE-2021-33655) <!-- medium -->
-   5.4 GCP on Ubuntu 18.04 LTS
-   Most of these have seen in previous weeks - framebuffer driver OOB when
    changing font/screen sizes -&gt; DoS/codeexec, perf race-condition -&gt; UAF -&gt;
    DoS/codeexec, netfilter remote DoS via crafted packet causing truncation below
    packet header size, lack of good enough IP source port randomisation allows a
    malicious TCP server to identify a host by the chosen source port, dm-verity
    DoS/code execution by bypassing LoadPin restrictions to load untrusted kernel
    modules / firmware (but requires root privileges in the first place)

x\*\*\* [[USN-5667-1](https://ubuntu.com/security/notices/USN-5667-1)] Linux kernel vulnerabilities [08:01]

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-39189](https://ubuntu.com/security/CVE-2022-39189) <!-- medium -->
    -   [CVE-2022-36879](https://ubuntu.com/security/CVE-2022-36879) <!-- medium -->
    -   [CVE-2022-3176](https://ubuntu.com/security/CVE-2022-3176) <!-- medium -->
    -   [CVE-2022-26373](https://ubuntu.com/security/CVE-2022-26373) <!-- medium -->
    -   [CVE-2022-1882](https://ubuntu.com/security/CVE-2022-1882) <!-- medium -->
-   5.15 22.04 GA / 20.04 HWE - generic/clouds/lowlatency/raspi etc
-   race condition -&gt; UAF in internal pipe impl -&gt; DoS/codeexec
-   speculative execution vuln - Enhanced Indirect Branch Restricted Speculation
    (eIBRS) on some processors did not properly handle RET instructions in some
    cases - local attacker could read sensitive info as a result
-   `io_uring` UAF
-   netlink xfrm ref counting bug -&gt; underflow -&gt; OOPS -&gt; DoS
-   Unpriv guest user can compromise guest kernel since KVM failed to properly
    handle TLB flushing in some cases


### [[USN-5668-1](https://ubuntu.com/security/notices/USN-5668-1)] Linux kernel vulnerabilities [09:07] {#usn-5668-1-linux-kernel-vulnerabilities-09-07}

-   11 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-36879](https://ubuntu.com/security/CVE-2022-36879) <!-- medium -->
    -   [CVE-2022-33744](https://ubuntu.com/security/CVE-2022-33744) <!-- medium -->
    -   [CVE-2022-33742](https://ubuntu.com/security/CVE-2022-33742) <!-- medium -->
    -   [CVE-2022-33741](https://ubuntu.com/security/CVE-2022-33741) <!-- medium -->
    -   [CVE-2022-33740](https://ubuntu.com/security/CVE-2022-33740) <!-- medium -->
    -   [CVE-2022-3176](https://ubuntu.com/security/CVE-2022-3176) <!-- medium -->
    -   [CVE-2022-26373](https://ubuntu.com/security/CVE-2022-26373) <!-- medium -->
    -   [CVE-2022-26365](https://ubuntu.com/security/CVE-2022-26365) <!-- medium -->
    -   [CVE-2022-2318](https://ubuntu.com/security/CVE-2022-2318) <!-- medium -->
    -   [CVE-2022-20369](https://ubuntu.com/security/CVE-2022-20369) <!-- medium -->
    -   [CVE-2021-4159](https://ubuntu.com/security/CVE-2021-4159) <!-- medium -->
-   5.4 20.04 GA / 18.04 HWE
-   More of the same


### [[USN-5669-1](https://ubuntu.com/security/notices/USN-5669-1), [USN-5669-2](https://ubuntu.com/security/notices/USN-5669-2)] Linux kernel vulnerabilities [09:18] {#usn-5669-1-usn-5669-2-linux-kernel-vulnerabilities-09-18}

-   9 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2022-33744](https://ubuntu.com/security/CVE-2022-33744) <!-- medium -->
    -   [CVE-2022-33742](https://ubuntu.com/security/CVE-2022-33742) <!-- medium -->
    -   [CVE-2022-33741](https://ubuntu.com/security/CVE-2022-33741) <!-- medium -->
    -   [CVE-2022-33740](https://ubuntu.com/security/CVE-2022-33740) <!-- medium -->
    -   [CVE-2022-26365](https://ubuntu.com/security/CVE-2022-26365) <!-- medium -->
    -   [CVE-2022-2318](https://ubuntu.com/security/CVE-2022-2318) <!-- medium -->
    -   [CVE-2022-32296](https://ubuntu.com/security/CVE-2022-32296) <!-- medium -->
    -   [CVE-2022-1012](https://ubuntu.com/security/CVE-2022-1012) <!-- medium -->
    -   [CVE-2022-0812](https://ubuntu.com/security/CVE-2022-0812) <!-- medium -->
-   4.15 18.04 GA / 16.04 ESM HWE


### [[USN-5670-1](https://ubuntu.com/security/notices/USN-5670-1)] .NET 6 vulnerability [09:27] {#usn-5670-1-dot-net-6-vulnerability-09-27}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-41032](https://ubuntu.com/security/CVE-2022-41032) <!-- medium -->
-   Patch Tuesday!
-   EoP via NuGet Client to allow a local attacker to get code execution


### [[USN-5671-1](https://ubuntu.com/security/notices/USN-5671-1)] AdvanceCOMP vulnerabilities [09:44] {#usn-5671-1-advancecomp-vulnerabilities-09-44}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2019-8383](https://ubuntu.com/security/CVE-2019-8383) <!-- low -->
    -   [CVE-2019-8379](https://ubuntu.com/security/CVE-2019-8379) <!-- low -->
-   recompression utils
-   NULL ptr deref + heap buffer overflow could be triggered by opening a crafted
    files


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu Pro Beta overview with Lech Sandecki and Eduardo Barretto [10:08] {#ubuntu-pro-beta-overview-with-lech-sandecki-and-eduardo-barretto-10-08}

-   Hinted at briefly back in [Preparing for the release of Ubuntu Pro [09:44]​]({{< relref "episode-178#preparing-for-the-release-of-ubuntu-pro-09-44" >}})
-   <https://ubuntu.com/blog/ubuntu-pro-beta-release>
-   <https://ubuntu.com/pro>
-   <https://youtu.be/tHXL2_QTRwo>
-   We want your feedback:
    -   <https://discourse.ubuntu.com/c/ubuntu-pro/116>
-   Lech is hosting a webinar on 25th October 2022 16:00 UTC (5pm UK time, 12pm EDT)
    -   <https://ubuntu.com/engage/introduction-to-ubuntu-pro>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
