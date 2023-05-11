+++
title = "Episode 194"
description = """
  The team are back from Prague and bring with them a new segment, drilling into
  recent academic research in the cybersecurity space - for this inaugural segment
  new team member Andrei looks at modelling of attacks against network intrusion
  detections systems, plus we cover the week in security updates looking at
  vulnerabilities in Django, Ruby, Linux kernel, Erlang, OpenStack and more.
  """
date = 2023-05-11T22:13:00+09:30
lastmod = 2023-05-11T22:15:35+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E194.mp3"
podcast_duration = 1470
podcast_bytes = 25981353
permalink = "https://ubuntusecuritypodcast.org/episode-194/"
guid = "d87547b2d922d8c852d34984f55084ed7259f111427b0033cdc24964826fd80da3197901aea4989be293eef2ca3a65512db4a1d26f16ba1367ebe179c9562909"
+++

## Overview {#overview}

The team are back from Prague and bring with them a new segment, drilling into
recent academic research in the cybersecurity space - for this inaugural segment
new team member Andrei looks at modelling of attacks against network intrusion
detections systems, plus we cover the week in security updates looking at
vulnerabilities in Django, Ruby, Linux kernel, Erlang, OpenStack and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

57 unique CVEs addressed


### [[USN-6054-1](https://ubuntu.com/security/notices/USN-6054-1)] Django vulnerability (00:55) {#usn-6054-1-django-vulnerability--00-55}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-31047](https://ubuntu.com/security/CVE-2023-31047) <!-- low -->
-   Django supports file uploading via various form constructs - it then performs
    validation on the file
-   Was possible to upload multiple files via the form by attacking more than one
    HTML attribute to the form - in this case though only the last file would be
    validated - and so other files would escape validation
-   Fixed to have Django raise an error in the case that an application tries to
    use these forms for multiple files and adds a new option to restore the old
    behaviour if really desired - AND it adds support for validating all files in
    this case.


