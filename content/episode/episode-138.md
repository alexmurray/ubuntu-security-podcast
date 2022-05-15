+++
title = "Episode 138"
description = """
  This week we discuss some of the challenges and trade-offs encountered when
  providing security support for ageing software, plus we discuss security
  updates for the Linux kernel, Firejail, Samba, PostgreSQL and more.
  """
date = 2021-11-19T14:21:00+10:30
lastmod = 2022-05-15T18:05:51+09:30
draft = false
weight = 1022
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E138.mp3"
podcast_duration = "15:56"
podcast_bytes = 12122338
permalink = "https://ubuntusecuritypodcast.org/episode-138/"
guid = "7bbf4ff223c9dd9f124a917ecd3c8b18d78346dd5833d27792ecb6b57754e21cf51a5deb01bdd0820074eaf0ffb81debeed05e46c47cbc28d791414e8a561bcd"
+++

## Overview {#overview}

This week we discuss some of the challenges and trade-offs encountered when
providing security support for ageing software, plus we discuss security
updates for the Linux kernel, Firejail, Samba, PostgreSQL and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

42 unique CVEs addressed


### [[USN-5138-1](https://ubuntu.com/security/notices/USN-5138-1)] python-py vulnerability [00:38] {#usn-5138-1-python-py-vulnerability-00-38}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-29651](https://ubuntu.com/security/CVE-2020-29651) <!-- medium -->
-   Python library providing path handling, config file parsing and other
    features which are now in standard lib or other packages - has been
    deprecated
-   ReDoS against path handling code (regex with catastrophic backtracking)


### [[USN-5139-1](https://ubuntu.com/security/notices/USN-5139-1)] Linux kernel (OEM 5.10) vulnerabilities [01:25] {#usn-5139-1-linux-kernel--oem-5-dot-10--vulnerabilities-01-25}

