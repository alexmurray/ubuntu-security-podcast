+++
title = "Episode 66"
description = """
  This week we cover security updates for Django, runC and SQLite, plus Alex
  and Joe discuss the AMD speculative execution Take A Way attack and we
  look at some recent blog posts by the team too.
  """
date = 2020-03-12T22:39:00+10:30
lastmod = 2020-03-19T20:21:47+10:30
draft = false
weight = 1002
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E066.mp3"
podcast_duration = "21:37"
podcast_bytes = 20757225
permalink = "https://ubuntusecuritypodcast.org/episode-66/"
guid = "d1e8818a626f92b9f17bcc02ff8dae1abe27d82cfeeef01ad1ea3da9a39462474d0852264deee569dcecea72ae42aae4588e6964a69dff5d88114878b5153547"
+++

## Overview {#overview}

This week we cover security updates for Django, runC and SQLite, plus Alex
and Joe discuss the AMD speculative execution Take A Way attack and we
look at some recent blog posts by the team too.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

16 unique CVEs addressed


### [[USN-4296-1](https://usn.ubuntu.com/4296-1/)] Django vulnerability [00:49] {#usn-4296-1-django-vulnerability-00-49}

-   1 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-9402](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9402) <!-- medium -->
-   Possible SQL injection in the GIS functions when using an Oracle DB as
    the backend - Oracle provides a tolerance parameter which can be used
    when doing GIS queries and this was not properly sanitised before use so
    could allow SQL injection


### [[USN-4297-1](https://usn.ubuntu.com/4297-1/)] runC vulnerabilities [01:30] {#usn-4297-1-runc-vulnerabilities-01-30}

-   2 CVEs addressed in Bionic, Eoan
    -   [CVE-2019-19921](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19921) <!-- medium -->
    -   [CVE-2019-16884](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16884) <!-- medium -->
-   Race condition on mounting of shared volume mounts between two
    containers - can replace /proc on one container with a symlink inside of
    the shared mount - when this gets cleaned up other parts of /proc can end
    mounted within the shared mount and this could be used for privilege
    escalation since if outside of /proc then regular users might be able to
    write to sensitive parts of /proc - fixed by having runc validate that
    the target for mounting /proc or /sys must either not exist or must be a
    directory to avoid symlink attacks etc
-   Possible bypass of AppArmor restrictions since would not properly check
    the target of a mount and so could end up mounting a malicious image over
    /proc - instead add more explicit checks on whether the dest of a mount
    is /proc and only allow this if the source is also a procfs


### [[USN-4298-1](https://usn.ubuntu.com/4298-1/)] SQLite vulnerabilities [03:09] {#usn-4298-1-sqlite-vulnerabilities-03-09}

-   13 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2019-13752](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13752) <!-- medium -->
    -   [CVE-2020-9327](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9327) <!-- medium -->
    -   [CVE-2019-20218](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20218) <!-- low -->
    -   [CVE-2019-19926](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19926) <!-- medium -->
    -   [CVE-2019-19959](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19959) <!-- medium -->
    -   [CVE-2019-19925](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19925) <!-- medium -->
    -   [CVE-2019-19924](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19924) <!-- medium -->
    -   [CVE-2019-19923](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19923) <!-- medium -->
    -   [CVE-2019-19880](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19880) <!-- medium -->
    -   [CVE-2019-13751](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13751) <!-- medium -->
    -   [CVE-2019-13753](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13753) <!-- medium -->
    -   [CVE-2019-13750](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13750) <!-- medium -->
    -   [CVE-2019-13734](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13734) <!-- medium -->
-   Many different memory safety issues resolved in SQLite - across various
    parts of SQLite including handling of shadow tables, corrupt records,
    parsing, ZIP archives and column optimisations. Most of these were
    detected by fuzzing and so are unlikely to be an issue unless handling
    untrusted SQLite databases or untrusted query inputs.


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe discuss AMD Take A Way attack [04:10] {#alex-and-joe-discuss-amd-take-a-way-attack-04-10}

-   <https://www.zdnet.com/article/amd-processors-from-2011-to-2019-vulnerable-to-two-new-attacks/>


### Blog posts [19:08] {#blog-posts-19-08}

-   <https://ubuntu.com/blog/on-boxing-tabletop-exercises-and-threat-models>
-   <https://ubuntu.com/blog/ros-development-with-lxd>
-   <https://ubuntu.com/blog/ros-2-ci-with-github-actions>


### Hiring [20:21] {#hiring-20-21}


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://canonical.com/careers/1550997>


#### Security Engineer - Certifications (FIPS, Common Criteria) {#security-engineer-certifications--fips-common-criteria}

-   <https://canonical.com/careers/2085468>


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://canonical.com/careers/2085023>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)