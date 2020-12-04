+++
title = "Episode 99"
description = """
  This week we look at security updates for Mutt, Thunderbird, Poppler, QEMU,
  containerd, Linux kernel & more, plus we discuss the 2020 State of the
  Octoverse Security Report from Github, Launchpad GPG keyserver migration, a
  new AppArmor release & some open positions on the team.
  """
date = 2020-12-04T13:45:00+10:30
lastmod = 2020-12-04T13:46:47+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E099.mp3"
podcast_duration = "18:35"
podcast_bytes = 14174734
permalink = "https://ubuntusecuritypodcast.org/episode-99/"
guid = "0fa844c6cdb807ff9af17a962dfca6cd15d4872b142501e31bcf0a59f87d4f6f64097a47a0c32848161eebbfff3f56fa48635972e6f35baba7a82a8b1a43d6a6"
+++

## Overview {#overview}

This week we look at security updates for Mutt, Thunderbird, Poppler, QEMU,
containerd, Linux kernel & more, plus we discuss the 2020 State of the
Octoverse Security Report from Github, Launchpad GPG keyserver migration, a
new AppArmor release & some open positions on the team.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

68 unique CVEs addressed


### [[USN-4645-1](https://ubuntu.com/security/notices/USN-4645-1)] Mutt vulnerability [00:59] {#usn-4645-1-mutt-vulnerability-00-59}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-28896](https://ubuntu.com/security/CVE-2020-28896) <!-- medium -->
-   When connecting to an IMAP server, if the first reponse from the server
    was invalid, would fail to properly terminate the connection and could
    continue trying to authenticate and hence send credentials in the clear.


### [[USN-4646-1](https://ubuntu.com/security/notices/USN-4646-1)] poppler vulnerabilities [01:44] {#usn-4646-1-poppler-vulnerabilities-01-44}

