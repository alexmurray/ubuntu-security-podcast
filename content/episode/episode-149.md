+++
title = "Episode 149"
description = """
  This week Qualys dominate the week in security updates, disclosing details
  of 4 different SUID-root vulnerabilities, including Oh Snap! More Lemmings
  (Local Privilege Escalation in snap-confine), plus we look at updates for
  Firefox, cryptsetup and more.
  """
date = 2022-02-18T16:51:00+10:30
lastmod = 2022-02-18T16:52:53+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E149.mp3"
podcast_duration = "23:39"
podcast_bytes = 17455504
permalink = "https://ubuntusecuritypodcast.org/episode-149/"
guid = "049b00667dd855d980b93558e1eeaeeba9495d9ec9a4ea3b8136c6ed8684420a16e6815ec8b4d9f1465303622938dd9cb9b884d72662c599bae65009fbc5028b"
+++

## Overview {#overview}

This week Qualys dominate the week in security updates, disclosing details
of 4 different SUID-root vulnerabilities, including Oh Snap! More Lemmings
(Local Privilege Escalation in snap-confine), plus we look at updates for
Firefox, cryptsetup and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

23 unique CVEs addressed


### [[USN-5279-1](https://ubuntu.com/security/notices/USN-5279-1)] util-linux vulnerabilities [00:59] {#usn-5279-1-util-linux-vulnerabilities-00-59}

