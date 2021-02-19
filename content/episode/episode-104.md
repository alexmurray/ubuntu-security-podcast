+++
title = "Episode 104"
description = """
  This week we take a look at a long-awaited update of Thunderbird in Ubuntu
  20.04LTS, plus security updates for Open vSwitch, JUnit 4, PostSRSd, GNOME
  Autoar and more.
  """
date = 2021-02-19T22:44:00+10:30
lastmod = 2021-02-19T22:44:55+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E104.mp3"
podcast_duration = "14:18"
podcast_bytes = 11053798
permalink = "https://ubuntusecuritypodcast.org/episode-104/"
guid = "5eb5c603913580dc9d78b20d69eb0846dd6cb3ef3e8dde9de21f10667b8ee1b18d2da7b62333910e8e91b15adcaea8c8cfbb7d28d0091a904255e2a9e153ea82"
+++

## Overview {#overview}

This week we take a look at a long-awaited update of Thunderbird in Ubuntu
20.04LTS, plus security updates for Open vSwitch, JUnit 4, PostSRSd, GNOME
Autoar and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

14 unique CVEs addressed


### [[USN-4729-1](https://ubuntu.com/security/notices/USN-4729-1)] Open vSwitch vulnerability [00:55] {#usn-4729-1-open-vswitch-vulnerability-00-55}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-35498](https://ubuntu.com/security/CVE-2020-35498) <!-- medium -->
-   Most convoluted CVE description: A vulnerability was found in
    openvswitch. A limitation in the implementation of userspace packet
    parsing can allow a malicious user to send a specially crafted packet
    causing the resulting megaflow in the kernel to be too wide, potentially
    causing a denial of service. The highest threat from this vulnerability
    is to system availability.


### [[USN-4731-1](https://ubuntu.com/security/notices/USN-4731-1)] JUnit 4 vulnerability [02:05] {#usn-4731-1-junit-4-vulnerability-02-05}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-15250](https://ubuntu.com/security/CVE-2020-15250) <!-- medium -->
-   Tests that used rule TemporaryFolder would use /tmp which is world
    accessible - so contents could be read by other users - so if tests were
    writing API keys or passwords these would be able to be read by others
    users -> info disclosure. Fixed to create temp directory with permissions
    so it is only readable by the owner.


### [[USN-4730-1](https://ubuntu.com/security/notices/USN-4730-1)] PostSRSd vulnerability [02:57] {#usn-4730-1-postsrsd-vulnerability-02-57}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-35573](https://ubuntu.com/security/CVE-2020-35573) <!-- medium -->
-   Postfix Sender Rewriter Scheme Daemon - Used for rewriting sender email
    addresses when forwarding emails from hosts that use SPF - rewrites the
    address to appear to come from your hosts address and allows you to do
    the inverse and appropriately handle and bounces etc by reverse-rewriting
    the sender address to recover the original address
-   Could cause a CPU based DoS by excessive processing if an email contained
    an exceedingly long SRS timestamp - fixed to just reject those which are
    past the expected regular size


### [[USN-4732-1](https://ubuntu.com/security/notices/USN-4732-1)] SQLite vulnerability [04:20] {#usn-4732-1-sqlite-vulnerability-04-20}

