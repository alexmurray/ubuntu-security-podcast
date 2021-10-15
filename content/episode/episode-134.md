+++
title = "Episode 134"
description = "It's release week! As Ubuntu 21.10 Impish Indri is released we take a look at some of the new security features it brings, plus we cover security updates for containerd, MongoDB, Mercurial, docker.io and more."
date = 2021-10-15T14:47:00+10:30
lastmod = 2021-10-15T14:47:51+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E134.mp3"
podcast_duration = "14:05"
podcast_bytes = 11313538
permalink = "https://ubuntusecuritypodcast.org/episode-134/"
guid = "f0f5b2ab6dd3ea3d12c964cfbd609e22d3c49627e4e0312a7ebb1653c74dd82977b2285b61f64386a0947ee3c89baa9099049c1cd1b6e21400c33fbfb2552d15H"
+++

## Overview {#overview}

It's release week! As Ubuntu 21.10 Impish Indri is released we take a look at some of the new security features it brings, plus we cover security updates for containerd, MongoDB, Mercurial, docker.io and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

58 unique CVEs addressed


### [[USN-5095-1](https://ubuntu.com/security/notices/USN-5095-1)] Apache Commons IO vulnerability [00:46] {#usn-5095-1-apache-commons-io-vulnerability-00-46}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-29425](https://ubuntu.com/security/CVE-2021-29425) <!-- medium -->
-   Failed to properly sanitize filenames in `FileNameUtils.normalize()` -
    should remove relative path components like `../` but if contained leading
    double-slashes this would fail - and the original path would be returned
    without alteration - so could then possibly get relative directory
    traversal to the parent directory depending on how this returned value
    was used.


### [[USN-5096-1](https://ubuntu.com/security/notices/USN-5096-1)] Linux kernel (OEM) vulnerabilities {#usn-5096-1-linux-kernel--oem--vulnerabilities}

