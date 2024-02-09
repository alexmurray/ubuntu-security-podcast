+++
title = "Episode 218"
description = """
  AppArmor unprivileged user namespace restrictions are back on the agenda this
  week as we survey the latest improvements to this hardening feature in the
  upcoming Ubuntu 24.04 LTS, plus we discuss SMTP smuggling in Postfix, runC
  container escapes and Qualys' recent disclosure of a privilege escalation
  exploit for GNU libc and more.
  """
date = 2024-02-09T19:06:00+10:30
lastmod = 2024-02-09T19:09:18+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E218.mp3"
podcast_duration = 1088
podcast_bytes = 18869433
permalink = "https://ubuntusecuritypodcast.org/episode-218/"
guid = "04552ce2bb2f0e019540213f15894565d41b0f4d66cb8c3811951687155401e25b35b9eb47470f63c1adbcac40e2a1b0e2f67bfd67019433f3a1121de83303e5"
+++

## Overview {#overview}

AppArmor unprivileged user namespace restrictions are back on the agenda this
week as we survey the latest improvements to this hardening feature in the
upcoming Ubuntu 24.04 LTS, plus we discuss SMTP smuggling in Postfix, runC
container escapes and Qualys' recent disclosure of a privilege escalation
exploit for GNU libc and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

39 unique CVEs addressed


### [[USN-6591-2](https://ubuntu.com/security/notices/USN-6591-2)] Postfix update (00:48) {#usn-6591-2-postfix-update--00-48}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-51764](https://ubuntu.com/security/CVE-2023-51764) <!-- medium -->
-   On 18th December (during the holiday break), SEC Consult published a report
    about a new technique for email spoofing, which they dubbed SMTP Smuggling
    -   Similar to HTTP Request Smuggling - relies on exploiting differences in how
        SMTP protocol is interpreted by outbound (originating) vs inbound
        (receiving) SMTP servers. In particular the end-of-data sequence
        `<CR><LF>.<CR><LF>` gets interpreted loosely so that it is possible to include
        extra SMTP commands within the message data which would then go on to be
        interpreted as an additional SMTP commands to be executed by the receiving
        server and to cause it to receive two emails when only one was sent in the
        first place, and where the usual SPF checks get bypassed for this second
        email - so can bypass SPF/DMARC policies to spoof emails from various
        domains
-   Affected a number of projects including postfix - Upstream postfix released
    version 3.8.4 with an initial fix on 22nd December
