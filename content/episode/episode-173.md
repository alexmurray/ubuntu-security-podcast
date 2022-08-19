+++
title = "Episode 173"
description = """
  This week we take a look at the recent announcement of .NET 6 for Ubuntu
  22.04 LTS, plus we cover security updates for the Linux kernel, Booth,
  WebKitGTK, Unbound and more.
  """
date = 2022-08-19T17:51:00+09:30
lastmod = 2022-08-19T22:19:56+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E173.mp3"
podcast_duration = 717
podcast_bytes = 9249799
permalink = "https://ubuntusecuritypodcast.org/episode-173/"
guid = "79329274187ca09e2c678e95c1f9ad44cd0a78ba6bf2d9a33256d902e5e6b3ca2559fcf2ee8c986af040dcc03cc09f4ec4ac1ee7c7798c8c52153d904fab9842"
+++

## Overview {#overview}

This week we take a look at the recent announcement of .NET 6 for Ubuntu
22.04 LTS, plus we cover security updates for the Linux kernel, Booth,
WebKitGTK, Unbound and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

24 unique CVEs addressed


### [[USN-5562-1](https://ubuntu.com/security/notices/USN-5562-1)] Linux kernel vulnerabilities [00:49] {#usn-5562-1-linux-kernel-vulnerabilities-00-49}

