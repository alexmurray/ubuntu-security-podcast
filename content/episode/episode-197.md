+++
title = "Episode 197"
description = """
  The venerable Ubuntu 18.04 LTS release has transitioned into ESM, plus we look
  at Till Kamppeter's excellent guide on how to set up your GitHub projects to
  receive private vulnerability reports, and we cover the week in security updates
  including PostgreSQL, Jhead, the Linux kernel, Linux PTP, snapd and a whole lot
  more.
  """
date = 2023-06-02T21:20:00+09:30
lastmod = 2023-06-02T21:20:47+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E197.mp3"
podcast_duration = 1410
podcast_bytes = 23884994
permalink = "https://ubuntusecuritypodcast.org/episode-197/"
guid = "2e801e9856dac1f0bf4ef447c8f36e25710152e6c2ab63821012a5c434eedc53bb15f0be640f34296589b2a28aad51b5cdeb23083ae278c31a45096d73bfc2b1"
+++

## Overview {#overview}

The venerable Ubuntu 18.04 LTS release has transitioned into ESM, plus we look
at Till Kamppeter's excellent guide on how to set up your GitHub projects to
receive private vulnerability reports, and we cover the week in security updates
including PostgreSQL, Jhead, the Linux kernel, Linux PTP, snapd and a whole lot
more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

56 unique CVEs addressed


