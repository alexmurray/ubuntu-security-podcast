+++
title = "Episode 171"
description = """
  This week we dig into what community sponsored security updates are all
  about, plus Ubuntu 22.04.1 LTS gets delayed by a week and we cover security
  updates for MySQL, the Linux kernel, Samba, Net-SNMP and more.
  """
date = 2022-08-05T22:18:00+09:30
lastmod = 2022-08-05T22:18:58+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E171.mp3"
podcast_duration = 1372
podcast_bytes = 15962550
permalink = "https://ubuntusecuritypodcast.org/episode-171/"
guid = "5cdcc2c0bd2d2f825af0ec52ac6e4c43a7b1b3b420af9a71e46cde9ee0fbfa5fee9cb5604e8138b824977826ea69695a65cf021f5e8cc48e3b5b67b4417f9d90"
+++

## Overview {#overview}

This week we dig into what community sponsored security updates are all
about, plus Ubuntu 22.04.1 LTS gets delayed by a week and we cover security
updates for MySQL, the Linux kernel, Samba, Net-SNMP and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

75 unique CVEs addressed


### [[USN-5535-1](https://ubuntu.com/security/notices/USN-5535-1)] Intel Microcode vulnerabilities [00:43] {#usn-5535-1-intel-microcode-vulnerabilities-00-43}

