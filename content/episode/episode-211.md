+++
title = "Episode 211"
description = """
  After a well-deserved break, we're back looking at the recent Ubuntu 23.10
  release and the significant security technologies it introduces along with a
  call for testing of unprivileged user namespace restrictions, plus the details
  of security updates for curl, Samba, iperf3, CUE and more.
  """
date = 2023-10-20T17:14:00+10:30
lastmod = 2023-10-20T17:16:12+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E211.mp3"
podcast_duration = 1199
podcast_bytes = 21020109
permalink = "https://ubuntusecuritypodcast.org/episode-211/"
guid = "f653144f20f17ab414cfff3ff2a4720c567372bb9cff5a9de6250678afbb0ef04d1c7121e9c15e8712bfac54a09930ac3ca19836992ce125aa558d854c87898f"
+++

## Overview {#overview}

After a well-deserved break, we're is back looking at the recent Ubuntu 23.10
release and the significant security technologies it introduces along with a
call for testing of unprivileged user namespace restrictions, plus the details
of security updates for curl, Samba, iperf3, CUE and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

26 unique CVEs addressed


### [[USN-6429-2](https://ubuntu.com/security/notices/USN-6429-2), [USN-6429-3](https://ubuntu.com/security/notices/USN-6429-3)] curl vulnerability (00:51) {#usn-6429-2-usn-6429-3-curl-vulnerability--00-51}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-38546](https://ubuntu.com/security/CVE-2023-38546) <!-- low -->
-   for Ubuntu Pro users
-   under rare circumstances, possible that an application using libcurl would
    potentially load cookies from a crafted file on disk - allowing a local
    attacker to inject arbitrary cookies into a connection - although requires the
    application to use the `curl_easy_duphandle()` function
