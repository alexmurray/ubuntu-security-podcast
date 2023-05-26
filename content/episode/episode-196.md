+++
title = "Episode 196"
description = """
  This week we look at some recent security developments from PyPI, the Linux
  Security Summit North America and the pending transition of Ubuntu 18.04 to ESM,
  plus we cover security updates for cups-filter, the Linux kernel, Git, runC,
  ncurses, cloud-init and more.
  """
date = 2023-05-26T17:24:00+09:30
lastmod = 2023-05-26T17:24:28+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E196.mp3"
podcast_duration = 1232
podcast_bytes = 21180720
permalink = "https://ubuntusecuritypodcast.org/episode-196/"
guid = "8ff9a5fb80e91904bc671e65141624f18d11bf3e46704d3f7c337d8bfb5d90d260419c2846a5f44756940f01c795067e8455f839b05964c4d4dcdb15bd06dcd0"
+++

## Overview {#overview}

This week we look at some recent security developments from PyPI, the Linux
Security Summit North America and the pending transition of Ubuntu 18.04 to ESM,
plus we cover security updates for cups-filter, the Linux kernel, Git, runC,
ncurses, cloud-init and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

83 unique CVEs addressed


### [[USN-6083-1](https://ubuntu.com/security/notices/USN-6083-1)] cups-filters vulnerability (01:03) {#usn-6083-1-cups-filters-vulnerability--01-03}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-24805](https://ubuntu.com/security/CVE-2023-24805) <!-- medium -->
-   Legacy BEH (Backend Error Handler) allows to create a network accessible
    printer - allowed to do pretty easy RCE since used `system()` to run a command
    which contained various values that can be controlled by the attacker
-   Fixed by upstream to use `fork()` and `execve()` plus some other smaller changes
    to perform sanitisation of the input


### [[USN-6084-1](https://ubuntu.com/security/notices/USN-6084-1)] Linux kernel vulnerabilities (01:45) {#usn-6084-1-linux-kernel-vulnerabilities--01-45}

-   5 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
-   4.15 18.04 GCP + Oracle, 16.04 Oracle


### [[USN-6085-1](https://ubuntu.com/security/notices/USN-6085-1)] Linux kernel (Raspberry Pi) vulnerabilities (02:00) {#usn-6085-1-linux-kernel--raspberry-pi--vulnerabilities--02-00}