### [[USN-6104-1](https://ubuntu.com/security/notices/USN-6104-1)] PostgreSQL vulnerabilities (00:55) {#usn-6104-1-postgresql-vulnerabilities--00-55}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-2455](https://ubuntu.com/security/CVE-2023-2455) <!-- medium -->
    -   [CVE-2023-2454](https://ubuntu.com/security/CVE-2023-2454) <!-- medium -->
-   Two issues, both requiring to be an authenticated user. One in mishandling of
    `CREATE` privileges - could then allow an auth user to execute arbitrary code as
    a the bootstrap supervisor - the other in row security properties which could
    allow to bypass policies and get read/write contrary to security policy.


### [[USN-6105-1](https://ubuntu.com/security/notices/USN-6105-1)] ca-certificates update (01:32) {#usn-6105-1-ca-certificates-update--01-32}

-   Affecting Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
-   Updates to the latest upstream 2.60 release from Mozilla, adds a bunch of new
    CAs plus removes some that had either expired or that were now not used
    anymore


### [[USN-6106-1](https://ubuntu.com/security/notices/USN-6106-1)] calamares-settings-ubuntu vulnerability (02:08) {#usn-6106-1-calamares-settings-ubuntu-vulnerability--02-08}

-   Affecting Jammy (22.04 LTS)
-   When installing Lubuntu, it would allow to create the first user with an empty
    password. Lubuntu uses it's own installer called [Calamares](https://calamares.io/) - so this issue
    only affects Lubuntu, not regular Ubuntu or other Ubuntu flavors.


### [[USN-6100-1](https://ubuntu.com/security/notices/USN-6100-1)] HTML::StripScripts vulnerability (02:58) {#usn-6100-1-html-stripscripts-vulnerability--02-58}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-24038](https://ubuntu.com/security/CVE-2023-24038) <!-- medium -->
-   REDoS when parsing HTML with "certain style attributes"


### [[USN-6108-1](https://ubuntu.com/security/notices/USN-6108-1)] Jhead vulnerabilities (03:18) {#usn-6108-1-jhead-vulnerabilities--03-18}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-41751](https://ubuntu.com/security/CVE-2022-41751) <!-- medium -->
    -   [CVE-2021-34055](https://ubuntu.com/security/CVE-2021-34055) <!-- medium -->
-   [[USN-6098-1] Jhead vulnerabilities in last week's episode]({{< relref "episode-196#usn-6098-1-jhead-vulnerabilities--09-48" >}})
-   Code-exec - place OS commands into a JPEG filename and then using
    jhead to rotate the file
-   Buffer overflow when writing Exif data


### [[USN-6110-1](https://ubuntu.com/security/notices/USN-6110-1)] Jhead vulnerabilities {#usn-6110-1-jhead-vulnerabilities}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2021-28277](https://ubuntu.com/security/CVE-2021-28277) <!-- medium -->
    -   [CVE-2021-28275](https://ubuntu.com/security/CVE-2021-28275) <!-- medium -->
    -   [CVE-2021-3496](https://ubuntu.com/security/CVE-2021-3496) <!-- medium -->
-   Stack buffer overflow, heap buffer overflow and OOB read - DoS / code exec


### [[USN-6113-1](https://ubuntu.com/security/notices/USN-6113-1)] Jhead vulnerability {#usn-6113-1-jhead-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2018-6612](https://ubuntu.com/security/CVE-2018-6612) <!-- medium -->
-   Heap buffer OOB read -&gt; DoS


### [[USN-6054-2](https://ubuntu.com/security/notices/USN-6054-2)] Django vulnerability (04:17) {#usn-6054-2-django-vulnerability--04-17}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2023-31047](https://ubuntu.com/security/CVE-2023-31047) <!-- low -->
-   [[USN-6054-1] Django vulnerability in Episode 194]({{< relref "episode-194#usn-6054-1-django-vulnerability--00-55" >}})


### [[USN-6109-1](https://ubuntu.com/security/notices/USN-6109-1), [USN-6118-1](https://ubuntu.com/security/notices/USN-6118-1)] Linux kernel (Raspberry Pi + Oracle) vulnerabilities (04:29) {#usn-6109-1-usn-6118-1-linux-kernel--raspberry-pi-plus-oracle--vulnerabilities--04-29}

-   8 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-1078](https://ubuntu.com/security/CVE-2023-1078) <!-- medium -->
    -   [CVE-2023-1075](https://ubuntu.com/security/CVE-2023-1075) <!-- medium -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
    -   [CVE-2022-3707](https://ubuntu.com/security/CVE-2022-3707) <!-- medium -->
-   5.4 raspi + oracle on both 20.04 + 18.04
-   Most issues covered on previous episodes


### [[USN-6122-1](https://ubuntu.com/security/notices/USN-6122-1)] Linux kernel (OEM) vulnerabilities (04:49) {#usn-6122-1-linux-kernel--oem--vulnerabilities--04-49}

-   2 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-2612](https://ubuntu.com/security/CVE-2023-2612) <!-- medium -->
    -   [CVE-2023-32233](https://ubuntu.com/security/CVE-2023-32233) <!-- high -->
-   6.1 OEM 22.04 LTS
-   Race condition in netfilter able to be triggered by a local user -&gt; UAF
    -   requires `CAP_NET_ADMIN` but can get this in an unprivileged user namespace ∴
        can be triggered OOTB by an unpriv user on Ubuntu
    -   PoC was published for this last week - caused a bunch of folks to get
        anxious but since can be mitigated by disabling unprivileged user namespaces
        perhaps it was not worth all the hype? Also kernel updates take a while to
        prepare and test etc so it is not easy to just drop everything and crank a
        new kernel - so in general this would only occur for remotely exploitable
        issues


### [[USN-6123-1](https://ubuntu.com/security/notices/USN-6123-1)] Linux kernel (OEM) vulnerabilities (06:48) {#usn-6123-1-linux-kernel--oem--vulnerabilities--06-48}

-   5 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-26606](https://ubuntu.com/security/CVE-2023-26606) <!-- medium -->
    -   [CVE-2023-2612](https://ubuntu.com/security/CVE-2023-2612) <!-- medium -->
    -   [CVE-2023-1670](https://ubuntu.com/security/CVE-2023-1670) <!-- low -->
    -   [CVE-2023-30456](https://ubuntu.com/security/CVE-2023-30456) <!-- high -->
    -   [CVE-2023-32233](https://ubuntu.com/security/CVE-2023-32233) <!-- high -->
-   6.0 OEM
-   Netfilter issue above, plus mishandling of control registers in nested KVM
    VMs - could allow an guest VM to crash the VM host


### [[USN-6124-1](https://ubuntu.com/security/notices/USN-6124-1)] Linux kernel (OEM) vulnerabilities (07:10) {#usn-6124-1-linux-kernel--oem--vulnerabilities--07-10}

-   6 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-2612](https://ubuntu.com/security/CVE-2023-2612) <!-- medium -->
    -   [CVE-2023-1670](https://ubuntu.com/security/CVE-2023-1670) <!-- low -->
    -   [CVE-2022-4139](https://ubuntu.com/security/CVE-2022-4139) <!-- medium -->
    -   [CVE-2022-3586](https://ubuntu.com/security/CVE-2022-3586) <!-- medium -->
    -   [CVE-2023-30456](https://ubuntu.com/security/CVE-2023-30456) <!-- high -->
    -   [CVE-2023-32233](https://ubuntu.com/security/CVE-2023-32233) <!-- high -->
-   5.17 OEM
-   Mostly same issues as above


### [[USN-6097-1](https://ubuntu.com/security/notices/USN-6097-1)] Linux PTP vulnerability (07:20) {#usn-6097-1-linux-ptp-vulnerability--07-20}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3570](https://ubuntu.com/security/CVE-2021-3570) <!-- medium -->
-   Precision time protocol implementation - allows to synchronise time between
    servers to sub-microsecond accuracy - more accurate than NTP - uses a
    leader/follower architecture - leader would be synchronised with high accuracy
    via say a GPS then distributes this to other machines via PTP
-   Failed to check length of received packet properly (but only for forwarded
    packets) - results in a OOB R/W - so could either be an info leak or possible
    RCE


### [[USN-6005-2](https://ubuntu.com/security/notices/USN-6005-2)] Sudo vulnerabilities (08:49) {#usn-6005-2-sudo-vulnerabilities--08-49}

-   2 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-28487](https://ubuntu.com/security/CVE-2023-28487) <!-- medium -->
    -   [CVE-2023-28486](https://ubuntu.com/security/CVE-2023-28486) <!-- medium -->
-   [[USN-6005-1] Sudo vulnerabilities in Episode 193]({{< relref "episode-193#usn-6005-1-sudo-vulnerabilities--07-25" >}})


### [[USN-6111-1](https://ubuntu.com/security/notices/USN-6111-1)] Flask vulnerability (09:02) {#usn-6111-1-flask-vulnerability--09-02}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-30861](https://ubuntu.com/security/CVE-2023-30861) <!-- medium -->
-   Possibly sends a response intended for one client to a different client due to
    mishandling of the `Vary:Cookie` header - requires the use of a caching proxy
    and other conditions though so may not be a widespread issue


### [[USN-6112-1](https://ubuntu.com/security/notices/USN-6112-1)] Perl vulnerability (09:35) {#usn-6112-1-perl-vulnerability--09-35}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2023-31484](https://ubuntu.com/security/CVE-2023-31484) <!-- medium -->
-   Failed to properly validate TLS certs when using CPAN with <:Tiny> to
    download modules over HTTPS - failed to set `ssl_Verify` - parameter to
    <:Tiny>
-   Seems the [upstream HTTP::Tiny dev's thinks it would be discriminatory](https://metacpan.org/pod/HTTP::Tiny#SSL-SUPPORT) to
    enable SSL verification by default as that would make applications etc that
    use self-signed certs or community-driven CAs like CAcert.org fail - but this
    seems pretty outdated since with Let's Encrypt etc nowadays there is easy
    access to trusted certs for anyone - and so this just does a disservice to all
    applications that use <:Tiny> making them potentially insecure
    out-of-the-box
-   Won't be surprised to see other similar vulns in the future as a result of
    this foot-gun


### [[USN-6114-1](https://ubuntu.com/security/notices/USN-6114-1)] nth-check vulnerability (11:32) {#usn-6114-1-nth-check-vulnerability--11-32}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3803](https://ubuntu.com/security/CVE-2021-3803) <!-- medium -->
-   Node.js module for parsing and compiling CSS nth-checks (used in CSS 3
    `nth-child()` and `nth-last-of-type()` functions) - can pass it a string and it
    will compile that to an optimised function for calling by other code
-   REDoS


### [[USN-6116-1](https://ubuntu.com/security/notices/USN-6116-1)] hawk vulnerability (12:11) {#usn-6116-1-hawk-vulnerability--12-11}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-29167](https://ubuntu.com/security/CVE-2022-29167) <!-- medium -->
-   Node.js HTTP Holder-of-key authentication scheme - a HTTP authentication
    scheme that is similar to the regular HTTP Digest scheme - developed by Mozilla
-   REDoS


### [[USN-6115-1](https://ubuntu.com/security/notices/USN-6115-1)] TeX Live vulnerability (12:47) {#usn-6115-1-tex-live-vulnerability--12-47}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-32700](https://ubuntu.com/security/CVE-2023-32700) <!-- medium -->
-   Shell command execution in luatex if run against an untrusted document since
    could access the io stream used by the underlying lua engine and inject
    contents into it which would then be executed


### [[USN-6119-1](https://ubuntu.com/security/notices/USN-6119-1)] OpenSSL vulnerabilities (13:20) {#usn-6119-1-openssl-vulnerabilities--13-20}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-1255](https://ubuntu.com/security/CVE-2023-1255) <!-- low -->
    -   [CVE-2023-2650](https://ubuntu.com/security/CVE-2023-2650) <!-- medium -->
-   CPU-based DoS when processing crafted ASN.1 object identifiers - requires to
    have an object ID which itself is tens to hundreds of KBs - OpenSSL 3 has a
    limit of 100KB on the peer cert chain which limits the ability to craft such
    long IDs and have them be processed by OpenSSL
-   An aarch64 specific issue - AES-XTS decryption algorithm would possibly read
    past the end of the input buffer -&gt; OOB read -&gt; possible DoS but only if the
    ciphertext is a certain size relative to the block size


### [[USN-6120-1](https://ubuntu.com/security/notices/USN-6120-1)] SpiderMonkey vulnerabilities (14:25) {#usn-6120-1-spidermonkey-vulnerabilities--14-25}

-   9 CVEs addressed in Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-32215](https://ubuntu.com/security/CVE-2023-32215) <!-- medium -->
    -   [CVE-2023-32211](https://ubuntu.com/security/CVE-2023-32211) <!-- medium -->
    -   [CVE-2023-29550](https://ubuntu.com/security/CVE-2023-29550) <!-- medium -->
    -   [CVE-2023-29548](https://ubuntu.com/security/CVE-2023-29548) <!-- medium -->
    -   [CVE-2023-29536](https://ubuntu.com/security/CVE-2023-29536) <!-- medium -->
    -   [CVE-2023-29535](https://ubuntu.com/security/CVE-2023-29535) <!-- medium -->
    -   [CVE-2023-25751](https://ubuntu.com/security/CVE-2023-25751) <!-- medium -->
    -   [CVE-2023-25739](https://ubuntu.com/security/CVE-2023-25739) <!-- medium -->
    -   [CVE-2023-25735](https://ubuntu.com/security/CVE-2023-25735) <!-- medium -->
-   mozjs 102.11 release - JS engine shipped in Firefox so has a lot of overlap
    with CVEs in firefox etc.
-   thanks to the Jeremy Bicha on the Ubuntu Desktop team for preparing these
    updates


### [[USN-6121-1](https://ubuntu.com/security/notices/USN-6121-1)] Nanopb vulnerabilities (14:45) {#usn-6121-1-nanopb-vulnerabilities--14-45}

-   2 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-21401](https://ubuntu.com/security/CVE-2021-21401) <!-- medium -->
    -   [CVE-2020-26243](https://ubuntu.com/security/CVE-2020-26243) <!-- medium -->
-   Implementation of Protocol Buffers but with small code size - designed for embedded systems etc
-   Memory leak on parsing of crafted messages plus an invalid `free()` or `realloc()`
    on crafted messages - both only really an issue if parsing untrusted content


### [[USN-6117-1](https://ubuntu.com/security/notices/USN-6117-1)] Apache Batik vulnerabilities (15:16) {#usn-6117-1-apache-batik-vulnerabilities--15-16}

-   7 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-42890](https://ubuntu.com/security/CVE-2022-42890) <!-- medium -->
    -   [CVE-2022-41704](https://ubuntu.com/security/CVE-2022-41704) <!-- medium -->
    -   [CVE-2022-40146](https://ubuntu.com/security/CVE-2022-40146) <!-- medium -->
    -   [CVE-2022-38648](https://ubuntu.com/security/CVE-2022-38648) <!-- medium -->
    -   [CVE-2022-38398](https://ubuntu.com/security/CVE-2022-38398) <!-- medium -->
    -   [CVE-2020-11987](https://ubuntu.com/security/CVE-2020-11987) <!-- medium -->
    -   [CVE-2019-17566](https://ubuntu.com/security/CVE-2019-17566) <!-- medium -->
-   Java SVG library
-   4 different XSRF issues
-   1 SSRF issue on handling of URLs in Jar's - could allow to access local files
    on the server
-   2 different issues that could allow untrusted Java code embedded in an SVG to
    be executed


### [[USN-6125-1](https://ubuntu.com/security/notices/USN-6125-1)] snapd vulnerability (15:48) {#usn-6125-1-snapd-vulnerability--15-48}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-1523](https://ubuntu.com/security/CVE-2023-1523) <!-- medium -->
-   Very similar to a recent issue ([CVE-2023-28100](https://ubuntu.com/security/CVE-2023-28100)) in flatpak - seccomp sandbox failed to block
    the `TIOCLINUX` `ioctl()` request - could allow a snap to inject contents into the
    controlling terminal when run on a virtual console - this would then be
    executed when the snap finished running -&gt; code exec outside the snap sandbox
-   Now simply blocks `TIOCLINUX` as it already did for `TIOCSTI` in the past
-   Very similar to historic `TIOCSTI` CVEs such as [CVE-2016-9016](https://ubuntu.com/security/CVE-2016-9016) in firejail,
    [CVE-2016-10124](https://ubuntu.com/security/CVE-2016-10124) in lxc, [CVE-2017-5226](https://ubuntu.com/security/CVE-2017-5226) in bubblewrap, [CVE-2019-10063](https://ubuntu.com/security/CVE-2019-10063) in flatpak


### [[USN-6126-1](https://ubuntu.com/security/notices/USN-6126-1)] libvirt vulnerabilities (17:44) {#usn-6126-1-libvirt-vulnerabilities--17-44}

-   2 CVEs addressed in Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-2700](https://ubuntu.com/security/CVE-2023-2700) <!-- medium -->
    -   [CVE-2022-0897](https://ubuntu.com/security/CVE-2022-0897) <!-- low -->
-   race condition within the nwfilter driver - allows a local unprivileged user
    to race against the driver and corrupt the list of network filters and trigger
    a crash in the libvirt daemon
-   memory leak when reading SR-IOV PCI device capabilities


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 18.04 has now entered ESM (18:21) {#ubuntu-18-dot-04-has-now-entered-esm--18-21}

-   <https://www.omgubuntu.co.uk/2023/05/ubuntu-18-04-general-support-ends-enable-esm-to-stay-protected>


### OpenPrinting tutorial on handling security bugs via GitHub (19:40) {#openprinting-tutorial-on-handling-security-bugs-via-github--19-40}

-   <https://openprinting.github.io/OpenPrinting-News-May-2023/#handling-reported-security-bugs-with-github>
-   [Last week we talked about a vulnerability in the cups-filter package]({{< relref "episode-196#usn-6083-1-cups-filters-vulnerability--01-03" >}})
-   Discusses the difficulty in handling security issues in open source projects,
    where all the development is usually done in the open, how do you privately
    report and collaborate on a security issue?
-   GitHub offers [the ability to report security vulnerabilities privately](https://docs.github.com/en/code-security/security-advisories/guidance-on-reporting-and-writing/privately-reporting-a-security-vulnerability)
-   Not enabled by default since it requires some configuration on the part of the
    maintainer to configure the templates etc that get sent out - also needs the
    organisation that owns the repo to enable this as well
    -   GitHub offer some [great guidance](https://docs.github.com/en/code-security/security-advisories/repository-security-advisories/creating-a-repository-security-advisory) on the [best ways to do this](https://docs.github.com/en/code-security/security-advisories/guidance-on-reporting-and-writing/best-practices-for-writing-repository-security-advisories)
-   Usual workflow is to submit a report privately and then can create a temporary
    private fork in which to develop the fix
-   Read Till's blog post as that contains a great walk-through on how to enable
    this


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