-   1 CVEs addressed in Groovy (20.10)
    -   [CVE-2021-20227](https://ubuntu.com/security/CVE-2021-20227) <!-- medium -->
-   Only affected more recent releases of sqlite - could cause a crash on
    particular query constructs


### [[USN-4733-1](https://ubuntu.com/security/notices/USN-4733-1)] GNOME Autoar vulnerability [04:42] {#usn-4733-1-gnome-autoar-vulnerability-04-42}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-36241](https://ubuntu.com/security/CVE-2020-36241) <!-- medium -->
-   Another archive extraction symlink traversal issue - gnome-autoar is a
    library used by nautilus and other gnome components when handling
    archives - ie right click an archive in nautilus and select "extract
    here"
-   If an archive contained a file whose parent was a symlink that pointed
    outside the destination directory, would blindly follow the symlink and
    overwrite arbitrary files - instead fixed to check if is a symlink with
    an absolute target OR one that points outside the destination folder via
    relative path and reject in that case


### [[USN-4734-1](https://ubuntu.com/security/notices/USN-4734-1), [USN-4734-2](https://ubuntu.com/security/notices/USN-4734-2)] wpa\_supplicant and hostapd vulnerabilities [06:01] {#usn-4734-1-usn-4734-2-wpa-supplicant-and-hostapd-vulnerabilities-06-01}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-12695](https://ubuntu.com/security/CVE-2020-12695) <!-- medium -->
    -   [CVE-2021-0326](https://ubuntu.com/security/CVE-2021-0326) <!-- high -->
-   Possible OOB write when doing a wifi-direct / p2p search - so an attacker
    just has to be in radio range when the victim performs a P2P discovery
    aka wifi direct search - discovered by Google's OSS-Fuzz project
-   CallStranger ([Episode 91](https://ubuntusecuritypodcast.org/episode-91/)) - UPnP callback reflection


### [[USN-4735-1](https://ubuntu.com/security/notices/USN-4735-1)] PostgreSQL vulnerability [07:23] {#usn-4735-1-postgresql-vulnerability-07-23}

-   1 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-3393](https://ubuntu.com/security/CVE-2021-3393) <!-- medium -->
-   Latest upstream 12.6 release to fix a possible info leak which could
    occur when handling particular errors - if a user had the permission to
    UPDATE on a partitioned table but not the SELECT privilege on some column
    and tried to UPDATE on that column, the resulting error message
    concerning this constraint violation could leak values on the columns
    which the user did not have permission. Rare setup so unlikely to be
    affected in practice.


### [[USN-4736-1](https://ubuntu.com/security/notices/USN-4736-1)] Thunderbird vulnerabilities [08:18] {#usn-4736-1-thunderbird-vulnerabilities-08-18}

-   6 CVEs addressed in Groovy (20.10)
    -   [CVE-2020-15685](https://ubuntu.com/security/CVE-2020-15685) <!-- medium -->
    -   [CVE-2021-23964](https://ubuntu.com/security/CVE-2021-23964) <!-- medium -->
    -   [CVE-2021-23960](https://ubuntu.com/security/CVE-2021-23960) <!-- medium -->
    -   [CVE-2021-23954](https://ubuntu.com/security/CVE-2021-23954) <!-- medium -->
    -   [CVE-2021-23953](https://ubuntu.com/security/CVE-2021-23953) <!-- medium -->
    -   [CVE-2020-26976](https://ubuntu.com/security/CVE-2020-26976) <!-- medium -->
-   Update to latest upstream release 78.7, usual spread of issues for TB
    (derived from firefox) - DoS, info leak, RCE. Also possible response
    injection attack from a person-in-the-middle during STARTTLS connection
    setup - ie could inject unencrypted response which would then be
    evaluated **after** the encrypted connection was setup so would get treated
    as coming from the trusted host.


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Thunderbird to be upgraded to 78.x in Ubuntu 20.04 LTS [09:32] {#thunderbird-to-be-upgraded-to-78-dot-x-in-ubuntu-20-dot-04-lts-09-32}

-   Lead by oSoMoN (Olivier Tilloy) from Desktop Team
-   68.x no longer supported upstream and not really practical to backport
    security fixes for this old codebase
-   78.x as a new major version introduces a bunch of breaking changes, in
    particular with handling of PGP - previously TB had no native support for
    PGP but Enigmail addon provided this
-   Now does support PGP itself and enigmail is not supported anymore - new
    internal PGP is a bit different and requires migration - this should be
    handled automatically by the new version to migrate existing enigmail
    users across
-   A couple other packages tinyjsd and junit are also not supported by TB 78
    -   tinyjsd - JS debugger with a particular focus on being able to debug TB
        extensions etc
    -   jsunit - unit testing tool for TB to allow add-on developers to setup
        unit tests for their extensions and to run these in TB/FF etc
    -   these will be replaced by empty packages in the Ubuntu archive for
        20.04
-   Once this is done will then look to do Bionic (18.04 LTS) as well
-   <https://discourse.ubuntu.com/t/thunderbird-lts-update/20819>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
