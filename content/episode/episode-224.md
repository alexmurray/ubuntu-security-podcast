+++
title = "Episode 224"
description = """
  It's been an absolutely manic week in the Linux security community as the news
  and reaction to the recent announcement of a backdoor in the xz-utils project
  was announced late last week, so we dive deep into this issue and discuss how it
  impacts Ubuntu and give some insights for what this means for the open source
  and Linux communities in the future.
  """
date = 2024-04-05T15:10:00+10:30
lastmod = 2024-04-05T15:15:24+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E224.mp3"
podcast_duration = 1729
podcast_bytes = 28604344
permalink = "https://ubuntusecuritypodcast.org/episode-224/"
guid = "a3a0e245be93a1eb2734eb1d0b38554a77b6ecfc23409b17b040e5595cefd0edd8fd0344e4ca3fc6688882e82f7475eab514aa561cf35b97af3c1dc93d4d0a10"
+++

## Overview {#overview}

It's been an absolutely manic week in the Linux security community as the news
and reaction to the recent announcement of a backdoor in the xz-utils project
was announced late last week, so we dive deep into this issue and discuss how it
impacts Ubuntu and give some insights for what this means for the open source
and Linux communities in the future.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

20 unique CVEs addressed


### [[USN-6718-2](https://ubuntu.com/security/notices/USN-6718-2)] curl vulnerability {#usn-6718-2-curl-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2024-2398](https://ubuntu.com/security/CVE-2024-2398) <!-- medium -->


### [[USN-6719-1](https://ubuntu.com/security/notices/USN-6719-1)] util-linux vulnerability {#usn-6719-1-util-linux-vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-28085](https://ubuntu.com/security/CVE-2024-28085) <!-- medium -->


### [[USN-6686-5](https://ubuntu.com/security/notices/USN-6686-5)] Linux kernel (Intel IoTG) vulnerabilities {#usn-6686-5-linux-kernel--intel-iotg--vulnerabilities}

