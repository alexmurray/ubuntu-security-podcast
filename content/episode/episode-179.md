+++
title = "Episode 179"
description = """
  Finer grained control for unprivileged user namespaces is on the horizon for
  Ubuntu 22.10, plus we cover security updates for PCRE, etcd, OAuthLib, SoS,
  Squid and more.
  """
date = 2022-09-30T15:41:00+09:30
lastmod = 2022-09-30T15:41:38+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E179.mp3"
podcast_duration = 967
podcast_bytes = 16132493
permalink = "https://ubuntusecuritypodcast.org/episode-179/"
guid = "692ca6f508c5072f1eda71ccf31476668620c1411d074e9da5f45dee699a115207036f8c06df57ad0a4f1ade9f06555bbba2de38b32d7f2f0417cd39ff49881a"
+++

## Overview {#overview}

Finer grained control for unprivileged user namespaces is on the horizon for
Ubuntu 22.10, plus we cover security updates for PCRE, etcd, OAuthLib, SoS,
Squid and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

37 unique CVEs addressed


### [[USN-5626-2](https://ubuntu.com/security/notices/USN-5626-2)] Bind vulnerabilities [00:40] {#usn-5626-2-bind-vulnerabilities-00-40}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-38177](https://ubuntu.com/security/CVE-2022-38177) <!-- medium -->
    -   [CVE-2022-2795](https://ubuntu.com/security/CVE-2022-2795) <!-- medium -->
-   [[USN-5626-1] Bind vulnerabilities from Episode 178]({{< relref "episode-178#usn-5626-1-bind-vulnerabilities-08-58" >}})


### [[USN-5627-1](https://ubuntu.com/security/notices/USN-5627-1)] PCRE vulnerabilities [01:01] {#usn-5627-1-pcre-vulnerabilities-01-01}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-1587](https://ubuntu.com/security/CVE-2022-1587) <!-- low -->
    -   [CVE-2022-1586](https://ubuntu.com/security/CVE-2022-1586) <!-- low -->
-   2 OOB read with crafted regexes - possible info leak


### [[USN-5628-1](https://ubuntu.com/security/notices/USN-5628-1)] etcd vulnerabilities [01:19] {#usn-5628-1-etcd-vulnerabilities-01-19}

-   4 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-15114](https://ubuntu.com/security/CVE-2020-15114) <!-- medium -->
    -   [CVE-2020-15113](https://ubuntu.com/security/CVE-2020-15113) <!-- medium -->
    -   [CVE-2020-15112](https://ubuntu.com/security/CVE-2020-15112) <!-- medium -->
    -   [CVE-2020-15106](https://ubuntu.com/security/CVE-2020-15106) <!-- medium -->
-   distributed key/value store used by kubernetes
-   all these vulns come from a [security audit conducted by Trail of Bits](https://github.com/etcd-io/etcd/blob/main/security/SECURITY_AUDIT.pdf) in January of 2020.
    -   performed both manual and automated review -&gt; go-sec, errcheck, ineffassign etc
    -   also fuzzed the WAL file handling (write-ahead logging - used to record
        transactions that have been committed but not yet applied to the main
        database)
-   2 issues in WAL file handling (crash), plus one in handling of directory
    permissions for a directory that may already exist (info leak) and one in
    setup of endpoints that could allow a DoS


### [[USN-5630-1](https://ubuntu.com/security/notices/USN-5630-1), [USN-5639-1](https://ubuntu.com/security/notices/USN-5639-1)] Linux kernel vulnerabilities [02:45] {#usn-5630-1-usn-5639-1-linux-kernel-vulnerabilities-02-45}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-36946](https://ubuntu.com/security/CVE-2022-36946) <!-- medium -->
    -   [CVE-2022-2503](https://ubuntu.com/security/CVE-2022-2503) <!-- medium -->
    -   [CVE-2022-1729](https://ubuntu.com/security/CVE-2022-1729) <!-- low -->
    -   [CVE-2022-32296](https://ubuntu.com/security/CVE-2022-32296) <!-- medium -->
    -   [CVE-2022-1012](https://ubuntu.com/security/CVE-2022-1012) <!-- medium -->
    -   [CVE-2021-33655](https://ubuntu.com/security/CVE-2021-33655) <!-- medium -->
-   5.4 Raspi HWE 18.04 LTS / Azure CVM  20.04 LTS
-   [Same set of vulnerabilities covered in last weeks episode - [USN-5622-1] Linux kernel vulnerabilities]({{< relref "episode-178#usn-5622-1-linux-kernel-vulnerabilities-06-57" >}})


### [[USN-5633-1](https://ubuntu.com/security/notices/USN-5633-1), [USN-5635-1](https://ubuntu.com/security/notices/USN-5635-1), [USN-5640-1](https://ubuntu.com/security/notices/USN-5640-1), [USN-5644-1](https://ubuntu.com/security/notices/USN-5644-1)] Linux kernel vulnerabilities [03:09] {#usn-5633-1-usn-5635-1-usn-5640-1-usn-5644-1-linux-kernel-vulnerabilities-03-09}

-   11 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-36946](https://ubuntu.com/security/CVE-2022-36946) <!-- medium -->
    -   [CVE-2022-34495](https://ubuntu.com/security/CVE-2022-34495) <!-- medium -->
    -   [CVE-2022-34494](https://ubuntu.com/security/CVE-2022-34494) <!-- medium -->
    -   [CVE-2022-33744](https://ubuntu.com/security/CVE-2022-33744) <!-- medium -->
    -   [CVE-2022-33743](https://ubuntu.com/security/CVE-2022-33743) <!-- medium -->
    -   [CVE-2022-33742](https://ubuntu.com/security/CVE-2022-33742) <!-- medium -->
    -   [CVE-2022-33741](https://ubuntu.com/security/CVE-2022-33741) <!-- medium -->
    -   [CVE-2022-33740](https://ubuntu.com/security/CVE-2022-33740) <!-- medium -->
    -   [CVE-2022-26365](https://ubuntu.com/security/CVE-2022-26365) <!-- medium -->
    -   [CVE-2022-2318](https://ubuntu.com/security/CVE-2022-2318) <!-- medium -->
    -   [CVE-2021-33655](https://ubuntu.com/security/CVE-2021-33655) <!-- medium -->
-   5.15 Raspi + GKE/GCP + Oracle + GCP (20.04)


### [[USN-5634-1](https://ubuntu.com/security/notices/USN-5634-1)] Linux kernel (OEM) vulnerability [03:23] {#usn-5634-1-linux-kernel--oem--vulnerability-03-23}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-36946](https://ubuntu.com/security/CVE-2022-36946) <!-- medium -->
-   5.17 OEM
-   netfilter remote DoS via crafted packet with a very short payload


### [[USN-5632-1](https://ubuntu.com/security/notices/USN-5632-1)] OAuthLib vulnerability [03:40] {#usn-5632-1-oauthlib-vulnerability-03-40}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-36087](https://ubuntu.com/security/CVE-2022-36087) <!-- medium -->
-   OAuth implementation for Python3 - used by various other applications like
    keystone, django, duplicity
-   DoS via a malicious redirect URL specifying an IPv6 address - could trigger an
    exception -&gt; application crash -&gt; DoS


### [[USN-5631-1](https://ubuntu.com/security/notices/USN-5631-1)] libjpeg-turbo vulnerabilities [04:05] {#usn-5631-1-libjpeg-turbo-vulnerabilities-04-05}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-46822](https://ubuntu.com/security/CVE-2021-46822) <!-- low -->
    -   [CVE-2020-35538](https://ubuntu.com/security/CVE-2020-35538) <!-- medium -->
    -   [CVE-2020-17541](https://ubuntu.com/security/CVE-2020-17541) <!-- low -->
    -   [CVE-2018-11813](https://ubuntu.com/security/CVE-2018-11813) <!-- low -->
-   Various issues in handling of crafted JPEG/PPM files - stack buffer overflow,
    heap buffer overflow, NULL pointer dereference, resource consumption based DoS
    in `cjpeg` utility - crafted file with a valid Targa header but incomplete
    data - would keep trying pixel after reaching EOF - internally used `getc()`
    which returns the special value `EOF` when the end of file is reached - this is
    actually `-1` but requires the caller to check for this special value - if not,
    would interpret this as pixel data (all bits set -&gt; 255,255,255 -&gt; white)
    resulting in JPEG file that was possibly thousands of times bigger than the
    input file - fixed to use existing input routines to read the data which
    already check for `EOF` condition


### [[USN-5629-1](https://ubuntu.com/security/notices/USN-5629-1)] Python vulnerability [05:54] {#usn-5629-1-python-vulnerability-05-54}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-28861](https://ubuntu.com/security/CVE-2021-28861) <!-- low -->
-   Open redirect in `http.server` through a URI which has multiple `/` at the
    beginning - a URI such as `//path` gets treated as an absolute URI rather than a
    path - could then end up sending a `301` location header with a misleading target
-   Upstream dispute this - state that it should not be used in production as it
    only implements basic security checks


### [[USN-5636-1](https://ubuntu.com/security/notices/USN-5636-1)] SoS vulnerability [06:39] {#usn-5636-1-sos-vulnerability-06-39}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-2806](https://ubuntu.com/security/CVE-2022-2806) <!-- medium -->
-   `sosreport` - used to gather details of a system etc for debug/analysis
-   Redacts passwords - previously used a hardcoded list of possible things that
    could contain passwords - instead now looks for anything with the name
    password and redacts that


### [[USN-5637-1](https://ubuntu.com/security/notices/USN-5637-1)] libvpx vulnerability [07:45] {#usn-5637-1-libvpx-vulnerability-07-45}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2020-0034](https://ubuntu.com/security/CVE-2020-0034) <!-- low -->
-   OOB read -&gt; info leak / crash


### [[USN-5638-1](https://ubuntu.com/security/notices/USN-5638-1)] Expat vulnerability [07:55] {#usn-5638-1-expat-vulnerability-07-55}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-40674](https://ubuntu.com/security/CVE-2022-40674) <!-- medium -->
-   UAF with crafted XML content -&gt; crash / RCE


### [[USN-5641-1](https://ubuntu.com/security/notices/USN-5641-1)] Squid vulnerabilities [08:06] {#usn-5641-1-squid-vulnerabilities-08-06}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-41318](https://ubuntu.com/security/CVE-2022-41318) <!-- medium -->
    -   [CVE-2022-41317](https://ubuntu.com/security/CVE-2022-41317) <!-- medium -->
-   Failed to properly handle ACLs for cache manager, allowing a trusted client to
    read other client ids / credentials and internal network structure
-   Integer overflow -&gt; buffer overread when using SSPI/SMB authentication helpers
    for NTLM authentication - since this is in handling of credentials, could
    allow an attacker to read decrypted user credentials or other memory regions
    from Squid


### [[USN-5642-1](https://ubuntu.com/security/notices/USN-5642-1)] WebKitGTK vulnerabilities [08:57] {#usn-5642-1-webkitgtk-vulnerabilities-08-57}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-32886](https://ubuntu.com/security/CVE-2022-32886) <!-- medium -->
-   Buffer overflow when handling malicious web content -&gt; RCE


### [[USN-5643-1](https://ubuntu.com/security/notices/USN-5643-1)] Ghostscript vulnerabilities [09:18] {#usn-5643-1-ghostscript-vulnerabilities-09-18}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-2085](https://ubuntu.com/security/CVE-2022-2085) <!-- low -->
    -   [CVE-2020-27792](https://ubuntu.com/security/CVE-2020-27792) <!-- medium -->
-   2 issues in PDF file handling
    -   NULL pointer dereference -&gt; DoS
    -   heap buffer overflow -&gt; DoS / RCE


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 22.10 (Kinetic Kudu) Beta Released [09:45] {#ubuntu-22-dot-10--kinetic-kudu--beta-released-09-45}

-   <https://lists.ubuntu.com/archives/ubuntu-announce/2022-September/000284.html>
-   Includes details on how to upgrade - as per [when we covered the Ubuntu 22.04.1
    release]({{< relref "episode-172#ubuntu-22-dot-04-dot-1-lts-released-16-43" >}}) - if you do want to upgrade to the beta, and you are using 22.04
    desktop, then first log out, switch to a virtual console (Ctrl-Alt-F2) and run
    it from there as less chance that it takes down your whole graphical session
    and hence the upgrade process partway through
-   Will cover in more detail when the final release comes out in a few weeks


### Preview of planned unprivileged user namespace restrictions in Ubuntu 22.10 [11:05] {#preview-of-planned-unprivileged-user-namespace-restrictions-in-ubuntu-22-dot-10-11-05}

-   Often has been a source of increased attack surface for the kernel
-   Disabling of unpriv userns has often been recommended to mitigate various
    kernel vulns
-   This is done via sysctl in Ubuntu:

<!--listend-->

```shell
sudo sysctl kernel.unprivileged_userns_clone=0
```

-   Big hammer - either on or off
-   Various applications have legitimate uses of unpriv userns
    -   flatpak / bubblewrap etc
    -   some of these ship a helper application which is setuid root so they can
        still use user namespaces but this then creates another attack surface - the
        setuid-root binary
    -   instead it would be better to have a way to only allow particular
        applications to use unprivileged user namespaces and then deny it to others
    -   would provide much finer grained control to this potentially risky feature
-   AppArmor developers have added support for just this
    -   all unconfined applications would be denied and only confined applications
        which have the userns permission would be allowed
-   For now, it is planned to have this disabled by default for 22.10
    -   AppArmor will have a sysctl to enable it so can be tested
    -   Security team will work on getting the various packages within the Ubuntu archive that require unprivileged user namespaces to be confined by AppArmor and hence allowed to use them during the next development cycle
-   With any luck, 23.04 will ship with this enabled along with AppArmor
    confinement for things like bubblewrap etc that require this capability
-   Snaps will get it for free since they are confined by AppArmor out of the box
-   John Johansen is working with the kernel team to land this in the kernel for 22.10
-   Georgia Garcia is working on the userspace side to add support for creating
    policy that specifies the userns permission in `apparmor` package too
-   Hopefully can all land both via the [FeatureFreezeException (FFe) process](https://wiki.ubuntu.com/FreezeExceptionProcess)


### Ubuntu Security Podcast on break for 1 week {#ubuntu-security-podcast-on-break-for-1-week}


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)