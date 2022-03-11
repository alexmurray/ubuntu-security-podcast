+++
title = "Episode 113"
description = """
  With 21 CVEs fixed this week we look at updates for Dnsmasq, Firefox,
  OpenJDK and more, plus we discuss the recent release of Ubuntu 21.04 and
  malicious commits in the upstream Linux kernel.
  """
date = 2021-04-30T14:33:00+09:30
lastmod = 2021-04-30T15:49:11+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E113.mp3"
podcast_duration = "16:28"
podcast_bytes = 12103984
permalink = "https://ubuntusecuritypodcast.org/episode-113/"
guid = "4cf1fb7128e92aa989b8461391b0e737610b4c789c116b67292134e5b4a0d8b994ef77c40086bb1d933b6b49e2ba8436456c53504c2f95fe3c613014519778fc"
+++

## Overview {#overview}

With 21 CVEs fixed this week we look at updates for Dnsmasq, Firefox,
OpenJDK and more, plus we discuss the recent release of Ubuntu 21.04 and
malicious commits in the upstream Linux kernel.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

21 unique CVEs addressed


### [[USN-4916-2](https://ubuntu.com/security/notices/USN-4916-2)] Linux kernel regression [00:48] {#usn-4916-2-linux-kernel-regression-00-48}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-29154](https://ubuntu.com/security/CVE-2021-29154)
    -   [CVE-2021-3493](https://ubuntu.com/security/CVE-2021-3493)
-   Possible memory leak introduced via fix for overlayfs priv esc vuln - so
    the fix effectively introduced a new vuln but only a DoS not priv esc


### [[USN-4924-1](https://ubuntu.com/security/notices/USN-4924-1)] Dnsmasq vulnerabilities [01:17] {#usn-4924-1-dnsmasq-vulnerabilities-01-17}

-   2 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2019-14513](https://ubuntu.com/security/CVE-2019-14513)
    -   [CVE-2017-15107](https://ubuntu.com/security/CVE-2017-15107)
-   2 DoS issues, one possible OOB read -> crash, the other a trust issue
    where for DNSSEC configurations could end up having dnsmasq prove the
    non-existence of hostnames that actually exist - so again a DoS but not
    in the traditional sense


### [[USN-4925-1](https://ubuntu.com/security/notices/USN-4925-1)] Shibboleth vulnerability [01:57] {#usn-4925-1-shibboleth-vulnerability-01-57}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-28963](https://ubuntu.com/security/CVE-2021-28963)
-   SSO solution for InCommon Federation system
-   Possible content injection bug in error or other pages since template
    generation would use attacker controlled inputs


### [[USN-4926-1](https://ubuntu.com/security/notices/USN-4926-1)] Firefox vulnerabilities [02:19] {#usn-4926-1-firefox-vulnerabilities-02-19}

-   12 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Groovy (20.10), Focal (20.04 LTS)
    -   [CVE-2021-24002](https://ubuntu.com/security/CVE-2021-24002)
    -   [CVE-2021-23995](https://ubuntu.com/security/CVE-2021-23995)
    -   [CVE-2021-29947](https://ubuntu.com/security/CVE-2021-29947)
    -   [CVE-2021-29946](https://ubuntu.com/security/CVE-2021-29946)
    -   [CVE-2021-29945](https://ubuntu.com/security/CVE-2021-29945)
    -   [CVE-2021-24001](https://ubuntu.com/security/CVE-2021-24001)
    -   [CVE-2021-24000](https://ubuntu.com/security/CVE-2021-24000)
    -   [CVE-2021-23999](https://ubuntu.com/security/CVE-2021-23999)
    -   [CVE-2021-23998](https://ubuntu.com/security/CVE-2021-23998)
    -   [CVE-2021-23997](https://ubuntu.com/security/CVE-2021-23997)
    -   [CVE-2021-23996](https://ubuntu.com/security/CVE-2021-23996)
    -   [CVE-2021-23994](https://ubuntu.com/security/CVE-2021-23994)
-   88.0
-   Usual web issues plus a possible UAF in responsive design mode as well as
    an issue in FTP client where specially crafted FTP URL (ie one containing
    newlines) could embed FTP commands and cause the client to execute
    arbitrary FTP commands to the server
    -   FTP client in Firefox is deprecated and disabled by default now -
        expected to be removed in a future release


### [[USN-4927-1](https://ubuntu.com/security/notices/USN-4927-1)] File Roller vulnerability [03:46] {#usn-4927-1-file-roller-vulnerability-03-46}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-36314](https://ubuntu.com/security/CVE-2020-36314)
-   Incomplete fix for previous CVE-2020-11736 ([Episode 72](https://ubuntusecuritypodcast.org/episode-72/)) - directory
    traversal via symlink issue on extraction of archives


### [[USN-4892-1](https://ubuntu.com/security/notices/USN-4892-1)] OpenJDK vulnerability [04:15] {#usn-4892-1-openjdk-vulnerability-04-15}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-2163](https://ubuntu.com/security/CVE-2021-2163)
-   Latest upstream point release to fix an issue where would fail to
    properly verify signatures on crafted JARs - could bypass security
    restrictions if a JAR is signed with an algorithm that is disabled


### [[USN-4922-2](https://ubuntu.com/security/notices/USN-4922-2)] Ruby vulnerability [04:35] {#usn-4922-2-ruby-vulnerability-04-35}

-   1 CVEs addressed in Hirsute (21.04)
    -   [CVE-2021-28965](https://ubuntu.com/security/CVE-2021-28965)
-   First USN for Hirsute \o/
-   XML deserialisation issue


### [[USN-4913-2](https://ubuntu.com/security/notices/USN-4913-2)] Underscore vulnerability [04:49] {#usn-4913-2-underscore-vulnerability-04-49}

-   1 CVEs addressed in 21.04
    -   [CVE-2021-23358](https://ubuntu.com/security/CVE-2021-23358)
-   Code injection via template function due to failure to properly handle
    untrusted input


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 21.04 Hirsute Hippo Released [05:05] {#ubuntu-21-dot-04-hirsute-hippo-released-05-05}

-   Standard support release, supported for 9 months
-   Private home dirs
-   Kernel 5.11
    -   Stack protector for RISC-V
    -   Improved performance for Spectre mitigations via static calls
    -   Initial support for memory tagging for ARM64
        -   Will require support in glibc etc but this is an initial start to
            providing improved protection against memory corruption vulns
-   OpenSSH 8.4
    -   Improved support for FIDO/U2F keys for 2FA


### Hypocrite commits and the upstream Linux kernel [07:38] {#hypocrite-commits-and-the-upstream-linux-kernel-07-38}

-   First came to light in November 2020 when one of the authors of a paper
    from University of Minnesota tweeted about the acceptance of their paper
    to IEEE S&P 2021 - this showed the first page of the paper and seemed to
    indicate that for the purposes of academic research a number of malicious
    commits (ie commits that when added to the kernel would create a
    vulnerability) had been introduced into the upstream kernel.
-   Lots of blowback at the time amongst both [kernel devs](https://twitter.com/SarahJamieLewis/status/1330618919376228352), [other researchers](https://twitter.com/tobycmurray/status/1330704953891979268)
    etc regarding both the ethics of effectively experimenting on subjects
    without their consent and the concept of purposely introducing vulns just
    for the sake of research purposes
-   The researchers claimed they followed these up with subsequent commits to
    fix the vulns and so none actually would have made it to end users so
    they thought it was effectively done
-   At this stage as a team we thought this was interesting but effectively
    just demonstrating something that most folks in OSS always knew was a
    potential reality - that once a contributor to a project builds a certain
    level of trust it would be relatively easy to introduce vulns like this
    in a stealthy manner and that the best defence would be better automated
    review tooling (static/dynamic analysis via CI etc) rather than trying to
    rely on human reviewers to detect
-   Issue again came to light recently when the [paper](https://github.com/QiushiWu/QiushiWu.github.io/blob/main/papers/OpenSourceInsecurity.pdf) was made available in
    full and it was revealed that 3 malicious commits were potentially
    integrated into the upstream kernel - actually only 1 was ACKed and then
    this was rejected and the other 2 were rejected outright.  Recently,
    GregKH weighed in and effectively blacklisted all contributions from UMN
    and proposed to revert all commits that had come from umn.edu authors
-   Not surprisingly, most of these were NOT malicious and so took careful
    review by various developers to decide which should NOT be reverted as
    lots of them did actually fix legitimate issues
-   Researchers then apologised and so only a few commits actually got
    reverted as a result
-   In the end it highlights how OSS development is built on trust and how
    this can be abused in either direction - tempting to jump to technical
    solutions (ie better static analysis/CI etc) but this will never be
    foolproof - also need the ability to move fast so can get say reverts
    done and delivered to users, and also to build good relationships BUT in
    the end need to still be wary - "trust but verify" - both on a technical
    basis and also on a personal basis so we can better understand the
    provenance of code etc
    <!-- Doveryay, no proveryay -->


### Hiring [14:36] {#hiring-14-36}


#### AppArmor Security Engineer {#apparmor-security-engineer}

-   <https://canonical.com/careers/2114847/apparmor-security-engineer-remote>
    <!-- americas, emea -->


#### Linux Cryptography and Security Engineer {#linux-cryptography-and-security-engineer}

-   <https://canonical.com/careers/2612092/linux-cryptography-and-security-engineer-remote>
   


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>
   


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