-   10 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-20938](https://ubuntu.com/security/CVE-2023-20938) <!-- medium -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-1078](https://ubuntu.com/security/CVE-2023-1078) <!-- medium -->
    -   [CVE-2023-1075](https://ubuntu.com/security/CVE-2023-1075) <!-- medium -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
    -   [CVE-2022-3707](https://ubuntu.com/security/CVE-2022-3707) <!-- medium -->
    -   [CVE-2022-27672](https://ubuntu.com/security/CVE-2022-27672) <!-- medium -->
-   5.15 Raspi kernel
-   Various UAFs in different drivers and subsystems, possible speculative
    execution attack against AMD x86-64 processors with SMT enabled, a few type
    confusion bugs leading to OOB reads etc


### [[USN-6090-1](https://ubuntu.com/security/notices/USN-6090-1)] Linux kernel vulnerabilities (02:26) {#usn-6090-1-linux-kernel-vulnerabilities--02-26}

-   10 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-20938](https://ubuntu.com/security/CVE-2023-20938) <!-- medium -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-1078](https://ubuntu.com/security/CVE-2023-1078) <!-- medium -->
    -   [CVE-2023-1075](https://ubuntu.com/security/CVE-2023-1075) <!-- medium -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
    -   [CVE-2022-3707](https://ubuntu.com/security/CVE-2022-3707) <!-- medium -->
    -   [CVE-2022-27672](https://ubuntu.com/security/CVE-2022-27672) <!-- medium -->
-   Same set of vulns as above
-   5.15 22.04 GKE, GCP; 20.04 GKE, GCP, Oracle


### [[USN-6089-1](https://ubuntu.com/security/notices/USN-6089-1)] Linux kernel (OEM) vulnerability (02:45) {#usn-6089-1-linux-kernel--oem--vulnerability--02-45}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-4139](https://ubuntu.com/security/CVE-2022-4139) <!-- medium -->
-   6.0 OEM
-   i915 failed to flush GPU TLB in some cases -&gt; DoS / RCE


### [[USN-6091-1](https://ubuntu.com/security/notices/USN-6091-1)] Linux kernel vulnerabilities (03:09) {#usn-6091-1-linux-kernel-vulnerabilities--03-09}

-   25 CVEs addressed in Kinetic (22.10)
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-26544](https://ubuntu.com/security/CVE-2023-26544) <!-- medium -->
    -   [CVE-2023-23455](https://ubuntu.com/security/CVE-2023-23455) <!-- medium -->
    -   [CVE-2023-23454](https://ubuntu.com/security/CVE-2023-23454) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-21106](https://ubuntu.com/security/CVE-2023-21106) <!-- medium -->
    -   [CVE-2023-21102](https://ubuntu.com/security/CVE-2023-21102) <!-- medium -->
    -   [CVE-2023-1652](https://ubuntu.com/security/CVE-2023-1652) <!-- medium -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-1078](https://ubuntu.com/security/CVE-2023-1078) <!-- medium -->
    -   [CVE-2023-1075](https://ubuntu.com/security/CVE-2023-1075) <!-- medium -->
    -   [CVE-2023-1074](https://ubuntu.com/security/CVE-2023-1074) <!-- medium -->
    -   [CVE-2023-1073](https://ubuntu.com/security/CVE-2023-1073) <!-- medium -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
    -   [CVE-2023-0458](https://ubuntu.com/security/CVE-2023-0458) <!-- medium -->
    -   [CVE-2023-0394](https://ubuntu.com/security/CVE-2023-0394) <!-- medium -->
    -   [CVE-2023-0210](https://ubuntu.com/security/CVE-2023-0210) <!-- medium -->
    -   [CVE-2022-48424](https://ubuntu.com/security/CVE-2022-48424) <!-- low -->
    -   [CVE-2022-48423](https://ubuntu.com/security/CVE-2022-48423) <!-- medium -->
    -   [CVE-2022-4842](https://ubuntu.com/security/CVE-2022-4842) <!-- medium -->
    -   [CVE-2022-4129](https://ubuntu.com/security/CVE-2022-4129) <!-- medium -->
    -   [CVE-2022-3707](https://ubuntu.com/security/CVE-2022-3707) <!-- medium -->
    -   [CVE-2022-36280](https://ubuntu.com/security/CVE-2022-36280) <!-- medium -->
    -   [CVE-2022-27672](https://ubuntu.com/security/CVE-2022-27672) <!-- medium -->
-   5.19 IBM + Oracle
-   Lots of the previously mentioned issues and more - same kinds of issues though
    (race conditions, UAFs, OOB writes etc in various drivers / subsystems)


### [[USN-6096-1](https://ubuntu.com/security/notices/USN-6096-1)] Linux kernel vulnerabilities (03:34) {#usn-6096-1-linux-kernel-vulnerabilities--03-34}

-   25 CVEs addressed in Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-26544](https://ubuntu.com/security/CVE-2023-26544) <!-- medium -->
    -   [CVE-2023-23455](https://ubuntu.com/security/CVE-2023-23455) <!-- medium -->
    -   [CVE-2023-23454](https://ubuntu.com/security/CVE-2023-23454) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-21106](https://ubuntu.com/security/CVE-2023-21106) <!-- medium -->
    -   [CVE-2023-21102](https://ubuntu.com/security/CVE-2023-21102) <!-- medium -->
    -   [CVE-2023-1652](https://ubuntu.com/security/CVE-2023-1652) <!-- medium -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-1078](https://ubuntu.com/security/CVE-2023-1078) <!-- medium -->
    -   [CVE-2023-1075](https://ubuntu.com/security/CVE-2023-1075) <!-- medium -->
    -   [CVE-2023-1074](https://ubuntu.com/security/CVE-2023-1074) <!-- medium -->
    -   [CVE-2023-1073](https://ubuntu.com/security/CVE-2023-1073) <!-- medium -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
    -   [CVE-2023-0458](https://ubuntu.com/security/CVE-2023-0458) <!-- medium -->
    -   [CVE-2023-0394](https://ubuntu.com/security/CVE-2023-0394) <!-- medium -->
    -   [CVE-2023-0210](https://ubuntu.com/security/CVE-2023-0210) <!-- medium -->
    -   [CVE-2022-48424](https://ubuntu.com/security/CVE-2022-48424) <!-- low -->
    -   [CVE-2022-48423](https://ubuntu.com/security/CVE-2022-48423) <!-- medium -->
    -   [CVE-2022-4842](https://ubuntu.com/security/CVE-2022-4842) <!-- medium -->
    -   [CVE-2022-4129](https://ubuntu.com/security/CVE-2022-4129) <!-- medium -->
    -   [CVE-2022-3707](https://ubuntu.com/security/CVE-2022-3707) <!-- medium -->
    -   [CVE-2022-36280](https://ubuntu.com/security/CVE-2022-36280) <!-- medium -->
    -   [CVE-2022-27672](https://ubuntu.com/security/CVE-2022-27672) <!-- medium -->
-   22.10 GCP, 22.04 HWE
-   Same as above


### [[USN-6092-1](https://ubuntu.com/security/notices/USN-6092-1)] Linux kernel (Azure) vulnerabilities (03:45) {#usn-6092-1-linux-kernel--azure--vulnerabilities--03-45}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
-   4.15 Azure on both 18.04, 16.04 ESM + 14.04 ESM


### [[USN-6093-1](https://ubuntu.com/security/notices/USN-6093-1)] Linux kernel (BlueField) vulnerabilities (03:54) {#usn-6093-1-linux-kernel--bluefield--vulnerabilities--03-54}

-   9 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-26545](https://ubuntu.com/security/CVE-2023-26545) <!-- medium -->
    -   [CVE-2023-1074](https://ubuntu.com/security/CVE-2023-1074) <!-- medium -->
    -   [CVE-2023-1073](https://ubuntu.com/security/CVE-2023-1073) <!-- medium -->
    -   [CVE-2023-0458](https://ubuntu.com/security/CVE-2023-0458) <!-- medium -->
    -   [CVE-2022-4129](https://ubuntu.com/security/CVE-2022-4129) <!-- medium -->
    -   [CVE-2022-3903](https://ubuntu.com/security/CVE-2022-3903) <!-- low -->
    -   [CVE-2022-3108](https://ubuntu.com/security/CVE-2022-3108) <!-- medium -->
    -   [CVE-2023-1281](https://ubuntu.com/security/CVE-2023-1281) <!-- high -->
    -   [CVE-2023-1829](https://ubuntu.com/security/CVE-2023-1829) <!-- high -->
-   5.4
-   NVIDIA BlueField platform


### [[USN-6094-1](https://ubuntu.com/security/notices/USN-6094-1)] Linux kernel vulnerabilities (04:02) {#usn-6094-1-linux-kernel-vulnerabilities--04-02}

-   8 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-1078](https://ubuntu.com/security/CVE-2023-1078) <!-- medium -->
    -   [CVE-2023-1075](https://ubuntu.com/security/CVE-2023-1075) <!-- medium -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
    -   [CVE-2022-3707](https://ubuntu.com/security/CVE-2022-3707) <!-- medium -->
-   5.4 20.04 / 18.04 HWE on all generic, Azure, GKE, IBM, OEM, AWS, KVM, Low
    latency etc


### [[USN-6095-1](https://ubuntu.com/security/notices/USN-6095-1)] Linux kernel vulnerabilities (04:29) {#usn-6095-1-linux-kernel-vulnerabilities--04-29}

-   5 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
-   4.15 18.04 snapdragon + raspi2; 16.04 HWE etc


### [[USN-6050-2](https://ubuntu.com/security/notices/USN-6050-2)] Git vulnerabilities (04:50) {#usn-6050-2-git-vulnerabilities--04-50}

-   2 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-29007](https://ubuntu.com/security/CVE-2023-29007) <!-- medium -->
    -   [CVE-2023-25652](https://ubuntu.com/security/CVE-2023-25652) <!-- medium -->
-   RCE via a crafted `.gitmodules` file with submodule URLs longer than 1024
    chars - could inject arbitrary config into the users git config - eg. could
    configure the pager or editor etc to run some arbitrary command
-   Local file overwrite via crafted input to `git apply --reject`


### [[USN-6088-1](https://ubuntu.com/security/notices/USN-6088-1)] runC vulnerabilities (05:39) {#usn-6088-1-runc-vulnerabilities--05-39}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-28642](https://ubuntu.com/security/CVE-2023-28642) <!-- medium -->
    -   [CVE-2023-27561](https://ubuntu.com/security/CVE-2023-27561) <!-- medium -->
    -   [CVE-2023-25809](https://ubuntu.com/security/CVE-2023-25809) <!-- medium -->
-   Vuln where the cgroup hierarchy of the host may be exposed within the
    container and be writable - could possibly use this to privesc
-   Regression from a previous vuln fix in CVE-2019-19921 (see [[USN-4297-1] runC vulnerabilities in Episode 66]({{< relref "episode-66#usn-4297-1-runc-vulnerabilities-01-30" >}}))
-   Possible to bypass AppArmor (or SELinux) restrictions on runc if a container


### [[USN-6088-2](https://ubuntu.com/security/notices/USN-6088-2)] runC vulnerabilities (06:26) {#usn-6088-2-runc-vulnerabilities--06-26}

-   6 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-28642](https://ubuntu.com/security/CVE-2023-28642) <!-- medium -->
    -   [CVE-2023-27561](https://ubuntu.com/security/CVE-2023-27561) <!-- medium -->
    -   [CVE-2023-25809](https://ubuntu.com/security/CVE-2023-25809) <!-- medium -->
    -   [CVE-2022-29162](https://ubuntu.com/security/CVE-2022-29162) <!-- low -->
    -   [CVE-2021-43784](https://ubuntu.com/security/CVE-2021-43784) <!-- low -->
    -   [CVE-2019-19921](https://ubuntu.com/security/CVE-2019-19921) <!-- medium -->


### [[USN-6086-1](https://ubuntu.com/security/notices/USN-6086-1)] minimatch vulnerability (06:31) {#usn-6086-1-minimatch-vulnerability--06-31}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-3517](https://ubuntu.com/security/CVE-2022-3517) <!-- medium -->
-   ReDoS against nodejs package


### [[USN-6087-1](https://ubuntu.com/security/notices/USN-6087-1)] Ruby vulnerabilities (06:39) {#usn-6087-1-ruby-vulnerabilities--06-39}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2023-28756](https://ubuntu.com/security/CVE-2023-28756) <!-- medium -->
    -   [CVE-2023-28755](https://ubuntu.com/security/CVE-2023-28755) <!-- medium -->
-   Speaking of ReDoS - two in ruby - mentioned previously in
    [[USN-6055-2] Ruby regression Episode 194]({{< relref "episode-194#usn-6055-2-ruby-regression--03-11" >}}) - has been
    fixed properly now without introducing the previous regression


### [[USN-5900-2](https://ubuntu.com/security/notices/USN-5900-2)] tar vulnerability (07:03) {#usn-5900-2-tar-vulnerability--07-03}

-   1 CVEs addressed in Lunar (23.04)
    -   [CVE-2022-48303](https://ubuntu.com/security/CVE-2022-48303) <!-- medium -->
-   [[USN-5900-1] tar vulnerability from Episode 189]({{< relref "episode-189#usn-5900-1-tar-vulnerability-06-15" >}})


### [[USN-5996-2](https://ubuntu.com/security/notices/USN-5996-2)] Libloius vulnerabilities (07:17) {#usn-5996-2-libloius-vulnerabilities--07-17}

-   3 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-26769](https://ubuntu.com/security/CVE-2023-26769) <!-- medium -->
    -   [CVE-2023-26768](https://ubuntu.com/security/CVE-2023-26768) <!-- medium -->
    -   [CVE-2023-26767](https://ubuntu.com/security/CVE-2023-26767) <!-- medium -->
-   Braille translation library
-   3 different buffer overflows


### [[USN-6099-1](https://ubuntu.com/security/notices/USN-6099-1)] ncurses vulnerabilities (07:27) {#usn-6099-1-ncurses-vulnerabilities--07-27}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-29491](https://ubuntu.com/security/CVE-2023-29491) <!-- medium -->
    -   [CVE-2022-29458](https://ubuntu.com/security/CVE-2022-29458) <!-- negligible -->
    -   [CVE-2021-39537](https://ubuntu.com/security/CVE-2021-39537) <!-- negligible -->
    -   [CVE-2019-17595](https://ubuntu.com/security/CVE-2019-17595) <!-- negligible -->
    -   [CVE-2019-17594](https://ubuntu.com/security/CVE-2019-17594) <!-- negligible -->
-   Most interesting vuln here was possible memory corruption via malformed
    terminfo database which can be set via `TERMINFO` of though `~/.terminfo` - will
    get used by a `setuid` binary as well - turns out though that ncurses has a
    build-time configuration option to disable the use of custom terminfo/termcap
    when running - fixed this by enabling that


### [[USN-6073-6](https://ubuntu.com/security/notices/USN-6073-6), [USN-6073-7](https://ubuntu.com/security/notices/USN-6073-7), [USN-6073-8](https://ubuntu.com/security/notices/USN-6073-8), USN-6073-9] Cinder, Glance store, Nova, os-brick regressions (08:34) {#usn-6073-6-usn-6073-7-usn-6073-8-usn-6073-9-cinder-glance-store-nova-os-brick-regressions--08-34}

-   Affecting Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
-   [[USN-6073-1, USN-6073-2, USN-6073-3, USN-6073-4] Cinder, Glance Store, Nova, os-brick vulnerability from Episode 195]({{< relref "episode-195#usn-6073-1-usn-6073-2-usn-6073-3-usn-6073-4-cinder-glance-store-nova-os-brick-vulnerability--03-14" >}})


### [[USN-5725-2](https://ubuntu.com/security/notices/USN-5725-2)] Go vulnerability (08:50) {#usn-5725-2-go-vulnerability--08-50}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2020-16845](https://ubuntu.com/security/CVE-2020-16845) <!-- low -->


### [[USN-6042-2](https://ubuntu.com/security/notices/USN-6042-2)] Cloud-init regression (08:55) {#usn-6042-2-cloud-init-regression--08-55}

-   Affecting Focal (20.04 LTS)
-   Published an update to cloud-init a few weeks ago - this was due to a vuln
    where credentials may get accidentally logged to the cloud-init log file -
    this was a newer version of cloud-init and it relied on a feature in the
    netplan package that was not published to the security pocket - easy fix would
    be to publish this version of netplan to -security but this is not in the
    spirit of the pocket - so instead cloud-init was updated to include a fallback
    to ensure routes were appropriately retained


### [[USN-6098-1](https://ubuntu.com/security/notices/USN-6098-1)] Jhead vulnerabilities (09:48) {#usn-6098-1-jhead-vulnerabilities--09-48}

-   8 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-28278](https://ubuntu.com/security/CVE-2021-28278) <!-- medium -->
    -   [CVE-2021-28276](https://ubuntu.com/security/CVE-2021-28276) <!-- medium -->
    -   [CVE-2020-26208](https://ubuntu.com/security/CVE-2020-26208) <!-- low -->
    -   [CVE-2020-6625](https://ubuntu.com/security/CVE-2020-6625) <!-- medium -->
    -   [CVE-2020-6624](https://ubuntu.com/security/CVE-2020-6624) <!-- medium -->
    -   [CVE-2019-1010302](https://ubuntu.com/security/CVE-2019-1010302) <!-- low -->
    -   [CVE-2019-1010301](https://ubuntu.com/security/CVE-2019-1010301) <!-- low -->
    -   [CVE-2019-19035](https://ubuntu.com/security/CVE-2019-19035) <!-- medium -->
-   EXIF JPEG header manipulation tool written in C
-   Heap buffer overflows, NULL ptr derefs, OOB reads etc


### [[USN-6102-1](https://ubuntu.com/security/notices/USN-6102-1)] xmldom vulnerabilities (10:12) {#usn-6102-1-xmldom-vulnerabilities--10-12}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-39353](https://ubuntu.com/security/CVE-2022-39353) <!-- medium -->
    -   [CVE-2022-37616](https://ubuntu.com/security/CVE-2022-37616) <!-- medium -->
    -   [CVE-2021-21366](https://ubuntu.com/security/CVE-2021-21366) <!-- medium -->
-   NodeJS javascript DOMParser and XMLSerializer
-   Logic error where failed to preserve identifiers or namespaces when parsing
    malicious documents
-   Prototype pollution
-   Parses documents with multiple top-level elements and combines all their
    elements


### [[USN-6101-1](https://ubuntu.com/security/notices/USN-6101-1)] GNU binutils vulnerabilities (10:50) {#usn-6101-1-gnu-binutils-vulnerabilities--10-50}

-   6 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-25588](https://ubuntu.com/security/CVE-2023-25588) <!-- medium -->
    -   [CVE-2023-25586](https://ubuntu.com/security/CVE-2023-25586) <!-- medium -->
    -   [CVE-2023-25585](https://ubuntu.com/security/CVE-2023-25585) <!-- medium -->
    -   [CVE-2023-25584](https://ubuntu.com/security/CVE-2023-25584) <!-- medium -->
    -   [CVE-2023-1972](https://ubuntu.com/security/CVE-2023-1972) <!-- low -->
    -   [CVE-2023-1579](https://ubuntu.com/security/CVE-2023-1579) <!-- medium -->
-   Assembler, linker and other utils for handling binary files
-   Generally not expected to be fed untrusted input, but notheless
    -   various buffer overflows (read and write) - DoS / RCE


### [[USN-6074-3](https://ubuntu.com/security/notices/USN-6074-3)] Firefox regressions (11:38) {#usn-6074-3-firefox-regressions--11-38}

-   11 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2023-32209](https://ubuntu.com/security/CVE-2023-32209) <!-- medium -->
    -   [CVE-2023-32208](https://ubuntu.com/security/CVE-2023-32208) <!-- medium -->
    -   [CVE-2023-32206](https://ubuntu.com/security/CVE-2023-32206) <!-- medium -->
    -   [CVE-2023-32216](https://ubuntu.com/security/CVE-2023-32216) <!-- medium -->
    -   [CVE-2023-32215](https://ubuntu.com/security/CVE-2023-32215) <!-- medium -->
    -   [CVE-2023-32213](https://ubuntu.com/security/CVE-2023-32213) <!-- medium -->
    -   [CVE-2023-32212](https://ubuntu.com/security/CVE-2023-32212) <!-- medium -->
    -   [CVE-2023-32211](https://ubuntu.com/security/CVE-2023-32211) <!-- medium -->
    -   [CVE-2023-32210](https://ubuntu.com/security/CVE-2023-32210) <!-- medium -->
    -   [CVE-2023-32207](https://ubuntu.com/security/CVE-2023-32207) <!-- medium -->
    -   [CVE-2023-32205](https://ubuntu.com/security/CVE-2023-32205) <!-- medium -->
-   113.0.2


### [[USN-6103-1](https://ubuntu.com/security/notices/USN-6103-1)] JSON Schema vulnerability (11:50) {#usn-6103-1-json-schema-vulnerability--11-50}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3918](https://ubuntu.com/security/CVE-2021-3918) <!-- medium -->
-   NodeJS package for JSON document manipulation - prototype pollution vuln
    -   [[USN-5967-1] object-path vulnerabilities from Episode 192]({{< relref "episode-192#usn-5967-1-object-path-vulnerabilities-02-11" >}})


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Security related announcements from PyPI (12:21) {#security-related-announcements-from-pypi--12-21}

-   [Removing PGP from PyPI](https://blog.pypi.org/posts/2023-05-23-removing-pgp/)
    -   will no longer support new PGP signatures for PyPI packages in response to a
        recent [public blog post](https://blog.yossarian.net/2023/05/21/PGP-signatures-on-PyPI-worse-than-useless) detailing an audit of the PGP ecosystem with PyPI
        -   most devs not uploading PGP signatures and of those that were, 30% were
            not available on major public keyservers and of those that were nearly
            half were not able to be meaningfully verified - some had expired,
            others had no binding signature to be able to verify them
-   [PyPI was subpoenaed](https://blog.pypi.org/posts/2023-05-24-pypi-was-subpoenaed/)
    -   Ordered by DOJ to provide details on 5 PyPI usernames, including names,
        addresses, connection records, payment details, which packages and IP logs
        etc
    -   Provided these details after consulting with their lawyers
    -   Includes the specific attributes which were provided including the database
        queries used to lookup those records
    -   likely in response to recent security issues like typosquatting of popular
        packages with credential stealers and other malware embedded - over the past
        weekend, account sign-up and package uploads were blocked due to an
        overwhelming large number of malicious users and projects being created
        which the admins could not keep up with

-   [Securing PyPI accounts via Two-Factor Authentication](https://blog.pypi.org/posts/2023-05-25-securing-pypi-with-2fa/)
    -   Every account that maintains a project / organisation will be required to
        enable 2FA by the end of this year
        -   supports both TOTP and WebAuthN
    -   Already announced this for most critical projects [last year](https://pypi.org/security-key-giveaway/) where they gave
        away Google Titan security keys to those projects and mandated them to use
        2FA


### LSS NA 2023 (16:11) {#lss-na-2023--16-11}

-   Attended by John Johansen and Mark Esler from the Ubuntu Security Team
-   John presented in the [LSM Maintainers Panel](https://youtu.be/7wkEWeRIwy8) with Mickaël Salaün, Casey
    Schaufler, Mimi Zohar &amp; moderated by Paul Moore
-   All presentations now online: <https://www.youtube.com/playlist?list=PLbzoR-pLrL6q4vmwFP7-ZZ1LJc5mA3Hqu>
-   Lots of interesting bits like:
    -   [systemd and TPM2](https://youtu.be/Qc75hobVjbo)
    -   [Verifiable End to End Secure OCI Native Machines](https://youtu.be/ewmMs563jv0)
    -   [Progress on Bounds Checking in C and the Linux Kernel](https://youtu.be/V2kzptQG5_A)
        -   for more great content with Kees check out [Seth and John talk Linux Kernel Security with Kees Cook from Episode 145]({{< relref "episode-145#seth-and-john-talk-linux-kernel-security-with-kees-cook-06-53" >}})
    -   [Building the Largest Working Set of Apparmor Profiles](https://youtu.be/OzyalrOzxE8)
    -   [Controlling Script Execution](https://youtu.be/UB10wtNEMlM)


### Announcement of 18.04 LTS going into ESM on 31 May 2023 (18:55) {#announcement-of-18-dot-04-lts-going-into-esm-on-31-may-2023--18-55}

-   <https://lists.ubuntu.com/archives/ubuntu-security-announce/2023-May/007371.html>
-   18.04 LTS released on 26 April 2018
-   <https://canonical.com/blog/18-04-end-of-standard-support>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
