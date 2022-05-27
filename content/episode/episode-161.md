+++
title = "Episode 161"
description = """
  This week we take a look into BPFDoor, a newsworthy backdoor piece of
  malware which has been targeting Linux machines, plus we cover security
  updates for Bind, Vim, Firefox, PostgreSQL and more.
  """
date = 2022-05-27T14:54:00+09:30
lastmod = 2022-05-27T14:55:16+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E161.mp3"
podcast_duration = 880
podcast_bytes = 11475952
permalink = "https://ubuntusecuritypodcast.org/episode-161/"
guid = "520d7f7072e0fcfeed66c41890367aa505ada6cfe78f98a2fc0841168024f0e9d0ef6d085a05b07306cbe53eaef4f86196872d1834bde3f3c255d717cd20ea7e"
+++

## Overview {#overview}

This week we take a look into BPFDoor, a newsworthy backdoor piece of
malware which has been targeting Linux machines, plus we cover security
updates for Bind, Vim, Firefox, PostgreSQL and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

32 unique CVEs addressed


### [[USN-5429-1](https://ubuntu.com/security/notices/USN-5429-1)] Bind vulnerability [00:38] {#usn-5429-1-bind-vulnerability-00-38}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-1183](https://ubuntu.com/security/CVE-2022-1183) <!-- medium -->
-   Only affects most recent releases
-   When using bind configured with DNS over HTTPS (DoH) possible for a
    client to cause the server to terminate a TLS connection early and hence
    trigger an assertion failure within Bind -&gt; terminates -&gt; DoS