-   16 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-40490](https://ubuntu.com/security/CVE-2021-40490) <!-- medium -->
    -   [CVE-2021-38205](https://ubuntu.com/security/CVE-2021-38205) <!-- low -->
    -   [CVE-2021-38204](https://ubuntu.com/security/CVE-2021-38204) <!-- low -->
    -   [CVE-2021-38203](https://ubuntu.com/security/CVE-2021-38203) <!-- medium -->
    -   [CVE-2021-38202](https://ubuntu.com/security/CVE-2021-38202) <!-- medium -->
    -   [CVE-2021-38201](https://ubuntu.com/security/CVE-2021-38201) <!-- medium -->
    -   [CVE-2021-38199](https://ubuntu.com/security/CVE-2021-38199) <!-- medium -->
    -   [CVE-2021-38166](https://ubuntu.com/security/CVE-2021-38166) <!-- medium -->
    -   [CVE-2021-38160](https://ubuntu.com/security/CVE-2021-38160) <!-- medium -->
    -   [CVE-2021-3732](https://ubuntu.com/security/CVE-2021-3732) <!-- medium -->
    -   [CVE-2021-37159](https://ubuntu.com/security/CVE-2021-37159) <!-- low -->
    -   [CVE-2021-3679](https://ubuntu.com/security/CVE-2021-3679) <!-- low -->
    -   [CVE-2021-3612](https://ubuntu.com/security/CVE-2021-3612) <!-- medium -->
    -   [CVE-2021-35477](https://ubuntu.com/security/CVE-2021-35477) <!-- medium -->
    -   [CVE-2021-34556](https://ubuntu.com/security/CVE-2021-34556) <!-- medium -->
    -   [CVE-2021-41073](https://ubuntu.com/security/CVE-2021-41073) <!-- high -->


### [[USN-5091-2](https://ubuntu.com/security/notices/USN-5091-2)] Linux kernel (Raspberry Pi) vulnerabilities {#usn-5091-2-linux-kernel--raspberry-pi--vulnerabilities}

-   5 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-38204](https://ubuntu.com/security/CVE-2021-38204) <!-- low -->
    -   [CVE-2021-38199](https://ubuntu.com/security/CVE-2021-38199) <!-- medium -->
    -   [CVE-2021-38160](https://ubuntu.com/security/CVE-2021-38160) <!-- medium -->
    -   [CVE-2021-3679](https://ubuntu.com/security/CVE-2021-3679) <!-- low -->
    -   [CVE-2021-33624](https://ubuntu.com/security/CVE-2021-33624) <!-- medium -->


### [[USN-5094-2](https://ubuntu.com/security/notices/USN-5094-2)] Linux kernel (Raspberry Pi) vulnerabilities {#usn-5094-2-linux-kernel--raspberry-pi--vulnerabilities}

-   5 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2021-38205](https://ubuntu.com/security/CVE-2021-38205) <!-- low -->
    -   [CVE-2021-38204](https://ubuntu.com/security/CVE-2021-38204) <!-- low -->
    -   [CVE-2021-3732](https://ubuntu.com/security/CVE-2021-3732) <!-- medium -->
    -   [CVE-2021-3679](https://ubuntu.com/security/CVE-2021-3679) <!-- low -->
    -   [CVE-2021-22543](https://ubuntu.com/security/CVE-2021-22543) <!-- medium -->


### [[USN-5106-1](https://ubuntu.com/security/notices/USN-5106-1)] Linux kernel (OEM) vulnerabilities [01:36] {#usn-5106-1-linux-kernel--oem--vulnerabilities-01-36}

-   6 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-38199](https://ubuntu.com/security/CVE-2021-38199) <!-- medium -->
    -   [CVE-2021-38160](https://ubuntu.com/security/CVE-2021-38160) <!-- medium -->
    -   [CVE-2021-3612](https://ubuntu.com/security/CVE-2021-3612) <!-- medium -->
    -   [CVE-2021-22543](https://ubuntu.com/security/CVE-2021-22543) <!-- medium -->
    -   [CVE-2020-26541](https://ubuntu.com/security/CVE-2020-26541) <!-- medium -->
    -   [CVE-2021-41073](https://ubuntu.com/security/CVE-2021-41073) <!-- high -->
-   `io_uring` (5.1) - unprivileged user - trigger free of other kernel
    memory - code execution
-   [Episode 133](https://ubuntusecuritypodcast.org/episode-133/)


### [[USN-4973-2](https://ubuntu.com/security/notices/USN-4973-2)] Python vulnerability [02:18] {#usn-4973-2-python-vulnerability-02-18}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-29921](https://ubuntu.com/security/CVE-2021-29921) <!-- medium -->
-   ipaddress with octal encoded numbers vuln previously fixed but the patch
    with this fix got dropped in an intervening SRU where 3.8.10 got
    backported to 20.04 ([LP: #1928057](https://bugs.launchpad.net/ubuntu/groovy/+source/python3.8/+bug/1928057))


### [[USN-5099-1](https://ubuntu.com/security/notices/USN-5099-1)] Imlib2 vulnerability [03:11] {#usn-5099-1-imlib2-vulnerability-03-11}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-12761](https://ubuntu.com/security/CVE-2020-12761) <!-- medium -->
-   integer overflow -> OOB read - ICO file with an excessive amount of
    colors declared in its color map - fixed to error out in this case


### [[USN-5100-1](https://ubuntu.com/security/notices/USN-5100-1)] containerd vulnerability [03:43] {#usn-5100-1-containerd-vulnerability-03-43}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-41103](https://ubuntu.com/security/CVE-2021-41103) <!-- high -->
-   container bundles root dirs and plugins had excessive permissions -
    allows an unprivileged Linux user to traverse directory contents and
    execute programs in these dirs. If a container image was created with
    setuid executables then that user on the Linux host could execute these
    setuid binaries and gain root privileges on the host.


### [[USN-5101-1](https://ubuntu.com/security/notices/USN-5101-1)] MongoDB vulnerability [04:34] {#usn-5101-1-mongodb-vulnerability-04-34}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2019-20925](https://ubuntu.com/security/CVE-2019-20925) <!-- medium -->
-   Unauthenticated client can send crafted messages to the server which
    specify a negative size when decompressed - an insufficient amount of
    memory would then get allocated and lead to a possible OOB write
-   Thanks to Heather Lemon from Sustaining Engineering team for preparing
    this update


### [[USN-5102-1](https://ubuntu.com/security/notices/USN-5102-1)] Mercurial vulnerabilities [05:10] {#usn-5102-1-mercurial-vulnerabilities-05-10}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2018-17983](https://ubuntu.com/security/CVE-2018-17983) <!-- medium -->
    -   [CVE-2019-3902](https://ubuntu.com/security/CVE-2019-3902) <!-- medium -->
-   Mishandled symlinks in subrepos - defeats usual path-checking logic and
    so could could allow an attacker to write arbitrary files to the victim's
    filesystem outside the repo
-   OOB read when parsing malformed manifest entries


### [[USN-5097-1](https://ubuntu.com/security/notices/USN-5097-1)] LedgerSMB vulnerabilities {#usn-5097-1-ledgersmb-vulnerabilities}

-   3 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-3731](https://ubuntu.com/security/CVE-2021-3731) <!-- medium -->
    -   [CVE-2021-3694](https://ubuntu.com/security/CVE-2021-3694) <!-- medium -->
    -   [CVE-2021-3693](https://ubuntu.com/security/CVE-2021-3693) <!-- medium -->


### [[USN-5098-1](https://ubuntu.com/security/notices/USN-5098-1)] bl vulnerability {#usn-5098-1-bl-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-8244](https://ubuntu.com/security/CVE-2020-8244) <!-- medium -->


### [[USN-5103-1](https://ubuntu.com/security/notices/USN-5103-1)] docker.io vulnerability {#usn-5103-1-docker-dot-io-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-41089](https://ubuntu.com/security/CVE-2021-41089) <!-- medium -->
-   `docker cp` - could craft a container image that would result in `docker cp`
    making changes to existing files on the host filesystem - doesn't
    actually allow to read/modify or execute files on the host but could make
    them readable/change perms etc and expose info on the host


### [[USN-5104-1](https://ubuntu.com/security/notices/USN-5104-1)] Squid vulnerability {#usn-5104-1-squid-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-28116](https://ubuntu.com/security/CVE-2021-28116) <!-- medium -->


### [[USN-5105-1](https://ubuntu.com/security/notices/USN-5105-1)] Bottle vulnerability {#usn-5105-1-bottle-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-28473](https://ubuntu.com/security/CVE-2020-28473) <!-- medium -->


### [[USN-5022-3](https://ubuntu.com/security/notices/USN-5022-3)] MySQL vulnerabilities {#usn-5022-3-mysql-vulnerabilities}

-   16 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-2390](https://ubuntu.com/security/CVE-2021-2390) <!-- medium -->
    -   [CVE-2021-2389](https://ubuntu.com/security/CVE-2021-2389) <!-- medium -->
    -   [CVE-2021-2385](https://ubuntu.com/security/CVE-2021-2385) <!-- medium -->
    -   [CVE-2021-2372](https://ubuntu.com/security/CVE-2021-2372) <!-- medium -->
    -   [CVE-2021-2342](https://ubuntu.com/security/CVE-2021-2342) <!-- medium -->
    -   [CVE-2021-2307](https://ubuntu.com/security/CVE-2021-2307) <!-- medium -->
    -   [CVE-2021-2226](https://ubuntu.com/security/CVE-2021-2226) <!-- medium -->
    -   [CVE-2021-2194](https://ubuntu.com/security/CVE-2021-2194) <!-- medium -->
    -   [CVE-2021-2180](https://ubuntu.com/security/CVE-2021-2180) <!-- medium -->
    -   [CVE-2021-2179](https://ubuntu.com/security/CVE-2021-2179) <!-- medium -->
    -   [CVE-2021-2171](https://ubuntu.com/security/CVE-2021-2171) <!-- medium -->
    -   [CVE-2021-2169](https://ubuntu.com/security/CVE-2021-2169) <!-- medium -->
    -   [CVE-2021-2166](https://ubuntu.com/security/CVE-2021-2166) <!-- medium -->
    -   [CVE-2021-2162](https://ubuntu.com/security/CVE-2021-2162) <!-- medium -->
    -   [CVE-2021-2154](https://ubuntu.com/security/CVE-2021-2154) <!-- medium -->
    -   [CVE-2021-2146](https://ubuntu.com/security/CVE-2021-2146) <!-- medium -->


### [[USN-5107-1](https://ubuntu.com/security/notices/USN-5107-1)] Firefox vulnerabilities [06:47] {#usn-5107-1-firefox-vulnerabilities-06-47}

-   7 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-38501](https://ubuntu.com/security/CVE-2021-38501) <!-- medium -->
    -   [CVE-2021-38500](https://ubuntu.com/security/CVE-2021-38500) <!-- medium -->
    -   [CVE-2021-38499](https://ubuntu.com/security/CVE-2021-38499) <!-- medium -->
    -   [CVE-2021-38498](https://ubuntu.com/security/CVE-2021-38498) <!-- medium -->
    -   [CVE-2021-38497](https://ubuntu.com/security/CVE-2021-38497) <!-- medium -->
    -   [CVE-2021-38496](https://ubuntu.com/security/CVE-2021-38496) <!-- medium -->
    -   [CVE-2021-32810](https://ubuntu.com/security/CVE-2021-32810) <!-- medium -->
-   93.0 - usual web issues - "if a user were tricked into opening a
    specially crafted website, an attacker could potentially exploit these to
    cause a denial of service, spoof another origin, or execute arbitrary
    code."


### [[USN-5108-1](https://ubuntu.com/security/notices/USN-5108-1)] libntlm vulnerability [07:32] {#usn-5108-1-libntlm-vulnerability-07-32}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2019-17455](https://ubuntu.com/security/CVE-2019-17455) <!-- medium -->
-   stack buffer OOB read when handling a crafted NTLM request since used a
    fixed size buffer in various functions - fixed to truncate size to fit
    within the buffer if too big to avoid overflowing the buffer


### [[USN-5078-3](https://ubuntu.com/security/notices/USN-5078-3)] Squashfs-Tools vulnerability [07:54] {#usn-5078-3-squashfs-tools-vulnerability-07-54}

-   1 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-41072](https://ubuntu.com/security/CVE-2021-41072) <!-- medium -->
-   Original backport of patch contained an error and so failed to work for
    squashfs 2.x filesystems - would fail to actually sort entries as
    expected - thanks to Salvatore Bonaccorso from the Debian security team
     for bringing this to our attention


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 21.10 (Impish Indri) released [09:08] {#ubuntu-21-dot-10--impish-indri--released-09-08}

-   <https://ubuntu.com/blog/ubuntu-21-10-has-landed>
-   5.13 kernel
    -   KFENCE memory error detector
    -   Stack offset randomisation across system-calls
    -   Landlock LSM
-   Disabled unprivileged BPF
-   GCC 11


### Hiring [13:12] {#hiring-13-12}


#### Security Product Manager {#security-product-manager}

-   <https://canonical.com/careers/2278145/security-product-manager-remote>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
