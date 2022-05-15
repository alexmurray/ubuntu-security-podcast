+++
title = "Episode 83"
description = """
  This week Joe talks Linux Security Modules stacking with John Johansen and
  Steve Beattie plus Alex looks at security updates for snapd, the Linux
  kernel and more.
  """
date = 2020-07-24T15:48:00+09:30
lastmod = 2022-05-15T18:06:33+09:30
draft = false
weight = 1077
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E083.mp3"
podcast_duration = "28:59"
podcast_bytes = 27835363
permalink = "https://ubuntusecuritypodcast.org/episode-83/"
guid = "6b30c5a284402264c8293f99c92cdf36688884f475fb4144e4809ec49906f42ff29b9d5eba00c14e51690f292403e7646c3b21c89f6464e188716daaa56c4bec"
+++

## Overview {#overview}

This week Joe talks Linux Security Modules stacking with John Johansen and
Steve Beattie plus Alex looks at security updates for snapd, the Linux
kernel and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

24 unique CVEs addressed


### [[USN-4199-2](https://usn.ubuntu.com/4199-2/)] libvpx vulnerabilities [01:05] {#usn-4199-2-libvpx-vulnerabilities-01-05}

-   3 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2019-9433](https://ubuntu.com/security/CVE-2019-9433) <!-- low -->
    -   [CVE-2019-9232](https://ubuntu.com/security/CVE-2019-9232) <!-- low -->
    -   [CVE-2017-13194](https://ubuntu.com/security/CVE-2017-13194) <!-- low -->
-   VP8/VP9 video code (webm)
-   Various OOB read on crafted input


### [[USN-4424-1](https://usn.ubuntu.com/4424-1/)] snapd vulnerabilities [01:38] {#usn-4424-1-snapd-vulnerabilities-01-38}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-11934](https://ubuntu.com/security/CVE-2020-11934) <!-- medium -->
    -   [CVE-2020-11933](https://ubuntu.com/security/CVE-2020-11933) <!-- medium -->
-   James Henstridge from Ubuntu Desktop team
-   snapd sandbox for strict mode snaps - within sandbox provides xdg-open
    implementation which can forward to the real xdg-open outside the
    sandbox - but would use XDG_DATA_DIRS env from the snap when launching
    xdg-open outside of the snap - XDG_DATA_DIRS could then contain a
    directory which the snap itself controls - allows to launch arbitrary
    binaries from the snap outside of confinement
-   Fixed to not incorporate XDG_DATA_DIRS from the snap
-   cloud-init would run on every boot without restriction - supports the
    concept of loading meta-data from an external disk - so a local attacker
    with physical access could alter the boot sequence - would be an issue
    with FDE since could intercept the disk encryption key etc - fixed via
    snapd to disable cloud-init after the first boot since cloud-init is
    managed by snapd
    -   Is only an issue for Ubuntu Core 16/18 devices which employed FDE
    -   Doesn't affect UC20


### [[USN-4425-1](https://usn.ubuntu.com/4425-1/)] Linux kernel vulnerabilities [06:20] {#usn-4425-1-linux-kernel-vulnerabilities-06-20}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-15780](https://ubuntu.com/security/CVE-2020-15780) <!-- medium -->
    -   [CVE-2020-11935](https://ubuntu.com/security/CVE-2020-11935) <!-- medium -->
    -   [CVE-2019-19462](https://ubuntu.com/security/CVE-2019-19462) <!-- medium -->
    -   [CVE-2019-16089](https://ubuntu.com/security/CVE-2019-16089) <!-- low -->
-   5.4 kernel (focal / bionic hwe)
-   Possible bypass of Secure Boot lockdown protections via loading of ACPI
    tables via configs - provides a means of arbitrary memory write - allows
    root user to bypass lockdown
-   aufs inode reference count issue - BUG() -&gt; DoS
-   relay subsystem crash ([Episode 81](https://ubuntusecuritypodcast.org/episode-81/))


### [[USN-4426-1](https://usn.ubuntu.com/4426-1/)] Linux kernel vulnerabilities [7:32] {#usn-4426-1-linux-kernel-vulnerabilities-7-32}

-   4 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-15780](https://ubuntu.com/security/CVE-2020-15780) <!-- medium -->
    -   [CVE-2020-11935](https://ubuntu.com/security/CVE-2020-11935) <!-- medium -->
    -   [CVE-2020-10757](https://ubuntu.com/security/CVE-2020-10757) <!-- medium -->
    -   [CVE-2019-20908](https://ubuntu.com/security/CVE-2019-20908) <!-- medium -->
-   4.15 kernel (bionic / xenial hwe)
-   ACPI lockdown bypass / aufs inode above
-   Second lockdown bypass via loading of ACPI tables via the SSDT EFI
    variable similar to above
-   DAX (direct access to files in persistent memory arrays) huge pages
    support - abuse mremap() to gain root privileges - requires the system to
    make use of DAX storage to be able to exploit


### [[USN-4427-1](https://usn.ubuntu.com/4427-1/)] Linux kernel vulnerabilities [08:30] {#usn-4427-1-linux-kernel-vulnerabilities-08-30}

-   10 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2019-12380](https://ubuntu.com/security/CVE-2019-12380) <!-- negligible -->
    -   [CVE-2020-13974](https://ubuntu.com/security/CVE-2020-13974) <!-- low -->
    -   [CVE-2020-11935](https://ubuntu.com/security/CVE-2020-11935) <!-- medium -->
    -   [CVE-2020-10768](https://ubuntu.com/security/CVE-2020-10768) <!-- medium -->
    -   [CVE-2020-10767](https://ubuntu.com/security/CVE-2020-10767) <!-- medium -->
    -   [CVE-2020-10766](https://ubuntu.com/security/CVE-2020-10766) <!-- medium -->
    -   [CVE-2020-10732](https://ubuntu.com/security/CVE-2020-10732) <!-- low -->
    -   [CVE-2019-20908](https://ubuntu.com/security/CVE-2019-20908) <!-- medium -->
    -   [CVE-2019-20810](https://ubuntu.com/security/CVE-2019-20810) <!-- low -->
    -   [CVE-2019-19947](https://ubuntu.com/security/CVE-2019-19947) <!-- low -->
-   4.4 kernel (xenial / trusty hwe)
-   aufs
-   Various means to bypass spectre related mitigations
-   SSDT ACPI lockdown bypass


### [[USN-4429-1](https://usn.ubuntu.com/4429-1/)] Evolution Data Server vulnerability [09:12] {#usn-4429-1-evolution-data-server-vulnerability-09-12}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-14928](https://ubuntu.com/security/CVE-2020-14928) <!-- medium -->
-   Very similar to recent mutt &amp; Thunderbird vuln from [Episode 81](https://ubuntusecuritypodcast.org/episode-81/) / [Episode
    82](https://ubuntusecuritypodcast.org/episode-82/)
-   Would read extra data after clear-text "begin TLS" when initiating
    STARTTLS - would allow an untrusted attacker who could intercept and
    modify traffic to inject arbitrary responses that then get processed
    later as though they had come from the trusted, encrypted connection to
    the server - fixed in same way as mutt by clearing buffered content when
    starting TLS


### [[USN-4430-1](https://usn.ubuntu.com/4430-1/)] Pillow vulnerabilities [10:24] {#usn-4430-1-pillow-vulnerabilities-10-24}

-   4 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-11538](https://ubuntu.com/security/CVE-2020-11538) <!-- low -->
    -   [CVE-2020-10994](https://ubuntu.com/security/CVE-2020-10994) <!-- low -->
    -   [CVE-2020-10378](https://ubuntu.com/security/CVE-2020-10378) <!-- low -->
    -   [CVE-2020-10177](https://ubuntu.com/security/CVE-2020-10177) <!-- low -->
-   Python Imaging Library - used for image handling by lots of Python GUIs
-   All OOB reads on crafted input -&gt; crash, DoS


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### John Johansen and Steve Beattie talk Linux Security Modules with Joe [10:51] {#john-johansen-and-steve-beattie-talk-linux-security-modules-with-joe-10-51}

-   <https://www.kernel.org/doc/html/latest/security/lsm.html>
-   <https://lwn.net/Articles/808048/>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)