-   We then released [USN-6591-1](https://ubuntu.com/security/notices/USN-6591-1) with that fix
-   Then on 21st January released a more robust fix with an additional config
    option to increase interoperability whilst still preventing SMTP smuggling
-   This second update includes the reworked fix


### [[USN-6619-1](https://ubuntu.com/security/notices/USN-6619-1)] runC vulnerability (03:22) {#usn-6619-1-runc-vulnerability--03-22}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-21626](https://ubuntu.com/security/CVE-2024-21626) <!-- high -->
-   "Internal file descriptor leak" - using a specially crafted container image,
    allows an attacker to cause a newly spawned container to have a working
    directory within the host filesystem namespace which in turn can allow the
    attacker to escape the container - various ways this can be attacked, full
    details on the upstream advisory
    <https://github.com/opencontainers/runc/security/advisories/GHSA-xr7r-f8xq-vfvv>


### [[USN-6620-1](https://ubuntu.com/security/notices/USN-6620-1)] GNU C Library vulnerabilities (04:17) {#usn-6620-1-gnu-c-library-vulnerabilities--04-17}

-   3 CVEs addressed in Mantic (23.10)
    -   [CVE-2023-6780](https://ubuntu.com/security/CVE-2023-6780) <!-- medium -->
    -   [CVE-2023-6779](https://ubuntu.com/security/CVE-2023-6779) <!-- medium -->
    -   [CVE-2023-6246](https://ubuntu.com/security/CVE-2023-6246) <!-- medium -->
-   Latest round of vulnerabilities from [Qualys](https://www.qualys.com/2024/01/30/cve-2023-6246/syslog.txt)
-   Affect the [`syslog()`](https://manpages.ubuntu.com/manpages/noble/man3/syslog.3.html) system call
-   Heap buffer overflow, off-by-one buffer overflow and integer overflow
-   Of these the heap buffer overflow is the most severe - Qualys were able to
    demonstrate they could exploit and up-to-date default install of Fedora 38 to
    escalate privileges from a local unprivileged user to root.
    -   uses the value of `argv[0]` in a call to snprintf() into a fixed size buffer
        allocated on the stack - snprintf() won't overflow this but will return a
        value larger than the fixed size buffer - as a result a heap buffer to then
        contain this string would only get allocated with a size of 1 byte but then
        the full expected data would get copied into it - and since the attacker
        controls this value they can write arbitrary data to the heap by just using
        a crafted program name (which is easy to do via the the [`exec` command](https://ss64.com/bash/exec.html) built
        in to bash etc)
-   Various setuid binaries like `/usr/bin/su` call `syslog()` internally and so can
    be abused in this way


### [[USN-6587-4](https://ubuntu.com/security/notices/USN-6587-4)] X.Org X Server regression (07:14) {#usn-6587-4-x-dot-org-x-server-regression--07-14}

-   6 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2024-21886](https://ubuntu.com/security/CVE-2024-21886) <!-- medium -->
    -   [CVE-2024-21885](https://ubuntu.com/security/CVE-2024-21885) <!-- medium -->
    -   [CVE-2024-0409](https://ubuntu.com/security/CVE-2024-0409) <!-- medium -->
    -   [CVE-2024-0408](https://ubuntu.com/security/CVE-2024-0408) <!-- medium -->
    -   [CVE-2024-0229](https://ubuntu.com/security/CVE-2024-0229) <!-- medium -->
    -   [CVE-2023-6816](https://ubuntu.com/security/CVE-2023-6816) <!-- medium -->


### [[USN-6621-1](https://ubuntu.com/security/notices/USN-6621-1)] ImageMagick vulnerability (07:28) {#usn-6621-1-imagemagick-vulnerability--07-28}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-5341](https://ubuntu.com/security/CVE-2023-5341) <!-- medium -->
-   ImageMagick is in universe, so these updates are available via [Ubuntu Pro](https://ubuntu.com/pro)
-   Heap UAF in BMP decoder - likely DoS but possible code-execution via a
    crafted BMP file


### [[USN-6622-1](https://ubuntu.com/security/notices/USN-6622-1)] OpenSSL vulnerabilities (08:07) {#usn-6622-1-openssl-vulnerabilities--08-07}

-   4 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-0727](https://ubuntu.com/security/CVE-2024-0727) <!-- low -->
    -   [CVE-2023-6237](https://ubuntu.com/security/CVE-2023-6237) <!-- low -->
    -   [CVE-2023-6129](https://ubuntu.com/security/CVE-2023-6129) <!-- low -->
    -   [CVE-2023-5678](https://ubuntu.com/security/CVE-2023-5678) <!-- low -->
-   Two CPU-based DoS issues where OpenSSL would spend an excessive amount of
    time trying to check an invalid RSA or X9.42 DH keys
-   NULL ptr deref when parsing a malicious PKCS12 file
-   Issue specific to PowerPC (ppc64el arch in Ubuntu) - possible to corrupt
    application state since the POLY1305 MAC implementation (hand-coded assembly)
    saves the contents of the vector registers in a different order than when they
    get restored - so some registers will be corrupted when returning to the
    caller
    -   Only relevant on newer PowerPC processors which support the PowerISA 2.07
        instructions


### [[USN-6592-2](https://ubuntu.com/security/notices/USN-6592-2)] libssh vulnerabilities (09:27) {#usn-6592-2-libssh-vulnerabilities--09-27}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-6918](https://ubuntu.com/security/CVE-2023-6918) <!-- medium -->
    -   [CVE-2023-6004](https://ubuntu.com/security/CVE-2023-6004) <!-- medium -->
-   Recent libssh update now also available for Ubuntu Pro users on older releases


### [[USN-6623-1](https://ubuntu.com/security/notices/USN-6623-1)] Django vulnerability (09:34) {#usn-6623-1-django-vulnerability--09-34}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-24680](https://ubuntu.com/security/CVE-2024-24680) <!-- medium -->
-   ReDoS when using the `intcomma` template


### [[USN-6609-3](https://ubuntu.com/security/notices/USN-6609-3)] Linux kernel (Oracle) vulnerabilities (09:45) {#usn-6609-3-linux-kernel--oracle--vulnerabilities--09-45}

-   6 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-0193](https://ubuntu.com/security/CVE-2024-0193) <!-- high -->
    -   [CVE-2023-6932](https://ubuntu.com/security/CVE-2023-6932) <!-- high -->
    -   [CVE-2023-6931](https://ubuntu.com/security/CVE-2023-6931) <!-- high -->
    -   [CVE-2023-6817](https://ubuntu.com/security/CVE-2023-6817) <!-- high -->
    -   [CVE-2023-6606](https://ubuntu.com/security/CVE-2023-6606) <!-- medium -->
    -   [CVE-2023-6040](https://ubuntu.com/security/CVE-2023-6040) <!-- medium -->
-   Refer back to [Episode 217](https://ubuntusecuritypodcast.org/episode-217/) for most recent kernel vulns


### [[USN-6610-2](https://ubuntu.com/security/notices/USN-6610-2)] Firefox regressions (09:57) {#usn-6610-2-firefox-regressions--09-57}

-   14 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2024-0746](https://ubuntu.com/security/CVE-2024-0746) <!-- low -->
    -   [CVE-2024-0755](https://ubuntu.com/security/CVE-2024-0755) <!-- medium -->
    -   [CVE-2024-0754](https://ubuntu.com/security/CVE-2024-0754) <!-- low -->
    -   [CVE-2024-0753](https://ubuntu.com/security/CVE-2024-0753) <!-- medium -->
    -   [CVE-2024-0751](https://ubuntu.com/security/CVE-2024-0751) <!-- low -->
    -   [CVE-2024-0750](https://ubuntu.com/security/CVE-2024-0750) <!-- medium -->
    -   [CVE-2024-0749](https://ubuntu.com/security/CVE-2024-0749) <!-- medium -->
    -   [CVE-2024-0748](https://ubuntu.com/security/CVE-2024-0748) <!-- medium -->
    -   [CVE-2024-0747](https://ubuntu.com/security/CVE-2024-0747) <!-- medium -->
    -   [CVE-2024-0745](https://ubuntu.com/security/CVE-2024-0745) <!-- medium -->
    -   [CVE-2024-0744](https://ubuntu.com/security/CVE-2024-0744) <!-- medium -->
    -   [CVE-2024-0743](https://ubuntu.com/security/CVE-2024-0743) <!-- medium -->
    -   [CVE-2024-0742](https://ubuntu.com/security/CVE-2024-0742) <!-- medium -->
    -   [CVE-2024-0741](https://ubuntu.com/security/CVE-2024-0741) <!-- medium -->
-   Similarly, last week I mentioned [[USN-6610-1] Firefox vulnerabilities]({{< relref "episode-217#usn-6610-1-firefox-vulnerabilities" >}}) -
    upstream 122.0 release has various minor regressions now fixed in this 122.0.1
    release - including an issue if you happened to be using the Yaru-Remix theme
    in Ubuntu


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Updates for unprivileged user namespace restrictions in Ubuntu 24.04 LTS (10:32) {#updates-for-unprivileged-user-namespace-restrictions-in-ubuntu-24-dot-04-lts--10-32}

-   Previously mentioned this work a few times on the podcast ([Call for testing of Unprivileged User Namespace Restrictions on Mantic in Episode 211]({{< relref "episode-211#call-for-testing-of-unprivileged-user-namespace-restrictions-on-mantic" >}}) and [Unprivileged user namespace restrictions via AppArmor in Ubuntu in Episode 205]({{< relref "episode-205#unprivileged-user-namespace-restrictions-via-apparmor-in-ubuntu--17-00" >}}))
-   Both those times was about user namespace restrictions in Ubuntu 23.10 (the current interim release)
-   For those not familiar - user namespaces provide a mechanism for operating as
    a different UID on a Linux system - in particular, can operate as uid 0 within
    a namespace which is then constrained by the original parent namespace -
    ie. as a normal unprivileged user, I could create a new user namespace and map
    my UID to 0 within that namespace, which can then allow me to have say
    `CAP_NET_ADMIN` within that namespace and so create firewall rules etc that only
    affect applications within that namespace and not the host system
    -   Can also be used for isolation etc
    -   However, since within the namespace my unprivieleged user now has extra
        privileges, exposes additional kernel attack surface - various bugs have
        been found in differetn kernel subsystems that allow an unprivileged user to
        exploit the kernel as a result
-   Want a way to provide fine grained controls over unprivileged user namespaces
-   Previously, used AppArmor to deny the ability to create a new user namespace
    unless an application was explicitly tagged via an associated AppArmor profile
-   John and Georgia from the AppArmor team have made a number of enhancements, in
    particular adding a new default functionality where you can define in AppArmor
    policy a different AppArmor profile which an application should transition
    into when it creates a user namespace
-   In particular, we can now do this even for the "unconfined" profile - and then
    ship a default "unconfined_userns" profile which allows an application to
    create a userns but to not gain any additional capabilities within that by
    default
-   Various sandboxing frameworks behave much more sensibly with this - so instead
    of just failing when they try and create the userns, they instead are able to
    create one but then if they try and gain additional capabilities (like
    `CAP_NET_ADMIN` etc as mentioned before) this is then denied
-   This also matches the semantics which we want to achieve since it is not
    really the user namespace itself that is the original issue, it is the ability
    to gain additional capabilities within that which the unprivileged user did
    not have originally
-   In addition, Georgia has been busy testing various applications within the
    archive and across the Linux ecosystem to ensure we ship any required profiles
    for them out-of-the-box so as many pieces of software continue to work as
    expected with these restrictions in place
-   AppArmor in noble is already enabling this restriction and these updates are
    now in the `apparmor` package in noble-proposed pocket
    -   Expect to be available in noble within the next few days once automated
        testing completes
-   Requires some additional kernel support - Kernel Team has merged this into
    their current [linux-unstable kernel](https://launchpad.net/~canonical-kernel-team/+archive/ubuntu/unstable) (available via the Kernel Team's unstable
    PPA) which will land eventually land in 24.04 proper
-   On track to have this additional security hardening feature enabled by default
    for 24.04 LTS at release so we can close off one of the more prevalent sources
    of kernel privilege escalation bugs in the past few years


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