-   10 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-33120](https://ubuntu.com/security/CVE-2021-33120) <!-- medium -->
    -   [CVE-2021-33117](https://ubuntu.com/security/CVE-2021-33117) <!-- medium -->
    -   [CVE-2022-21166](https://ubuntu.com/security/CVE-2022-21166) <!-- medium -->
    -   [CVE-2022-21151](https://ubuntu.com/security/CVE-2022-21151) <!-- medium -->
    -   [CVE-2022-21125](https://ubuntu.com/security/CVE-2022-21125) <!-- medium -->
    -   [CVE-2022-21127](https://ubuntu.com/security/CVE-2022-21127) <!-- medium -->
    -   [CVE-2022-21123](https://ubuntu.com/security/CVE-2022-21123) <!-- medium -->
    -   [CVE-2021-0127](https://ubuntu.com/security/CVE-2021-0127) <!-- medium -->
    -   [CVE-2021-0146](https://ubuntu.com/security/CVE-2021-0146) <!-- medium -->
    -   [CVE-2021-0145](https://ubuntu.com/security/CVE-2021-0145) <!-- medium -->
-   Latest upstream release IPU 2022.1
-   [[USN-5486-1] Intel Microcode vulnerabilities]({{< relref "episode-165#usn-5486-1-intel-microcode-vulnerabilities-06-01" >}})
-   Includes fixes for MMIO stale data which we covered in [News on latest Intel security issues in Episode 164]({{< relref "episode-164#news-on-latest-intel-security-issues-06-33" >}})


### [[USN-5537-1](https://ubuntu.com/security/notices/USN-5537-1), [USN-5537-2](https://ubuntu.com/security/notices/USN-5537-2)] MySQL vulnerabilities [01:22] {#usn-5537-1-usn-5537-2-mysql-vulnerabilities-01-22}

-   18 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-21569](https://ubuntu.com/security/CVE-2022-21569) <!-- medium -->
    -   [CVE-2022-21553](https://ubuntu.com/security/CVE-2022-21553) <!-- medium -->
    -   [CVE-2022-21547](https://ubuntu.com/security/CVE-2022-21547) <!-- medium -->
    -   [CVE-2022-21539](https://ubuntu.com/security/CVE-2022-21539) <!-- medium -->
    -   [CVE-2022-21538](https://ubuntu.com/security/CVE-2022-21538) <!-- low -->
    -   [CVE-2022-21537](https://ubuntu.com/security/CVE-2022-21537) <!-- low -->
    -   [CVE-2022-21534](https://ubuntu.com/security/CVE-2022-21534) <!-- low -->
    -   [CVE-2022-21531](https://ubuntu.com/security/CVE-2022-21531) <!-- low -->
    -   [CVE-2022-21530](https://ubuntu.com/security/CVE-2022-21530) <!-- low -->
    -   [CVE-2022-21529](https://ubuntu.com/security/CVE-2022-21529) <!-- low -->
    -   [CVE-2022-21528](https://ubuntu.com/security/CVE-2022-21528) <!-- medium -->
    -   [CVE-2022-21527](https://ubuntu.com/security/CVE-2022-21527) <!-- medium -->
    -   [CVE-2022-21526](https://ubuntu.com/security/CVE-2022-21526) <!-- low -->
    -   [CVE-2022-21525](https://ubuntu.com/security/CVE-2022-21525) <!-- low -->
    -   [CVE-2022-21522](https://ubuntu.com/security/CVE-2022-21522) <!-- low -->
    -   [CVE-2022-21517](https://ubuntu.com/security/CVE-2022-21517) <!-- low -->
    -   [CVE-2022-21515](https://ubuntu.com/security/CVE-2022-21515) <!-- low -->
    -   [CVE-2022-21509](https://ubuntu.com/security/CVE-2022-21509) <!-- medium -->
-   Latest point releases from Oracle
-   8.0.30 for 20.04 and 22.04 LTS
-   5.7.39 for 18.04 LTS and 16.04 ESM
-   As always - includes both security and bug fixes as well as new features
    and possible incompatible changes


### [[USN-5538-1](https://ubuntu.com/security/notices/USN-5538-1)] libtirpc vulnerability [01:59] {#usn-5538-1-libtirpc-vulnerability-01-59}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2021-46828](https://ubuntu.com/security/CVE-2021-46828) <!-- medium -->
-   Transport independent RPC library - Used by autofs, libvirt, nfs-utils,
    python, samba, yp-tools and lots more
-   Failed to properly handle timeouts from idle clients - would still keep a
    file descriptor open and eventually would exhaust available fds so could
    then not accept new connections (since it would also not handle the case
    of no available fds either and would spin in a busy loop trying to accept
    new connections) - CPU-based DoS


### [[USN-5536-1](https://ubuntu.com/security/notices/USN-5536-1)] Firefox vulnerabilities [02:47] {#usn-5536-1-firefox-vulnerabilities-02-47}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-36320](https://ubuntu.com/security/CVE-2022-36320) <!-- medium -->
    -   [CVE-2022-36319](https://ubuntu.com/security/CVE-2022-36319) <!-- medium -->
    -   [CVE-2022-36318](https://ubuntu.com/security/CVE-2022-36318) <!-- medium -->
    -   [CVE-2022-36316](https://ubuntu.com/security/CVE-2022-36316) <!-- medium -->
    -   [CVE-2022-36315](https://ubuntu.com/security/CVE-2022-36315) <!-- low -->
    -   [CVE-2022-2505](https://ubuntu.com/security/CVE-2022-2505) <!-- medium -->
-   103.0
-   Firefox is now a snap on 22.04 LTS so gets updated automatically by
    Mozilla


### [[USN-5544-1](https://ubuntu.com/security/notices/USN-5544-1)] Linux kernel vulnerabilities [03:06] {#usn-5544-1-linux-kernel-vulnerabilities-03-06}

-   4 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-1652](https://ubuntu.com/security/CVE-2022-1652) <!-- medium -->
    -   [CVE-2022-34918](https://ubuntu.com/security/CVE-2022-34918) <!-- medium -->
    -   [CVE-2022-28893](https://ubuntu.com/security/CVE-2022-28893) <!-- medium -->
    -   [CVE-2022-1679](https://ubuntu.com/security/CVE-2022-1679) <!-- medium -->
-   5.15 22.04 LTS GA / 20.04 LTS HWE
-   UAF in Atheros ath9k driver when handling certain error conditions, Sun
    RPC and floppy driver
-   Also a type confusion bug in netfilter - local user who has `CAP_NET_ADMIN`
    (which can be done via mapping to root in an unprivileged user
    namespace) -&gt; privesc


### [[USN-5545-1](https://ubuntu.com/security/notices/USN-5545-1)] Linux kernel (OEM) vulnerability [03:49] {#usn-5545-1-linux-kernel--oem--vulnerability-03-49}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-34918](https://ubuntu.com/security/CVE-2022-34918) <!-- medium -->
-   netfilter privesc above for 5.14 and 5.17 OEM kernels in 20.04 and 22.04
    LTS respectively


### [[USN-5539-1](https://ubuntu.com/security/notices/USN-5539-1)] Linux kernel vulnerabilities [04:11] {#usn-5539-1-linux-kernel-vulnerabilities-04-11}

-   7 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-33981](https://ubuntu.com/security/CVE-2022-33981) <!-- medium -->
    -   [CVE-2022-28388](https://ubuntu.com/security/CVE-2022-28388) <!-- medium -->
    -   [CVE-2022-1789](https://ubuntu.com/security/CVE-2022-1789) <!-- medium -->
    -   [CVE-2022-1205](https://ubuntu.com/security/CVE-2022-1205) <!-- medium -->
    -   [CVE-2022-1204](https://ubuntu.com/security/CVE-2022-1204) <!-- medium -->
    -   [CVE-2022-1199](https://ubuntu.com/security/CVE-2022-1199) <!-- medium -->
    -   [CVE-2022-1195](https://ubuntu.com/security/CVE-2022-1195) <!-- medium -->
-   5.4 - NVIDIA BlueField on 20.04 LTS and GCP/GKE 18.04 LTS
-   6 out of 7 are various UAF bugs - 3 in the AX.25 amateur radio protocol
    driver, 1 in 6pack and mkiss protocol drivers, 1 in 8 Devices USB2CAN and
    1 in floppy driver
-   KVM hypervisor failed to handle guest TLB invalidations - guest could
    then corrupt host memory
-   Result of all these is memory corruption -&gt; crash / code-execution


### [[USN-5541-1](https://ubuntu.com/security/notices/USN-5541-1)] Linux kernel (Azure) vulnerabilities [05:04] {#usn-5541-1-linux-kernel--azure--vulnerabilities-05-04}

-   11 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-28389](https://ubuntu.com/security/CVE-2022-28389) <!-- medium -->
    -   [CVE-2022-28388](https://ubuntu.com/security/CVE-2022-28388) <!-- medium -->
    -   [CVE-2022-2380](https://ubuntu.com/security/CVE-2022-2380) <!-- low -->
    -   [CVE-2022-1516](https://ubuntu.com/security/CVE-2022-1516) <!-- medium -->
    -   [CVE-2022-1353](https://ubuntu.com/security/CVE-2022-1353) <!-- medium -->
    -   [CVE-2022-1205](https://ubuntu.com/security/CVE-2022-1205) <!-- medium -->
    -   [CVE-2022-1204](https://ubuntu.com/security/CVE-2022-1204) <!-- medium -->
    -   [CVE-2022-1199](https://ubuntu.com/security/CVE-2022-1199) <!-- medium -->
    -   [CVE-2022-1198](https://ubuntu.com/security/CVE-2022-1198) <!-- medium -->
    -   [CVE-2022-1011](https://ubuntu.com/security/CVE-2022-1011) <!-- medium -->
    -   [CVE-2021-4197](https://ubuntu.com/security/CVE-2021-4197) <!-- medium -->
-   4.15 azure
-   Most of the same vulnerabilities mentioned earlier plus some covered in
    previous episodes - cgroup process migration privesc, UAF in FUSE etc


### [[USN-5540-1](https://ubuntu.com/security/notices/USN-5540-1)] Linux kernel vulnerabilities [05:26] {#usn-5540-1-linux-kernel-vulnerabilities-05-26}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-34918](https://ubuntu.com/security/CVE-2022-34918) <!-- medium -->
    -   [CVE-2022-25375](https://ubuntu.com/security/CVE-2022-25375) <!-- medium -->
    -   [CVE-2022-25258](https://ubuntu.com/security/CVE-2022-25258) <!-- medium -->
    -   [CVE-2022-20141](https://ubuntu.com/security/CVE-2022-20141) <!-- medium -->
-   4.4 - 16.04 ESM GA (lowlatency, AWS, KVM etc) + 14.04 ESM
-   race-condition -&gt; UAF in IGMP protocol impl - local user -&gt; DoS /
    code-exec
-   Memory corruption in USB gadget driver
-   OOB read in RNDIS driver -&gt; info leak / crash
-   netfilter privesc


### [[USN-5542-1](https://ubuntu.com/security/notices/USN-5542-1)] Samba vulnerabilities [06:06] {#usn-5542-1-samba-vulnerabilities-06-06}

-   6 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-32746](https://ubuntu.com/security/CVE-2022-32746) <!-- medium -->
    -   [CVE-2022-32745](https://ubuntu.com/security/CVE-2022-32745) <!-- medium -->
    -   [CVE-2022-32744](https://ubuntu.com/security/CVE-2022-32744) <!-- medium -->
    -   [CVE-2022-32742](https://ubuntu.com/security/CVE-2022-32742) <!-- low -->
    -   [CVE-2022-2031](https://ubuntu.com/security/CVE-2022-2031) <!-- medium -->
    -   [CVE-2021-3670](https://ubuntu.com/security/CVE-2021-3670) <!-- low -->
-   Didn't handle `MaxQueryDuration` as expected
-   Possible privesc since restrictions were not enforced properly when
    changing passwords
-   Separate password-based privesc since could forge a password request with
    your own key that was destined for another user and therefore change
    their password (including domain admin)
-   Memory corruption via crafted LDAP request -&gt; DoS / info leak
-   Unfortunately due to the large amount of code-churn in samba from the
    version used in 18.04 LTS (4.7.6) compared to the current upstream
    release (4.16.x) it is not possible to backport these patches without a
    reasonable risk of introducing a regression - as such users of samba in
    18.04 LTS who are concerned about these vulnerabilities are advised to
    upgrade to Ubuntu 20.04 LTS or newer to continue receiving security
    support for samba


### [[USN-5543-1](https://ubuntu.com/security/notices/USN-5543-1)] Net-SNMP vulnerabilities [07:25] {#usn-5543-1-net-snmp-vulnerabilities-07-25}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-24810](https://ubuntu.com/security/CVE-2022-24810) <!-- medium -->
    -   [CVE-2022-24809](https://ubuntu.com/security/CVE-2022-24809) <!-- medium -->
    -   [CVE-2022-24808](https://ubuntu.com/security/CVE-2022-24808) <!-- medium -->
    -   [CVE-2022-24807](https://ubuntu.com/security/CVE-2022-24807) <!-- medium -->
    -   [CVE-2022-24806](https://ubuntu.com/security/CVE-2022-24806) <!-- medium -->
    -   [CVE-2022-24805](https://ubuntu.com/security/CVE-2022-24805) <!-- medium -->
-   Various memory corruption bugs (OOB reads, NULL ptr derefs, buffer
    overflows) which could be triggered via crafted SNMP requests -&gt; crash
    (DoS), RCE


### [[USN-5463-2](https://ubuntu.com/security/notices/USN-5463-2)] NTFS-3G vulnerabilities [07:45] {#usn-5463-2-ntfs-3g-vulnerabilities-07-45}

-   7 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-30787](https://ubuntu.com/security/CVE-2022-30787) <!-- medium -->
    -   [CVE-2022-30785](https://ubuntu.com/security/CVE-2022-30785) <!-- medium -->
    -   [CVE-2022-30789](https://ubuntu.com/security/CVE-2022-30789) <!-- medium -->
    -   [CVE-2022-30788](https://ubuntu.com/security/CVE-2022-30788) <!-- medium -->
    -   [CVE-2022-30786](https://ubuntu.com/security/CVE-2022-30786) <!-- medium -->
    -   [CVE-2022-30784](https://ubuntu.com/security/CVE-2022-30784) <!-- medium -->
    -   [CVE-2022-30783](https://ubuntu.com/security/CVE-2022-30783) <!-- medium -->
-   [[USN-5463-1] NTFS-3G vulnerabilities - Episode 163]({{< relref "episode-163#usn-5463-1-ntfs-3g-vulnerabilities-06-41" >}})
-   DoS / RCE via mounting crafted disk image, mishandling of file handles -
    arbitrary memory R/W, intercept traffic between FUSE and kernel -&gt; info
    leak etc


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### An overview of the community security updates sponsoring process [08:20] {#an-overview-of-the-community-security-updates-sponsoring-process-08-20}

-   Ubuntu Security team supports packages in main+restricted as per [standard support](https://wiki.ubuntu.com/SecurityTeam/FAQ#Standard_Support)
-   Universe (and multiverse) components are supported by the community
-   The ideal process here is a community member files a bug on LP,
    subscribes the [Ubuntu Security Sponsors team](https://launchpad.net/~ubuntu-security-sponsors) and attaches a debdiff
-   What is a debdiff?
    -   A debdiff is a diff of the source package between the current version
        in the Ubuntu archive and the new updated version being proposed
-   What should the debdiff contain?
    -   The bare minimum of changes required to patch the vulnerability
        -   ie. a patch file derived from the original upstream project's patch
            which fixed the vulnerability, as well as a new changelog entry
            describing this update
        -   In general even though an upstream project may release a new version
            of their software when patching security vulnerabilies, in Ubuntu we
            will not just upgrade to this new version (in the lifetime of a
            stable release) to fix the vulnerability - instead we will just
            cherry-pick the minimal change required to fix the issue and apply
            this ontop of the older version of the software which is maintained
            for the life a given Ubuntu release
        -   This reduces the chance of introducing a regression due to new
            upstream features getting introduced etc
            -   <https://wiki.ubuntu.com/SecurityTeam/FAQ#Versions>
            -   <https://wiki.ubuntu.com/StableReleaseUpdates#Why>
    -   Regarding patches - most packages use [Quilt](https://wiki.debian.org/UsingQuilt) to manage the set of
        patches that get applied ontop of the upstream source tarball within a
        debian package
    -   Therefore the debdiff should likely be a new patch file within the
        `debian/patches` directory as well as a corresponding entry for it in the
        `debian/patches/series` file, and then a new `debian/changelog` entry
    -   Sometimes to backport a fix other supporting commits from the upstream
        project may be needed - these can then be included as additional patch
        files too
-   What happens next?
    -   Ubuntu Security team member reviews the debiff to make sure it conforms
        to the above - in particular to check that the original upstream patch
        was used and no other changes were introduced (again to make sure we
        keep the risk of regression low and so we have provenance of the code
        which has been introduced)
    -   Will usually do a local build of the package and then upload it to the
        [Ubuntu Security Proposed PPA](https://launchpad.net/~ubuntu-security-proposed/+archive/ubuntu/ppa/) - this is a publicly accessible PPA which
        allows the resulting candidate packages to be tested by the Security
        Team member as well as the community member
    -   Once testing looks good, the package can be published to the Ubuntu
        archive along with an associated USN
-   A recent examples of this is in
    <https://bugs.launchpad.net/ubuntu/+source/spip/+bug/1971185> which
    corresponded to [USN-5482-1 - SPIP for bionic]({{< relref "episode-165#usn-5482-1-spip-vulnerabilities-07-55" >}})
-   The team maintains a lot of documentation on how we set up our local
    [build](https://wiki.ubuntu.com/SecurityTeam/BuildEnvironment) and [testing](https://wiki.ubuntu.com/SecurityTeam/TestingEnvironment) environments to make the process a lot easier - in
    particular the `umt` tool which can be used for managing most of these
    steps (ie. downloading source packages, adding a new changelog entry,
    building the package locally in a schroot, testing the package locally in
    a VM etc)


### Ubuntu 22.04.1 release delayed [17:00] {#ubuntu-22-dot-04-dot-1-release-delayed-17-00}

-   <https://discourse.ubuntu.com/t/jammy-jellyfish-22-04-1-lts-point-release-status-tracking/29102>
-   Delayed until 11th August - can see test status on the [ISO tracker](http://iso.qa.ubuntu.com/qatracker/milestones/437/builds) -
    essentially was a bug in snapd when being installed in OEM mode
    -   Used by OEMs to install Ubuntu on machines so that when first powered
        on by the end user they are offered to setup the machine (create a
        local user account, set timezone/language etc)
-   Bug is that firefox wouldn't run
-   As earlier, Firefox is now a snap in 22.04 LTS - and the bug is that all
    snaps which are seeded (ie. shipped on the ISO and installed OOTB) would
    not run
    -   only 2 applications fit this - firefox and snap-store - but both are
        crucial applications (ie web browser and app store)
-   snaps are squashfs images that get mounted on boot as systemd mount units
-   like many systemd units, they specify as `WantedBy=multi-user.target` - ie
    the multi-user target wants them which ensures they are mounted during
    normal boot (equivalent to runlevel 2 - ie. not a rescue shell or
    shutdown etc) - so basically any normal boot of the system and they
    should be mounted
-   During OEM mode though, on that first boot by the user, the OEM installer
    has set the boot target to it's own `oem-config.target` so it can run first
    (to create a new user etc) - and then once it is done it sets the target
    to the usual `graphical.target` which includes `multi-user.target`
-   Everything then should work though as we do eventually hit the right target
-   Current thinking is that the new `snapd-desktop-integration` which is used
    to try and automatically install theme snaps and the like to match the
    system theme - gets started as part of the `oem-config` and it then
    pokes the `snapd.socket` which causes `snapd.service` to be started - yet the
    snap mount units are not in place, so snapd can't see any of the expected
    snaps, as such it fails to correctly generate their state information
-   when they do go to be run, they have none of their expected interfaces
    defined or connected and so cannot access anything and fail - and even a
    reboot doesn't help as the old invalid state is still kept even though
    the snaps are now mounted correctly
-   requires a fix in snapd so that the mount units specify not just
    `multi-user.target` but `default.target` so they get mounted no matter what
    target is being booted into


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)