-   11 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-34918](https://ubuntu.com/security/CVE-2022-34918) <!-- high -->
    -   [CVE-2022-28893](https://ubuntu.com/security/CVE-2022-28893) <!-- medium -->
    -   [CVE-2022-1975](https://ubuntu.com/security/CVE-2022-1975) <!-- low -->
    -   [CVE-2022-1974](https://ubuntu.com/security/CVE-2022-1974) <!-- medium -->
    -   [CVE-2022-1734](https://ubuntu.com/security/CVE-2022-1734) <!-- medium -->
    -   [CVE-2022-1679](https://ubuntu.com/security/CVE-2022-1679) <!-- medium -->
    -   [CVE-2022-1652](https://ubuntu.com/security/CVE-2022-1652) <!-- medium -->
    -   [CVE-2022-1048](https://ubuntu.com/security/CVE-2022-1048) <!-- medium -->
    -   [CVE-2022-0494](https://ubuntu.com/security/CVE-2022-0494) <!-- medium -->
    -   [CVE-2022-2586](https://ubuntu.com/security/CVE-2022-2586) <!-- high -->
    -   [CVE-2022-2588](https://ubuntu.com/security/CVE-2022-2588) <!-- high -->
-   5.4 20.04 LTS GA etc + 18.04 HWE etc
-   3 high priority CVEs
    -   2 of these covered in [last week's episode]({{< relref "episode-172#usn-5557-1-linux-kernel-vulnerabilities-13-44" >}}) 1 in netfilter and 1 in
        network packet scheduler
    -   New this week is a second CVE in the netfilter subsystem - affects
        kernels since 4.1 - type confusion bug leading to a buffer overflow -&gt;
        code execution within the kernel and hence privilege escalation -
        requires an attacker to gain `CAP_NET_ADMIN` which is privileged, **but**
        with unprivileged user-namespaces this is trivial - so can mitigate
        this by disabling unpriv userns - but this may then affect applications
        like Google Chrome and others which use this to setup their sandboxes
        etc

<!--listend-->

```shell
sudo sysctl kernel.unprivileged_userns_clone=0
```


### [[USN-5564-1](https://ubuntu.com/security/notices/USN-5564-1)] Linux kernel (Intel IoTG) vulnerabilities [02:32] {#usn-5564-1-linux-kernel--intel-iotg--vulnerabilities-02-32}

-   15 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-34918](https://ubuntu.com/security/CVE-2022-34918) <!-- high -->
    -   [CVE-2022-33981](https://ubuntu.com/security/CVE-2022-33981) <!-- medium -->
    -   [CVE-2022-29901](https://ubuntu.com/security/CVE-2022-29901) <!-- medium -->
    -   [CVE-2022-29900](https://ubuntu.com/security/CVE-2022-29900) <!-- medium -->
    -   [CVE-2022-28893](https://ubuntu.com/security/CVE-2022-28893) <!-- medium -->
    -   [CVE-2022-1975](https://ubuntu.com/security/CVE-2022-1975) <!-- low -->
    -   [CVE-2022-1974](https://ubuntu.com/security/CVE-2022-1974) <!-- medium -->
    -   [CVE-2022-1789](https://ubuntu.com/security/CVE-2022-1789) <!-- medium -->
    -   [CVE-2022-1734](https://ubuntu.com/security/CVE-2022-1734) <!-- medium -->
    -   [CVE-2022-1679](https://ubuntu.com/security/CVE-2022-1679) <!-- medium -->
    -   [CVE-2022-1652](https://ubuntu.com/security/CVE-2022-1652) <!-- medium -->
    -   [CVE-2022-0500](https://ubuntu.com/security/CVE-2022-0500) <!-- medium -->
    -   [CVE-2022-2585](https://ubuntu.com/security/CVE-2022-2585) <!-- high -->
    -   [CVE-2022-2586](https://ubuntu.com/security/CVE-2022-2586) <!-- high -->
    -   [CVE-2022-2588](https://ubuntu.com/security/CVE-2022-2588) <!-- high -->
-   5.15 Intel [IOTG](https://www.intel.com/content/www/us/en/products/docs/processors/embedded/enhanced-for-iot-platform-brief.html)
    -   <https://ubuntu.com/download/iot/intel-iotg>
    -   Atom x6000E, Pentium, Celeron N and J series processors
-   Similar to above, but also includes a 4th high priority CVE in the POSIX
    timers subsystem - UAF which could be triggered by an unpriv user -&gt;
    priv esc - since kernel 5.7 only


### [[USN-5566-1](https://ubuntu.com/security/notices/USN-5566-1)] Linux kernel vulnerabilities [03:08] {#usn-5566-1-linux-kernel-vulnerabilities-03-08}

-   9 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-34918](https://ubuntu.com/security/CVE-2022-34918) <!-- high -->
    -   [CVE-2022-29901](https://ubuntu.com/security/CVE-2022-29901) <!-- medium -->
    -   [CVE-2022-29900](https://ubuntu.com/security/CVE-2022-29900) <!-- medium -->
    -   [CVE-2022-28893](https://ubuntu.com/security/CVE-2022-28893) <!-- medium -->
    -   [CVE-2022-1679](https://ubuntu.com/security/CVE-2022-1679) <!-- medium -->
    -   [CVE-2022-1652](https://ubuntu.com/security/CVE-2022-1652) <!-- medium -->
    -   [CVE-2022-2585](https://ubuntu.com/security/CVE-2022-2585) <!-- high -->
    -   [CVE-2022-2586](https://ubuntu.com/security/CVE-2022-2586) <!-- high -->
    -   [CVE-2022-2588](https://ubuntu.com/security/CVE-2022-2588) <!-- high -->
-   5.15 public cloud optimised kernels (IBM, GCP, AWS, GKE, Azure, Oracle) +
    KVM and Raspi
-   All 4 high priority CVEs mentioned above


### [[USN-5565-1](https://ubuntu.com/security/notices/USN-5565-1)] Linux kernel vulnerabilities [03:34] {#usn-5565-1-linux-kernel-vulnerabilities-03-34}

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-29901](https://ubuntu.com/security/CVE-2022-29901) <!-- medium -->
    -   [CVE-2022-29900](https://ubuntu.com/security/CVE-2022-29900) <!-- medium -->
    -   [CVE-2022-2585](https://ubuntu.com/security/CVE-2022-2585) <!-- high -->
    -   [CVE-2022-2586](https://ubuntu.com/security/CVE-2022-2586) <!-- high -->
    -   [CVE-2022-2588](https://ubuntu.com/security/CVE-2022-2588) <!-- high -->
-   5.15 22.04 LTS GA + 20.04 LTS HWE
-   POSIX timers, netfilter and network scheduler UAFs


### [[USN-5567-1](https://ubuntu.com/security/notices/USN-5567-1)] Linux kernel (OEM) vulnerabilities [03:48] {#usn-5567-1-linux-kernel--oem--vulnerabilities-03-48}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-2585](https://ubuntu.com/security/CVE-2022-2585) <!-- high -->
    -   [CVE-2022-2586](https://ubuntu.com/security/CVE-2022-2586) <!-- high -->
    -   [CVE-2022-2588](https://ubuntu.com/security/CVE-2022-2588) <!-- high -->
-   5.17 OEM 22.04 LTS, 5.14 OEM 20.04 LTS
-   POSIX timers, netfilter and network scheduler UAFs


### [[USN-5563-1](https://ubuntu.com/security/notices/USN-5563-1)] http-parser vulnerability [04:00] {#usn-5563-1-http-parser-vulnerability-04-00}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-8287](https://ubuntu.com/security/CVE-2020-8287) <!-- medium -->
-   HTTP parsing library written in C by Joyent (not actively maintained
    anymore either) - parses requests &amp; responses without making any
    syscalls, memory allocations or buffering of data
-   Request smuggling vuln - would allow two copies of a particular header
    within a HTTP message - ie. 2 `Transfer-Encoding` - but would only process
    the first - could then allow the second to be misinterpreted by other
    proxies etc which could then be used for a request smuggling attack


### [[USN-5556-1](https://ubuntu.com/security/notices/USN-5556-1)] Booth vulnerability [05:20] {#usn-5556-1-booth-vulnerability-05-20}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-2553](https://ubuntu.com/security/CVE-2022-2553) <!-- medium -->
-   Ignored the `authfile` directive in its config file, allowing sites / nodes
    which did not have the correct auth key to communicate with nodes that
    did - oops... - upstream refactored code previously which introduced this
    vuln - reverted the refactor to fix this


### [[USN-5568-1](https://ubuntu.com/security/notices/USN-5568-1)] WebKitGTK vulnerabilities [05:57] {#usn-5568-1-webkitgtk-vulnerabilities-05-57}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-32816](https://ubuntu.com/security/CVE-2022-32816) <!-- medium -->
    -   [CVE-2022-32792](https://ubuntu.com/security/CVE-2022-32792) <!-- medium -->
    -   [CVE-2022-2294](https://ubuntu.com/security/CVE-2022-2294) <!-- medium -->
-   Heap buffer overflow in WebRTC, UI spoofing and OOB write - all able to
    be triggered by a malicious website -&gt; RCE or other


### [[USN-5569-1](https://ubuntu.com/security/notices/USN-5569-1)] Unbound vulnerabilities [06:22] {#usn-5569-1-unbound-vulnerabilities-06-22}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-30699](https://ubuntu.com/security/CVE-2022-30699) <!-- medium -->
    -   [CVE-2022-30698](https://ubuntu.com/security/CVE-2022-30698) <!-- medium -->
-   Failed to properly handle delegation caching - an attacker could query
    unbound just at the time when the cached delegation info is about to
    expire - unbound then queries the upstream nameserver which could then
    delay its response until the cache expires in unbound - when receiving
    the response unbound would overwrite the now expired one - and so the
    attacker can continue to do this and hence keep the rogue delegation
    information in the unbound cache


### [[USN-5526-2](https://ubuntu.com/security/notices/USN-5526-2)] PyJWT regression [07:10] {#usn-5526-2-pyjwt-regression-07-10}

-   Affecting Jammy (22.04 LTS)
-   [[USN-5526-1] PyJWT vulnerability [08:58]​]({{< relref "episode-169#usn-5526-1-pyjwt-vulnerability-08-58" >}}) - upstream patch bumped the
    package version to 2.4.0 and so when including this, the internal package
    version got bumped even though the deb package version didn't - so would
    get files installed as say 2.4.0 even though the deb is 2.3.0 which could
    possibly cause a regression due to a change in path - fixed to revert
    this internal package version bump


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### .NET 6 now available in Ubuntu 22.04 LTS [07:45] {#dot-net-6-now-available-in-ubuntu-22-dot-04-lts-07-45}

-   <https://devblogs.microsoft.com/dotnet/dotnet-6-is-now-in-ubuntu-2204/>
-   [`dotnet6` package in Ubuntu](https://packages.ubuntu.com/jammy-updates/dotnet6) contains the .NET 6 SDK - so can do .NET
    development on Ubuntu
-   In the future, Microsoft will share CVE info ahead of public releases
    with Ubuntu so that we can release updates for the package in Ubuntu as
    they become publicly known
-   Also includes new 'chiseled' containers - ultra-slimmed down docker
    containers to provide just the minimum needed - think of it as the
    Canonical version of distroless containers.
-   results in a 100MB saving in container size whilst still providing
    everything that is needed
    -   Similar in size to Alpine containers (Chiseled Ubuntu 22.04 `aspnet`
        `104MB` cf. `apsnet:6.0-alpine` `100MB`)
    -   Alpine has traditionally been praised for their minimal size, but use a
        different libc (`musl`) and has other differences too
    -   So can now get the benefit of a familiar Ubuntu container environment
        that you know and love along with the benefits of a super small
        container image (including things like decreased attack surface etc)
-   Also includes the benefit of a secure supply chain from Canonical direct
    to Microsoft so that the provenance of Ubuntu-based .NET images is
    known - instead of previously where these were pulled from Dockerhub
    -   And in the future will include signed images as well so that consumers
        of these images can also verify them too


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)