### [[USN-6055-1](https://ubuntu.com/security/notices/USN-6055-1)] Ruby vulnerabilities (02:11) {#usn-6055-1-ruby-vulnerabilities--02-11}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2023-28756](https://ubuntu.com/security/CVE-2023-28756) <!-- medium -->
    -   [CVE-2023-28755](https://ubuntu.com/security/CVE-2023-28755) <!-- medium -->
-   Two ReDoS issues - ability to cause a CPU-based DoS through crafted input that
    is then validated by a regex which takes an inordinate amount of time to run
    -   one in URI parsing and the other in Time parsing


### [[USN-6055-2](https://ubuntu.com/security/notices/USN-6055-2)] Ruby regression (03:11) {#usn-6055-2-ruby-regression--03-11}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2023-28755](https://ubuntu.com/security/CVE-2023-28755) <!-- medium -->
-   The URI parser regex fix caused a regression and so was reverted - is still
    under investigation and hope to fix it again in a future update


### [[USN-6056-1](https://ubuntu.com/security/notices/USN-6056-1)] Linux kernel (OEM) vulnerability (03:13) {#usn-6056-1-linux-kernel--oem--vulnerability--03-13}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-1859](https://ubuntu.com/security/CVE-2023-1859) <!-- medium -->
-   UAF in Xen Plan 9 file system protocol -&gt; DoS / info leak


### [[USN-6057-1](https://ubuntu.com/security/notices/USN-6057-1)] Linux kernel (Intel IoTG) vulnerabilities (03:31) {#usn-6057-1-linux-kernel--intel-iotg--vulnerabilities--03-31}

-   10 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-26545](https://ubuntu.com/security/CVE-2023-26545) <!-- medium -->
    -   [CVE-2023-1652](https://ubuntu.com/security/CVE-2023-1652) <!-- medium -->
    -   [CVE-2023-1074](https://ubuntu.com/security/CVE-2023-1074) <!-- medium -->
    -   [CVE-2023-1073](https://ubuntu.com/security/CVE-2023-1073) <!-- medium -->
    -   [CVE-2023-0394](https://ubuntu.com/security/CVE-2023-0394) <!-- medium -->
    -   [CVE-2022-4842](https://ubuntu.com/security/CVE-2022-4842) <!-- medium -->
    -   [CVE-2022-47929](https://ubuntu.com/security/CVE-2022-47929) <!-- medium -->
    -   [CVE-2022-4129](https://ubuntu.com/security/CVE-2022-4129) <!-- medium -->
    -   [CVE-2023-0386](https://ubuntu.com/security/CVE-2023-0386) <!-- high -->
    -   [CVE-2023-1281](https://ubuntu.com/security/CVE-2023-1281) <!-- high -->
-   OverlayFS is a union file-system, allowing one FS to be stacked on top of
    another - often used for things like schroots where you want to have the
    pristine source and then a working session chroot where you can make changes
    and then finally dispose of the whole thing back to the original
    -   Interaction with setuid binaries and the nosuid mount option - nosuid means
        the suid bit is ignored - in this case, if had setup an overlay with the
        base file-system mounted nosuid, then in some cases it would be possible to
        copy up an suid binary as an unprivileged user and have it retain the suid
        bit - and then the user could just execute it to gain root privileges
-   UAF in Traffic-Control Index (TCINDEX) filter - found in March this year


### [[USN-6058-1](https://ubuntu.com/security/notices/USN-6058-1)] Linux kernel vulnerability (05:45) {#usn-6058-1-linux-kernel-vulnerability--05-45}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2023-1829](https://ubuntu.com/security/CVE-2023-1829) <!-- high -->
-   Another UAF in Traffic-Control Index (TCINDEX) filter from April this year -
    seems upstream is sick of these UAFs in TCINDEX so their fix simply removes
    this classifier from the kernel and hence so does ours - in general we try not
    to introduce breaking changes but in this case prefer to stay consistent with
    upstream - also upstream say this does not have many known users anyway


### [[USN-6059-1](https://ubuntu.com/security/notices/USN-6059-1)] Erlang vulnerability (06:23) {#usn-6059-1-erlang-vulnerability--06-23}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-37026](https://ubuntu.com/security/CVE-2022-37026) <!-- medium -->
-   Failed to properly maintain state during TLS handshake when validating client
    certificate - basically a malicious client could send the certificate and then
    simply omit the TLS handshake message which tells the server to validate the
    cert and the server state would then show the cert had been validated
-   Note only affects Erlang applications that use client certificates for
    authentication (ie. the `'{verify, verify_peer}'` SSL option)
-   Still planning to try and update erlang in bionic (18.04 LTS) but backport is
    more complicated


### [[USN-6060-1](https://ubuntu.com/security/notices/USN-6060-1), [USN-6060-2](https://ubuntu.com/security/notices/USN-6060-2)] MySQL vulnerabilities (07:40) {#usn-6060-1-usn-6060-2-mysql-vulnerabilities--07-40}

-   20 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-21982](https://ubuntu.com/security/CVE-2023-21982) <!-- medium -->
    -   [CVE-2023-21980](https://ubuntu.com/security/CVE-2023-21980) <!-- medium -->
    -   [CVE-2023-21977](https://ubuntu.com/security/CVE-2023-21977) <!-- medium -->
    -   [CVE-2023-21976](https://ubuntu.com/security/CVE-2023-21976) <!-- medium -->
    -   [CVE-2023-21972](https://ubuntu.com/security/CVE-2023-21972) <!-- medium -->
    -   [CVE-2023-21966](https://ubuntu.com/security/CVE-2023-21966) <!-- medium -->
    -   [CVE-2023-21962](https://ubuntu.com/security/CVE-2023-21962) <!-- medium -->
    -   [CVE-2023-21955](https://ubuntu.com/security/CVE-2023-21955) <!-- medium -->
    -   [CVE-2023-21953](https://ubuntu.com/security/CVE-2023-21953) <!-- medium -->
    -   [CVE-2023-21947](https://ubuntu.com/security/CVE-2023-21947) <!-- medium -->
    -   [CVE-2023-21946](https://ubuntu.com/security/CVE-2023-21946) <!-- medium -->
    -   [CVE-2023-21945](https://ubuntu.com/security/CVE-2023-21945) <!-- medium -->
    -   [CVE-2023-21940](https://ubuntu.com/security/CVE-2023-21940) <!-- medium -->
    -   [CVE-2023-21935](https://ubuntu.com/security/CVE-2023-21935) <!-- medium -->
    -   [CVE-2023-21933](https://ubuntu.com/security/CVE-2023-21933) <!-- medium -->
    -   [CVE-2023-21929](https://ubuntu.com/security/CVE-2023-21929) <!-- medium -->
    -   [CVE-2023-21920](https://ubuntu.com/security/CVE-2023-21920) <!-- medium -->
    -   [CVE-2023-21919](https://ubuntu.com/security/CVE-2023-21919) <!-- medium -->
    -   [CVE-2023-21912](https://ubuntu.com/security/CVE-2023-21912) <!-- medium -->
    -   [CVE-2023-21911](https://ubuntu.com/security/CVE-2023-21911) <!-- medium -->
-   2 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-21980](https://ubuntu.com/security/CVE-2023-21980) <!-- medium -->
    -   [CVE-2023-21912](https://ubuntu.com/security/CVE-2023-21912) <!-- medium -->
-   Latest upstream releases
    -   8.0.33 for 20.04 LTS, 22.04 LTS, 22.10, and Lunar (23.04)
    -   5.7.42 for 16.04 ESM and 18.04 LTS
-   As is the latest upstream point release, also includes bug fixes and possibly
    new features / incompatible changes - full list of details from upstream:
    -   <https://dev.mysql.com/doc/relnotes/mysql/5.7/en/news-5-7-42.html>
    -   <https://dev.mysql.com/doc/relnotes/mysql/8.0/en/news-8-0-33.html>


### [[USN-6061-1](https://ubuntu.com/security/notices/USN-6061-1)] WebKitGTK vulnerabilities (08:14) {#usn-6061-1-webkitgtk-vulnerabilities--08-14}

-   6 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-28205](https://ubuntu.com/security/CVE-2023-28205) <!-- medium -->
    -   [CVE-2023-27954](https://ubuntu.com/security/CVE-2023-27954) <!-- low -->
    -   [CVE-2023-27932](https://ubuntu.com/security/CVE-2023-27932) <!-- medium -->
    -   [CVE-2023-25358](https://ubuntu.com/security/CVE-2023-25358) <!-- medium -->
    -   [CVE-2022-32885](https://ubuntu.com/security/CVE-2022-32885) <!-- medium -->
    -   [CVE-2022-0108](https://ubuntu.com/security/CVE-2022-0108) <!-- medium -->
-   Various UAFs plus ability to track users across origins or bypass same origin
    policy


### [[USN-6062-1](https://ubuntu.com/security/notices/USN-6062-1)] FreeType vulnerability (08:38) {#usn-6062-1-freetype-vulnerability--08-38}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-2004](https://ubuntu.com/security/CVE-2023-2004) <!-- medium -->
-   Integer overflow when parsing a malformed font - DoS / RCE (particurly with
    the advent of web fonts)


### [[USN-6063-1](https://ubuntu.com/security/notices/USN-6063-1)] Ceph vulnerabilities (09:03) {#usn-6063-1-ceph-vulnerabilities--09-03}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-3854](https://ubuntu.com/security/CVE-2022-3854) <!-- medium -->
    -   [CVE-2022-3650](https://ubuntu.com/security/CVE-2022-3650) <!-- medium -->
    -   [CVE-2022-0670](https://ubuntu.com/security/CVE-2022-0670) <!-- medium -->
    -   [CVE-2021-3979](https://ubuntu.com/security/CVE-2021-3979) <!-- low -->
-   backport of:
    -   17.2.5 for 22.10, 22.04 LTS
    -   15.2.17 for 20.04 LTS
    -   12.2.13 for 18.04 LTS


### [[USN-6066-1](https://ubuntu.com/security/notices/USN-6066-1)] OpenStack Heat vulnerability (09:29) {#usn-6066-1-openstack-heat-vulnerability--09-29}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2023-1625](https://ubuntu.com/security/CVE-2023-1625) <!-- medium -->
-   Orchestration Service for OpenStack - info leak via API


### [[USN-6067-1](https://ubuntu.com/security/notices/USN-6067-1)] OpenStack Neutron vulnerabilities (09:39) {#usn-6067-1-openstack-neutron-vulnerabilities--09-39}

-   5 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-3277](https://ubuntu.com/security/CVE-2022-3277) <!-- medium -->
    -   [CVE-2021-40797](https://ubuntu.com/security/CVE-2021-40797) <!-- medium -->
    -   [CVE-2021-40085](https://ubuntu.com/security/CVE-2021-40085) <!-- medium -->
    -   [CVE-2021-38598](https://ubuntu.com/security/CVE-2021-38598) <!-- medium -->
    -   [CVE-2021-20267](https://ubuntu.com/security/CVE-2021-20267) <!-- medium -->
-   Virtual Network Service


### [[USN-6068-1](https://ubuntu.com/security/notices/USN-6068-1)] Open vSwitch vulnerability (09:45) {#usn-6068-1-open-vswitch-vulnerability--09-45}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-1668](https://ubuntu.com/security/CVE-2023-1668) <!-- medium -->
-   Failed to properly handle IP packets which specified a protocol of 0 (used in
    IPv6 to specify hop-by-hop options) - if a packet with protocol 0 was
    encountered, OVS would install a dataflow path for both kernel and userspace
    which would match on ALL IP protocols for this flow - so this would then
    possibly match against other IP packets and so cause them to be handled
    incorrectly (possibly allowing when should have been denied etc)


### [[USN-6065-1](https://ubuntu.com/security/notices/USN-6065-1)] css-what vulnerabilities (10:43) {#usn-6065-1-css-what-vulnerabilities--10-43}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-21222](https://ubuntu.com/security/CVE-2022-21222) <!-- medium -->
    -   [CVE-2021-33587](https://ubuntu.com/security/CVE-2021-33587) <!-- medium -->
-   CSS selector parser for NodeJS
-   Two ReDoS issues


### [[USN-6064-1](https://ubuntu.com/security/notices/USN-6064-1)] SQL parse vulnerability (11:00) {#usn-6064-1-sql-parse-vulnerability--11-00}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-30608](https://ubuntu.com/security/CVE-2023-30608) <!-- medium -->
-   Another ReDoS


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 23.10 release cycle opens (11:41) {#ubuntu-23-dot-10-release-cycle-opens--11-41}

-   The Ubuntu Security is back from Prague (Engineering Sprint) - spent the week
    diving deep into various aspects like what kinds of tooling and processes we
    want to try and improve across the team, talking about the culture and history
    of the team to make sure we maintain our great culture as the team grows.
-   Even discussing mundane stuff like how to refer to and name security updates
    which go into Ubuntu Pro vs the regular Ubuntu Archive - making sure it is
    clear to consumers of our USNs etc what is where, plus the various policies
    around updated for Ubuntu Pro
-   Sessions devoted to snaps and how to do appropriate security reviews for them
    plus how to coordinate better with the snapd team
-   Even looking at tech debt within our team and our tooling and how we can try
    and tackle some of that
-   As for more concrete plans for the security team during 23.10
    -   continue the work to use AppArmor to enable tighter controls over
        unprivileged user namespaces within Ubuntu
    -   various improvements to our [OVAL](https://ubuntu.com/security/oval) feeds to make them more useful to users and
        customers alike
    -   utilising the Canonical Hardware Certifications Lab for testing of security
        updates for packages that require particular hardware (think things like
        `intel-microcode`, `nvme-cli`, various graphics drivers etc)
    -   Improvements to AppArmor for more fine-grained network mediation and
        `io_uring`
    -   More work on supporting various confidential computing use-cases (for an
        introduction to these types of topics see
        <https://ubuntu.com/engage/introduction-to-confidential-computing-webinar>)
    -   Usual work on FIPS / CIS / DISA-STIG updates plus usual security maintenance


### Academic paper review with Andrei Iosif (14:40) {#academic-paper-review-with-andrei-iosif--14-40}

-   New segment to dig into the details of various interesting cybersecurity
    research papers
-   Andrei joined the team just over 1 month ago - previously was Tech Lead at a
    SecOps startup developing open source tools for automating various
    cybersecurity solutions - brings a wide range of great experience to our team
-   [Modeling Realistic Adversarial Attacks against Network Intrusion Detection Systems](https://dl.acm.org/doi/10.1145/3469659)
-   Looks at what the study was about (developing a model for attacks against
    Network Intrusion Detection Systems, with a particular focus on IDSs that are
    based on AI/ML approaches)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