-   9 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-0607](https://ubuntu.com/security/CVE-2024-0607) <!-- medium -->
    -   [CVE-2024-0340](https://ubuntu.com/security/CVE-2024-0340) <!-- low -->
    -   [CVE-2023-6121](https://ubuntu.com/security/CVE-2023-6121) <!-- medium -->
    -   [CVE-2023-51782](https://ubuntu.com/security/CVE-2023-51782) <!-- medium -->
    -   [CVE-2023-51779](https://ubuntu.com/security/CVE-2023-51779) <!-- medium -->
    -   [CVE-2023-46862](https://ubuntu.com/security/CVE-2023-46862) <!-- medium -->
    -   [CVE-2023-46343](https://ubuntu.com/security/CVE-2023-46343) <!-- medium -->
    -   [CVE-2023-4134](https://ubuntu.com/security/CVE-2023-4134) <!-- low -->
    -   [CVE-2023-22995](https://ubuntu.com/security/CVE-2023-22995) <!-- low -->


### [[USN-6715-1](https://ubuntu.com/security/notices/USN-6715-1)] unixODBC vulnerability {#usn-6715-1-unixodbc-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-1013](https://ubuntu.com/security/CVE-2024-1013) <!-- medium -->


### [[USN-6704-4](https://ubuntu.com/security/notices/USN-6704-4)] Linux kernel (Intel IoTG) vulnerabilities {#usn-6704-4-linux-kernel--intel-iotg--vulnerabilities}

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-24855](https://ubuntu.com/security/CVE-2024-24855) <!-- medium -->
    -   [CVE-2024-1086](https://ubuntu.com/security/CVE-2024-1086) <!-- high -->
    -   [CVE-2024-1085](https://ubuntu.com/security/CVE-2024-1085) <!-- high -->
    -   [CVE-2023-32247](https://ubuntu.com/security/CVE-2023-32247) <!-- medium -->
    -   [CVE-2023-23000](https://ubuntu.com/security/CVE-2023-23000) <!-- medium -->


### [[USN-6707-4](https://ubuntu.com/security/notices/USN-6707-4)] Linux kernel (Azure) vulnerabilities {#usn-6707-4-linux-kernel--azure--vulnerabilities}

-   4 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2024-26599](https://ubuntu.com/security/CVE-2024-26599) <!-- medium -->
    -   [CVE-2024-26597](https://ubuntu.com/security/CVE-2024-26597) <!-- high -->
    -   [CVE-2024-1086](https://ubuntu.com/security/CVE-2024-1086) <!-- high -->
    -   [CVE-2024-1085](https://ubuntu.com/security/CVE-2024-1085) <!-- high -->


### [[USN-6720-1](https://ubuntu.com/security/notices/USN-6720-1)] Cacti vulnerability {#usn-6720-1-cacti-vulnerability}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-39361](https://ubuntu.com/security/CVE-2023-39361) <!-- high -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### xz-utils backdoor and Ubuntu {#xz-utils-backdoor-and-ubuntu}

-   <https://www.openwall.com/lists/oss-security/2024/03/29/4>
-   Late last week, 28th / 29th March backdoor in liblzma from xz-utils was
    disclosed to the open source community via oss-security mailing list - this
    was in the recent 5.6.0/5.6.1 releases from late Feb/early March this year
-   initially the impact was not entirely clear - assumed initially that it may
    impact only xz-utils and so only in handling of xz compressed data / files -
    but even with that assumption that perhaps it could then infect anything that
    got compressed/decompressed
-   within a few hours though became clear that the primary target was not
    xz-utils/liblzma itself but openssh - and the affect was to provide a backdoor
    into openssh that would allow the attacker to get remote access to any machine
    running ssh server with this backdoor liblzma installed
-   To paint a picture - this was all unfolding on late Thursday / Friday of the
    Easter break, so lots of folks were either EOD or on leave etc - and trying to
    grapple with a threat that we knew could possibly impact the impedending 24.04
    LTS release

<!-- why these things always tend to happen on a weekend/holiday I'll never know -->

-   Good news:
-   TL;DR for Ubuntu, this version was only ever in the -proposed pocket for the
    currently in-development 24.04 release - not in any other Ubuntu versions -
    and was removed as soon as we became aware, so unless you are running the
    devel release AND you had manually opted to install this version from the
    -proposed pocket, you would not be affected - very lucky
-   <https://discourse.ubuntu.com/t/xz-liblzma-security-update/43714>
-   What do we know about this? A lot - there has been significant investigation
    (and speculation) since it was announced, both at the social side of things
    and the technical aspects of the backdoor itself
-   For the purpose of the podcast, we won't go too deep into either but will try
    and cover the salient details
-   Regarding the inclusion of the backdoor itself - looks to have been a very
    long and patient campaign by the attacker, who slowly gained the trust of the
    upstream project over the last 2 years and likely pressured the maintainer via
    sock-puppet accounts to then get themselves added as an additional maintainer
-   Since then they seemed to be quite a good maintainer themselves - diligently
    adding new features and bug fixes etc over the past 2 years, but then suddenly
    introduced the backdoor into the most recent 2 releases
-   The method of introducing the backdoor was also interesting, in that it
    required 2 parts - the binary containing the backdoor and the code to get this
    compiled into the liblzma library at build time
    -   The binary was committed into the upstream git repo disguised as an xz
        archive itself used as part of the test suite
    -   The code to inject this into the build was NOT part of the git repo, but
        instead was just in the tarball prepared by the maintainer for the official
        release
    -   And it used many levels of obfuscation to hide this backdoor within that
        fake test xz archive
-   So the attacker was not just patient but also very technically skilled - and
    not just multiple levels of obfuscation in the build process but the backdoor
    code itself contained many elements to try and make it harder to recognise and
    reverse engineer, presumably to allow it to hide in plain sight
    -   although as we will see, this runtime obfuscation within the backdoor binary
        was what gave it away eventually
-   It's often said that one of the advantages of Open Source is the huge
    community, which is summarised as [Linus' Law](https://en.wikipedia.org/wiki/Linus%27s_law) - with enough eyeballs all bugs
    are shallow - but sadly this wasn't proven out in this case
-   Backdoor was not
    found by anyone doing review of the changes upstream or by the various distros
    like Debian / Fedora / OpenSUSE / Arch or even Ubuntu when incorporating this
    new version into their repos - but instead was found by Andres Freund, one of
    the maintainers of PostgreSQL, when they were looking to benchmark some new
    changes scheduled for the next PostgreSQL release
-   Luckily decided to use Debian unstable for this, and Debian had incorporated
    this new version into unstable a few weeks ago, and wanted to get the
    performance noise floor of the system as low as possible before doing
    benchmarking of PostgreSQL - noticed large transient CPU spikes in sshd and
    then eventually weird memory errors in sshd due to bugs in the initial version
    of the backdoor
-   After a lot of painstaking work was able to determine that liblzma was the
    culprit and appeared to contain some very strange code to hook into the
    authentication process of sshd when it was launched via systemd
-   Was able to trace that back to the aforementioned manually prepared tarballs
    of xz-utils on Github
-   The CPU spikes Andres observed were due to the use of things like a trie to
    lookup symbol names at runtime, rather than directly encoding them in the
    exploit binary, presumably to try and make reverse engineering of the binary
    harder (since you can't just run `strings` on it and get any real sensible output)
-   Some excellent writeups have been done regarding both the technical aspects of
    the backdoor itself, as well as the process taken by the attacker to
    incorporate this into the xz-utils project - both from a community point of
    view and a technical point of view
-   From a technical point of view, the impact of this backdoor was to allow an
    attacker to get pre-authentication remote-code execution in sshd via a
    specific private key when connecting to the server - NOBUS
    -   Hooked into the RSA certificate validation process in sshd, looking for a
        particular matching private key from the client - and if found would then
        proceed to execute arbitrary commands specified by the client without
        requiring usual authentication
    -   By using this mechanism, nobody but the attacker can use the backdoor since
        they don't have the matching private key - so the impact of the backdoor is
        somewhat limited
    -   BUT the fact they targeted such a widely used and deployed package across a
        huge number of distros, means they essentially wanted a backdoor into any
        Linux machine in the future that only they could use
-   Interesting to try and speculate who the attacker could be (nation state?) and
    what their intended purpose was especially given this wide reaching goal of
    getting this into all the major Linux distros - but it would be just
    speculation
-   So rather than speculate, for the purpose of this podcast episode, interesting
    to look at the timeline as it concerned Ubuntu
-   The publishing history of the package is all visible in [Launchpad](https://launchpad.net/ubuntu/+source/xz-utils/+publishinghistory)
-   Packages in Ubuntu get inherited from Debian who also publish [history](https://tracker.debian.org/pkg/xz-utils)
-   Upstream published the first backdoored version 5.6.0 via GitHub tarball on 24th Feb 2024
-   Debian incorporated this into unstable on 26th Feb
-   On 27th Feb, the Ubuntu Archive Auto-Sync bot copied this version into noble-proposed
-   Due to the ongoing time_t transition, sat it noble-proposed for the next month
-   Security team heard whispers of the possible backdoor just hours before it was
    publicly disclosed, and as soon as we heard of the possible backdoor, and
    realised that it only affected the version in-development noble-proposed we
    quickly notified the Archive Admin team who then deleted it from
    noble-proposed on 29th March, neutralising the main threat
-   Most important thing to know for Ubuntu, we have taken a very conservative
    approach - not only have we removed this version from noble-proposed as soon
    as we became aware, we are then rebuilding every binary package that got built
    since that compromised version was in noble-proposed originally - out of an
    abundance of caution - we don't have any information that says this backdoor
    was doing anything other than what the various writeups have found so far, BUT
    we also can't be certain that it didn't have other functionality either - so
    being very cautious and rebuilding everything that was itself built since 27th
    Feb
-   As such, delayed the development of 24.04 so beta release is [slipping by one week](https://discourse.ubuntu.com/t/xz-liblzma-security-update-post-2/43801)
-   One of the most interesting parts is the sheer luck that this was found - not
    by security researchers or maintainers but by a developer from Microsoft who
    happened to be looking for the right things at the right time and decided to
    be curious
-   Also for Ubuntu, luck that the [time_t transition](https://wiki.debian.org/ReleaseGoals/64bit-time) in Debian/Ubuntu caused many
    packages to be stuck in noble-proposed and not in the release pocket, else
    many Ubuntu users and developers would have been impacted if this had migrated
    to the noble release pocket
-   Also interesting that the attacker appears to have had quite a good grasp on
    OSS development practices and was quite persistent in trying to get this
    incorporated into distros - even [urging](https://bugs.launchpad.net/ubuntu/+source/xz-utils/+bug/2059417) for this new version to be synced to
    Ubuntu so that it would land in the upcoming noble release as recently as
    Thursday last week, just hours before the public disclosure
    -   Not only could they do all the original social engineering work upstream,
        and technical work to develop and hide the backdoor, but could then
        interface with distros via their established practices to try and get them
        to incorporate their new backdoored version faster than they may have
        otherwise
-   Huge amount of work has been done to detail both the [timeline](https://research.swtch.com/xz-timeline) of the attack as
    well as the technical details of both the [code used to incorporate the
    backdoored code](https://research.swtch.com/xz-script) into the final liblzma binary during the build process, as
    well as the details of the [backdoor itself and how it operates at runtime](https://github.com/amlweems/xzbot)
-   In the end highlights both the challenges and strengths of OSS - lots of OSS
    projects have long dependency chains - in this case openssh when integrated
    with libsystemd which in turn used liblzma - and it is unclear who the
    maintainers and authors are or what procedures are in place for vetting and
    transferring ownership of OSS projects - all present significant challenges
    for OSS
-   However, significant strength of OSS is the visibility and ability for anyone
    to get involved, which is what we saw in the aftermath - despite all the
    advanced obfuscation techniques employed was able to be analysed in a matter
    of days by the community working together - and to analyse it in a huge amount
    of depth and in such an open way that it leaves little room for questioning
    the validity of the assessment - anyone can double check the work and come to
    the same conclusions
-   This isn't the first software supply chain attack and likely isn't even the
    first against an OSS project but it is a wake-up call to the OSS and Linux
    ecosystem


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