### [[USN-5430-1](https://ubuntu.com/security/notices/USN-5430-1)] GNOME Settings vulnerability [01:18] {#usn-5430-1-gnome-settings-vulnerability-01-18}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-1736](https://ubuntu.com/security/CVE-2022-1736) <!-- medium -->
-   GNOME includes support for desktop sharing via RDP + VNC
-   By default in Ubuntu we have a [no open ports policy](https://wiki.ubuntu.com/Security/Features#ports))
-   However, GNOME settings daemon contained a logic flaw where when
    disabling the remote desktop service via the gnome-control-center UI it
    would then automatically get re-enabled on next login


### [[USN-5424-2](https://ubuntu.com/security/notices/USN-5424-2)] OpenLDAP vulnerability [01:57] {#usn-5424-2-openldap-vulnerability-01-57}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-29155](https://ubuntu.com/security/CVE-2022-29155) <!-- medium -->
-   [Episode 160](https://ubuntusecuritypodcast.org/episode-160/)
-   SQL injection in the sql backend of slapd via an SQL statement within a LDAP query


### [[USN-5433-1](https://ubuntu.com/security/notices/USN-5433-1)] Vim vulnerabilities [02:20] {#usn-5433-1-vim-vulnerabilities-02-20}

-   9 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-1154](https://ubuntu.com/security/CVE-2022-1154) <!-- medium -->
    -   [CVE-2022-0318](https://ubuntu.com/security/CVE-2022-0318) <!-- medium -->
    -   [CVE-2022-0261](https://ubuntu.com/security/CVE-2022-0261) <!-- medium -->
    -   [CVE-2021-4192](https://ubuntu.com/security/CVE-2021-4192) <!-- medium -->
    -   [CVE-2021-4069](https://ubuntu.com/security/CVE-2021-4069) <!-- medium -->
    -   [CVE-2021-4019](https://ubuntu.com/security/CVE-2021-4019) <!-- medium -->
    -   [CVE-2021-3984](https://ubuntu.com/security/CVE-2021-3984) <!-- medium -->
    -   [CVE-2021-3974](https://ubuntu.com/security/CVE-2021-3974) <!-- low -->
    -   [CVE-2021-3973](https://ubuntu.com/security/CVE-2021-3973) <!-- low -->
-   All various instances of memory corruption vulnerabilities, where if a
    user was tricked into opening a specially crafted file, could then either
    crash Vim or possibly get code execution as the user
    -   Whilst a lot of regular desktop users may not use Vim, is still often
        used by sysadmins to edit config files / inspect other files which they
        find on the machine - and in that case, this can then be a good privesc
        target


### [[USN-5432-1](https://ubuntu.com/security/notices/USN-5432-1)] libpng vulnerabilities [03:01] {#usn-5432-1-libpng-vulnerabilities-03-01}

-   2 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2018-14048](https://ubuntu.com/security/CVE-2018-14048) <!-- low -->
    -   [CVE-2017-12652](https://ubuntu.com/security/CVE-2017-12652) <!-- low -->
-   Speaking of specially crafted files :) - same for libpng - is used by
    many other higher level libraries / applications


### [[USN-5434-1](https://ubuntu.com/security/notices/USN-5434-1)] Firefox vulnerabilities [03:20] {#usn-5434-1-firefox-vulnerabilities-03-20}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-1802](https://ubuntu.com/security/CVE-2022-1802) <!-- medium -->
    -   [CVE-2022-1529](https://ubuntu.com/security/CVE-2022-1529) <!-- medium -->
-   100.0.2
-   2 vulns courtesy of ZDIs Pwn2Own - Manfred Paul - achieved code execution
    within the privileged component of Firefox thereby escaping Firefox's
    internal sandbox - awarded $100k USD


### [[USN-5435-1](https://ubuntu.com/security/notices/USN-5435-1)] Thunderbird vulnerabilities [03:57] {#usn-5435-1-thunderbird-vulnerabilities-03-57}

-   11 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-19916](https://ubuntu.com/security/CVE-2022-19916) <!--  -->
    -   [CVE-2022-1802](https://ubuntu.com/security/CVE-2022-1802) <!-- medium -->
    -   [CVE-2022-1529](https://ubuntu.com/security/CVE-2022-1529) <!-- medium -->
    -   [CVE-2022-1520](https://ubuntu.com/security/CVE-2022-1520) <!-- low -->
    -   [CVE-2022-29917](https://ubuntu.com/security/CVE-2022-29917) <!-- medium -->
    -   [CVE-2022-29916](https://ubuntu.com/security/CVE-2022-29916) <!-- medium -->
    -   [CVE-2022-29914](https://ubuntu.com/security/CVE-2022-29914) <!-- medium -->
    -   [CVE-2022-29913](https://ubuntu.com/security/CVE-2022-29913) <!-- medium -->
    -   [CVE-2022-29912](https://ubuntu.com/security/CVE-2022-29912) <!-- medium -->
    -   [CVE-2022-29911](https://ubuntu.com/security/CVE-2022-29911) <!-- medium -->
    -   [CVE-2022-29909](https://ubuntu.com/security/CVE-2022-29909) <!-- medium -->
-   91.9.1
-   Same as above plus a bunch of other recent vulns in Firefox which also
    apply to TB as well as a TB specific issue where it would show the wrong
    security status for a signed/encrypted attached message and hence could
    allow an attacker to trick the user into thinking the message was
    trustworthy


### [[USN-5436-1](https://ubuntu.com/security/notices/USN-5436-1)] libXrender vulnerabilities [04:28] {#usn-5436-1-libxrender-vulnerabilities-04-28}

-   2 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2016-7950](https://ubuntu.com/security/CVE-2016-7950) <!-- low -->
    -   [CVE-2016-7949](https://ubuntu.com/security/CVE-2016-7949) <!-- low -->
-   Remote X server could trigger OOB write -&gt; memory corruption -&gt; code
    execution


### [[USN-5437-1](https://ubuntu.com/security/notices/USN-5437-1)] libXfixes vulnerability {#usn-5437-1-libxfixes-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2016-7944](https://ubuntu.com/security/CVE-2016-7944) <!-- low -->
-   32-bit platform specific issue - but roughly same as above


### [[USN-5438-1](https://ubuntu.com/security/notices/USN-5438-1)] HTMLDOC vulnerability [04:46] {#usn-5438-1-htmldoc-vulnerability-04-46}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-23165](https://ubuntu.com/security/CVE-2021-23165) <!-- medium -->
-   Used to covert HTML/Markdown files to generate EPUB/HTML/PS/PDF with ToC
    etc
-   Crafted HTML file could trigger a heap buffer overflow -&gt; crash/code
    execution


### [[USN-5439-1](https://ubuntu.com/security/notices/USN-5439-1)] AccountsService vulnerability [05:06] {#usn-5439-1-accountsservice-vulnerability-05-06}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-1804](https://ubuntu.com/security/CVE-2022-1804) <!-- medium -->
-   Old CVE-2020-16126 was inadvertently reintroduced as the patch which
    fixed it got dropped accidentally
    -   [Episode 95](https://ubuntusecuritypodcast.org/episode-95/)


### [[USN-5440-1](https://ubuntu.com/security/notices/USN-5440-1)] PostgreSQL vulnerability [05:36] {#usn-5440-1-postgresql-vulnerability-05-36}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-1552](https://ubuntu.com/security/CVE-2022-1552) <!-- medium -->
-   Possible for an attacker who is able to create non-temp objects could
    then achieve SQL code execution as the superuser


### [[USN-5404-2](https://ubuntu.com/security/notices/USN-5404-2)] Rsyslog vulnerability [05:51] {#usn-5404-2-rsyslog-vulnerability-05-51}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-24903](https://ubuntu.com/security/CVE-2022-24903) <!-- medium -->
-   [Episode 159](https://ubuntusecuritypodcast.org/episode-159/)


## Goings on in Linux Security Community {#goings-on-in-linux-security-community}


### BPFDoor malware targeting Linux and Solaris [06:08] {#bpfdoor-malware-targeting-linux-and-solaris-06-08}

-   <https://www.pwc.com/gx/en/issues/cybersecurity/cyber-threat-intelligence/cyber-year-in-retrospect/yir-cyber-threats-report-download.pdf>
-   <https://doublepulsar.com/bpfdoor-an-active-chinese-global-surveillance-tool-54b078f1a896>
-   <https://www.sandflysecurity.com/blog/bpfdoor-an-evasive-linux-backdoor-technical-analysis/>
-   Malware that has been in the wild for a while (over 5 years)
-   Reported on by PwC in their Cyber Threats 2021: A year in Retrospect report
    -   Attribute it to a Chinese threat actor which they call Red Menshen
    -   Observed targeting telco providers and govt, education and logistics
        via custom backdoor 'BPFDoor'
-   Stealthy - allows to backdoor a system for RCE but without opening any
    new network ports or firewall rules by piggy-backing on existing network
    facing applications
-   Uses BPF filter to watching incoming packets and activate accordingly
-   [Earlier](https://www.virustotal.com/gui/file/dc8346bf443b7b453f062740d8ae8d8d7ce879672810f4296158f90359dcae3a/detection/f-dc8346bf443b7b453f062740d8ae8d8d7ce879672810f4296158f90359dcae3a-1567566897) versions are on VT - with [lots](https://www.virustotal.com/gui/collection/dd82ee900dd15a5d6205d7aeb8a0c9d60e1b3c93c678cfd7a8fa7be444afefe7/iocs) of other variants too
-   Even [source code](https://www.virustotal.com/gui/file/8b9db0bc9152628bdacc32dab01590211bee9f27d58e0f66f6a1e26aea7552a6/detection) too - <https://pastebin.com/kmmJuuQP>
-   As I said - stealthy
    -   deletes itself from the filesystem and renames its processes to look
        innocent so can hide in plain sight
    -   loads BPF filter to sniff traffic
    -   upon activation then will modify firewall to allow attacker direct
        access
-   In more detail:
    -   Copies itself to `/dev/shm/kdmtmpflush` and then forks to clean itself up
        to alter timestamps (timestomp) to a specific timestamp (7:17pm
        Thursday October 30th 2008)
    -   Drops a file at `/bar/run/haldrund.pid` to prevent further copies of
        itself from running
    -   Deletes itself from the `/dev/shm/` ramdisk and then exits to leave the
        forked copy running resident in memory and then use BPF filter to watch
        for incoming traffic to activate
-   Doesn't appear to have any particular persistence mechanism but some
    reports suggest use of `crontab` or `rc/init` scripts
-   By deleting itself from the ramdisk this avoids detection from filesystem
    scanners (although processes running from since deleted binaries are a
    suspicious sign themselves and can be easily detected since once the
    binary is removed the kernel notes this in `/proc/self/exe` for the
    process)
-   Renames its `argv[0]` so that it looks like other commonly found processes
    like `dbus-daemon` / `udevd` / `auditd` etc
-   Also wipes its `environ` too to try and help hide it's activities, however
    this again is another suspicious activity and can easily be detected
    (e.g. `strings` on `/proc/$PID/environ` will show as empty which is basically
    never normally the case for normal processes)
-   BPF filter inspects either ICMP, TCP or UDP packets and then if it has a
    special magic value in the first couple bytes it passes into the main
    packet processing routine
    -   This then looks for a couple specific passwords (encrypted via RC4) -
        if found then sets up either a local bindshell for the attacker to
        connect to OR connects back to the attacker via a reverse bindshell
    -   Then sets up an iptables rule to redirect traffic from the original
        port to the port of the bindshell on the localhost
-   bindshell masquerades its process name to look like postfix as well as
    setting a specific environment too (including `HISTFILE=/dev/null`)
-   Then attacker has full access to the machine (as the user)
-   Reasonably advanced malware

-   What is not clear is what is the initial compromise vector and then how
    to privesc from that to give privileges to load BPF filter on a raw socket
    -   [Crowdstrike blog post mentions](https://www.crowdstrike.com/blog/how-to-hunt-for-decisivearchitect-and-justforfun-implant/) that on Solaris [CVE-2019-3010](https://ubuntu.com/security/CVE-2019-3010) is used to
        privesc via `xscreensaver` but this vuln is specific to Solaris platforms
-   Why it is important to keep systems updated with latest patches etc.


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)