-   2 CVEs addressed in Mantic (23.10)
    -   [CVE-2023-38546](https://ubuntu.com/security/CVE-2023-38546) <!-- low -->
    -   [CVE-2023-38545](https://ubuntu.com/security/CVE-2023-38545) <!-- high -->
-   cookie issue above, plus a possible heap buffer overflow when using a SOCKS5
    proxy, if the specified hostname was longer than 255 bytes


### [[USN-6425-3](https://ubuntu.com/security/notices/USN-6425-3)] Samba vulnerabilities (02:38) {#usn-6425-3-samba-vulnerabilities--02-38}

-   4 CVEs addressed in Mantic (23.10)
    -   [CVE-2023-42670](https://ubuntu.com/security/CVE-2023-42670) <!-- medium -->
    -   [CVE-2023-42669](https://ubuntu.com/security/CVE-2023-42669) <!-- medium -->
    -   [CVE-2023-4154](https://ubuntu.com/security/CVE-2023-4154) <!-- medium -->
    -   [CVE-2023-4091](https://ubuntu.com/security/CVE-2023-4091) <!-- medium -->
-   Various logic issues which could result in a range of effects, from attackers
    being able to truncate read-only files, or cause Samba to stop responding and
    hence DoS through to the ability to obtain all domain secrets


### [[USN-6425-2](https://ubuntu.com/security/notices/USN-6425-2)] Samba regression (03:06) {#usn-6425-2-samba-regression--03-06}

-   4 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-42670](https://ubuntu.com/security/CVE-2023-42670) <!-- medium -->
    -   [CVE-2023-42669](https://ubuntu.com/security/CVE-2023-42669) <!-- medium -->
    -   [CVE-2023-4154](https://ubuntu.com/security/CVE-2023-4154) <!-- medium -->
    -   [CVE-2023-4091](https://ubuntu.com/security/CVE-2023-4091) <!-- medium -->
-   Previous security update for focal was miscompiled and resulted in an issue
    when handling the `%U` directive in smb.conf - if specified a path to be shared
    like `/home/%U/FILES` the `%U` would seemingly be ignored and not replaced with
    the username as expected - and hence the share would fail - this same issue
    actually occurred previously in January this year - have now added a
    regression test specifically to try and ensure we do not introduce this same
    issue in the future again


### [[USN-6430-1](https://ubuntu.com/security/notices/USN-6430-1)] FFmpeg vulnerabilities (04:25) {#usn-6430-1-ffmpeg-vulnerabilities--04-25}

-   6 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2021-28429](https://ubuntu.com/security/CVE-2021-28429) <!-- medium -->
    -   [CVE-2020-22051](https://ubuntu.com/security/CVE-2020-22051) <!-- medium -->
    -   [CVE-2020-22043](https://ubuntu.com/security/CVE-2020-22043) <!-- medium -->
    -   [CVE-2020-22040](https://ubuntu.com/security/CVE-2020-22040) <!-- medium -->
    -   [CVE-2020-22039](https://ubuntu.com/security/CVE-2020-22039) <!-- medium -->
    -   [CVE-2020-22024](https://ubuntu.com/security/CVE-2020-22024) <!-- medium -->
-   Most just memory leaks in handling of various crafted files -&gt; DoS
-   One heap buffer overflow  - possible RCE but likely just DoS
-   One integer overflow in FPS calculation


### [[USN-6431-1](https://ubuntu.com/security/notices/USN-6431-1), [USN-6431-2](https://ubuntu.com/security/notices/USN-6431-2), [USN-6431-3](https://ubuntu.com/security/notices/USN-6431-3)] iperf3 vulnerabilities (05:12) {#usn-6431-1-usn-6431-2-usn-6431-3-iperf3-vulnerabilities--05-12}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-38403](https://ubuntu.com/security/CVE-2023-38403) <!-- medium -->
-   Integer overflow -&gt; heap buffer overflow -&gt; RCE / crash - essentially, when
    parsing a frame, would allocate memory for the frame, plus 1 extra byte for a
    trailing NUL - if frame length was `MAX_UINT` adding 1 then wraps the integer
    around back to zero - and so no memory gets allocated - and when copying into
    the subsequent memory get a buffer overflow
-   When preparing this update, Jorge discovered he could cause the iperf3 server
    to hang indefinitely on crafted input as well - reported this upstream and
    included that fix here as well


### [[USN-6432-1](https://ubuntu.com/security/notices/USN-6432-1)] Quagga vulnerabilities (06:26) {#usn-6432-1-quagga-vulnerabilities--06-26}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-41360](https://ubuntu.com/security/CVE-2023-41360) <!-- low -->
    -   [CVE-2023-41358](https://ubuntu.com/security/CVE-2023-41358) <!-- medium -->
-   2 different DoS vulns - both OOB reads on crafted input -&gt; crash


### [[USN-6436-1](https://ubuntu.com/security/notices/USN-6436-1)] FRR vulnerabilities (06:38) {#usn-6436-1-frr-vulnerabilities--06-38}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-41909](https://ubuntu.com/security/CVE-2023-41909) <!-- medium -->
    -   [CVE-2023-41360](https://ubuntu.com/security/CVE-2023-41360) <!-- low -->
    -   [CVE-2023-41358](https://ubuntu.com/security/CVE-2023-41358) <!-- medium -->
-   FRR is the new Quagga


### [[USN-6394-2](https://ubuntu.com/security/notices/USN-6394-2)] Python vulnerability (06:52) {#usn-6394-2-python-vulnerability--06-52}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2022-48560](https://ubuntu.com/security/CVE-2022-48560) <!-- medium -->
-   Possible UAF in heapq module (aka priority queue implementation)


### [[USN-6423-2](https://ubuntu.com/security/notices/USN-6423-2)] CUE vulnerability (07:04) {#usn-6423-2-cue-vulnerability--07-04}

-   1 CVEs addressed in Mantic (23.10)
    -   [CVE-2023-43641](https://ubuntu.com/security/CVE-2023-43641) <!-- medium -->
-   OOB write discovered by [Kevin Backhouse from Github](https://github.blog/2023-10-09-coordinated-disclosure-1-click-rce-on-gnome-cve-2023-43641/) - allows for a one-click
    RCE on GNOME desktop due to the use of libcue by tracker - when a crafted CUE
    file is downloaded, will get automatically indexed by tracker and hence parsed
    by libcue triggering this bug -&gt; RCE
-   Interestingly, tracker employed a seccomp sandbox which should have limited
    the impact for this kind of issue (ie restricting what the exploit could do)
    but Kevin found a way to bypass this since the seccomp filter was only applied
    to the thread used to parse the file - not the main thread - so Kevin could
    simply delegate the code execution to the main thread to bypass this
-   [Upstream GNOME developers](https://blogs.gnome.org/carlosg/2023/10/10/on-cve-2023-43641/) were already aware of this as a possible weakness in
    the sandbox, and so worked to ensure this is then applied to all threads
    within tracker, not just the one spawned to parse the particular file


### [[USN-6433-1](https://ubuntu.com/security/notices/USN-6433-1)] Ghostscript vulnerability (10:18) {#usn-6433-1-ghostscript-vulnerability--10-18}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-43115](https://ubuntu.com/security/CVE-2023-43115) <!-- medium -->
-   Possible sandbox escape via a crafted PS document since it could modify the
    specified IJS server parameter binary to execute some other binary instead


### [[USN-6396-3](https://ubuntu.com/security/notices/USN-6396-3)] Linux kernel (Azure) vulnerabilities (10:55) {#usn-6396-3-linux-kernel--azure--vulnerabilities--10-55}

-   6 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2023-4128](https://ubuntu.com/security/CVE-2023-4128) <!-- high -->
    -   [CVE-2023-40283](https://ubuntu.com/security/CVE-2023-40283) <!-- high -->
    -   [CVE-2023-3863](https://ubuntu.com/security/CVE-2023-3863) <!-- medium -->
    -   [CVE-2023-3212](https://ubuntu.com/security/CVE-2023-3212) <!-- low -->
    -   [CVE-2022-40982](https://ubuntu.com/security/CVE-2022-40982) <!-- medium -->
    -   [CVE-2022-27672](https://ubuntu.com/security/CVE-2022-27672) <!-- medium -->
-   Various issues covered previously - 2 different UAFs - network packet
    classifier and bluetooth subsystems, recent speculative execution vulns in AMD
    and Intel processors and more


### [[USN-6434-1](https://ubuntu.com/security/notices/USN-6434-1)] PMIx vulnerability (11:24) {#usn-6434-1-pmix-vulnerability--11-24}

-   1 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-41915](https://ubuntu.com/security/CVE-2023-41915) <!-- high -->
-   OpenPMIx implementiation - Process Management Interface Exascale Standard -
    API used in HPC environments
-   Possible privilege escalation via race condition - library sets ownership of
    various files but would follow symlinks when doing this - so if a user could
    race it to swap a symlink out then could get it to set the ownership of a root
    owned file to themselves and gain the ability to read it etc


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 23.10 (Mantic Minotaur) Released (12:41) {#ubuntu-23-dot-10--mantic-minotaur--released--12-41}

-   <https://ubuntu.com/blog/canonical-releases-ubuntu-23-10-mantic-minotaur>
-   Culmination of the last 6 months of work - this release in particular has a
    strong focus on raising the bar for security, and setting the stage for the
    next LTS (24.04)
-   Two preview features - TPM-backed FDE on Ubuntu Desktop, and unprivileged user
    namespace restrictions via AppArmor
-   Covered both of these in previous episodes
    -   [TPM-backed Full Disk Encryption is coming to Ubuntu from Episode 208]({{< relref "episode-208#tpm-backed-full-disk-encryption-is-coming-to-ubuntu--10-48" >}})
    -   [Unprivileged user namespace restrictions via AppArmor in Ubuntu from Episode 205]({{< relref "episode-205#unprivileged-user-namespace-restrictions-via-apparmor-in-ubuntu--17-00" >}})


### Call for testing of Unprivileged User Namespace Restrictions on Mantic {#call-for-testing-of-unprivileged-user-namespace-restrictions-on-mantic}

-   The hope is to get this enabled by default in 24.04 LTS - but we need as much
    testing as we can get to find anything else which is not working as expected
    beforehand - easy to do via a new [sysctl](https://manpages.ubuntu.com/manpages/jammy/en/man8/sysctl.8.html)

    -   Can either do it immediately:
        `sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=1`
    -   Or can set this to be applied at boot via a new file in `/etc/sysctl.d`, e.g.:
        create a file `/etc/sysctl.d/60-apparmor.conf` with the following contents:

    <!--listend-->

    ```text
    kernel.apparmor_restrict_unprivileged_userns = 1
    ```
-   Then if you do find something which is not working as expected, you can create
    a simple AppArmor profile which will allow it to use unprivileged user
    namespaces without any additional restrictions, e.g:

<!--listend-->

```apparmor
abi <abi/4.0>,

include <tunables/global>

/opt/google/chrome/chrome flags=(unconfined) {
  userns,

  # Site-specific additions and overrides. See local/README for details.
  include if exists <local/opt.google.chrome.chrome>
}
```

-   From a defensive security point of view, also is useful to enable an
    additional sysctl to ensure that anything which is unconfined can't just abuse
    these profiles by `aa-exec`'ing themselves via that profile - so then also need
    to enable the `kernel.apparmor_restrict_unprivileged_unconfined = 1` sysctl too
-   One application that we are aware of that is impacted is LXD - which, to avoid
    issues, is currently disabling this automatically at startup - so for now you
    have to keep manually re-enabling this restriction until the LXD devs land a
    change to stop this <https://github.com/canonical/lxd-pkg-snap/pull/187>
-   Also all applications based on chromium (ie all electron apps) may likely have
    issues since the chromium sandbox uses unprivileged user namespaces by
    default - we have already created profiles for the various ones in the Ubuntu
    archive that we are aware of, and for some third party ones too (Brave,
    Vivaldi etc) but we expect there will be others - in that case, let us know
-   File a bug against apparmor: `ubuntu-bug apparmor` or visit
    <https://bugs.launchpad.net/ubuntu/+source/apparmor/+filebug>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
