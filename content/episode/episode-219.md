+++
title = "Episode 219"
description = """
  This week the Linux kernel project announced they will be assigning their own
  CVEs so we discuss the possible implications and fallout from such a shift, plus
  we cover vulnerabilities in the kernel, Glance_store, WebKitGTK, Bind and more.
  """
date = 2024-02-16T16:36:00+10:30
lastmod = 2024-02-16T16:40:34+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E219.mp3"
podcast_duration = 1252
podcast_bytes = 20712864
permalink = "https://ubuntusecuritypodcast.org/episode-219/"
guid = "d5c5dcb200f8c169e1e88c3a0f27559eb1c43c8b0f520fd80b73573e4c3a9b1c708bab060a31a60990ac4a4b9dda81494aba8a86fc77190524c03745d8a55ddf"
+++

## Overview {#overview}

This week the Linux kernel project announced they will be assigning their own
CVEs so we discuss the possible implications and fallout from such a shift, plus
we cover vulnerabilities in the kernel, Glance_store, WebKitGTK, Bind and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

64 unique CVEs addressed


### [[LSN-0100-1](https://ubuntu.com/security/notices/LSN-0100-1)] Linux kernel vulnerability (00:56) {#lsn-0100-1-linux-kernel-vulnerability--00-56}

-   5 CVEs addressed in Jammy (22.04 LTS), Focal (20.04 LTS), Bionic ESM (18.04 ESM), Xenial ESM (16.04 ESM), Trusty ESM (14.04 ESM)
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
    -   [CVE-2023-6817](https://ubuntu.com/security/CVE-2023-6817) <!-- high -->
    -   [CVE-2023-6176](https://ubuntu.com/security/CVE-2023-6176) <!-- high -->
    -   [CVE-2023-6040](https://ubuntu.com/security/CVE-2023-6040) <!-- medium -->
    -   [CVE-2023-5345](https://ubuntu.com/security/CVE-2023-5345) <!-- high -->
-   UAF in IGMP protocol ([[USN-6601-1] Linux kernel vulnerability from Episode 217]({{< relref "episode-217#usn-6601-1-linux-kernel-vulnerability--01-16" >}}))
-   UAF in netfilter ([[USN-6606-1] Linux kernel (OEM) vulnerabilities from Episode 217]({{< relref "episode-217#usn-6606-1-linux-kernel--oem--vulnerabilities--03-04" >}}))
-   UAF in SMB client implementation - local crash / privesc ([[USN-6607-1] Linux kernel (Azure) vulnerabilities from Episode 217]({{< relref "episode-217#usn-6607-1-linux-kernel--azure--vulnerabilities--03-32" >}}))
-   NULL ptr deref in kernel TLS offload implementation - allows a userspace
    application to request that the kernel do TLS by providing it the key etc -
    internally the kernel then takes the data to be sent from userspace and frames
    it into a scatter list (describes the regions in memory containing the data to
    be sent) - uses the kernel crypto API which is asynchronous
    -   userspace can construct an invalid initial sequence number to trigger the
        kernel to enter a code path where the network packet is freed before it has
        finished being processed by the crypto API -&gt; UAF

| Kernel type     | 22.04 | 20.04 | 18.04 | 16.04 | 14.04 |
|-----------------|-------|-------|-------|-------|-------|
| aws             | 100.1 | 100.1 | 100.1 | 100.1 | —     |
| aws-5.15        | —     | 100.1 | —     | —     | —     |
| aws-5.4         | —     | —     | 100.1 | —     | —     |
| aws-6.2         | 100.1 | —     | —     | —     | —     |
| aws-hwe         | —     | —     | —     | 100.1 | —     |
| azure           | 100.1 | 100.1 | —     | 100.1 | —     |
| azure-4.15      | —     | —     | 100.1 | —     | —     |
| azure-5.4       | —     | —     | 100.1 | —     | —     |
| azure-6.2       | 100.1 | —     | —     | —     | —     |
| gcp             | 100.1 | 100.1 | —     | 100.1 | —     |
| gcp-4.15        | —     | —     | 100.1 | —     | —     |
| gcp-5.15        | —     | 100.1 | —     | —     | —     |
| gcp-5.4         | —     | —     | 100.1 | —     | —     |
| gcp-6.2         | 100.1 | —     | —     | —     | —     |
| generic-4.15    | —     | —     | 100.1 | 100.1 | —     |
| generic-4.4     | —     | —     | —     | 100.1 | 100.1 |
| generic-5.15    | —     | 100.1 | —     | —     | —     |
| generic-5.4     | —     | 100.1 | 100.1 | —     | —     |
| gke             | 100.1 | 100.1 | —     | —     | —     |
| gke-5.15        | —     | 100.1 | —     | —     | —     |
| gkeop           | —     | 100.1 | —     | —     | —     |
| hwe-6.2         | 100.1 | —     | —     | —     | —     |
| ibm             | 100.1 | 100.1 | —     | —     | —     |
| ibm-5.15        | —     | 100.1 | —     | —     | —     |
| linux           | 100.1 | —     | —     | —     | —     |
| lowlatency-4.15 | —     | —     | 100.1 | 100.1 | —     |
| lowlatency-4.4  | —     | —     | —     | 100.1 | 100.1 |
| lowlatency-5.15 | —     | 100.1 | —     | —     | —     |
| lowlatency-5.4  | —     | 100.1 | 100.1 | —     | —     |

To check your kernel type and Livepatch version, enter this command:

```shell
canonical-livepatch status
```


### [[USN-6624-1](https://ubuntu.com/security/notices/USN-6624-1)] Linux kernel vulnerabilities {#usn-6624-1-linux-kernel-vulnerabilities}

-   9 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-0641](https://ubuntu.com/security/CVE-2024-0641) <!-- medium -->
    -   [CVE-2023-6622](https://ubuntu.com/security/CVE-2023-6622) <!-- medium -->
    -   [CVE-2023-6531](https://ubuntu.com/security/CVE-2023-6531) <!-- medium -->
    -   [CVE-2023-6176](https://ubuntu.com/security/CVE-2023-6176) <!-- high -->
    -   [CVE-2023-5972](https://ubuntu.com/security/CVE-2023-5972) <!-- medium -->
    -   [CVE-2023-46862](https://ubuntu.com/security/CVE-2023-46862) <!-- medium -->
    -   [CVE-2023-46813](https://ubuntu.com/security/CVE-2023-46813) <!-- medium -->
    -   [CVE-2023-35827](https://ubuntu.com/security/CVE-2023-35827) <!-- low -->
    -   [CVE-2023-34324](https://ubuntu.com/security/CVE-2023-34324) <!-- medium -->


### [[USN-6625-1](https://ubuntu.com/security/notices/USN-6625-1)] Linux kernel vulnerabilities {#usn-6625-1-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-46343](https://ubuntu.com/security/CVE-2023-46343) <!-- medium -->
    -   [CVE-2023-45863](https://ubuntu.com/security/CVE-2023-45863) <!-- medium -->
    -   [CVE-2023-35827](https://ubuntu.com/security/CVE-2023-35827) <!-- low -->
    -   [CVE-2023-34324](https://ubuntu.com/security/CVE-2023-34324) <!-- medium -->


### [[USN-6626-1](https://ubuntu.com/security/notices/USN-6626-1)] Linux kernel vulnerabilities {#usn-6626-1-linux-kernel-vulnerabilities}

-   10 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-0641](https://ubuntu.com/security/CVE-2024-0641) <!-- medium -->
    -   [CVE-2023-6622](https://ubuntu.com/security/CVE-2023-6622) <!-- medium -->
    -   [CVE-2023-6176](https://ubuntu.com/security/CVE-2023-6176) <!-- high -->
    -   [CVE-2023-6039](https://ubuntu.com/security/CVE-2023-6039) <!-- low -->
    -   [CVE-2023-46813](https://ubuntu.com/security/CVE-2023-46813) <!-- medium -->
    -   [CVE-2023-35827](https://ubuntu.com/security/CVE-2023-35827) <!-- low -->
    -   [CVE-2023-34324](https://ubuntu.com/security/CVE-2023-34324) <!-- medium -->
    -   [CVE-2023-32257](https://ubuntu.com/security/CVE-2023-32257) <!-- medium -->
    -   [CVE-2023-32252](https://ubuntu.com/security/CVE-2023-32252) <!-- medium -->
    -   [CVE-2023-32250](https://ubuntu.com/security/CVE-2023-32250) <!-- medium -->


### [[USN-6625-2](https://ubuntu.com/security/notices/USN-6625-2)] Linux kernel (GCP) vulnerabilities {#usn-6625-2-linux-kernel--gcp--vulnerabilities}

-   4 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-46343](https://ubuntu.com/security/CVE-2023-46343) <!-- medium -->
    -   [CVE-2023-45863](https://ubuntu.com/security/CVE-2023-45863) <!-- medium -->
    -   [CVE-2023-35827](https://ubuntu.com/security/CVE-2023-35827) <!-- low -->
    -   [CVE-2023-34324](https://ubuntu.com/security/CVE-2023-34324) <!-- medium -->


### [[USN-6628-1](https://ubuntu.com/security/notices/USN-6628-1)] Linux kernel (Intel IoTG) vulnerabilities {#usn-6628-1-linux-kernel--intel-iotg--vulnerabilities}

-   16 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2024-0641](https://ubuntu.com/security/CVE-2024-0641) <!-- medium -->
    -   [CVE-2024-0193](https://ubuntu.com/security/CVE-2024-0193) <!-- high -->
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
    -   [CVE-2023-6931](https://ubuntu.com/security/CVE-2023-6931) <!-- high -->
    -   [CVE-2023-6817](https://ubuntu.com/security/CVE-2023-6817) <!-- high -->
    -   [CVE-2023-6622](https://ubuntu.com/security/CVE-2023-6622) <!-- medium -->
    -   [CVE-2023-6606](https://ubuntu.com/security/CVE-2023-6606) <!-- medium -->
    -   [CVE-2023-6176](https://ubuntu.com/security/CVE-2023-6176) <!-- high -->
    -   [CVE-2023-6040](https://ubuntu.com/security/CVE-2023-6040) <!-- medium -->
    -   [CVE-2023-6039](https://ubuntu.com/security/CVE-2023-6039) <!-- low -->
    -   [CVE-2023-46813](https://ubuntu.com/security/CVE-2023-46813) <!-- medium -->
    -   [CVE-2023-35827](https://ubuntu.com/security/CVE-2023-35827) <!-- low -->
    -   [CVE-2023-34324](https://ubuntu.com/security/CVE-2023-34324) <!-- medium -->
    -   [CVE-2023-32257](https://ubuntu.com/security/CVE-2023-32257) <!-- medium -->
    -   [CVE-2023-32252](https://ubuntu.com/security/CVE-2023-32252) <!-- medium -->
    -   [CVE-2023-32250](https://ubuntu.com/security/CVE-2023-32250) <!-- medium -->


### [[USN-6626-2](https://ubuntu.com/security/notices/USN-6626-2)] Linux kernel vulnerabilities {#usn-6626-2-linux-kernel-vulnerabilities}

-   10 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2024-0641](https://ubuntu.com/security/CVE-2024-0641) <!-- medium -->
    -   [CVE-2023-6622](https://ubuntu.com/security/CVE-2023-6622) <!-- medium -->
    -   [CVE-2023-6176](https://ubuntu.com/security/CVE-2023-6176) <!-- high -->
    -   [CVE-2023-6039](https://ubuntu.com/security/CVE-2023-6039) <!-- low -->
    -   [CVE-2023-46813](https://ubuntu.com/security/CVE-2023-46813) <!-- medium -->
    -   [CVE-2023-35827](https://ubuntu.com/security/CVE-2023-35827) <!-- low -->
    -   [CVE-2023-34324](https://ubuntu.com/security/CVE-2023-34324) <!-- medium -->
    -   [CVE-2023-32257](https://ubuntu.com/security/CVE-2023-32257) <!-- medium -->
    -   [CVE-2023-32252](https://ubuntu.com/security/CVE-2023-32252) <!-- medium -->
    -   [CVE-2023-32250](https://ubuntu.com/security/CVE-2023-32250) <!-- medium -->


### [[USN-6608-2](https://ubuntu.com/security/notices/USN-6608-2)] Linux kernel (NVIDIA) vulnerabilities {#usn-6608-2-linux-kernel--nvidia--vulnerabilities}

-   5 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2024-0193](https://ubuntu.com/security/CVE-2024-0193) <!-- high -->
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
    -   [CVE-2023-6931](https://ubuntu.com/security/CVE-2023-6931) <!-- high -->
    -   [CVE-2023-6817](https://ubuntu.com/security/CVE-2023-6817) <!-- high -->
    -   [CVE-2023-6606](https://ubuntu.com/security/CVE-2023-6606) <!-- medium -->


### [[USN-6635-1](https://ubuntu.com/security/notices/USN-6635-1)] Linux kernel (GCP) vulnerabilities {#usn-6635-1-linux-kernel--gcp--vulnerabilities}

-   13 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2024-0193](https://ubuntu.com/security/CVE-2024-0193) <!-- high -->
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
    -   [CVE-2023-6931](https://ubuntu.com/security/CVE-2023-6931) <!-- high -->
    -   [CVE-2023-6817](https://ubuntu.com/security/CVE-2023-6817) <!-- high -->
    -   [CVE-2023-6606](https://ubuntu.com/security/CVE-2023-6606) <!-- medium -->
    -   [CVE-2023-5717](https://ubuntu.com/security/CVE-2023-5717) <!-- medium -->
    -   [CVE-2023-5178](https://ubuntu.com/security/CVE-2023-5178) <!-- medium -->
    -   [CVE-2023-5158](https://ubuntu.com/security/CVE-2023-5158) <!-- medium -->
    -   [CVE-2023-42754](https://ubuntu.com/security/CVE-2023-42754) <!-- medium -->
    -   [CVE-2023-39193](https://ubuntu.com/security/CVE-2023-39193) <!-- medium -->
    -   [CVE-2023-39192](https://ubuntu.com/security/CVE-2023-39192) <!-- medium -->
    -   [CVE-2023-39189](https://ubuntu.com/security/CVE-2023-39189) <!-- medium -->
    -   [CVE-2023-37453](https://ubuntu.com/security/CVE-2023-37453) <!-- medium -->


### [[USN-6627-1](https://ubuntu.com/security/notices/USN-6627-1)] libde265 vulnerabilities (04:10) {#usn-6627-1-libde265-vulnerabilities--04-10}

-   18 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-1253](https://ubuntu.com/security/CVE-2022-1253) <!-- medium -->
    -   [CVE-2022-43253](https://ubuntu.com/security/CVE-2022-43253) <!-- medium -->
    -   [CVE-2022-43252](https://ubuntu.com/security/CVE-2022-43252) <!-- medium -->
    -   [CVE-2022-43248](https://ubuntu.com/security/CVE-2022-43248) <!-- medium -->
    -   [CVE-2022-43243](https://ubuntu.com/security/CVE-2022-43243) <!-- medium -->
    -   [CVE-2022-43240](https://ubuntu.com/security/CVE-2022-43240) <!-- medium -->
    -   [CVE-2022-43239](https://ubuntu.com/security/CVE-2022-43239) <!-- medium -->
    -   [CVE-2022-43237](https://ubuntu.com/security/CVE-2022-43237) <!-- medium -->
    -   [CVE-2022-43236](https://ubuntu.com/security/CVE-2022-43236) <!-- medium -->
    -   [CVE-2022-43235](https://ubuntu.com/security/CVE-2022-43235) <!-- medium -->
    -   [CVE-2021-36410](https://ubuntu.com/security/CVE-2021-36410) <!-- low -->
    -   [CVE-2021-36409](https://ubuntu.com/security/CVE-2021-36409) <!-- low -->
    -   [CVE-2021-36408](https://ubuntu.com/security/CVE-2021-36408) <!-- medium -->
    -   [CVE-2022-43242](https://ubuntu.com/security/CVE-2022-43242) <!-- medium -->
    -   [CVE-2022-43241](https://ubuntu.com/security/CVE-2022-43241) <!-- medium -->
    -   [CVE-2022-43238](https://ubuntu.com/security/CVE-2022-43238) <!-- medium -->
    -   [CVE-2021-36411](https://ubuntu.com/security/CVE-2021-36411) <!-- low -->
    -   [CVE-2021-35452](https://ubuntu.com/security/CVE-2021-35452) <!-- medium -->
-   Open H.265 video codec implementation - used by gstreamer and hence Videos
    (totem) in particular
-   Lots of the usual sorts of issues - a lot appear to have been found by a
    couple different researchers fuzzing - assertion failure, NULL ptr derefs, OOB
    reads, UAF, OOB writes etc - impact then ranging from DoS to possible code
    execution


### [[USN-6630-1](https://ubuntu.com/security/notices/USN-6630-1)] Glance_store vulnerability (05:26) {#usn-6630-1-glance-store-vulnerability--05-26}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-1141](https://ubuntu.com/security/CVE-2024-1141) <!-- medium -->
-   OpenStack Image Service store library - library for interacting with assets
    (images) via different storage technologies (local file-system, HTTP, RBD,
    Swift, S3 and others)
-   S3 backend would log the `access_key` if logging configured at DEBUG level - any
    user then able to read the logs could see the access key and hence potentially
    get access to the S3 bucket (would also need the secret key too and this was
    never logged so impact minimal)


### [[USN-6631-1](https://ubuntu.com/security/notices/USN-6631-1)] WebKitGTK vulnerabilities (06:26) {#usn-6631-1-webkitgtk-vulnerabilities--06-26}

-   3 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-23222](https://ubuntu.com/security/CVE-2024-23222) <!-- medium -->
    -   [CVE-2024-23213](https://ubuntu.com/security/CVE-2024-23213) <!-- medium -->
    -   [CVE-2024-23206](https://ubuntu.com/security/CVE-2024-23206) <!-- medium -->
-   Minimal info as with all webkit issues
    -   "improved memory handling to fix possible arbitrary code execution when processing crafted web content"
    -   "improved access restrictions to fix user fingerprinting from a crafted web page"
    -   "improved checks to fix a type confusion issue able to be triggered from
        crafted web content - possibly exploited in the wild"


### [[USN-6632-1](https://ubuntu.com/security/notices/USN-6632-1)] OpenSSL vulnerabilities (07:13) {#usn-6632-1-openssl-vulnerabilities--07-13}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2024-0727](https://ubuntu.com/security/CVE-2024-0727) <!-- low -->
    -   [CVE-2023-5678](https://ubuntu.com/security/CVE-2023-5678) <!-- low -->
-   [[USN-6622-1] OpenSSL vulnerabilities from Episode 218]({{< relref "episode-218#usn-6622-1-openssl-vulnerabilities--08-07" >}})


### [[USN-6633-1](https://ubuntu.com/security/notices/USN-6633-1)] Bind vulnerabilities (07:33) {#usn-6633-1-bind-vulnerabilities--07-33}

-   5 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-5679](https://ubuntu.com/security/CVE-2023-5679) <!-- medium -->
    -   [CVE-2023-5517](https://ubuntu.com/security/CVE-2023-5517) <!-- medium -->
    -   [CVE-2023-50868](https://ubuntu.com/security/CVE-2023-50868) <!-- medium -->
    -   [CVE-2023-50387](https://ubuntu.com/security/CVE-2023-50387) <!-- medium -->
    -   [CVE-2023-4408](https://ubuntu.com/security/CVE-2023-4408) <!-- medium -->
-   Range of issues including 2 different CPU-based DoS - one in handling of
    regular DNS queries / responses, the other in DNSSEC - "KeyTrap" - also
    affects resolvers not just servers (so any client system as well that is doing
    lookups) - affects the DNSSEC standard itself and hence affects various other
    implementations as well
-   Attack works by having an attacker create a DNS zone with many RRSIG and
    DNSKEY records - these contain a cryptographic signature and public key
    respectively - so when trying to validate the DNSSEC record need both - and so
    will end up trying every possible RRSIG with every possible DNSKEY to find a
    match - with no bound on the computation time (and if implemented in a single
    threaded manner) - can completely DoS the server / client etc.
-   Plus a similar issue in the NSEC3 proof of non-existence in DNSSEC


### [[USN-6634-1](https://ubuntu.com/security/notices/USN-6634-1)] .NET vulnerabilities (09:47) {#usn-6634-1-dot-net-vulnerabilities--09-47}

-   2 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-21404](https://ubuntu.com/security/CVE-2024-21404) <!-- medium -->
    -   [CVE-2024-21386](https://ubuntu.com/security/CVE-2024-21386) <!-- medium -->
-   Updates for dotnet 6, 7 and 8
-   DoS when parsing X509 certificates if using OpenSSL (as is the case in Ubuntu)
    and a DoS in the SignalR library (allows a server to send asynchronous
    notifications to client-side web applications) able to be triggered by a
    malicious client


### [[USN-6629-1](https://ubuntu.com/security/notices/USN-6629-1), USN-6629-2] UltraJSON vulnerabilities (10:34) {#usn-6629-1-usn-6629-2-ultrajson-vulnerabilities--10-34}

-   3 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-31117](https://ubuntu.com/security/CVE-2022-31117) <!-- medium -->
    -   [CVE-2022-31116](https://ubuntu.com/security/CVE-2022-31116) <!-- medium -->
    -   [CVE-2021-45958](https://ubuntu.com/security/CVE-2021-45958) <!-- medium -->
-   Fast JSON encoder/decoder for Python
-   Is actually implemented in C with Python bindings - so has usual issues - UAF,
    memory corruption, stack buffer overflow


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Linux kernel becomes a CNA (11:25) {#linux-kernel-becomes-a-cna--11-25}

-   Earlier this week, Greg Kroah-Hartman (one of the more famous Linux kernel
    developers - responsible for the various stable kernel trees / releases plus
    various subsystems within the kernel - also wrote one of the most popular
    books on Linux Kernel Driver development - even if it is woefully outdated
    nowadays) [announced](http://www.kroah.com/log/blog/2024/02/13/linux-is-a-cna/) that the Linux kernel project itself has been accepted as
    a CNA by MITRE and would start issues CVEs for the vulnerabilities found
    within the kernel itself
-   Historically the upstream kernel developers and Greg himself have been quite
    disparaging of the CVE process / ecosystem and essentially saying that CVEs
    for the kernel are meaningless since that all bugs are potentially security
    issues and there are so many fixes that go into the kernel of which the
    security impact is not clear, that the only way to stay secure is to track one
    of the supported upstream stable kernel trees - otherwise CVEs would be issued
    for basically every commit that goes into one of the stable trees
    -   Whilst in Ubuntu we tend to agree that the only way to maintain a kernel is
        to use the stable trees (and hence the Ubuntu Kernel team continuously
        incorporates all the fixes from the upstream stable kernel trees into the
        different Ubuntu kernels) we still see a lot of value in the CVE ecosystem -
        and also we do not agree that all fix commits warrant a CVE
-   It was not then surprising to see that in the initial announcement there was a
    statement that:

    > Note, due to the layer at which the Linux kernel is in a system, almost any
    > bug might be exploitable to compromise the security of the kernel, but the
    > possibility of exploitation is often not evident when the bug is
    > fixed. Because of this, the CVE assignment team is overly cautious and assign
    > CVE numbers to any bugfix that they identify.
-   This led many (including us) to fear that the kernel CNA would be issuing an
    extremely high volume of CVEs which would effectively overwhelm the CVE
    process and make it unworkable - for instance, LWN calculated that for the 6.1
    stable kernel has had over 12,000 fixes applied to it over the past year. So
    this leaves a huge scope for many CVEs to be possibly assigned - and as a
    comparison in total across all software / hardware devices etc in 2023 there
    was 29,000 CVEs assigned. So that could mean the kernel itself would possibly
    become responsible for at least a quarter of all CVEs in the future.
-   Greg has some prior form in this space as well since in 2019 he gave a talk
    where he suggested one way the kernel community could help fix the issue of
    CVEs being erroneously assigned against the kernel would be to start doing
    exactly this and assigning a CVE for every fix applied to the kernel and hence
    overwhelm the CVE ecosystem to (in his words) "burn it down".
-   Also the [GSD project](https://github.com/cloudsecurityalliance/gsd-database) (Global Security Database - set up as an alternate /
    competitor to CVE) was doing exactly this - tracking a huge number of fixes
    for the stable trees and assigning them GSD IDs - as per
    <https://osv.dev/list?ecosystem=Linux> it tracks 13573 issues
-   Thankfully though, this plan seems to have moderated over the past few days -
    after Greg posted a patch set to the LKML documenting the process, he
    clarified in a [follow-up email](https://lwn.net/ml/linux-kernel/2024021459-trimness-bolt-7185@gregkh/) that this would not be the case, and instead
    that CVEs will only be assigned for commits which appear to have a security
    relevant impact. How they actually do that remains to be seen, and his comment
    that "we (will) know it when we see it" doesn't exactly put me at ease (since
    it is very easy to miss the security implications of any particular commit) at
    least this helps allay the fears that there would be a tidal wave of CVEs
    being assigned.
-   One outstanding issue which I [directly asked Greg about](https://fosstodon.org/@alexmurray/111933442780164300) is how they are
    actually tracking fixes for CVEs - since in their model, a CVE is equivalent
    to the commit which fixes the issue - however for lots of existing kernel CVEs
    that get assigned by other CNAs like Canonical or Red Hat etc, the fix
    comprises multiple commits
-   [Greg says](https://social.kernel.org/objects/f6204e3e-c283-46a1-bc7a-b92d49dca413) the whole process is quite complex and whilst their existing scripts
    want a one-to-one mapping from CVEs to commits they do plan to fix this in the
    future.
-   So will be interesting to see what things they will end up assigning
    CVEs. Also will be interesting to see how the interaction with security
    researchers plays out. Since their process is heavily skewed to the CVE
    corresponding to the fix commit AND they state that this must be in one of the
    stable trees for a CVE to be assigned, it doesn't leave a lot of room for
    responsible disclosure. They do say they can assign a CVE for an issue before
    it is resolved with a commit to one of the stable trees, but ideally these
    details would get disclosed to distros and others ahead of the CVE details
    being released to the public. I also [asked Greg about this](https://fosstodon.org/@alexmurray/111938661745672295) but am awaiting a
    response.


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
