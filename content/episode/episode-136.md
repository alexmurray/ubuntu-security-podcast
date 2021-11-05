+++
title = "Episode 136"
description = """
  The road to Ubuntu 22.04 LTS begins so we look at some of its planned
  features plus we cover security updates for the Linux kernel, Mailman,
  Apport, PHP, Bind and more.
  """
date = 2021-11-05T15:22:00+10:30
lastmod = 2021-11-05T15:24:00+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E136.mp3"
podcast_duration = "16:11"
podcast_bytes = 12441656
permalink = "https://ubuntusecuritypodcast.org/episode-136/"
guid = "eb56ebc24c87e251a795c264678bf0eed56741e4d0897ae4eff711dcd6c10b33615284793a71e6852ec3ae4d7b8ec15a3d86c0858ecf4b2d7dd4bed9f6c93b57"
+++

## Overview {#overview}

The road to Ubuntu 22.04 LTS begins so we look at some of its planned
features plus we cover security updates for the Linux kernel, Mailman,
Apport, PHP, Bind and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

92 unique CVEs addressed


### [[USN-5114-1](https://ubuntu.com/security/notices/USN-5114-1)] Linux kernel vulnerabilities [01:15] {#usn-5114-1-linux-kernel-vulnerabilities-01-15}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-42008](https://ubuntu.com/security/CVE-2021-42008) <!-- low -->
    -   [CVE-2021-40490](https://ubuntu.com/security/CVE-2021-40490) <!-- medium -->
    -   [CVE-2021-38198](https://ubuntu.com/security/CVE-2021-38198) <!-- medium -->
    -   [CVE-2020-3702](https://ubuntu.com/security/CVE-2020-3702) <!-- medium -->
-   4.15 + HWE on ESM
-   Race in ath9k -> could fail to properly encrypt traffic -> info leak
-   KVM shadow pages perms -> local user DoS
-   ext4 race in xattr handling - local DoS / priv-esc
-   6pack driver validation failure -> DoS / code-exec


### [[USN-5115-1](https://ubuntu.com/security/notices/USN-5115-1)] Linux kernel (OEM) vulnerabilities [02:19] {#usn-5115-1-linux-kernel--oem--vulnerabilities-02-19}

-   16 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-42008](https://ubuntu.com/security/CVE-2021-42008) <!-- low -->
    -   [CVE-2021-40490](https://ubuntu.com/security/CVE-2021-40490) <!-- medium -->
    -   [CVE-2021-38205](https://ubuntu.com/security/CVE-2021-38205) <!-- low -->
    -   [CVE-2021-38204](https://ubuntu.com/security/CVE-2021-38204) <!-- low -->
    -   [CVE-2021-38166](https://ubuntu.com/security/CVE-2021-38166) <!-- medium -->
    -   [CVE-2021-3759](https://ubuntu.com/security/CVE-2021-3759) <!-- medium -->
    -   [CVE-2021-3753](https://ubuntu.com/security/CVE-2021-3753) <!-- medium -->
    -   [CVE-2021-3743](https://ubuntu.com/security/CVE-2021-3743) <!-- medium -->
    -   [CVE-2021-3739](https://ubuntu.com/security/CVE-2021-3739) <!-- low -->
    -   [CVE-2021-3732](https://ubuntu.com/security/CVE-2021-3732) <!-- medium -->
    -   [CVE-2021-37159](https://ubuntu.com/security/CVE-2021-37159) <!-- low -->
    -   [CVE-2021-3679](https://ubuntu.com/security/CVE-2021-3679) <!-- low -->
    -   [CVE-2021-35477](https://ubuntu.com/security/CVE-2021-35477) <!-- medium -->
    -   [CVE-2021-34556](https://ubuntu.com/security/CVE-2021-34556) <!-- medium -->
    -   [CVE-2021-33624](https://ubuntu.com/security/CVE-2021-33624) <!-- medium -->
    -   [CVE-2020-3702](https://ubuntu.com/security/CVE-2020-3702) <!-- medium -->
-   5.10 OEM
-   As above plus various BPF hardening fixes against spectre-like attacks,
    fixes for security issues in tracing subsystem, overlayfs, btrfs,
    Qualcomm IPC router, Xilinx ethernet driver info leak


### [[USN-5116-1](https://ubuntu.com/security/notices/USN-5116-1), [USN-5116-2](https://ubuntu.com/security/notices/USN-5116-2)] Linux kernel vulnerabilities [02:55] {#usn-5116-1-usn-5116-2-linux-kernel-vulnerabilities-02-55}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-42008](https://ubuntu.com/security/CVE-2021-42008) <!-- low -->
    -   [CVE-2021-40490](https://ubuntu.com/security/CVE-2021-40490) <!-- medium -->
    -   [CVE-2021-38205](https://ubuntu.com/security/CVE-2021-38205) <!-- low -->
    -   [CVE-2021-38198](https://ubuntu.com/security/CVE-2021-38198) <!-- medium -->
    -   [CVE-2021-3732](https://ubuntu.com/security/CVE-2021-3732) <!-- medium -->
    -   [CVE-2020-3702](https://ubuntu.com/security/CVE-2020-3702) <!-- medium -->
-   5.4 + KVM + bionic HWE + clouds (AWS, Azure, GCP, GKE, IBM, Oracle + RPi)
-   Race in ath9k -> could fail to properly encrypt traffic -> info leak
-   KVM shadow pages perms -> local user DoS
-   ext4 race in xattr handling - local DoS / priv-esc
-   6pack driver validation failure -> DoS / code-exec
-   overlayfs + xilinx


### [[USN-5117-1](https://ubuntu.com/security/notices/USN-5117-1)] Linux kernel (OEM) vulnerabilities [03:29] {#usn-5117-1-linux-kernel--oem--vulnerabilities-03-29}

-   4 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-3759](https://ubuntu.com/security/CVE-2021-3759) <!-- medium -->
    -   [CVE-2021-3753](https://ubuntu.com/security/CVE-2021-3753) <!-- medium -->
    -   [CVE-2021-3743](https://ubuntu.com/security/CVE-2021-3743) <!-- medium -->
    -   [CVE-2021-3739](https://ubuntu.com/security/CVE-2021-3739) <!-- low -->
-   5.13 OEM
-   btrfs, qualcomm IPC, VT IOCTL handling, memory leak in IPC object
    handling


### [[USN-5120-1](https://ubuntu.com/security/notices/USN-5120-1)] Linux kernel (Azure) vulnerabilities [03:40] {#usn-5120-1-linux-kernel--azure--vulnerabilities-03-40}

-   9 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-40490](https://ubuntu.com/security/CVE-2021-40490) <!-- medium -->
    -   [CVE-2021-38207](https://ubuntu.com/security/CVE-2021-38207) <!-- medium -->
    -   [CVE-2021-38199](https://ubuntu.com/security/CVE-2021-38199) <!-- medium -->
    -   [CVE-2021-3759](https://ubuntu.com/security/CVE-2021-3759) <!-- medium -->
    -   [CVE-2021-3612](https://ubuntu.com/security/CVE-2021-3612) <!-- medium -->
    -   [CVE-2021-22543](https://ubuntu.com/security/CVE-2021-22543) <!-- medium -->
    -   [CVE-2020-36311](https://ubuntu.com/security/CVE-2020-36311) <!-- medium -->
    -   [CVE-2020-26541](https://ubuntu.com/security/CVE-2020-26541) <!-- medium -->
    -   [CVE-2019-19449](https://ubuntu.com/security/CVE-2019-19449) <!-- low -->
-   5.8 Azure


### [[USN-5119-1](https://ubuntu.com/security/notices/USN-5119-1)] libcaca vulnerabilities [03:53] {#usn-5119-1-libcaca-vulnerabilities-03-53}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM),
    Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-30499](https://ubuntu.com/security/CVE-2021-30499) <!-- medium -->
    -   [CVE-2021-30498](https://ubuntu.com/security/CVE-2021-30498) <!-- medium -->
-   text mode graphics handling library
-   2 buffer overflows -> crash / code exec in handling of TGA images and
    when exporting to troff format


### [[USN-5121-1](https://ubuntu.com/security/notices/USN-5121-1), [USN-5121-2](https://ubuntu.com/security/notices/USN-5121-2)] Mailman vulnerabilities [04:24] {#usn-5121-1-usn-5121-2-mailman-vulnerabilities-04-24}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), 5 CVEs
    addressed in Focal (20.04 LTS)
    -   [CVE-2021-42096](https://ubuntu.com/security/CVE-2021-42096) <!-- high -->
    -   [CVE-2021-42097](https://ubuntu.com/security/CVE-2021-42097) <!-- high -->
    -   [CVE-2020-12137](https://ubuntu.com/security/CVE-2020-12137) (20.04 LTS only) <!-- medium -->
    -   [CVE-2020-15011](https://ubuntu.com/security/CVE-2020-15011) (20.04 LTS only) <!-- medium -->
    -   [CVE-2020-12108](https://ubuntu.com/security/CVE-2020-12108) (20.04 LTS only) <!-- medium -->
-   2 different CSRF attacks against mailman - in first, failed to properly
    associate CSRF tokens with accounts - could be used to take over
    another account
-   In second, CSRF tokens which are generated are derived from the admin
    password - could then allow a remote attacker to use this to help brute
    force guess admin pw
-   In both cases need to already be an existing list member and be logged
    in to mount attacks
-   For focal also included a couple medium priority vulns (don't affect
    older versions):
    -   Possible arbitrary content injection in 2 different ways which allow
        content to be provided by an attacker as POST parameters to form
        handling scripts which will then be incorporated into the page shown
        to a user
    -   So could allow an attacker to say inject a URL to be displayed on a
        legitimate mailman admin page instance which an unsuspecting user
        may then follow thinking this is trusted etc.


### [[USN-5122-1](https://ubuntu.com/security/notices/USN-5122-1), [USN-5122-2](https://ubuntu.com/security/notices/USN-5122-2)] Apport vulnerability [05:41] {#usn-5122-1-usn-5122-2-apport-vulnerability-05-41}

-   Affecting Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
-   Could trick Apport into writing core files into arbitrary directories -
    then these could say be interpreted by other root-level applications to
    escalate privileges
-   Changed Apport to write core files to known location
    `/var/lib/apport/coredump`


### [[USN-5123-1](https://ubuntu.com/security/notices/USN-5123-1), [USN-5123-2](https://ubuntu.com/security/notices/USN-5123-2)] MySQL vulnerabilities [06:25] {#usn-5123-1-usn-5123-2-mysql-vulnerabilities-06-25}

-   43 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal
    (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-35648](https://ubuntu.com/security/CVE-2021-35648) <!-- medium -->
    -   [CVE-2021-35647](https://ubuntu.com/security/CVE-2021-35647) <!-- medium -->
    -   [CVE-2021-35646](https://ubuntu.com/security/CVE-2021-35646) <!-- medium -->
    -   [CVE-2021-35645](https://ubuntu.com/security/CVE-2021-35645) <!-- medium -->
    -   [CVE-2021-35644](https://ubuntu.com/security/CVE-2021-35644) <!-- medium -->
    -   [CVE-2021-35643](https://ubuntu.com/security/CVE-2021-35643) <!-- medium -->
    -   [CVE-2021-35642](https://ubuntu.com/security/CVE-2021-35642) <!-- medium -->
    -   [CVE-2021-35641](https://ubuntu.com/security/CVE-2021-35641) <!-- medium -->
    -   [CVE-2021-35640](https://ubuntu.com/security/CVE-2021-35640) <!-- medium -->
    -   [CVE-2021-35639](https://ubuntu.com/security/CVE-2021-35639) <!-- medium -->
    -   [CVE-2021-35638](https://ubuntu.com/security/CVE-2021-35638) <!-- medium -->
    -   [CVE-2021-35637](https://ubuntu.com/security/CVE-2021-35637) <!-- medium -->
    -   [CVE-2021-35636](https://ubuntu.com/security/CVE-2021-35636) <!-- medium -->
    -   [CVE-2021-35635](https://ubuntu.com/security/CVE-2021-35635) <!-- medium -->
    -   [CVE-2021-35634](https://ubuntu.com/security/CVE-2021-35634) <!-- medium -->
    -   [CVE-2021-35633](https://ubuntu.com/security/CVE-2021-35633) <!-- medium -->
    -   [CVE-2021-35632](https://ubuntu.com/security/CVE-2021-35632) <!-- medium -->
    -   [CVE-2021-35631](https://ubuntu.com/security/CVE-2021-35631) <!-- medium -->
    -   [CVE-2021-35630](https://ubuntu.com/security/CVE-2021-35630) <!-- medium -->
    -   [CVE-2021-35628](https://ubuntu.com/security/CVE-2021-35628) <!-- medium -->
    -   [CVE-2021-35627](https://ubuntu.com/security/CVE-2021-35627) <!-- medium -->
    -   [CVE-2021-35626](https://ubuntu.com/security/CVE-2021-35626) <!-- medium -->
    -   [CVE-2021-35625](https://ubuntu.com/security/CVE-2021-35625) <!-- medium -->
    -   [CVE-2021-35624](https://ubuntu.com/security/CVE-2021-35624) <!-- medium -->
    -   [CVE-2021-35623](https://ubuntu.com/security/CVE-2021-35623) <!-- medium -->
    -   [CVE-2021-35622](https://ubuntu.com/security/CVE-2021-35622) <!-- medium -->
    -   [CVE-2021-35613](https://ubuntu.com/security/CVE-2021-35613) <!-- medium -->
    -   [CVE-2021-35612](https://ubuntu.com/security/CVE-2021-35612) <!-- medium -->
    -   [CVE-2021-35610](https://ubuntu.com/security/CVE-2021-35610) <!-- medium -->
    -   [CVE-2021-35608](https://ubuntu.com/security/CVE-2021-35608) <!-- medium -->
    -   [CVE-2021-35607](https://ubuntu.com/security/CVE-2021-35607) <!-- medium -->
    -   [CVE-2021-35604](https://ubuntu.com/security/CVE-2021-35604) <!-- medium -->
    -   [CVE-2021-35602](https://ubuntu.com/security/CVE-2021-35602) <!-- medium -->
    -   [CVE-2021-35597](https://ubuntu.com/security/CVE-2021-35597) <!-- medium -->
    -   [CVE-2021-35596](https://ubuntu.com/security/CVE-2021-35596) <!-- medium -->
    -   [CVE-2021-35591](https://ubuntu.com/security/CVE-2021-35591) <!-- medium -->
    -   [CVE-2021-35584](https://ubuntu.com/security/CVE-2021-35584) <!-- medium -->
    -   [CVE-2021-35577](https://ubuntu.com/security/CVE-2021-35577) <!-- medium -->
    -   [CVE-2021-35575](https://ubuntu.com/security/CVE-2021-35575) <!-- medium -->
    -   [CVE-2021-35546](https://ubuntu.com/security/CVE-2021-35546) <!-- medium -->
    -   [CVE-2021-2481](https://ubuntu.com/security/CVE-2021-2481) <!-- medium -->
    -   [CVE-2021-2479](https://ubuntu.com/security/CVE-2021-2479) <!-- medium -->
    -   [CVE-2021-2478](https://ubuntu.com/security/CVE-2021-2478) <!-- medium -->
-   [8.0.27](https://dev.mysql.com/doc/relnotes/mysql/8.0/en/news-8-0-27.html) in Ubuntu 20.04 LTS, Ubuntu 21.04 and Ubuntu 21.10
-   [5.7.36](https://dev.mysql.com/doc/relnotes/mysql/5.7/en/news-5-7-36.html) in Ubuntu 18.04 LTS, Ubuntu 16.04 ESM
-   <https://www.oracle.com/security-alerts/cpuoct2021.html>


### [[USN-5124-1](https://ubuntu.com/security/notices/USN-5124-1)] GNU binutils vulnerabilities [06:53] {#usn-5124-1-gnu-binutils-vulnerabilities-06-53}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3487](https://ubuntu.com/security/CVE-2021-3487) <!-- low -->
    -   [CVE-2020-16592](https://ubuntu.com/security/CVE-2020-16592) <!-- low -->
-   2 issues in libbfd (binary file descriptor) - can be triggered by crafted
    files
    -   UAF in when using hash table impl
    -   cause large memory allocation - crash


### [[USN-5009-2](https://ubuntu.com/security/notices/USN-5009-2)] libslirp vulnerabilities [07:30] {#usn-5009-2-libslirp-vulnerabilities-07-30}

-   6 CVEs addressed in Impish (21.10)
    -   [CVE-2021-3595](https://ubuntu.com/security/CVE-2021-3595) <!-- low -->
    -   [CVE-2021-3594](https://ubuntu.com/security/CVE-2021-3594) <!-- low -->
    -   [CVE-2021-3593](https://ubuntu.com/security/CVE-2021-3593) <!-- low -->
    -   [CVE-2021-3592](https://ubuntu.com/security/CVE-2021-3592) <!-- low -->
    -   [CVE-2020-29130](https://ubuntu.com/security/CVE-2020-29130) <!-- low -->
    -   [CVE-2020-29129](https://ubuntu.com/security/CVE-2020-29129) <!-- low -->
-   [Episode 124](https://ubuntusecuritypodcast.org/episode-124/)


### [[USN-5125-1](https://ubuntu.com/security/notices/USN-5125-1)] PHP vulnerability [07:41] {#usn-5125-1-php-vulnerability-07-41}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM),
    Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-21703](https://ubuntu.com/security/CVE-2021-21703) <!-- high -->
-   Root code exec in PHP-FPM - uses a privileged root level process and
    unpriv child worker processes but child could access shared memory with
    parent and cause it to do OOB R/W -> code execution in parent -> priv-esc


### [[USN-5126-1](https://ubuntu.com/security/notices/USN-5126-1), [USN-5126-2](https://ubuntu.com/security/notices/USN-5126-2)] Bind vulnerability [08:33] {#usn-5126-1-usn-5126-2-bind-vulnerability-08-33}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM),
    Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-25219](https://ubuntu.com/security/CVE-2021-25219) <!-- medium -->
-   Possible cache poisoning could lead to DoS via excessive entries in the
    cache causing slow lookup performance


### [[USN-5127-1](https://ubuntu.com/security/notices/USN-5127-1)] WebKitGTK vulnerabilities [08:55] {#usn-5127-1-webkitgtk-vulnerabilities-08-55}

-   3 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-42762](https://ubuntu.com/security/CVE-2021-42762) <!-- medium -->
    -   [CVE-2021-30851](https://ubuntu.com/security/CVE-2021-30851) <!-- medium -->
    -   [CVE-2021-30846](https://ubuntu.com/security/CVE-2021-30846) <!-- medium -->
-   Usual web engine vulns - plus one in the bubblewrap launcher which allows
    a limited sandbox bypass - could trick host processors into believing a
    sandboxed process was not and hence could potentially escalate privs


### [[USN-5128-1](https://ubuntu.com/security/notices/USN-5128-1)] Ceph vulnerabilities [09:35] {#usn-5128-1-ceph-vulnerabilities-09-35}

-   5 CVEs addressed in Bionic (18.04 LTS), Hirsute (21.04)
    -   [CVE-2021-3531](https://ubuntu.com/security/CVE-2021-3531) <!-- medium -->
    -   [CVE-2021-3524](https://ubuntu.com/security/CVE-2021-3524) <!-- medium -->
    -   [CVE-2021-3509](https://ubuntu.com/security/CVE-2021-3509) <!-- medium -->
    -   [CVE-2021-20288](https://ubuntu.com/security/CVE-2021-20288) <!-- medium -->
    -   [CVE-2020-27781](https://ubuntu.com/security/CVE-2020-27781) <!-- medium -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### 22.04 LTS development cycle begins [09:46] {#22-dot-04-lts-development-cycle-begins-09-46}

-   Will include all the features from the various interim releases since the
    last 20.04 LTS plus some more
-   Since is an LTS, this cycle is mostly to be spent making things as solid
    and stable as possible, but a few new features are planned:
    -   nftables supported
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
            users would be switched to that automatically -  was already switched to
            use nft backend in Ubuntu 21.04
        -   now want to support the nftables userspace package for handling
            nftables as a first class system
        -   also look at implementing a `nftables` backend in `ufw` so it can drive
            `nftables` directly rather than `iptables`
    -   Improvements to OVAL data
        -   Improved information around ESM products etc
    -   Improved handling of `pivot_root` in AppArmor
        -   Upstream issue <https://gitlab.com/apparmor/apparmor/-/issues/113>
        -   once a `pivot_root` occurs, AppArmor loses track of the original paths so
            if a root level process is granted `pivot_root` permission, can move
            around inside it's own mount namespace to be able to escape outside the
            AppArmor policy
        -   AppArmor needs to track root before and after and allow to specify
            policy both pre-and-post


### Hiring [14:46] {#hiring-14-46}


#### Security - Product Manager {#security-product-manager}

-   HOME BASED - EMEA (Europe, Middle East, Africa)
-   Role includes:
    -   guiding the evolution of security offerings from Canonical and Ubuntu
    -   driving compliance and certification of Ubuntu
    -   engaging with the open source security community
    -   telling the story of Canonical's work to deliver secure platforms
-   <https://canonical.com/careers/2278145/security-product-manager-remote>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