-   7 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-43389](https://ubuntu.com/security/CVE-2021-43389) <!-- low -->
    -   [CVE-2021-43056](https://ubuntu.com/security/CVE-2021-43056) <!-- medium -->
    -   [CVE-2021-41864](https://ubuntu.com/security/CVE-2021-41864) <!-- low -->
    -   [CVE-2021-3760](https://ubuntu.com/security/CVE-2021-3760) <!-- medium -->
    -   [CVE-2021-3764](https://ubuntu.com/security/CVE-2021-3764) <!-- medium -->
    -   [CVE-2021-3744](https://ubuntu.com/security/CVE-2021-3744) <!-- low -->
    -   [CVE-2021-3655](https://ubuntu.com/security/CVE-2021-3655) <!-- medium -->
-   Power8 specific KVM issue -&gt; guest can crash host -&gt; DoS
-   AMD cryptographic coprocessor driver memory leaks -&gt; DoS
-   eBPF integer overflow -&gt; DoS / code-exec
-   NFC UAF
-   SCTP info leak


### [[USN-5140-1](https://ubuntu.com/security/notices/USN-5140-1)] Linux kernel (OEM 5.14) vulnerabilities [02:12] {#usn-5140-1-linux-kernel--oem-5-dot-14--vulnerabilities-02-12}

-   3 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-41864](https://ubuntu.com/security/CVE-2021-41864) <!-- low -->
    -   [CVE-2021-3764](https://ubuntu.com/security/CVE-2021-3764) <!-- medium -->
    -   [CVE-2021-3744](https://ubuntu.com/security/CVE-2021-3744) <!-- low -->
-   eBPF integer overflow -&gt; DoS / code-exec
-   AMD cryptographic coprocessor driver memory leaks -&gt; DoS


### [[USN-5137-2](https://ubuntu.com/security/notices/USN-5137-2)] Linux kernel vulnerabilities [02:33] {#usn-5137-2-linux-kernel-vulnerabilities-02-33}

-   9 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3759](https://ubuntu.com/security/CVE-2021-3759) <!-- medium -->
    -   [CVE-2021-3753](https://ubuntu.com/security/CVE-2021-3753) <!-- medium -->
    -   [CVE-2021-3743](https://ubuntu.com/security/CVE-2021-3743) <!-- medium -->
    -   [CVE-2021-3739](https://ubuntu.com/security/CVE-2021-3739) <!-- low -->
    -   [CVE-2021-35477](https://ubuntu.com/security/CVE-2021-35477) <!-- medium -->
    -   [CVE-2021-34556](https://ubuntu.com/security/CVE-2021-34556) <!-- medium -->
    -   [CVE-2021-3428](https://ubuntu.com/security/CVE-2021-3428) <!-- low -->
    -   [CVE-2020-36385](https://ubuntu.com/security/CVE-2020-36385) <!-- medium -->
    -   [CVE-2019-19449](https://ubuntu.com/security/CVE-2019-19449) <!-- low -->
-   5.4 (focal bluefield / oracle, bionic oracle / gke)


### [[LSN-0082-1](https://ubuntu.com/security/notices/LSN-0082-1)] Linux kernel vulnerability [03:05] {#lsn-0082-1-linux-kernel-vulnerability-03-05}

-   4 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3715](https://ubuntu.com/security/CVE-2021-3715) <!-- high -->
    -   [CVE-2021-3444](https://ubuntu.com/security/CVE-2021-3444) <!-- high -->
    -   [CVE-2020-29661](https://ubuntu.com/security/CVE-2020-29661) <!-- high -->
    -   [CVE-2020-29660](https://ubuntu.com/security/CVE-2020-29660) <!-- medium -->
-   2 high priority vulns from GPZ ([Episode 138](https://ubuntusecuritypodcast.org/episode-138/)) in tty subsystem and 1 in
    BPF verifier - code-exec -&gt; privesc
-   UAF in IPv4 networking routing handling


### [[USN-5141-1](https://ubuntu.com/security/notices/USN-5141-1)] Firejail vulnerability [03:48] {#usn-5141-1-firejail-vulnerability-03-48}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-26910](https://ubuntu.com/security/CVE-2021-26910) <!-- medium -->
-   TOCTOU race condition in handling of overlayfs - decided to drop support
    for overlayfs since was deemed - thanks to Reiner Herrmann for providing
    this update


### [[USN-5142-1](https://ubuntu.com/security/notices/USN-5142-1)] Samba vulnerabilities [04:43] {#usn-5142-1-samba-vulnerabilities-04-43}

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
-   Raft of issues including unauthenticated users able to become root on
    domain members since Samba might incorrectly map local users to domain
    members, plus incorrect handling of Kerberos tickets such that delegated
    users could become domain admin by confusing Samba on which user a ticket
    represented
-   Memory corruption issues too
-   In particular the fix to correctly map local to domain users results in
    changed behaviour regarding matching AD users to local users - would
    previously fallback to a local user but now does not to avoid someone
    specifying DOMAIN/root and then having that fallback to say root on the
    local machine
-   <https://www.samba.org/samba/security/CVE-2020-25717.html>


### [[USN-5144-1](https://ubuntu.com/security/notices/USN-5144-1)] OpenEXR vulnerability [05:55] {#usn-5144-1-openexr-vulnerability-05-55}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2021-3933](https://ubuntu.com/security/CVE-2021-3933) <!-- medium -->
-   Integer overflow -&gt; buffer overflow -&gt; crash / RCE


### [[USN-5145-1](https://ubuntu.com/security/notices/USN-5145-1)] PostgreSQL vulnerabilities [06:08] {#usn-5145-1-postgresql-vulnerabilities-06-08}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-23222](https://ubuntu.com/security/CVE-2021-23222) <!-- medium -->
    -   [CVE-2021-23214](https://ubuntu.com/security/CVE-2021-23214) <!-- medium -->
-   Incorrect handling of SSL cert verification - could allow a remote
    attacker to inject arbitrary SQL queries on the initial connection
    establishment (similar to various STARTTLS vulns which have been seen
    recently) - would process data sent in the clear before the TLS
    connection had been established but should just throw this away
-   New upstream release with other bug fixes too (13.5 - impish/hirsute,
    12.9 - focal, 10.19 - bionic)


### [[USN-5147-1](https://ubuntu.com/security/notices/USN-5147-1)] Vim vulnerabilities [07:13] {#usn-5147-1-vim-vulnerabilities-07-13}

-   6 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-3928](https://ubuntu.com/security/CVE-2021-3928) <!-- medium -->
    -   [CVE-2021-3927](https://ubuntu.com/security/CVE-2021-3927) <!-- medium -->
    -   [CVE-2021-3903](https://ubuntu.com/security/CVE-2021-3903) <!-- low -->
    -   [CVE-2021-3872](https://ubuntu.com/security/CVE-2021-3872) <!-- medium -->
    -   [CVE-2019-20807](https://ubuntu.com/security/CVE-2019-20807) <!-- low -->
    -   [CVE-2017-17087](https://ubuntu.com/security/CVE-2017-17087) <!-- low -->
-   Swap file permissions handling, restricted mode bypass (shouldn't be
    considered a real security mechanism), various memory corruption issues
    too


### [[USN-5149-1](https://ubuntu.com/security/notices/USN-5149-1)] AccountsService vulnerability [08:01] {#usn-5149-1-accountsservice-vulnerability-08-01}

-   1 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-3939](https://ubuntu.com/security/CVE-2021-3939) <!-- high -->
-   Double free in SetLanguage() DBus method - memory corruption in root
    daemon which can be triggered by an unprivileged user - is due to a
    Ubuntu specific patch which we include so that when the user selects a
    language / format we save this in their `~/.pam_environment` to keep
    settings in sync
-   Patch contained code to use an existing pointer but then freed it - and
    then it would get freed again by the original code
-   Priv-esc by getting accountsservice daemon to run arbitrary code


### [[USN-5148-1](https://ubuntu.com/security/notices/USN-5148-1)] hivex vulnerability [09:24] {#usn-5148-1-hivex-vulnerability-09-24}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04), Impish (21.10)
    -   [CVE-2021-3504](https://ubuntu.com/security/CVE-2021-3504) <!-- medium -->
-   Tools for handling Windows Registry hive files
-   OOB read with specially crafted input file -&gt; crash -&gt; DoS


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### How to handle large security updates in outdated software versions? [09:56] {#how-to-handle-large-security-updates-in-outdated-software-versions-09-56}

-   Samba updates in [[USN-5142-1](https://ubuntu.com/security/notices/USN-5142-1)] do not include Bionic
-   Upstream released a new 4.13.14 which we could upgrade to in F/H/I/J
    without a lot of work or risk of regression since those releases already
    used a more recent version like 4.11 etc so the change in behaviour as a
    result of upgrading was so large and other packages in the archive were
    still compatible with this new version
-   Upstream has released patches for these vulns back to 4.10 but this is
    686 individual patches - bionic has Samba 4.7 and so would require a lot
    of manual work to backport these ~700 patches, and the risk of
    introducing a regression (ie breaking something) when backporting such a
    large set of changes is higher
    -   We are security engineers not full-time Samba software developers so
        not cognisant of all the possible pitfalls etc
-   Other option would be to update Samba in bionic to 4.13.14 like in the
    later releases, other packages like talloc, tdb, tevent and ldb and these
    would all need to be upgraded as well
-   **But** this new Samba version only supports python3, not python2.7 which the
    older Samba currently in bionic does
-   FreeIPA in bionic is Python2 so would then be broken if we did this upgrade
-   We could also try and upgrade FreeIPA to a newer version which uses
    Python3 but it isn't clear if the required Python3 dependencies even
    exist in the 18.04 archive - so they man need to be backported and
    introduced there as well
-   Either option involves a lot of change and hence complexity ∴ a high risk
    of regression
-   Unclear yet which will be the preferred option but this illustrates the
    difficulties involved in doing security support for old software versions
    which upstream has ceased to provide support
-   Will likely come across more cases like this as we get further into ESM
    support periods for various packages - Bionic is still in it's LTS phase
    till 2023 so not even in ESM and already has trouble for Samba
-   Watch this space...


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)