+++
title = "Episode 202"
description = """
  We take a sneak peek at the upcoming AppArmor 4.0 release, plus we cover
  vulnerabilities in AccountsService, the Linux Kernel, ReportLab, GNU Screen,
  containerd and more.
  """
date = 2023-07-07T16:41:00+09:30
lastmod = 2023-07-07T16:42:33+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E202.mp3"
podcast_duration = 1300
podcast_bytes = 21757397
permalink = "https://ubuntusecuritypodcast.org/episode-202/"
guid = "dcd25643d17ef3404076fe3419f9229ee24472e1c2264105eb4338d0488a35e5eef0ed3a997528cdd9c750df5992c1bef4092a9bc21a6cc94b10bf5160af8e25"
+++

## Overview {#overview}

We take a sneak peek at the upcoming AppArmor 4.0 release, plus we cover
vulnerabilities in AccountsService, the Linux Kernel, ReportLab, GNU Screen,
containerd and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

50 unique CVEs addressed


### [[USN-6190-1](https://ubuntu.com/security/notices/USN-6190-1)] AccountsService vulnerability (00:47) {#usn-6190-1-accountsservice-vulnerability--00-47}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-3297](https://ubuntu.com/security/CVE-2023-3297) <!-- medium -->
-   Mentioned in passing last week - reported to us by Kevin Backhouse from the
    Github Security Lab team
-   DBus service that provides APIs to add, delete or modify system accounts - ie
    create a new user etc
-   Originally developed by GNOME - used by gnome-control-center etc
-   Also allows to configure language / locale settings etc
-   In Ubuntu, we carry a custom patch which is used to synchronise the language
    and locale from accountsservice to the local users `~/.pam_environment` file
    which is used to configure various per-user session environment variables -
    this way no matter how you log in to a Ubuntu system, the locale etc that you
    configured via g-c-c etc gets used
-   Turned out there was a number of cases of UAF due to logic errors in the
    original patch - so an unprivileged user could trigger this and crash the
    accounts-daemon which runs as root


### [[USN-6191-1](https://ubuntu.com/security/notices/USN-6191-1)] Linux kernel regression (02:44) {#usn-6191-1-linux-kernel-regression--02-44}

-   Affecting Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
-   Spurious warning message would be printed via the IPv6 subsystem


### [[USN-6192-1](https://ubuntu.com/security/notices/USN-6192-1)] Linux kernel vulnerabilities (03:10) {#usn-6192-1-linux-kernel-vulnerabilities--03-10}

