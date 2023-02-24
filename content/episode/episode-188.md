+++
title = "Episode 188"
description = """
  This week the common theme is vulnerabilities in setuid-root binaries and their
  use of environment variables, so we take a look at a great blog post from the
  Trail of Bits team about one such example in the venerable `chfn` plus we look at
  some security vulnerabilities in, and updates for the Linux kernel, Go Text, the
  X Server and more, and finally we cover the recent announcement of Ubuntu
  22.04.2 LTS.
  """
date = 2023-02-24T21:27:00+10:30
lastmod = 2023-02-24T21:28:37+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E188.mp3"
podcast_duration = 1144
podcast_bytes = 20087865
permalink = "https://ubuntusecuritypodcast.org/episode-188/"
guid = "e826ae028458f83f730a352ef7eed99d35b851ae298b7f65a8c8fea674ecafcabb71e23fdad5c86db3581fc1b2102b5f96684d145bc501c09af972348d79d9c9"
+++

## Overview {#overview}

This week the common theme is vulnerabilities in setuid-root binaries and their
use of environment variables, so we take a look at a great blog post from the
Trail of Bits team about one such example in the venerable `chfn` plus we look at
some security vulnerabilities in, and updates for the Linux kernel, Go Text, the
X Server and more, and finally we cover the recent announcement of Ubuntu
22.04.2 LTS.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

75 unique CVEs addressed