-   2 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-3996](https://ubuntu.com/security/CVE-2021-3996) <!-- medium -->
    -   [CVE-2021-3995](https://ubuntu.com/security/CVE-2021-3995) <!-- medium -->
-   First 2 of number of vulns discovered by Qualys this week
-   umount and fusermount are both setuid root
-   An unprivileged user is allowed to unmount a FUSE filesystem which is
    already mounted and which they own
-   libumount parses `/proc/self/mountinfo` to validate if is a FUSE fs
-   When a mount entry is deleted, the kernel appends `(deleted)` to the name
    of it in the mount table
-   libumount strips this off when parsing `mountinfo` to get the actual path
-   so a user could mount a FUSE filesystem at a mountpoint with `(deleted)` in
    the name - and then libumount will strip this off and umount the original
    path - ie. could mount at `/tmp/ (deleted)` then call `umount /tmp` and this
    will succeed
-   Fixed to drop support for this `(deleted)` suffix as this has not been used
    by the kernel since December 2014
-   Also when checking the UID of the user (as the owner of the filesystem),
    would do a string comparison on the UID of the user against the UID of
    the filesystem - but would use the length of the users UID to do this
    comparison - which means a user UID of 1000 would then be seen to match
    against a file-systems UID of 10000 etc - so would allow a user to umount
    filesystems owned by certain other users
-   Fixed to compare as a numerical value rather than strings


### [[USN-5280-1](https://ubuntu.com/security/notices/USN-5280-1)] Speex vulnerability [04:41] {#usn-5280-1-speex-vulnerability-04-41}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2020-23903](https://ubuntu.com/security/CVE-2020-23903) <!-- medium -->
-   Divide by zero from a crafted WAV file - trap - crash - DoS


### [[USN-5284-1](https://ubuntu.com/security/notices/USN-5284-1)] Firefox vulnerabilities [04:56] {#usn-5284-1-firefox-vulnerabilities-04-56}

-   9 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-22757](https://ubuntu.com/security/CVE-2022-22757) <!-- low -->
    -   [CVE-2022-22756](https://ubuntu.com/security/CVE-2022-22756) <!-- medium -->
    -   [CVE-2022-22754](https://ubuntu.com/security/CVE-2022-22754) <!-- medium -->
    -   [CVE-2022-22764](https://ubuntu.com/security/CVE-2022-22764) <!-- medium -->
    -   [CVE-2022-22761](https://ubuntu.com/security/CVE-2022-22761) <!-- medium -->
    -   [CVE-2022-22760](https://ubuntu.com/security/CVE-2022-22760) <!-- medium -->
    -   [CVE-2022-22759](https://ubuntu.com/security/CVE-2022-22759) <!-- medium -->
    -   [CVE-2022-22755](https://ubuntu.com/security/CVE-2022-22755) <!-- medium -->
    -   [CVE-2022-0511](https://ubuntu.com/security/CVE-2022-0511) <!-- medium -->
-   97.0
-   Extensions could bypass update prompt and auto-update itself with extra
    permissions
-   Drag and drop of a crafted image would make the resulting file
    executable - could possibly use as RCE
-   WebDriver (remote control interface for firefox) failed to validate
    Host/Origin headers - if visit malicious website with WebDriver enabled
    could then allow attacker to connect back to the user's browser and take
    control of it


### [[USN-5286-1](https://ubuntu.com/security/notices/USN-5286-1)] cryptsetup vulnerability [06:20] {#usn-5286-1-cryptsetup-vulnerability-06-20}

-   1 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-4122](https://ubuntu.com/security/CVE-2021-4122) <!-- medium -->
-   Failed to properly validate the device header - local attacker with
    physical access could modify this to trick cryptsetup to reencrypt the
    device on next mount - but reencrypt it with no encryption enabled -
    ie. decrypt it in place
-   Fixed by disabling the online reencryption feature


### [[USN-5267-3](https://ubuntu.com/security/notices/USN-5267-3)] Linux kernel (Raspberry Pi) vulnerabilities [07:11] {#usn-5267-3-linux-kernel--raspberry-pi--vulnerabilities-07-11}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-42739](https://ubuntu.com/security/CVE-2021-42739) <!-- medium -->
    -   [CVE-2021-3752](https://ubuntu.com/security/CVE-2021-3752) <!-- medium -->
    -   [CVE-2021-3640](https://ubuntu.com/security/CVE-2021-3640) <!-- medium -->
-   [Episode 148](https://ubuntusecuritypodcast.org/episode-148/) - 2 vulns in bluetooth and one in Firewire subsystems - local
    attacker crash / RCE - corresponding fixes for RPi on 20.04 or 18.04 with
    HWE


### [[USN-5291-1](https://ubuntu.com/security/notices/USN-5291-1)] libarchive vulnerabilities [07:36] {#usn-5291-1-libarchive-vulnerabilities-07-36}

-   3 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-36976](https://ubuntu.com/security/CVE-2021-36976) <!-- medium -->
    -   [CVE-2021-31566](https://ubuntu.com/security/CVE-2021-31566) <!-- low -->
    -   [CVE-2021-23177](https://ubuntu.com/security/CVE-2021-23177) <!-- low -->
-   2 issues in symlink handling - would follow symlinks when changing
    modes/times/ACLs on files when extracting a crafted archive - could allow
    an attacker to modify these attributes on files outside of the archive
-   Memory corruption when parsing RAR archive - DoS/RCE


### [[USN-5292-1](https://ubuntu.com/security/notices/USN-5292-1)] snapd vulnerabilities [08:27] {#usn-5292-1-snapd-vulnerabilities-08-27}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-44731](https://ubuntu.com/security/CVE-2021-44731) <!-- high -->
    -   [CVE-2021-44730](https://ubuntu.com/security/CVE-2021-44730) <!-- high -->
    -   [CVE-2021-4120](https://ubuntu.com/security/CVE-2021-4120) <!-- medium -->
    -   [CVE-2021-3155](https://ubuntu.com/security/CVE-2021-3155) <!-- medium -->
-   More Qualys issues in setuid root binary - snap-confine - plus 2 issues
    discovered by Canonical - 1 from Ian Johnson of the snapd team, and 1
    from James Troup of the BootStack team


## Oh Snap! More Lemmings (Local Privilege Escalation in snap-confine) [09:01] {#oh-snap-more-lemmings--local-privilege-escalation-in-snap-confine--09-01}

-   <https://www.qualys.com/2022/02/17/cve-2021-44731/oh-snap-more-lemmings.txt>
-   Qualys appear to have been auditing various SUID-root binaries - recently
    looked at snap-confine - low-level application, written in C, and used by
    snapd to setup the execution environment for a snap application - as the
    name suggests, it setups up the confinement for an application, creating
    a separate mount namespace with own private `/tmp` and `/dev/pts` - as well
    as any other mounts through content interfaces or layouts etc defined by
    the snap, plus loading of seccomp syscall filters for the resulting snap
-   As such requires root privileges, hence is SUID-root - high value target
-   Very defensively programmed itself, plus is confined by seccomp and
    AppArmor itself
-   Nonetheless, even the most carefully programmed software can have issues
-   2 vulns:
    -   hardlink attack (requires a non-standard configuration where system
        admin disabled usual hardlink protections)
    -   race-condition when creating mount namespace - allows an unprivileged
        user to inject their own malicious libraries into the snap execution
        environment and have these get executed by snap-confine itself to gain
        root privesc
-   Qualys liken these vulnerabilities (or the process to finding them) as
    like playing the original Lemmings game, due to the complex nature of
    steps required to thwart the defense-in-depth construction of
    snap-confine
-   Not the first time snap-confine has been audited - SuSE Security Team
    previously audited it in 2019 and found a couple issues, in particular in
    some of the same code sections as these

-   Back to these vulns:
    -   When creating or deleting the mount namespace, snap-confine uses 2
        helper programs written in Go - these are installed in the same
        location as snap-confine, so it looks them up from the same directory
        where it is running itself - however, since (when `protected_hardlinks`
        is disabled) an unprivileged user could hardlink snap-confine into say
        `/tmp` they could also then place their own malicious binary in place of
        these helpers and have that get executed by snap-confine instead
    -   NOTE: `protected_hardlinks` is enabled by default on almost all distros
        so unless this has been changed by the system admin, this is unable to
        be exploited in reality

    -   Other vuln is a race condition when creating the private mount
        namespace for the snap - snap-confine creates a per-snap private
        directory under `/tmp` - this is a known "dangerous" thing to do since
        `/tmp` is world writable so users could easily try and symlink their own
        contents into it etc
    -   snap-confine is very careful then to try and ensure this directory is
        owned by root and to then avoid following symlinks when traversing this
        hierarchy etc
    -   However, when then doing the actual `mount()` syscall to start setting up
        the mount namespace inside this directory, the absolute path of this
        directory is given to `mount()` (since sadly there is no `mountat()` or
        similar syscall) - which then **does** follow symlinks allowing a user who
        an race the creation of this directory with snap-confine to be able to
        take control of the contents of it, and hence inject their own
        libraries and configuration such that a malicious library can be
        preloaded into a subsequent execution of snap-confine - and since
        snap-confine will then still run as root, this allows to get root code
        execution

-   In both cases, the use of AppArmor by default tries to isolate
    snap-confine - and snap-confine is programmed defensively such that it
    will refuse to execute if it is not confined by AppArmor - however, the
    checks for this were not strict enough, and Qualys found they could use
    `aa-exec` to execute snap-confine under a separate, more permissive
    AppArmor profile to escape these restrictions

-   Fixes for these issues were numerous - to both add additional hardening
    to snap-confine so that it would validate the AppArmor profile it
    executes under is the one that is expected - plus the actual fixes for
    the vulnerabilities themselves, by checking `snap-confine` is located where
    it expects to be (so it doesn't execute other arbitrary helpers), and to
    also when setting up the mount namespace directory hierarchy, forcefully
    try and move aside any existing parts that are not root owned so it can
    create them afresh with known ownership/permissions so that unprivileged
    users can't trick it with their own contents

-   As mentioned, also includes fixes for 2 other issues identified by
    Canonical - open permissions on snap per-user HOME/private storage allows
    other users to potentially access private info stored by snaps
-   Plus a more sinister issue in the handling of AppArmor rules for snaps
-   A snap can define a content interface - way of making files available to
    other snaps - snaps can then connect to this to access that content -
    often used to implement plugins or other such concepts between snaps
-   When creating an AppArmor profile for a snap, adds additional rules then
    to allow access to these paths within the other snap
-   Included code to validate that a snap wasn't trying to expose content it
    shouldn't BUT didn't validate that these were just paths and nothing else
-   Since AppArmor policy is human-readable text files, these get generated
    by snapd by adding the content interface paths into the policy
-   Content interface path could then contain additional AppArmor policy
    directives and these would get included in the generated profile
-   Since any snap can specify content interfaces, and they get
    auto-connected by snaps from the same publisher, would then just have to
    get a user to install 2 malicious snaps from the same publisher where one
    declares a malicious interface like this and then the snaps will be able
    to escape the usual strict confinement provided by AppArmor
-   Fixed in snapd to both validate paths more correctly, and to also quote
    all file-system paths in the generated AppArmor policies so that
    arbitrary rules cannot be specified

<!--listend-->

-   Shows that the defence-in-depth approach is still worthwhile - Qualys
    mentions they nearly gave up looking for vulns and then on trying to
    exploit them due to just how hard the task appeared given all the
    defensive measures they would have to overcome

-   Want to thank Qualys for all their efforts in disclosing vulns and in
    providing feedback on proposed fixes etc, and the snapd team for all
    their help on finding and remediating the vulnerability with content
    interface / layout paths, plus on preparing and delivering this update
-   Has been in the works for a while, glad it is finally out


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)