-   2 CVEs addressed in Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-2430](https://ubuntu.com/security/CVE-2023-2430) <!-- high -->
    -   [CVE-2023-35788](https://ubuntu.com/security/CVE-2023-35788) <!-- high -->
-   Off-by-one in the flower network traffic classifier - flow based traffic
    control filter - allows to define a "flow" by a set of key/value pairs
    (ie. src MAC address, port number or various other types) - could be leveraged
    for DoS or potential code execution - PoC posted publicly but even then was
    stated that it doesn't even crash the kernel, however gdb can be used to
    detect the OOB write
-   Mishandling of locking in the `io_uring` subsystem - local attacker could use
    this to trigger a deadlock and hence a DoS
-   Possible info leak via stale page table entries - when KPTI was introduced in
    the wake of Meltdown, to minimise the cost of flushing page table on every
    entry/exit to/from kernel space, PCIDs are a hardware feature that was
    introduced in more recent Intel processors to try and minimise this cost by
    only flushing on exit back to userspace - this is done by issuing the `INVLPG`
    instruction - but it was found that on certain hardware platforms this did not
    actually flush the global TLB contrary to expectation - and so could leak
    kernel memory back to userspace


### [[USN-6193-1](https://ubuntu.com/security/notices/USN-6193-1)] Linux kernel vulnerabilities {#usn-6193-1-linux-kernel-vulnerabilities}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-35788](https://ubuntu.com/security/CVE-2023-35788) <!-- high -->
-   TC flower + INVLPG


### [[USN-6194-1](https://ubuntu.com/security/notices/USN-6194-1)] Linux kernel (OEM) vulnerabilities (06:04) {#usn-6194-1-linux-kernel--oem--vulnerabilities--06-04}

-   3 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-2176](https://ubuntu.com/security/CVE-2023-2176) <!-- medium -->
    -   [CVE-2023-2430](https://ubuntu.com/security/CVE-2023-2430) <!-- high -->
    -   [CVE-2023-35788](https://ubuntu.com/security/CVE-2023-35788) <!-- high -->
-   `io_uring` and TC flower plus OOB read in InfiniBand RDMA driver - DoS / info
    leak


### [[USN-6195-1](https://ubuntu.com/security/notices/USN-6195-1)] Vim vulnerabilities (06:26) {#usn-6195-1-vim-vulnerabilities--06-26}

-   6 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-0696](https://ubuntu.com/security/CVE-2022-0696) <!-- low -->
    -   [CVE-2022-0407](https://ubuntu.com/security/CVE-2022-0407) <!-- medium -->
    -   [CVE-2022-0393](https://ubuntu.com/security/CVE-2022-0393) <!-- medium -->
    -   [CVE-2022-0158](https://ubuntu.com/security/CVE-2022-0158) <!-- medium -->
    -   [CVE-2022-0156](https://ubuntu.com/security/CVE-2022-0156) <!-- medium -->
    -   [CVE-2022-0128](https://ubuntu.com/security/CVE-2022-0128) <!-- medium -->
-   More vim fuzzing results - OOB read, UAF, heap buffer overflow, NULL pointer
    dereference etc.


### [[USN-6196-1](https://ubuntu.com/security/notices/USN-6196-1)] ReportLab vulnerability (06:47) {#usn-6196-1-reportlab-vulnerability--06-47}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-33733](https://ubuntu.com/security/CVE-2023-33733) <!-- high -->
-   Python library for producing PDFs - often used to convert HTML to PDF etc
-   Bypass of validation originally put in place for a previous [CVE-2019-17626](https://ubuntu.com/security/CVE-2019-17626)
    (see [[USN-4273-1] ReportLab vulnerability in Episode 62]({{< relref "episode-62#usn-4273-1-reportlab-vulnerability-05-48" >}}))
-   That vuln was RCE since reportlab would call the python `eval()` function
    directly on value obtained from an XML document
-   To fix that, introduced a complex validation scheme so they could still use
    `eval()` without having to remove this functionality - new update disables this
    by default and instead only allows a much limited subset of colors to be
    parsed


### [[USN-6197-1](https://ubuntu.com/security/notices/USN-6197-1)] OpenLDAP vulnerability (08:48) {#usn-6197-1-openldap-vulnerability--08-48}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-2953](https://ubuntu.com/security/CVE-2023-2953) <!-- low -->
-   NULL pointer deref in certain circumstances if failed to allocate memory
    during various string handling operations - unlikely to be able to be
    triggered easily (would first need a memory leak bug or similar...)


### [[USN-6198-1](https://ubuntu.com/security/notices/USN-6198-1)] GNU Screen vulnerability (09:25) {#usn-6198-1-gnu-screen-vulnerability--09-25}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-24626](https://ubuntu.com/security/CVE-2023-24626) <!-- low -->
-   screen provides an API to allow the processes under its controlled to be say
    killed from another session - but would fail to check if the specified PID was
    actually owned by the calling user - so if screen was setuid, would allow a
    local user to send a SIGHUP to any other process on the system
-   In Ubuntu screen is not setuid so this was not a real issue


### [[USN-6199-1](https://ubuntu.com/security/notices/USN-6199-1)] PHP vulnerability (10:35) {#usn-6199-1-php-vulnerability--10-35}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-3247](https://ubuntu.com/security/CVE-2023-3247) <!-- medium -->
-   When generating a nonce for use in HTTP Digest during SOAP authentication,
    wouldn't actually check the return value from the call to generate random data
    for the nonce - as such, the nonce would be whatever was previously in the
    stack memory - so could leak info from the stack, or this could be say all
    zeros which would defeat the purpose of the nonce


### [[USN-6200-1](https://ubuntu.com/security/notices/USN-6200-1)] ImageMagick vulnerabilities (11:27) {#usn-6200-1-imagemagick-vulnerabilities--11-27}

-   20 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-34151](https://ubuntu.com/security/CVE-2023-34151) <!-- medium -->
    -   [CVE-2023-3195](https://ubuntu.com/security/CVE-2023-3195) <!-- medium -->
    -   [CVE-2023-1289](https://ubuntu.com/security/CVE-2023-1289) <!-- low -->
    -   [CVE-2023-3428](https://ubuntu.com/security/CVE-2023-3428) <!-- medium -->
    -   [CVE-2023-1906](https://ubuntu.com/security/CVE-2023-1906) <!-- low -->
    -   [CVE-2021-3610](https://ubuntu.com/security/CVE-2021-3610) <!-- medium -->
    -   [CVE-2022-32547](https://ubuntu.com/security/CVE-2022-32547) <!-- medium -->
    -   [CVE-2022-32546](https://ubuntu.com/security/CVE-2022-32546) <!-- medium -->
    -   [CVE-2022-32545](https://ubuntu.com/security/CVE-2022-32545) <!-- medium -->
    -   [CVE-2022-28463](https://ubuntu.com/security/CVE-2022-28463) <!-- medium -->
    -   [CVE-2021-39212](https://ubuntu.com/security/CVE-2021-39212) <!-- low -->
    -   [CVE-2021-20313](https://ubuntu.com/security/CVE-2021-20313) <!-- low -->
    -   [CVE-2021-20312](https://ubuntu.com/security/CVE-2021-20312) <!-- low -->
    -   [CVE-2021-20246](https://ubuntu.com/security/CVE-2021-20246) <!-- low -->
    -   [CVE-2021-20309](https://ubuntu.com/security/CVE-2021-20309) <!-- low -->
    -   [CVE-2021-20244](https://ubuntu.com/security/CVE-2021-20244) <!-- low -->
    -   [CVE-2021-20243](https://ubuntu.com/security/CVE-2021-20243) <!-- low -->
    -   [CVE-2021-20241](https://ubuntu.com/security/CVE-2021-20241) <!-- low -->
    -   [CVE-2021-20224](https://ubuntu.com/security/CVE-2021-20224) <!-- medium -->
    -   [CVE-2020-29599](https://ubuntu.com/security/CVE-2020-29599) <!-- negligible -->
-   Time for another frequent mention in the podcast - ImageMagick (seems to come
    up every 10 episodes or so)
-   Huge range of CVEs fixed across the various releases with some dating back to
    2020
-   OOB read, stack bufffer overflow, NULL ptr deref, lots of heap buffer overflows
-   Since 20.04, ImageMagick is now in universe, so for 20.04 LTS this update is
    available via Ubuntu Pro


### [[USN-6201-1](https://ubuntu.com/security/notices/USN-6201-1)] Firefox vulnerabilities (12:27) {#usn-6201-1-firefox-vulnerabilities--12-27}

-   13 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-37208](https://ubuntu.com/security/CVE-2023-37208) <!-- medium -->
    -   [CVE-2023-37206](https://ubuntu.com/security/CVE-2023-37206) <!-- medium -->
    -   [CVE-2023-37204](https://ubuntu.com/security/CVE-2023-37204) <!-- medium -->
    -   [CVE-2023-37203](https://ubuntu.com/security/CVE-2023-37203) <!-- medium -->
    -   [CVE-2023-3482](https://ubuntu.com/security/CVE-2023-3482) <!-- medium -->
    -   [CVE-2023-37212](https://ubuntu.com/security/CVE-2023-37212) <!-- medium -->
    -   [CVE-2023-37211](https://ubuntu.com/security/CVE-2023-37211) <!-- medium -->
    -   [CVE-2023-37210](https://ubuntu.com/security/CVE-2023-37210) <!-- medium -->
    -   [CVE-2023-37209](https://ubuntu.com/security/CVE-2023-37209) <!-- medium -->
    -   [CVE-2023-37207](https://ubuntu.com/security/CVE-2023-37207) <!-- medium -->
    -   [CVE-2023-37205](https://ubuntu.com/security/CVE-2023-37205) <!-- medium -->
    -   [CVE-2023-37202](https://ubuntu.com/security/CVE-2023-37202) <!-- medium -->
    -   [CVE-2023-37201](https://ubuntu.com/security/CVE-2023-37201) <!-- medium -->
-   115.0
-   Usual web browser issues (DoS, domain bypass, RCE etc) - but also bypass of
    cookie storage protections, possible spoofing attack via fullscreen
    notifications and others


### [[USN-6202-1](https://ubuntu.com/security/notices/USN-6202-1)] containerd vulnerabilities (13:09) {#usn-6202-1-containerd-vulnerabilities--13-09}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-25173](https://ubuntu.com/security/CVE-2023-25173) <!-- medium -->
    -   [CVE-2023-25153](https://ubuntu.com/security/CVE-2023-25153) <!-- medium -->
-   DoS when importing an OCI image with a really large manifest or image layout
    file - would try and read the whole JSON file into memory - could cause
    containerd to crash by running out of memory - limited to 20MBs


### [[USN-6203-1](https://ubuntu.com/security/notices/USN-6203-1)] Django vulnerability (13:55) {#usn-6203-1-django-vulnerability--13-55}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-36053](https://ubuntu.com/security/CVE-2023-36053) <!-- medium -->
-   ReDoS in EmailValidator and URLValidator classes when parsing really long
    strings - fixed by rejecting anything longer than some hardcoded constants
    (2KB for URL, 320 chars for email as per RFC x3696)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### AppArmor 4.0-alpha1 in progress (14:44) {#apparmor-4-dot-0-alpha1-in-progress--14-44}

-   <https://gitlab.com/apparmor/apparmor/-/wikis/Release_Notes_4.0-alpha1>
-   "Bridge" between 3.0 style policy and new 4.0 policy
-   New profile flags
    -   unconfined, debug
-   New mediation types
    -   [Fine grained POSIX message queues](https://gitlab.com/apparmor/apparmor/-/wikis/mqueue-rules)
    -   [User namespaces](https://gitlab.com/apparmor/apparmor/-/wikis/unprivileged_userns_restriction)
    -   [io_uring](https://gitlab.com/apparmor/apparmor/-/wikis/io_uring-rules)
-   Minor changes
    -   Ability to filter the output of aa-status
    -   Inclusion of a new utility called aa-load which can load pre-compiled /
        cached binary policies without the use of `apparmor_parser`
    -   Ability to run and compile policies as an unprivileged user (still need to
        be root to actually load the policy into the kernel)


### AppArmor kernel fixes for Linux 6.5 (20:42) {#apparmor-kernel-fixes-for-linux-6-dot-5--20-42}

-   <https://lore.kernel.org/all/b68ad9e0-2ce1-50d5-4856-e4d8fe97fc82@canonical.com/>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