-   5 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-27778](https://ubuntu.com/security/CVE-2020-27778) <!-- low -->
    -   [CVE-2019-9959](https://ubuntu.com/security/CVE-2019-9959) <!-- low -->
    -   [CVE-2019-13283](https://ubuntu.com/security/CVE-2019-13283) <!-- low -->
    -   [CVE-2019-10871](https://ubuntu.com/security/CVE-2019-10871) <!-- low -->
    -   [CVE-2018-21009](https://ubuntu.com/security/CVE-2018-21009) <!-- low -->
-   Various memory corruption issues, all DoS-able, some RCE?


### [[USN-4646-2](https://ubuntu.com/security/notices/USN-4646-2)] poppler regression {#usn-4646-2-poppler-regression}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2019-10871](https://ubuntu.com/security/CVE-2019-10871) <!-- low -->
    -   Some applications linked against poppler would fail - backed out this
        fix for future


### [[USN-4647-1](https://ubuntu.com/security/notices/USN-4647-1)] Thunderbird vulnerabilities [02:25] {#usn-4647-1-thunderbird-vulnerabilities-02-25}

-   13 CVEs addressed in Groovy (20.10)
    -   [CVE-2020-26968](https://ubuntu.com/security/CVE-2020-26968) <!-- medium -->
    -   [CVE-2020-26965](https://ubuntu.com/security/CVE-2020-26965) <!-- low -->
    -   [CVE-2020-26961](https://ubuntu.com/security/CVE-2020-26961) <!-- medium -->
    -   [CVE-2020-26960](https://ubuntu.com/security/CVE-2020-26960) <!-- medium -->
    -   [CVE-2020-26959](https://ubuntu.com/security/CVE-2020-26959) <!-- medium -->
    -   [CVE-2020-26958](https://ubuntu.com/security/CVE-2020-26958) <!-- medium -->
    -   [CVE-2020-26956](https://ubuntu.com/security/CVE-2020-26956) <!-- medium -->
    -   [CVE-2020-26953](https://ubuntu.com/security/CVE-2020-26953) <!-- medium -->
    -   [CVE-2020-26951](https://ubuntu.com/security/CVE-2020-26951) <!-- medium -->
    -   [CVE-2020-26950](https://ubuntu.com/security/CVE-2020-26950) <!-- high -->
    -   [CVE-2020-16012](https://ubuntu.com/security/CVE-2020-16012) <!-- medium -->
    -   [CVE-2020-15969](https://ubuntu.com/security/CVE-2020-15969) <!-- medium -->
    -   [CVE-2020-15683](https://ubuntu.com/security/CVE-2020-15683) <!-- medium -->
-   78.5.0
-   Usual web rendering type vulns - denial of service, obtain sensitive
    information across origins, bypass security restrictions, conduct
    phishing attacks, conduct cross-site scripting (XSS) attacks, bypass
    Content Security Policy (CSP) restrictions, conduct DNS rebinding
    attacks, or execute arbitrary code.


### [[USN-4648-1](https://ubuntu.com/security/notices/USN-4648-1)] WebKitGTK vulnerabilities [03:21] {#usn-4648-1-webkitgtk-vulnerabilities-03-21}

-   5 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-9983](https://ubuntu.com/security/CVE-2020-9983) <!-- medium -->
    -   [CVE-2020-9952](https://ubuntu.com/security/CVE-2020-9952) <!-- medium -->
    -   [CVE-2020-9951](https://ubuntu.com/security/CVE-2020-9951) <!-- medium -->
    -   [CVE-2020-9948](https://ubuntu.com/security/CVE-2020-9948) <!-- medium -->
    -   [CVE-2020-13753](https://ubuntu.com/security/CVE-2020-13753) <!-- medium -->
-   dejavu with thunderbird above - latest upstream version (2.30.3) and same sorts of
    vulns - including cross-site scripting attacks, denial of service
    attacks, and arbitrary code execution.


### [[USN-4649-1](https://ubuntu.com/security/notices/USN-4649-1)] xdg-utils vulnerability [03:54] {#usn-4649-1-xdg-utils-vulnerability-03-54}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-27748](https://ubuntu.com/security/CVE-2020-27748) <!-- medium -->
-   Could cause files to be attached by not sanitizing <mailto:?attach>= -
    particularly relevant to TB - so if a user is not paying attention, could
    attach say a sensitive local file to the outgoing email


### [[USN-4382-2](https://ubuntu.com/security/notices/USN-4382-2)] FreeRDP vulnerabilities [05:09] {#usn-4382-2-freerdp-vulnerabilities-05-09}

-   13 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-13398](https://ubuntu.com/security/CVE-2020-13398) <!-- medium -->
    -   [CVE-2020-13397](https://ubuntu.com/security/CVE-2020-13397) <!-- low -->
    -   [CVE-2020-13396](https://ubuntu.com/security/CVE-2020-13396) <!-- low -->
    -   [CVE-2020-11526](https://ubuntu.com/security/CVE-2020-11526) <!-- low -->
    -   [CVE-2020-11525](https://ubuntu.com/security/CVE-2020-11525) <!-- low -->
    -   [CVE-2020-11523](https://ubuntu.com/security/CVE-2020-11523) <!-- low -->
    -   [CVE-2020-11522](https://ubuntu.com/security/CVE-2020-11522) <!-- low -->
    -   [CVE-2020-11521](https://ubuntu.com/security/CVE-2020-11521) <!-- low -->
    -   [CVE-2020-11058](https://ubuntu.com/security/CVE-2020-11058) <!-- medium -->
    -   [CVE-2020-11048](https://ubuntu.com/security/CVE-2020-11048) <!-- medium -->
    -   [CVE-2020-11046](https://ubuntu.com/security/CVE-2020-11046) <!-- medium -->
    -   [CVE-2020-11045](https://ubuntu.com/security/CVE-2020-11045) <!-- medium -->
    -   [CVE-2020-11042](https://ubuntu.com/security/CVE-2020-11042) <!-- medium -->
-   [Episode 78](https://ubuntusecuritypodcast.org/episode-78/) - covered this for xenial, now for bionic


### [[USN-4650-1](https://ubuntu.com/security/notices/USN-4650-1)] QEMU vulnerabilities [05:29] {#usn-4650-1-qemu-vulnerabilities-05-29}

-   8 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-27617](https://ubuntu.com/security/CVE-2020-27617) <!-- low -->
    -   [CVE-2020-27616](https://ubuntu.com/security/CVE-2020-27616) <!-- low -->
    -   [CVE-2020-25723](https://ubuntu.com/security/CVE-2020-25723) <!-- medium -->
    -   [CVE-2020-25625](https://ubuntu.com/security/CVE-2020-25625) <!-- low -->
    -   [CVE-2020-25624](https://ubuntu.com/security/CVE-2020-25624) <!-- low -->
    -   [CVE-2020-25085](https://ubuntu.com/security/CVE-2020-25085) <!-- medium -->
    -   [CVE-2020-25084](https://ubuntu.com/security/CVE-2020-25084) <!-- low -->
    -   [CVE-2020-17380](https://ubuntu.com/security/CVE-2020-17380) <!-- medium -->
-   Possible host RCE from guest via incorrect handling of SDHCI device
    emulation but mitigated when using libvirt by AppArmor profile
-   Various issues with USB and other device emulation, crash -> DoS


### [[USN-4651-1](https://ubuntu.com/security/notices/USN-4651-1)] MySQL vulnerabilities [06:14] {#usn-4651-1-mysql-vulnerabilities-06-14}

-   Affecting Focal (20.04 LTS)
-   Tom Reynolds (tomreyn in #ubuntu-hardened) reported issue with MySQL on
    20.04 had the new MySQLX plugin enabled and listenting on all network
    interfaces by default -> violates no open ports principle - this update
    insteads changes the configuration to bind it to localhost only - if you
    were using it you may now need to change your local configuration to
    purposefully change this so it is remotely accessible


### [[USN-4653-1](https://ubuntu.com/security/notices/USN-4653-1)] containerd vulnerability [07:27] {#usn-4653-1-containerd-vulnerability-07-27}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-15257](https://ubuntu.com/security/CVE-2020-15257) <!-- medium -->
-   containerd-shim API exposed from abstract unix socket to host network
    containers (in same network namespace) - would validate the effective UID
    of a connecting process as 0 but did not apply other access controls - so
    a malicious container in same network namespace with effective UID 0 but
    otherwise reduced privileges could spawn new processes via
    containerd-shim with full root privileges
-   upstream advise against running containers in the hosts network namespace
-   docker.io stops on upgrade of containerd
    -   <https://discourse.ubuntu.com/t/usn-4653-1-containerd-vulnerability/19607>
    -   manual restart
    -   server team working on a fix for this


### [[USN-4652-1](https://ubuntu.com/security/notices/USN-4652-1)] SniffIt vulnerability {#usn-4652-1-sniffit-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2014-5439](https://ubuntu.com/security/CVE-2014-5439) <!-- medium -->


### [[USN-4654-1](https://ubuntu.com/security/notices/USN-4654-1)] PEAR vulnerabilities {#usn-4654-1-pear-vulnerabilities}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-28949](https://ubuntu.com/security/CVE-2020-28949) <!-- medium -->
    -   [CVE-2020-28948](https://ubuntu.com/security/CVE-2020-28948) <!-- medium -->


### [[USN-4655-1](https://ubuntu.com/security/notices/USN-4655-1)] Werkzeug vulnerabilities {#usn-4655-1-werkzeug-vulnerabilities}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-28724](https://ubuntu.com/security/CVE-2020-28724) <!-- medium -->
    -   [CVE-2019-14806](https://ubuntu.com/security/CVE-2019-14806) <!-- low -->


### [[USN-4656-1](https://ubuntu.com/security/notices/USN-4656-1)] X.Org X Server vulnerabilities {#usn-4656-1-x-dot-org-x-server-vulnerabilities}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-25712](https://ubuntu.com/security/CVE-2020-25712) <!-- medium -->
    -   [CVE-2020-14360](https://ubuntu.com/security/CVE-2020-14360) <!-- medium -->


### [[USN-4657-1](https://ubuntu.com/security/notices/USN-4657-1)] Linux kernel vulnerabilities [09:11] {#usn-4657-1-linux-kernel-vulnerabilities-09-11}

-   12 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2020-4788](https://ubuntu.com/security/CVE-2020-4788) <!-- medium -->
    -   [CVE-2020-28915](https://ubuntu.com/security/CVE-2020-28915) <!-- medium -->
    -   [CVE-2020-25705](https://ubuntu.com/security/CVE-2020-25705) <!-- medium -->
    -   [CVE-2020-25645](https://ubuntu.com/security/CVE-2020-25645) <!-- medium -->
    -   [CVE-2020-25643](https://ubuntu.com/security/CVE-2020-25643) <!-- medium -->
    -   [CVE-2020-25284](https://ubuntu.com/security/CVE-2020-25284) <!-- medium -->
    -   [CVE-2020-25211](https://ubuntu.com/security/CVE-2020-25211) <!-- medium -->
    -   [CVE-2020-14390](https://ubuntu.com/security/CVE-2020-14390) <!-- low -->
    -   [CVE-2020-14351](https://ubuntu.com/security/CVE-2020-14351) <!-- low -->
    -   [CVE-2020-12352](https://ubuntu.com/security/CVE-2020-12352) <!-- medium -->
    -   [CVE-2020-10135](https://ubuntu.com/security/CVE-2020-10135) <!-- medium -->
    -   [CVE-2020-0427](https://ubuntu.com/security/CVE-2020-0427) <!-- medium -->
-   Most interesting is Power 9 processers could end up exposing information
    via L1 cache -> spectre-like attack could allow this to be read - fix is
    similar to spectre etc - flush L1 cache when transitioning between
    privilege boundaries
-   Thanks to Daniel Axtens from IBM for doing a lot of the heavy lifting,
    working with the kernel team to provide backports etc


### [[USN-4658-1](https://ubuntu.com/security/notices/USN-4658-1)] Linux kernel vulnerabilities {#usn-4658-1-linux-kernel-vulnerabilities}

-   11 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-4788](https://ubuntu.com/security/CVE-2020-4788) <!-- medium -->
    -   [CVE-2020-28915](https://ubuntu.com/security/CVE-2020-28915) <!-- medium -->
    -   [CVE-2020-25705](https://ubuntu.com/security/CVE-2020-25705) <!-- medium -->
    -   [CVE-2020-25645](https://ubuntu.com/security/CVE-2020-25645) <!-- medium -->
    -   [CVE-2020-25643](https://ubuntu.com/security/CVE-2020-25643) <!-- medium -->
    -   [CVE-2020-25284](https://ubuntu.com/security/CVE-2020-25284) <!-- medium -->
    -   [CVE-2020-25211](https://ubuntu.com/security/CVE-2020-25211) <!-- medium -->
    -   [CVE-2020-14390](https://ubuntu.com/security/CVE-2020-14390) <!-- low -->
    -   [CVE-2020-14351](https://ubuntu.com/security/CVE-2020-14351) <!-- low -->
    -   [CVE-2020-10135](https://ubuntu.com/security/CVE-2020-10135) <!-- medium -->
    -   [CVE-2020-0423](https://ubuntu.com/security/CVE-2020-0423) <!-- low -->


### [[USN-4659-1](https://ubuntu.com/security/notices/USN-4659-1)] Linux kernel vulnerabilities {#usn-4659-1-linux-kernel-vulnerabilities}

-   7 CVEs addressed in Groovy (20.10)
    -   [CVE-2020-4788](https://ubuntu.com/security/CVE-2020-4788) <!-- medium -->
    -   [CVE-2020-28915](https://ubuntu.com/security/CVE-2020-28915) <!-- medium -->
    -   [CVE-2020-27152](https://ubuntu.com/security/CVE-2020-27152) <!-- medium -->
    -   [CVE-2020-25705](https://ubuntu.com/security/CVE-2020-25705) <!-- medium -->
    -   [CVE-2020-14351](https://ubuntu.com/security/CVE-2020-14351) <!-- low -->
    -   [CVE-2020-10135](https://ubuntu.com/security/CVE-2020-10135) <!-- medium -->
    -   [CVE-2020-0423](https://ubuntu.com/security/CVE-2020-0423) <!-- low -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### GitHub state of open source security report 2020 [10:43] {#github-state-of-open-source-security-report-2020-10-43}

-   <https://octoverse.github.com/static/2020-security-report.pdf>
-   Scanned packages in Composer (PHP), Maven (Java), npm (JS), NuGet (.NET),
    PyPI and RubyGems
-   Found 94% of projects on GitHub relied on open source components - JS
    packages have a median of nearly 700 transitive dependencies - cf Python
    with 19
-   17% of advisories sampled related to explicitly malicious behaviour
    (almost all in npm packages) - but most are just mistakes
-   Vulns go undetected for just over 4 years (218 weeks) before disclosure,
    fixes though then come quick in ~4.4 weeks and then 10 weeks to alert
    users of the fix
-   A line of code written today is just as likely to contain a vulnerability
    today as 4 years ago - so we are not getting more secure over time


### Migrating Launchpad PGP keyservers from SKS to Hockeypuck [15:03] {#migrating-launchpad-pgp-keyservers-from-sks-to-hockeypuck-15-03}

-   <https://ubuntu.com/blog/migrating-the-launchpad-keyservers-from-sks-to-hockeypuck>


### AppArmor 3.0.1 Released [16:27] {#apparmor-3-dot-0-dot-1-released-16-27}

-   <https://gitlab.com/apparmor/apparmor/-/wikis/Release%5FNotes%5F3.0.1>
-   cap checkpoint\_restore for 5.9 kernels onwards plus bug fixes etc


### Hiring [16:52] {#hiring-16-52}


#### AppArmor Security Engineer {#apparmor-security-engineer}

-   <https://canonical.com/careers/2114847>


#### Engineering Director - Ubuntu Security {#engineering-director-ubuntu-security}

-   <https://canonical.com/careers/2439068>


#### Engineering Manager - Ubuntu Security {#engineering-manager-ubuntu-security}

-   <https://canonical.com/careers/2439058>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
