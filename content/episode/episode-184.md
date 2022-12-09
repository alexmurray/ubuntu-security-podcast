+++
title = "Episode 184"
description = """
  This week we cover Mark Esler's keynote address from UbuCon Asia 2022 on
  Improving FOSS Security, plus we look at security vulnerabilities and updates
  for snapd, the Linux kernel, ca-certificates and more.
  """
date = 2022-12-09T16:24:00+10:30
lastmod = 2022-12-09T16:25:53+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E184.mp3"
podcast_duration = 787
podcast_bytes = 14363412
permalink = "https://ubuntusecuritypodcast.org/episode-184/"
guid = "66d025853830562e95dcc1d4a9442b76202bda3bd025aacfa071f2ff02ac061a416d7ffe17c8859e42c197289455ea8e63f5032c01aea402efb3541c507f0caa"
+++

## Overview {#overview}

This week we cover Mark Esler's keynote address from UbuCon Asia 2022 on
Improving FOSS Security, plus we look at security vulnerabilities and updates
for snapd, the Linux kernel, ca-certificates and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

42 unique CVEs addressed


### [[USN-5753-1](https://ubuntu.com/security/notices/USN-5753-1)] snapd vulnerability [01:08] {#usn-5753-1-snapd-vulnerability-01-08}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-3328](https://ubuntu.com/security/CVE-2022-3328) <!-- high -->
-   Follow-up to the last snapd vulnerability (see [Oh Snap! More Lemmings (Local Privilege Escalation in snap-confine) from Episode 149]({{< relref "episode-149#oh-snap-more-lemmings--local-privilege-escalation-in-snap-confine--09-01" >}}))
-   <https://blog.qualys.com/vulnerabilities-threat-research/2022/11/30/race-condition-in-snap-confines-must_mkdir_and_open_with_perms-cve-2022-3328>
-   A slightly simplified explanation is as follows
-   Part of that vulnerability was that snap-confine creates a private tmp for
    each snap - and this is created under the system's real `/tmp` so that its disk
    usage etc gets accounted for as part of the normal `/tmp`
-   But `/tmp` is world writable so it is trivial for a user to create the expected
    per-snap directory and place their own contents inside that such that they can
    have this be executed by `snap-confine` during the process of creating this
    private `/tmp` namespace for the snap - and hence get privilege escalation to root as `snap-confine` is suid
-   the original fix then relied on checking if this path was appropriately owned
    by root etc - and if not, it would create a new random directory then move the
    imposter out of the way and replace it with the one it just created via `rename()`
-   But this is not atomic so could be raced - and even though the fix included
    additional checks to try and catch any failed race, Qualys found a way to win
    this race and avoid those checks
-   New fix is to use `systemd-tmpfiles` to create a `/tmp/snap-private-tmp/`
    directory on boot with the appropriate restrictive permissions
-   Then `snap-confine` can create the per-snap private `/tmp` within this without
    fear of being interfered with by unprivileged users
-   Thanks to Qualys for their help in reporting this and reviewing patches etc


### [[USN-5743-2](https://ubuntu.com/security/notices/USN-5743-2)] LibTIFF vulnerability [05:10] {#usn-5743-2-libtiff-vulnerability-05-10}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-3970](https://ubuntu.com/security/CVE-2022-3970) <!-- medium -->
    -   [[USN-5743-1] LibTIFF vulnerability from Episode 183]({{< relref "episode-183#usn-5743-1-libtiff-vulnerability" >}})


### [[USN-5752-1](https://ubuntu.com/security/notices/USN-5752-1)] Linux kernel (Azure CVM) vulnerabilities [05:20] {#usn-5752-1-linux-kernel--azure-cvm--vulnerabilities-05-20}

