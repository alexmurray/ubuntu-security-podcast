+++
title = "Episode 169"
description = """
  It's the 22.10 mid-cycle roadmap sprint at Canonical this week plus we look
  at security updates for Git, the Linux kernel, Vim, Python, PyJWT and more.
  """
date = 2022-07-22T23:17:00+09:30
lastmod = 2022-07-22T23:17:57+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E169.mp3"
podcast_duration = 890
podcast_bytes = 13448602
permalink = "https://ubuntusecuritypodcast.org/episode-169/"
guid = "f58fc77c49da3d3935fd315f29253d6442194dae9310097489cea1a1eb55d9a36d9fa0271d0184f3eed23d122c4409a7edebc704a385ec816a8811899a13e3fe"
+++

## Overview {#overview}

It's the 22.10 mid-cycle roadmap sprint at Canonical this week plus we look
at security updates for Git, the Linux kernel, Vim, Python, PyJWT and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

58 unique CVEs addressed


### [[USN-5511-1](https://ubuntu.com/security/notices/USN-5511-1)] Git vulnerabilities [00:45] {#usn-5511-1-git-vulnerabilities-00-45}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-29187](https://ubuntu.com/security/CVE-2022-29187) <!-- medium -->
    -   [CVE-2022-24765](https://ubuntu.com/security/CVE-2022-24765) <!-- medium -->
-   Related to CVE-2022-24765 which we covered back in [Episode 157](https://ubuntusecuritypodcast.org/episode-157/) - this was
    a vuln in Git for Windows which could allow a local user who could write
    to `C:\` to create a gitconfig that would contain commands that may then
    get executed by other users when running `git` themselves
-   Is an issue for Ubuntu since with WSL you can now run git as shipped in
    Ubuntu on Windows which then would be vulnerable (or at least it was
    until we fixed it 😁)


### [[USN-5473-2](https://ubuntu.com/security/notices/USN-5473-2)] ca-certificates update [01:41] {#usn-5473-2-ca-certificates-update-01-41}

-   Affecting Xenial ESM (16.04 ESM)
-   [Episode 164](https://ubuntusecuritypodcast.org/episode-164/)


### [[USN-5513-1](https://ubuntu.com/security/notices/USN-5513-1)] Linux kernel (AWS) vulnerabilities [01:53] {#usn-5513-1-linux-kernel--aws--vulnerabilities-01-53}

-   19 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2022-28388](https://ubuntu.com/security/CVE-2022-28388) <!-- medium -->
    -   [CVE-2022-28356](https://ubuntu.com/security/CVE-2022-28356) <!-- low -->
    -   [CVE-2022-24958](https://ubuntu.com/security/CVE-2022-24958) <!-- medium -->
    -   [CVE-2022-21166](https://ubuntu.com/security/CVE-2022-21166) <!-- medium -->
    -   [CVE-2022-21125](https://ubuntu.com/security/CVE-2022-21125) <!-- medium -->
    -   [CVE-2022-21123](https://ubuntu.com/security/CVE-2022-21123) <!-- medium -->
    -   [CVE-2022-1734](https://ubuntu.com/security/CVE-2022-1734) <!-- medium -->
    -   [CVE-2022-1679](https://ubuntu.com/security/CVE-2022-1679) <!-- medium -->
    -   [CVE-2022-1652](https://ubuntu.com/security/CVE-2022-1652) <!-- medium -->
    -   [CVE-2022-1419](https://ubuntu.com/security/CVE-2022-1419) <!-- medium -->
    -   [CVE-2022-1353](https://ubuntu.com/security/CVE-2022-1353) <!-- medium -->
    -   [CVE-2022-0330](https://ubuntu.com/security/CVE-2022-0330) <!-- medium -->
    -   [CVE-2021-4202](https://ubuntu.com/security/CVE-2021-4202) <!-- medium -->
    -   [CVE-2021-4197](https://ubuntu.com/security/CVE-2021-4197) <!-- medium -->
    -   [CVE-2021-39714](https://ubuntu.com/security/CVE-2021-39714) <!-- medium -->
    -   [CVE-2021-39685](https://ubuntu.com/security/CVE-2021-39685) <!-- medium -->
    -   [CVE-2021-3760](https://ubuntu.com/security/CVE-2021-3760) <!-- medium -->
    -   [CVE-2021-3752](https://ubuntu.com/security/CVE-2021-3752) <!-- medium -->
    -   [CVE-2021-3609](https://ubuntu.com/security/CVE-2021-3609) <!-- high -->
-   4.4 kernel for 14.04 ESM machines on AWS
-   Most interesting vulnerablity is a race condition in the CAN BCM
    networking protocol which then results in multiple possible UAFs - the
    use of unprivileged user namespaces allows a local unprivileged user to
    exploit this and then gain root priviliges in the root namespace - PoC on
    github along with a very detailed write-up, hence the high priority
    rating given to this vulnerability
-   Various other similar vulns (race conditions and the like which can then
    allow a local user to possibly escalate privileges to root) - but the
    others don't have public exploits, hence the medium priority rating


### [[USN-5514-1](https://ubuntu.com/security/notices/USN-5514-1)] Linux kernel vulnerabilities [03:11] {#usn-5514-1-linux-kernel-vulnerabilities-03-11}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-33981](https://ubuntu.com/security/CVE-2022-33981) <!-- medium -->
    -   [CVE-2022-1789](https://ubuntu.com/security/CVE-2022-1789) <!-- medium -->
    -   [CVE-2022-1205](https://ubuntu.com/security/CVE-2022-1205) <!-- medium -->
    -   [CVE-2022-1204](https://ubuntu.com/security/CVE-2022-1204) <!-- medium -->
    -   [CVE-2022-1199](https://ubuntu.com/security/CVE-2022-1199) <!-- medium -->
    -   [CVE-2022-1195](https://ubuntu.com/security/CVE-2022-1195) <!-- medium -->
-   5.4 GA / HWE for 18.04 LTS as well as various kernels optimised for the
    different public clouds
-   Bunch of vulns in AX.25 amateur radio protocol implementation - local
    attacker could possibly crash kernel or privesc - would likely need a
    custom H/W device to do this though
-   Race condition in the floppy driver -&gt; UAF etc


### [[USN-5515-1](https://ubuntu.com/security/notices/USN-5515-1)] Linux kernel vulnerabilities [03:41] {#usn-5515-1-linux-kernel-vulnerabilities-03-41}

-   10 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2022-28389](https://ubuntu.com/security/CVE-2022-28389) <!-- medium -->
    -   [CVE-2022-2380](https://ubuntu.com/security/CVE-2022-2380) <!-- low -->
    -   [CVE-2022-1516](https://ubuntu.com/security/CVE-2022-1516) <!-- medium -->
    -   [CVE-2022-1353](https://ubuntu.com/security/CVE-2022-1353) <!-- medium -->
    -   [CVE-2022-1205](https://ubuntu.com/security/CVE-2022-1205) <!-- medium -->
    -   [CVE-2022-1204](https://ubuntu.com/security/CVE-2022-1204) <!-- medium -->
    -   [CVE-2022-1199](https://ubuntu.com/security/CVE-2022-1199) <!-- medium -->
    -   [CVE-2022-1198](https://ubuntu.com/security/CVE-2022-1198) <!-- medium -->
    -   [CVE-2022-1011](https://ubuntu.com/security/CVE-2022-1011) <!-- medium -->
    -   [CVE-2021-4197](https://ubuntu.com/security/CVE-2021-4197) <!-- medium -->
-   4.15 18.04 LTS GA + clouds + devices (raspi, snapdragon etc), 16.04 ESM
    HWE + clouds etc


### [[USN-5517-1](https://ubuntu.com/security/notices/USN-5517-1)] Linux kernel (OEM) vulnerabilities [04:04] {#usn-5517-1-linux-kernel--oem--vulnerabilities-04-04}

-   2 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-34494](https://ubuntu.com/security/CVE-2022-34494) <!-- medium -->
    -   [CVE-2022-1679](https://ubuntu.com/security/CVE-2022-1679) <!-- medium -->
-   5.14 OEM
-   OEM kernel contains various hardware enablement features for the
    different OEM platforms which Ubuntu comes pre-installed on, these
    eventually find they way back to the GA/HWE kernels


### [[USN-5518-1](https://ubuntu.com/security/notices/USN-5518-1)] Linux kernel vulnerabilities {#usn-5518-1-linux-kernel-vulnerabilities}

-   6 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-33981](https://ubuntu.com/security/CVE-2022-33981) <!-- medium -->
    -   [CVE-2022-1975](https://ubuntu.com/security/CVE-2022-1975) <!-- low -->
    -   [CVE-2022-1974](https://ubuntu.com/security/CVE-2022-1974) <!-- medium -->
    -   [CVE-2022-1789](https://ubuntu.com/security/CVE-2022-1789) <!-- medium -->
    -   [CVE-2022-1734](https://ubuntu.com/security/CVE-2022-1734) <!-- medium -->
    -   [CVE-2022-0500](https://ubuntu.com/security/CVE-2022-0500) <!-- medium -->
-   5.15 GA + clouds, devices, lowlatency etc


### [[USN-5516-1](https://ubuntu.com/security/notices/USN-5516-1)] Vim vulnerabilities [04:18] {#usn-5516-1-vim-vulnerabilities-04-18}

-   3 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-2210](https://ubuntu.com/security/CVE-2022-2210) <!-- low -->
    -   [CVE-2022-2207](https://ubuntu.com/security/CVE-2022-2207) <!-- medium -->
    -   [CVE-2022-2000](https://ubuntu.com/security/CVE-2022-2000) <!-- medium -->
-   vim is definitely fast becoming one of our most updated packages -
    particularly in 16.04 ESM
-   More bugs found via fuzzing - shows what having a bug bounty can do to
    shine a light on possible vulnerabilities (or does it just attract
    shallow bug hunters...) - it's hard to say for certain how much of a
    security impact these different vulnerabilities have
-   OOB write + 2 heap buffer overflows - all classified as high priority on
    the bounty platform ($95 reward apparently for each)


### [[USN-5520-1](https://ubuntu.com/security/notices/USN-5520-1), [USN-5520-2](https://ubuntu.com/security/notices/USN-5520-2)] HTTP-Daemon vulnerability [05:18] {#usn-5520-1-usn-5520-2-http-daemon-vulnerability-05-18}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-31081](https://ubuntu.com/security/CVE-2022-31081) <!-- medium -->
-   Perl library implementing a simple HTTP server - not often used in
    production (since would then use nginx or apache)
-   Request smuggling vuln through a crafted Content-Length parameter - could
    then allow requests that would otherwise be rejected


### [[USN-5519-1](https://ubuntu.com/security/notices/USN-5519-1)] Python vulnerability [05:54] {#usn-5519-1-python-vulnerability-05-54}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2015-20107](https://ubuntu.com/security/CVE-2015-20107) <!-- low -->
-   Oldest vuln patched this week - fix and CVE were disclosed back in April
    this year but the bug was first reported back in 2015 - at that time
    there was disagreement between the reporter and the upstream developers
    as to whether this was a real vuln or not - this is a bug in handling of
    mailcap entries - and mailcap is designed to execute arbitrary commands -
    but those defined by the user - whereas in this case, if it was used to
    launch a command on a crafted filename, the filename itself could specify
    the command to be executed, not what the user had thought that they had
    configured via their mailcap entry
-   Fixed to appropriately quote the arguments


### [[USN-5522-1](https://ubuntu.com/security/notices/USN-5522-1)] WebKitGTK vulnerabilities [07:19] {#usn-5522-1-webkitgtk-vulnerabilities-07-19}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-26710](https://ubuntu.com/security/CVE-2022-26710) <!-- medium -->
    -   [CVE-2022-22677](https://ubuntu.com/security/CVE-2022-22677) <!-- medium -->
-   Speaking of one of the most updated packages ;)
-   WebKitGTK sees regular upstream security releases (similar to Firefox)
    and we publish these as they are released
-   UAF via crafted malcious web content -&gt; RCE


### [[USN-5523-1](https://ubuntu.com/security/notices/USN-5523-1)] LibTIFF vulnerabilities [08:02] {#usn-5523-1-libtiff-vulnerabilities-08-02}

-   7 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-22844](https://ubuntu.com/security/CVE-2022-22844) <!-- negligible -->
    -   [CVE-2020-19144](https://ubuntu.com/security/CVE-2020-19144) <!-- negligible -->
    -   [CVE-2020-19131](https://ubuntu.com/security/CVE-2020-19131) <!-- negligible -->
    -   [CVE-2022-0924](https://ubuntu.com/security/CVE-2022-0924) <!-- medium -->
    -   [CVE-2022-0909](https://ubuntu.com/security/CVE-2022-0909) <!-- medium -->
    -   [CVE-2022-0908](https://ubuntu.com/security/CVE-2022-0908) <!-- medium -->
    -   [CVE-2022-0907](https://ubuntu.com/security/CVE-2022-0907) <!-- medium -->
-   NULL ptr deref, div by zero -&gt; DoS
-   various OOB reads -&gt; info leak / DoS


### [[USN-5524-1](https://ubuntu.com/security/notices/USN-5524-1)] HarfBuzz vulnerability [08:37] {#usn-5524-1-harfbuzz-vulnerability-08-37}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-33068](https://ubuntu.com/security/CVE-2022-33068) <!-- medium -->
-   Integer overflow discovered via in-built fuzzer within HarrBuzz combined
    with running HB with [UBSan](https://clang.llvm.org/docs/UndefinedBehaviorSanitizer.html) to detect memory corruption
-   Likely heap buffer overflow -&gt; RCE / crash


### [[USN-5526-1](https://ubuntu.com/security/notices/USN-5526-1)] PyJWT vulnerability [08:58] {#usn-5526-1-pyjwt-vulnerability-08-58}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-29217](https://ubuntu.com/security/CVE-2022-29217) <!-- medium -->
-   JSON web token implementation in python
-   Supports using various crypto algorithms for signing / validation including SSH public keys etc
-   Turns out an attacker could "sign" a JWT with the public half of an SSH
    key pair as the key for one of the HMAC algorithms - as far as an API
    user of PyJWT would see, the token would then validate the same as if it
    had been actually signed by the private key of the same SSH public key
    pair
-   Fixed to disallow the use of SSH public keys as inputs for signing keys


### [[USN-5527-1](https://ubuntu.com/security/notices/USN-5527-1)] Checkmk vulnerabilities [09:43] {#usn-5527-1-checkmk-vulnerabilities-09-43}

-   5 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2022-24565](https://ubuntu.com/security/CVE-2022-24565) <!-- medium -->
    -   [CVE-2021-40906](https://ubuntu.com/security/CVE-2021-40906) <!-- medium -->
    -   [CVE-2021-36563](https://ubuntu.com/security/CVE-2021-36563) <!-- low -->
    -   [CVE-2017-9781](https://ubuntu.com/security/CVE-2017-9781) <!-- medium -->
    -   [CVE-2017-14955](https://ubuntu.com/security/CVE-2017-14955) <!-- medium -->
-   system monitoring system / framework
-   various XSS vulns in web console, ability to read sensitive info from GUI
    crash report


### [[USN-5525-1](https://ubuntu.com/security/notices/USN-5525-1)] Apache XML Security for Java vulnerability [09:56] {#usn-5525-1-apache-xml-security-for-java-vulnerability-09-56}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-40690](https://ubuntu.com/security/CVE-2021-40690) <!-- medium -->
-   Vuln in handling of crafted XPath transform, where an attacker could read
    arbitrary local XML files


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### 22.10 mid-cycle product roadmap sprint [10:13] {#22-dot-10-mid-cycle-product-roadmap-sprint-10-13}

-   This week is the 22.10 mid-cycle product roadmap sprint at Canonical
-   Engineering teams at Canonical work on a 6-month development cycle,
    in-line with the Ubuntu release cycle - even though not all teams work on
    Ubuntu
-   Each 6 month cycle consists of 3 week-long sprint sessions - 2 product
    roadmap sprints, and 1 engineering sprint
-   At the start of each cycle there is an initial product roadmap sprint to
    review the progress / achievements etc of the previous 6 month
    development cycle and set the goals for the coming development cycle.
-   At the approximate mid-point of that new development cycle, 3 months
    later, there is the mid-cycle product roadmap sprint to review progress
    etc along the way
-   Generally consists of managers and senior technical team members from
    each team presenting on their progress etc and reviews it with the other
    teams, plus there many cross-team meetings etc
-   Traditionally these were in-person events but with COVID etc they all
    moved to being virtual - this year has seen the resumption of in-person
    sprints for the start-of-roadmap sprints but the mid-cycle ones are still
    virtual
-   As far as the security team is concerned, we talked over various topics
    like progress on FIPS certification for 22.04 LTS, as well as various
    AppArmor enhancements, as well as customer specific work-items and
    general progress on maintenence tasks like CVE patching, MIR security
    reviews and more.
-   Next roadmap sprint will be at the end of October to review how this
    cycle went **and** to set the goals for 23.04 cycle - this will also be
    followed by an engineering sprint, where all members of the engineering
    sprint get together for a week **in-person** to collaborate and hack on
    whatever their team needs
-   That will then also be followed by a new revived [Ubuntu Summit](https://www.omgubuntu.co.uk/2022/04/ubuntu-summit-returns-in-autumn-2022) (modeled
    somewhat like the old Ubuntu Developer Summits) - a chance for folks from
    the community to gather in person alongside folks from Canonical to
    discuss and drive forwards various features for Ubuntu and the like.
-   Exciting times ahead!


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)