### [[USN-5872-1](https://ubuntu.com/security/notices/USN-5872-1)] NSS vulnerabilities [00:57] {#usn-5872-1-nss-vulnerabilities-00-57}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-34480](https://ubuntu.com/security/CVE-2022-34480) <!-- medium -->
    -   [CVE-2022-22747](https://ubuntu.com/security/CVE-2022-22747) <!-- low -->


### [[USN-5874-1](https://ubuntu.com/security/notices/USN-5874-1)] Linux kernel vulnerabilities {#usn-5874-1-linux-kernel-vulnerabilities}

-   7 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2023-20928](https://ubuntu.com/security/CVE-2023-20928) <!-- medium -->
    -   [CVE-2022-42895](https://ubuntu.com/security/CVE-2022-42895) <!-- medium -->
    -   [CVE-2022-41850](https://ubuntu.com/security/CVE-2022-41850) <!-- low -->
    -   [CVE-2022-41849](https://ubuntu.com/security/CVE-2022-41849) <!-- low -->
    -   [CVE-2022-3649](https://ubuntu.com/security/CVE-2022-3649) <!-- medium -->
    -   [CVE-2022-3640](https://ubuntu.com/security/CVE-2022-3640) <!-- medium -->
    -   [CVE-2022-3628](https://ubuntu.com/security/CVE-2022-3628) <!-- medium -->


### [[USN-5877-1](https://ubuntu.com/security/notices/USN-5877-1)] Linux kernel (GKE) vulnerabilities [01:06] {#usn-5877-1-linux-kernel--gke--vulnerabilities-01-06}

-   28 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-0590](https://ubuntu.com/security/CVE-2023-0590) <!-- medium -->
    -   [CVE-2022-47940](https://ubuntu.com/security/CVE-2022-47940) <!-- medium -->
    -   [CVE-2022-4662](https://ubuntu.com/security/CVE-2022-4662) <!-- low -->
    -   [CVE-2022-45934](https://ubuntu.com/security/CVE-2022-45934) <!-- medium -->
    -   [CVE-2022-43750](https://ubuntu.com/security/CVE-2022-43750) <!-- medium -->
    -   [CVE-2022-42895](https://ubuntu.com/security/CVE-2022-42895) <!-- medium -->
    -   [CVE-2022-41850](https://ubuntu.com/security/CVE-2022-41850) <!-- low -->
    -   [CVE-2022-41849](https://ubuntu.com/security/CVE-2022-41849) <!-- low -->
    -   [CVE-2022-4095](https://ubuntu.com/security/CVE-2022-4095) <!-- medium -->
    -   [CVE-2022-40307](https://ubuntu.com/security/CVE-2022-40307) <!-- medium -->
    -   [CVE-2022-39842](https://ubuntu.com/security/CVE-2022-39842) <!-- low -->
    -   [CVE-2022-39188](https://ubuntu.com/security/CVE-2022-39188) <!-- medium -->
    -   [CVE-2022-3649](https://ubuntu.com/security/CVE-2022-3649) <!-- medium -->
    -   [CVE-2022-3646](https://ubuntu.com/security/CVE-2022-3646) <!-- medium -->
    -   [CVE-2022-3643](https://ubuntu.com/security/CVE-2022-3643) <!-- medium -->
    -   [CVE-2022-3640](https://ubuntu.com/security/CVE-2022-3640) <!-- medium -->
    -   [CVE-2022-3628](https://ubuntu.com/security/CVE-2022-3628) <!-- medium -->
    -   [CVE-2022-3623](https://ubuntu.com/security/CVE-2022-3623) <!-- medium -->
    -   [CVE-2022-3619](https://ubuntu.com/security/CVE-2022-3619) <!-- medium -->
    -   [CVE-2022-3586](https://ubuntu.com/security/CVE-2022-3586) <!-- medium -->
    -   [CVE-2022-3543](https://ubuntu.com/security/CVE-2022-3543) <!-- medium -->
    -   [CVE-2022-3303](https://ubuntu.com/security/CVE-2022-3303) <!-- medium -->
    -   [CVE-2022-3061](https://ubuntu.com/security/CVE-2022-3061) <!-- medium -->
    -   [CVE-2022-2663](https://ubuntu.com/security/CVE-2022-2663) <!-- medium -->
    -   [CVE-2022-20421](https://ubuntu.com/security/CVE-2022-20421) <!-- medium -->
    -   [CVE-2022-0171](https://ubuntu.com/security/CVE-2022-0171) <!-- medium -->
    -   [CVE-2022-42896](https://ubuntu.com/security/CVE-2022-42896) <!-- high -->
    -   [CVE-2022-4378](https://ubuntu.com/security/CVE-2022-4378) <!-- high -->
-   UAF in L2CAP handshake implementation in bluetooth subsystem - as is in
    handshake likely can allow an unprivileged remote attacker within bluetooth
    range to crash kernel / leak contents of memory or get RCE - or even a local
    unprivileged user could use this to try and escalate their privileges by
    turning on bluetooth then attacking the machine via it
-   Stack buffer overflow in handling of sysctl - need to be able to write a
    sysctl which is normally only available to root - **but also can be used by root
    within a user namespace** - so if have unprivileged user namespaces enabled then
    a local unpriv user can use this to either crash the kernel or possibly
    execute arbitrary code within the kernel -&gt; EoP


### [[USN-5875-1](https://ubuntu.com/security/notices/USN-5875-1)] Linux kernel (GKE) vulnerabilities [03:20] {#usn-5875-1-linux-kernel--gke--vulnerabilities-03-20}

-   11 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-20928](https://ubuntu.com/security/CVE-2023-20928) <!-- medium -->
    -   [CVE-2022-45934](https://ubuntu.com/security/CVE-2022-45934) <!-- medium -->
    -   [CVE-2022-42895](https://ubuntu.com/security/CVE-2022-42895) <!-- medium -->
    -   [CVE-2022-41850](https://ubuntu.com/security/CVE-2022-41850) <!-- low -->
    -   [CVE-2022-41849](https://ubuntu.com/security/CVE-2022-41849) <!-- low -->
    -   [CVE-2022-3649](https://ubuntu.com/security/CVE-2022-3649) <!-- medium -->
    -   [CVE-2022-3643](https://ubuntu.com/security/CVE-2022-3643) <!-- medium -->
    -   [CVE-2022-3640](https://ubuntu.com/security/CVE-2022-3640) <!-- medium -->
    -   [CVE-2022-3628](https://ubuntu.com/security/CVE-2022-3628) <!-- medium -->
    -   [CVE-2022-42896](https://ubuntu.com/security/CVE-2022-42896) <!-- high -->
    -   [CVE-2022-43945](https://ubuntu.com/security/CVE-2022-43945) <!-- high -->
-   bluetooth UAF
-   Buffer overflow in the in-kernel NFSD implementation - [Episode 184](https://ubuntusecuritypodcast.org/episode-184/)


### [[USN-5876-1](https://ubuntu.com/security/notices/USN-5876-1)] Linux kernel vulnerabilities {#usn-5876-1-linux-kernel-vulnerabilities}

-   10 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-0590](https://ubuntu.com/security/CVE-2023-0590) <!-- medium -->
    -   [CVE-2022-47940](https://ubuntu.com/security/CVE-2022-47940) <!-- medium -->
    -   [CVE-2022-42895](https://ubuntu.com/security/CVE-2022-42895) <!-- medium -->
    -   [CVE-2022-41850](https://ubuntu.com/security/CVE-2022-41850) <!-- low -->
    -   [CVE-2022-41849](https://ubuntu.com/security/CVE-2022-41849) <!-- low -->
    -   [CVE-2022-3640](https://ubuntu.com/security/CVE-2022-3640) <!-- medium -->
    -   [CVE-2022-3628](https://ubuntu.com/security/CVE-2022-3628) <!-- medium -->
    -   [CVE-2022-3623](https://ubuntu.com/security/CVE-2022-3623) <!-- medium -->
    -   [CVE-2022-3619](https://ubuntu.com/security/CVE-2022-3619) <!-- medium -->
    -   [CVE-2022-3543](https://ubuntu.com/security/CVE-2022-3543) <!-- medium -->


### [[USN-5878-1](https://ubuntu.com/security/notices/USN-5878-1)] Linux kernel (Azure) vulnerabilities {#usn-5878-1-linux-kernel--azure--vulnerabilities}

-   5 CVEs addressed in Kinetic (22.10)
    -   [CVE-2023-0590](https://ubuntu.com/security/CVE-2023-0590) <!-- medium -->
    -   [CVE-2022-42895](https://ubuntu.com/security/CVE-2022-42895) <!-- medium -->
    -   [CVE-2022-3640](https://ubuntu.com/security/CVE-2022-3640) <!-- medium -->
    -   [CVE-2022-3628](https://ubuntu.com/security/CVE-2022-3628) <!-- medium -->
    -   [CVE-2022-3619](https://ubuntu.com/security/CVE-2022-3619) <!-- medium -->


### [[USN-5879-1](https://ubuntu.com/security/notices/USN-5879-1)] Linux kernel (HWE) vulnerabilities {#usn-5879-1-linux-kernel--hwe--vulnerabilities}

-   9 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-0590](https://ubuntu.com/security/CVE-2023-0590) <!-- medium -->
    -   [CVE-2022-45934](https://ubuntu.com/security/CVE-2022-45934) <!-- medium -->
    -   [CVE-2022-42895](https://ubuntu.com/security/CVE-2022-42895) <!-- medium -->
    -   [CVE-2022-3643](https://ubuntu.com/security/CVE-2022-3643) <!-- medium -->
    -   [CVE-2022-3640](https://ubuntu.com/security/CVE-2022-3640) <!-- medium -->
    -   [CVE-2022-3628](https://ubuntu.com/security/CVE-2022-3628) <!-- medium -->
    -   [CVE-2022-3619](https://ubuntu.com/security/CVE-2022-3619) <!-- medium -->
    -   [CVE-2022-42896](https://ubuntu.com/security/CVE-2022-42896) <!-- high -->
    -   [CVE-2022-4378](https://ubuntu.com/security/CVE-2022-4378) <!-- high -->


### [[USN-5873-1](https://ubuntu.com/security/notices/USN-5873-1)] Go Text vulnerabilities [03:54] {#usn-5873-1-go-text-vulnerabilities-03-54}

-   5 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-32149](https://ubuntu.com/security/CVE-2022-32149) <!-- medium -->
    -   [CVE-2021-38561](https://ubuntu.com/security/CVE-2021-38561) <!-- medium -->
    -   [CVE-2020-28852](https://ubuntu.com/security/CVE-2020-28852) <!-- low -->
    -   [CVE-2020-28851](https://ubuntu.com/security/CVE-2020-28851) <!-- low -->
    -   [CVE-2020-14040](https://ubuntu.com/security/CVE-2020-14040) <!-- low -->
-   Go lib for text processsing, in particular for handling of Unicode
-   CPU-based DoS - possible infinite loop on crafted content
-   Various runtime DoS issues - crafted content could trigger a panic -&gt; crash of
    application - often used for parsing of HTTP headers
-   One of the few cases of a USN where we list the -dev package as the affected
    package - quirk of the way Go packages are packaged in Debian and hence
    Ubuntu - since go binaries are generally statically compiled, another package
    will use the -dev package to build and get statically linked against this - so
    the security team has to then rebuild all the other packages in the archive
    that use this -dev package


### [[USN-5880-1](https://ubuntu.com/security/notices/USN-5880-1)] Firefox vulnerabilities [07:15] {#usn-5880-1-firefox-vulnerabilities-07-15}

-   15 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2023-25745](https://ubuntu.com/security/CVE-2023-25745) <!-- medium -->
    -   [CVE-2023-25744](https://ubuntu.com/security/CVE-2023-25744) <!-- medium -->
    -   [CVE-2023-25742](https://ubuntu.com/security/CVE-2023-25742) <!-- medium -->
    -   [CVE-2023-25741](https://ubuntu.com/security/CVE-2023-25741) <!-- medium -->
    -   [CVE-2023-25737](https://ubuntu.com/security/CVE-2023-25737) <!-- medium -->
    -   [CVE-2023-25736](https://ubuntu.com/security/CVE-2023-25736) <!-- medium -->
    -   [CVE-2023-25733](https://ubuntu.com/security/CVE-2023-25733) <!-- medium -->
    -   [CVE-2023-25731](https://ubuntu.com/security/CVE-2023-25731) <!-- medium -->
    -   [CVE-2023-25739](https://ubuntu.com/security/CVE-2023-25739) <!-- medium -->
    -   [CVE-2023-25735](https://ubuntu.com/security/CVE-2023-25735) <!-- medium -->
    -   [CVE-2023-25732](https://ubuntu.com/security/CVE-2023-25732) <!-- medium -->
    -   [CVE-2023-25730](https://ubuntu.com/security/CVE-2023-25730) <!-- medium -->
    -   [CVE-2023-25729](https://ubuntu.com/security/CVE-2023-25729) <!-- medium -->
    -   [CVE-2023-25728](https://ubuntu.com/security/CVE-2023-25728) <!-- medium -->
    -   [CVE-2023-0767](https://ubuntu.com/security/CVE-2023-0767) <!-- medium -->
-   110.0 release - various memory corruption vulns plus some logic issues
    allowing to bypass restrictions etc


### [[USN-5881-1](https://ubuntu.com/security/notices/USN-5881-1)] Chromium vulnerabilities {#usn-5881-1-chromium-vulnerabilities}

-   13 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2023-0704](https://ubuntu.com/security/CVE-2023-0704) <!-- low -->
    -   [CVE-2023-0703](https://ubuntu.com/security/CVE-2023-0703) <!-- low -->
    -   [CVE-2023-0701](https://ubuntu.com/security/CVE-2023-0701) <!-- medium -->
    -   [CVE-2023-0700](https://ubuntu.com/security/CVE-2023-0700) <!-- medium -->
    -   [CVE-2023-0474](https://ubuntu.com/security/CVE-2023-0474) <!-- medium -->
    -   [CVE-2023-0705](https://ubuntu.com/security/CVE-2023-0705) <!-- medium -->
    -   [CVE-2023-0702](https://ubuntu.com/security/CVE-2023-0702) <!-- medium -->
    -   [CVE-2023-0699](https://ubuntu.com/security/CVE-2023-0699) <!-- medium -->
    -   [CVE-2023-0698](https://ubuntu.com/security/CVE-2023-0698) <!-- medium -->
    -   [CVE-2023-0696](https://ubuntu.com/security/CVE-2023-0696) <!-- medium -->
    -   [CVE-2023-0473](https://ubuntu.com/security/CVE-2023-0473) <!-- medium -->
    -   [CVE-2023-0472](https://ubuntu.com/security/CVE-2023-0472) <!-- medium -->
    -   [CVE-2023-0471](https://ubuntu.com/security/CVE-2023-0471) <!-- medium -->
-   110.0.5481.100 release
-   also has various memory corruption vulns fixed, same original policy bypass
    etc


### [[USN-5778-2](https://ubuntu.com/security/notices/USN-5778-2)] X.Org X Server vulnerabilities [08:15] {#usn-5778-2-x-dot-org-x-server-vulnerabilities-08-15}

-   7 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2023-0494](https://ubuntu.com/security/CVE-2023-0494) <!-- medium -->
    -   [CVE-2022-46344](https://ubuntu.com/security/CVE-2022-46344) <!-- medium -->
    -   [CVE-2022-46343](https://ubuntu.com/security/CVE-2022-46343) <!-- medium -->
    -   [CVE-2022-46342](https://ubuntu.com/security/CVE-2022-46342) <!-- medium -->
    -   [CVE-2022-46341](https://ubuntu.com/security/CVE-2022-46341) <!-- medium -->
    -   [CVE-2022-46340](https://ubuntu.com/security/CVE-2022-46340) <!-- medium -->
    -   [CVE-2022-4283](https://ubuntu.com/security/CVE-2022-4283) <!-- medium -->
-   Various possible attacks against the X server - UAF, stack and heap buffer
    overflows etc -&gt; local user could then possibly get EoP when X server is
    running as root (as it is on these older releases - only on 18.04 and onwards
    does X run as the unprivileged user)


### [[USN-5807-2](https://ubuntu.com/security/notices/USN-5807-2)] libXpm vulnerabilities [09:01] {#usn-5807-2-libxpm-vulnerabilities-09-01}

-   3 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-4883](https://ubuntu.com/security/CVE-2022-4883) <!-- medium -->
    -   [CVE-2022-46285](https://ubuntu.com/security/CVE-2022-46285) <!-- medium -->
    -   [CVE-2022-44617](https://ubuntu.com/security/CVE-2022-44617) <!-- medium -->
-   X11 pixmap handling library
-   2 CPU-based DoS (infinite loop) issues plus one in handling of compressed
    files - would call out to external binaries to decompress these - so if a
    malicious user could influence the `PATH` environment variable could get it to
    execute their binaries instead - particularly could be an issue if a setuid()
    binary uses libxpm - and this is mentioned in the glibc manual around [tips for
    writing setuid programs](https://www.gnu.org/software/libc/manual/html_node/Tips-for-Setuid.html)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Readline crime: exploiting a SUID logic bug [10:06] {#readline-crime-exploiting-a-suid-logic-bug-10-06}

-   Trail of Bits blog has a [great writeup](https://blog.trailofbits.com/2023/02/16/suid-logic-bug-linux-readline) of a bug they discovered in `chfn` as
    implemented by the `util-linux` package - used the `readline` library for input
    handling by many CLI applications - as a result, able to be abused to read the
    contents of a root-owned SSH private key
-   Great dive into the complexities and dangers of using third party libraries in
    privileged components
-   Inspired by a previous
    [finding
    from Qualys](https://www.qualys.com/2021/01/26/cve-2021-3156/baron-samedit-heap-based-overflow-sudo.txt), started out looking for setuid binaries that used environment
    variables as part of their operation - since this often allows an unprivileged
    user to set that env var and then run the setuid binary which then runs as
    root - if it then can be influenced by the value of that env var can possibly
    then go further to cause other effects as root (EoP?)
-   Found the `chfn` binary (which is used to set info about the current user in
    `/etc/shadow`) would use the readline library just to read input from the user -
    by default `readline` will parse its configuration from the `INPUTRC` environment
    variable
-   When it encounters an invalid config, it will helpfully print out the lines of the
    configuration which are invalid
-   So to get it to dump the contents of some other root-owned file, you can just
    set `INPUTRC` to point to that file and execute `chfn` and it will then go parse
    that - however, the file first has to appear close to the format which is
    expected - and it just so happens that SSH private keys fit this bill
-   One thing to note - it only affected a Arch since on most `chfn` comes from the
    standalone `passwd` package, not `util-linux` - and the `chfn` from `passwd` didn't
    use `readline`
-   Looking for environment variable use (and setuid binaries) is one of the
    explicit things the security team does when [auditing packages as part of the MIR security review process](https://wiki.ubuntu.com/SecurityTeam/Auditing)


### Ubuntu 22.04.2 LTS released [14:55] {#ubuntu-22-dot-04-dot-2-lts-released-14-55}

-   Delayed by 2 weeks - is finally here!
-   Includes various fixes rolled into the 22.04 LTS release - if you are already
    running 22.04 LTS with updates enabled you will already have it
    -   Ubuntu Pro is now integrated within `gnome-initial-setup` - previously this
        was only Livepatch, but can now enable any of the Ubuntu Pro offerings as
        soon as you log in for the first time.
    -   After logging in you can enrol the machine in Ubuntu Pro directly from the
        initial setup wizard and choose which elements - esm-infra / esm-apps /
        livepatch and even FIPS and USG (Ubuntu Security Guide for CIS and DISA-STIG
        compliance and auditing)
    -   Uses the HWE kernel - 5.19 (22.10 - kinetic)
    -   Kernel and shim etc are now signed by new signing key since old one has been
        deny-listed in latest shim due to having signed a version of grub2 which is
        now known to have various vulnerabilities that could enable a local attacker
        to bypass secure boot restrictions (Boot Hole v3 v4?)
    -   Plus a heap of other changes
    -   Complete list can be found on the [Ubuntu Discourse](https://discourse.ubuntu.com/t/jammy-jellyfish-point-release-changes/29835/3)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