-   6 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-42722](https://ubuntu.com/security/CVE-2022-42722) <!-- medium -->
    -   [CVE-2022-42721](https://ubuntu.com/security/CVE-2022-42721) <!-- medium -->
    -   [CVE-2022-42720](https://ubuntu.com/security/CVE-2022-42720) <!-- medium -->
    -   [CVE-2022-42719](https://ubuntu.com/security/CVE-2022-42719) <!-- medium -->
    -   [CVE-2022-41674](https://ubuntu.com/security/CVE-2022-41674) <!-- medium -->
    -   [CVE-2022-2602](https://ubuntu.com/security/CVE-2022-2602) <!-- high -->
-   5.15 azure fde 22.04 LTS
-   Race condition in `io_uring` -&gt; UAF (from Pwn2Own 2022)
    -   [[LSN-0090-1] Linux kernel vulnerability from Episode 182]({{< relref "episode-182#lsn-0090-1-linux-kernel-vulnerability-01-16" >}})


### [[USN-5754-1](https://ubuntu.com/security/notices/USN-5754-1)] Linux kernel vulnerabilities [05:50] {#usn-5754-1-linux-kernel-vulnerabilities-05-50}

-   8 CVEs addressed in Kinetic (22.10)
    -   [CVE-2022-3621](https://ubuntu.com/security/CVE-2022-3621) <!-- low -->
    -   [CVE-2022-3594](https://ubuntu.com/security/CVE-2022-3594) <!-- medium -->
    -   [CVE-2022-3567](https://ubuntu.com/security/CVE-2022-3567) <!-- medium -->
    -   [CVE-2022-3566](https://ubuntu.com/security/CVE-2022-3566) <!-- medium -->
    -   [CVE-2022-3565](https://ubuntu.com/security/CVE-2022-3565) <!-- low -->
    -   [CVE-2022-3564](https://ubuntu.com/security/CVE-2022-3564) <!-- medium -->
    -   [CVE-2022-3524](https://ubuntu.com/security/CVE-2022-3524) <!-- medium -->
    -   [CVE-2022-43945](https://ubuntu.com/security/CVE-2022-43945) <!-- high -->
-   5.19 generic/aws/gcp/ibm/kvm/oracle/raspi/lowlatency
-   Buffer overflow in NFSD in kernel affecting only very recent kernel versions
    (5.19.17 to 6.0.2)
    -   would allow a remote client to trigger this stack buffer overflow and
        potentially get code execution within the kernel


### [[USN-5755-1](https://ubuntu.com/security/notices/USN-5755-1)] Linux kernel vulnerabilities [06:18] {#usn-5755-1-linux-kernel-vulnerabilities-06-18}

-   9 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-3621](https://ubuntu.com/security/CVE-2022-3621) <!-- low -->
    -   [CVE-2022-3594](https://ubuntu.com/security/CVE-2022-3594) <!-- medium -->
    -   [CVE-2022-3567](https://ubuntu.com/security/CVE-2022-3567) <!-- medium -->
    -   [CVE-2022-3566](https://ubuntu.com/security/CVE-2022-3566) <!-- medium -->
    -   [CVE-2022-3565](https://ubuntu.com/security/CVE-2022-3565) <!-- low -->
    -   [CVE-2022-3564](https://ubuntu.com/security/CVE-2022-3564) <!-- medium -->
    -   [CVE-2022-3524](https://ubuntu.com/security/CVE-2022-3524) <!-- medium -->
    -   [CVE-2022-42703](https://ubuntu.com/security/CVE-2022-42703) <!-- high -->
    -   [CVE-2022-43945](https://ubuntu.com/security/CVE-2022-43945) <!-- high -->
-   5.15 generic/aws/gcp/ibm/kvm/oracle/raspi/lowlatency (22.04 LTS + 20.04 LTS
    for specific HWE variants)
-   NFSD buffer overflow
-   anonymous VMA mapping issue discussed briefly last week
    -   GPZ put out a very detailed blog post about how the PoC works for this
    -   <https://googleprojectzero.blogspot.com/2022/12/exploiting-CVE-2022-42703-bringing-back-the-stack-attack.html>


### [[USN-5756-1](https://ubuntu.com/security/notices/USN-5756-1)] Linux kernel vulnerabilities [06:55] {#usn-5756-1-linux-kernel-vulnerabilities-06-55}

-   8 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-3621](https://ubuntu.com/security/CVE-2022-3621) <!-- low -->
    -   [CVE-2022-3594](https://ubuntu.com/security/CVE-2022-3594) <!-- medium -->
    -   [CVE-2022-3567](https://ubuntu.com/security/CVE-2022-3567) <!-- medium -->
    -   [CVE-2022-3566](https://ubuntu.com/security/CVE-2022-3566) <!-- medium -->
    -   [CVE-2022-3565](https://ubuntu.com/security/CVE-2022-3565) <!-- low -->
    -   [CVE-2022-3564](https://ubuntu.com/security/CVE-2022-3564) <!-- medium -->
    -   [CVE-2022-3524](https://ubuntu.com/security/CVE-2022-3524) <!-- medium -->
    -   [CVE-2022-42703](https://ubuntu.com/security/CVE-2022-42703) <!-- high -->


### [[USN-5757-1](https://ubuntu.com/security/notices/USN-5757-1)] Linux kernel vulnerabilities {#usn-5757-1-linux-kernel-vulnerabilities}

-   9 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2022-3621](https://ubuntu.com/security/CVE-2022-3621) <!-- low -->
    -   [CVE-2022-3594](https://ubuntu.com/security/CVE-2022-3594) <!-- medium -->
    -   [CVE-2022-3567](https://ubuntu.com/security/CVE-2022-3567) <!-- medium -->
    -   [CVE-2022-3566](https://ubuntu.com/security/CVE-2022-3566) <!-- medium -->
    -   [CVE-2022-3565](https://ubuntu.com/security/CVE-2022-3565) <!-- low -->
    -   [CVE-2022-3564](https://ubuntu.com/security/CVE-2022-3564) <!-- medium -->
    -   [CVE-2022-3524](https://ubuntu.com/security/CVE-2022-3524) <!-- medium -->
    -   [CVE-2022-3239](https://ubuntu.com/security/CVE-2022-3239) <!-- medium -->
    -   [CVE-2022-42703](https://ubuntu.com/security/CVE-2022-42703) <!-- high -->


### [[USN-5757-2](https://ubuntu.com/security/notices/USN-5757-2)] Linux kernel vulnerabilities {#usn-5757-2-linux-kernel-vulnerabilities}

-   9 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-3621](https://ubuntu.com/security/CVE-2022-3621) <!-- low -->
    -   [CVE-2022-3594](https://ubuntu.com/security/CVE-2022-3594) <!-- medium -->
    -   [CVE-2022-3567](https://ubuntu.com/security/CVE-2022-3567) <!-- medium -->
    -   [CVE-2022-3566](https://ubuntu.com/security/CVE-2022-3566) <!-- medium -->
    -   [CVE-2022-3565](https://ubuntu.com/security/CVE-2022-3565) <!-- low -->
    -   [CVE-2022-3564](https://ubuntu.com/security/CVE-2022-3564) <!-- medium -->
    -   [CVE-2022-3524](https://ubuntu.com/security/CVE-2022-3524) <!-- medium -->
    -   [CVE-2022-3239](https://ubuntu.com/security/CVE-2022-3239) <!-- medium -->
    -   [CVE-2022-42703](https://ubuntu.com/security/CVE-2022-42703) <!-- high -->


### [[USN-5758-1](https://ubuntu.com/security/notices/USN-5758-1)] Linux kernel vulnerabilities {#usn-5758-1-linux-kernel-vulnerabilities}

-   13 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-43750](https://ubuntu.com/security/CVE-2022-43750) <!-- medium -->
    -   [CVE-2022-40768](https://ubuntu.com/security/CVE-2022-40768) <!-- medium -->
    -   [CVE-2022-3649](https://ubuntu.com/security/CVE-2022-3649) <!-- medium -->
    -   [CVE-2022-3635](https://ubuntu.com/security/CVE-2022-3635) <!-- medium -->
    -   [CVE-2022-3621](https://ubuntu.com/security/CVE-2022-3621) <!-- low -->
    -   [CVE-2022-3594](https://ubuntu.com/security/CVE-2022-3594) <!-- medium -->
    -   [CVE-2022-3567](https://ubuntu.com/security/CVE-2022-3567) <!-- medium -->
    -   [CVE-2022-3566](https://ubuntu.com/security/CVE-2022-3566) <!-- medium -->
    -   [CVE-2022-3565](https://ubuntu.com/security/CVE-2022-3565) <!-- low -->
    -   [CVE-2022-3564](https://ubuntu.com/security/CVE-2022-3564) <!-- medium -->
    -   [CVE-2022-3524](https://ubuntu.com/security/CVE-2022-3524) <!-- medium -->
    -   [CVE-2022-3239](https://ubuntu.com/security/CVE-2022-3239) <!-- medium -->
    -   [CVE-2022-42703](https://ubuntu.com/security/CVE-2022-42703) <!-- high -->


### [[USN-5756-2](https://ubuntu.com/security/notices/USN-5756-2)] Linux kernel (GKE) vulnerabilities {#usn-5756-2-linux-kernel--gke--vulnerabilities}

-   8 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-3621](https://ubuntu.com/security/CVE-2022-3621) <!-- low -->
    -   [CVE-2022-3594](https://ubuntu.com/security/CVE-2022-3594) <!-- medium -->
    -   [CVE-2022-3567](https://ubuntu.com/security/CVE-2022-3567) <!-- medium -->
    -   [CVE-2022-3566](https://ubuntu.com/security/CVE-2022-3566) <!-- medium -->
    -   [CVE-2022-3565](https://ubuntu.com/security/CVE-2022-3565) <!-- low -->
    -   [CVE-2022-3564](https://ubuntu.com/security/CVE-2022-3564) <!-- medium -->
    -   [CVE-2022-3524](https://ubuntu.com/security/CVE-2022-3524) <!-- medium -->
    -   [CVE-2022-42703](https://ubuntu.com/security/CVE-2022-42703) <!-- high -->


### [[USN-5755-2](https://ubuntu.com/security/notices/USN-5755-2)] Linux kernel vulnerabilities {#usn-5755-2-linux-kernel-vulnerabilities}

-   9 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-3621](https://ubuntu.com/security/CVE-2022-3621) <!-- low -->
    -   [CVE-2022-3594](https://ubuntu.com/security/CVE-2022-3594) <!-- medium -->
    -   [CVE-2022-3567](https://ubuntu.com/security/CVE-2022-3567) <!-- medium -->
    -   [CVE-2022-3566](https://ubuntu.com/security/CVE-2022-3566) <!-- medium -->
    -   [CVE-2022-3565](https://ubuntu.com/security/CVE-2022-3565) <!-- low -->
    -   [CVE-2022-3564](https://ubuntu.com/security/CVE-2022-3564) <!-- medium -->
    -   [CVE-2022-3524](https://ubuntu.com/security/CVE-2022-3524) <!-- medium -->
    -   [CVE-2022-42703](https://ubuntu.com/security/CVE-2022-42703) <!-- high -->
    -   [CVE-2022-43945](https://ubuntu.com/security/CVE-2022-43945) <!-- high -->


### [[USN-5759-1](https://ubuntu.com/security/notices/USN-5759-1)] LibBPF vulnerabilities [07:06] {#usn-5759-1-libbpf-vulnerabilities-07-06}

-   5 CVEs addressed in Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-3606](https://ubuntu.com/security/CVE-2022-3606) <!-- medium -->
    -   [CVE-2022-3534](https://ubuntu.com/security/CVE-2022-3534) <!-- medium -->
    -   [CVE-2022-3533](https://ubuntu.com/security/CVE-2022-3533) <!-- medium -->
    -   [CVE-2021-45941](https://ubuntu.com/security/CVE-2021-45941) <!-- medium -->
    -   [CVE-2021-45940](https://ubuntu.com/security/CVE-2021-45940) <!-- medium -->
-   2 different heap-based buffer overflows, 1 memory leak, 1 UAF and 1 NULL
    pointer deref


### [[USN-5760-1](https://ubuntu.com/security/notices/USN-5760-1), [USN-5760-2](https://ubuntu.com/security/notices/USN-5760-2)] libxml2 vulnerabilities [07:19] {#usn-5760-1-usn-5760-2-libxml2-vulnerabilities-07-19}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-40304](https://ubuntu.com/security/CVE-2022-40304) <!-- medium -->
    -   [CVE-2022-40303](https://ubuntu.com/security/CVE-2022-40303) <!-- medium -->
    -   [CVE-2022-2309](https://ubuntu.com/security/CVE-2022-2309) <!-- low -->
-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM) (first two above)
-   NULL ptr deref, double-free, OOB read due to an integer overflow when parsing
    multigigabyte XML files


### [[USN-5761-1](https://ubuntu.com/security/notices/USN-5761-1), [USN-5761-2](https://ubuntu.com/security/notices/USN-5761-2)] ca-certificates update [07:37] {#usn-5761-1-usn-5761-2-ca-certificates-update-07-37}

-   Affecting Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
-   Removal of the TrustCor CA cert - upstream Mozilla have marked this as
    distrusted after 30th November - ie don't trust anything signed by this CA
    after that date - but there is no such functionality in `ca-certificates` to
    mark something as distrusted after a particular date - so instead we have
    removed it entirely so all things signed by TrustCor would now not be trusted
-   TrustCor appear to have very close ties (ie potentially the same owners) with
    other companies who have built spyware and surveillance technologies
-   <https://www.washingtonpost.com/technology/2022/11/30/trustcor-internet-authority-mozilla/>
-   Looking at certificate transparency logs, appears to only be a few downstream
    sites that would now be distrusted as a result - in particular a bunch of
    dynamic DNS provider noip.com
-   Thanks to JanC in `#ubuntu-security` for discussing this with the team


### [[USN-5762-1](https://ubuntu.com/security/notices/USN-5762-1)] GNU binutils vulnerability [09:51] {#usn-5762-1-gnu-binutils-vulnerability-09-51}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-38533](https://ubuntu.com/security/CVE-2022-38533) <!-- medium -->


### [[USN-5764-1](https://ubuntu.com/security/notices/USN-5764-1)] U-Boot vulnerabilities {#usn-5764-1-u-boot-vulnerabilities}

-   7 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-34835](https://ubuntu.com/security/CVE-2022-34835) <!-- medium -->
    -   [CVE-2022-33967](https://ubuntu.com/security/CVE-2022-33967) <!-- medium -->
    -   [CVE-2022-33103](https://ubuntu.com/security/CVE-2022-33103) <!-- medium -->
    -   [CVE-2022-30767](https://ubuntu.com/security/CVE-2022-30767) <!-- medium -->
    -   [CVE-2022-30790](https://ubuntu.com/security/CVE-2022-30790) <!-- medium -->
    -   [CVE-2022-30552](https://ubuntu.com/security/CVE-2022-30552) <!-- medium -->
    -   [CVE-2022-2347](https://ubuntu.com/security/CVE-2022-2347) <!-- medium -->


### [[USN-5763-1](https://ubuntu.com/security/notices/USN-5763-1)] NumPy vulnerabilities {#usn-5763-1-numpy-vulnerabilities}

-   4 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2021-41496](https://ubuntu.com/security/CVE-2021-41496) <!-- medium -->
    -   [CVE-2021-41495](https://ubuntu.com/security/CVE-2021-41495) <!-- medium -->
    -   [CVE-2021-34141](https://ubuntu.com/security/CVE-2021-34141) <!-- medium -->
    -   [CVE-2021-33430](https://ubuntu.com/security/CVE-2021-33430) <!-- medium -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Mark Esler at UbuCon Asia 2022 [10:00] {#mark-esler-at-ubucon-asia-2022-10-00}

-   UbuCon Asia 2022 is conference held in Asia focussing on Ubuntu, Linux and
    F/OSS in general
-   First one was held last year as a fully virtual conference
-   This year was in person in Seoul, South Korea
-   Mark Esler from the Ubuntu Security team delivered the keynote address about
    how Canonical does security maintenance for Ubuntu as well as advice for how
    F/OSS projects can better handle security vulnerabilities and coordinate with
    downstreams like Ubuntu to help keep all users of their software safe
-   Covers things like how we maintain stable versions of each package in a given
    release and then backport fixes on top, how we handle any potential
    regressions, how CVEs are (unfortunately) a normal part of software and some
    common examples of different CVEs
-   How we handle disclosure of vulnerabilities
-   The process of how we do security updates in Ubuntu (patching, testing, releasing etc)
-   And then how upstream F/OSS projects can better handle security issues and
    work with the security community
-   <https://2022.ubucon.asia/sessions/keynote/>
-   [Slides including speaker notes](https://docs.google.com/presentation/d/1WkdlbJ2JZgYiKUU_Hn6u1mjhmMiobXnBgrw9yJN3DTc/edit)
-   Video of the session is at <https://youtu.be/N5nVSXV9Hbk?t=480> - Mark's
    presentation begins right at about 8 minutes in


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
