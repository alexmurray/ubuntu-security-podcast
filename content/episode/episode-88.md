+++
title = "Episode 88"
description = """
  This week we talk antivirus scanners and false positives in the Ubuntu
  archive, plus we look at security updates for QEMU, Bind, Net-SNMP,
  sane-backends and more.
  """
date = 2020-08-27T16:16:00+09:30
lastmod = 2020-08-27T17:09:20+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E088.mp3"
podcast_duration = "10:55"
podcast_bytes = 10484624
permalink = "https://ubuntusecuritypodcast.org/episode-88/"
guid = "4c2390e1261b8aecf784f345f828c78f0d508cbca083da301b4be6a0a8388d75e149acccf35e138f5e9a573ce7c2785bd9ce5f327bc1a114530c6b140e3463de"
+++

## Overview {#overview}

This week we talk antivirus scanners and false positives in the Ubuntu
archive, plus we look at security updates for QEMU, Bind, Net-SNMP,
sane-backends and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

56 unique CVEs addressed


### [[USN-4467-1](https://usn.ubuntu.com/4467-1/)] QEMU vulnerabilities [00:52] {#usn-4467-1-qemu-vulnerabilities-00-52}

-   13 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-16092](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16092) <!-- low -->
    -   [CVE-2020-15863](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15863) <!-- low -->
    -   [CVE-2020-14415](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14415) <!-- low -->
    -   [CVE-2020-13800](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13800) <!-- low -->
    -   [CVE-2020-13765](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13765) <!-- medium -->
    -   [CVE-2020-13754](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13754) <!-- medium -->
    -   [CVE-2020-13659](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13659) <!-- low -->
    -   [CVE-2020-13362](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13362) <!-- low -->
    -   [CVE-2020-13361](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13361) <!-- low -->
    -   [CVE-2020-13253](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13253) <!-- low -->
    -   [CVE-2020-12829](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12829) <!-- medium -->
    -   [CVE-2020-10761](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10761) <!-- medium -->
    -   [CVE-2020-10756](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10756) <!-- medium -->
-   OOB read in SLiRP networking implementation when replying to a ICMP ping
    echo request -> malicious guest could leak host memory -> info leak
-   Network Block Device server assertion failure able to be triggered via a
    remote NBD client -> DoS
-   Malicious guest could cause a OOB write / read in SM501 graphic driver on
    host -> crash / code exec


### [[USN-4466-2](https://usn.ubuntu.com/4466-2/)] curl vulnerability [01:58] {#usn-4466-2-curl-vulnerability-01-58}

-   1 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2020-8231](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8231) <!-- low -->
-   [Episode 87](https://ubuntusecuritypodcast.org/episode-87/) - connect\_only option -> could connect to wrong destination
    -> info leak


### [[USN-4468-1](https://usn.ubuntu.com/4468-1/), [USN-4468-2](https://usn.ubuntu.com/4468-2/)] Bind vulnerabilities [02:16] {#usn-4468-1-usn-4468-2-bind-vulnerabilities-02-16}

-   5 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-8624](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8624) <!-- low -->
    -   [CVE-2020-8623](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8623) <!-- medium -->
    -   [CVE-2020-8622](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8622) <!-- medium -->
    -   [CVE-2020-8621](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8621) <!-- medium -->
    -   [CVE-2020-8620](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8620) <!-- medium -->
-   Assertion failures when handling:
    -   queries for zones signed by RSA signature
    -   truncated response to a TSIG-signed request
    -   queries when QNAME minimazation and forward first are enabled
    -   specially crafted large TCP payload on most recent versions (focal
        only)


### [[USN-4471-1](https://usn.ubuntu.com/4471-1/)] Net-SNMP vulnerabilities [03:10] {#usn-4471-1-net-snmp-vulnerabilities-03-10}

-   2 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-15862](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15862) <!-- medium -->
    -   [CVE-2020-15861](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15861) <!-- medium -->
-   Would cache MIBs in a directory on the host - an attacker who has
    read-write access to the SNMP service could use the NET-SNMP-EXTEND-MIB
    extension to modify an existing MIB to add a command to be executed when
    the MIB attribute is read, and this would be cached for future. In
    general net-snmp server runs as a low privileged user, so any
    command-exec is not privileged, except at startup when it runs as root
    **and** loads the cached MIBs - these could then contain commands to change
    the configuration of net-snmp to instead run as root and not drop
    privileges. Then subsequent runs of net-snmp will run as root and so any
    command-exec can be done as root. Fix is to both disable the EXTEND-MIB
    extension by default and to not cache MIBs.


### [[USN-4469-1](https://usn.ubuntu.com/4469-1/)] Ghostscript vulnerabilities [04:47] {#usn-4469-1-ghostscript-vulnerabilities-04-47}

-   25 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-17538](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-17538) <!-- medium -->
    -   [CVE-2020-16310](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16310) <!-- medium -->
    -   [CVE-2020-16309](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16309) <!-- medium -->
    -   [CVE-2020-16308](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16308) <!-- medium -->
    -   [CVE-2020-16307](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16307) <!-- medium -->
    -   [CVE-2020-16306](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16306) <!-- medium -->
    -   [CVE-2020-16305](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16305) <!-- medium -->
    -   [CVE-2020-16304](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16304) <!-- medium -->
    -   [CVE-2020-16303](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16303) <!-- medium -->
    -   [CVE-2020-16302](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16302) <!-- medium -->
    -   [CVE-2020-16301](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16301) <!-- medium -->
    -   [CVE-2020-16300](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16300) <!-- medium -->
    -   [CVE-2020-16299](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16299) <!-- medium -->
    -   [CVE-2020-16298](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16298) <!-- medium -->
    -   [CVE-2020-16297](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16297) <!-- medium -->
    -   [CVE-2020-16296](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16296) <!-- medium -->
    -   [CVE-2020-16295](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16295) <!-- medium -->
    -   [CVE-2020-16294](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16294) <!-- medium -->
    -   [CVE-2020-16293](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16293) <!-- medium -->
    -   [CVE-2020-16292](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16292) <!-- medium -->
    -   [CVE-2020-16291](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16291) <!-- medium -->
    -   [CVE-2020-16290](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16290) <!-- medium -->
    -   [CVE-2020-16289](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16289) <!-- medium -->
    -   [CVE-2020-16288](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16288) <!-- medium -->
    -   [CVE-2020-16287](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16287) <!-- medium -->
-   Fixes for various buffer overflows etc found via fuzzing with address
    sanitizer enabled - crafted PDF files -> crash / RCE


### [[USN-4470-1](https://usn.ubuntu.com/4470-1/)] sane-backends vulnerabilities [05:17] {#usn-4470-1-sane-backends-vulnerabilities-05-17}

-   8 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-12867](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12867) <!-- medium -->
    -   [CVE-2020-12866](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12866) <!-- medium -->
    -   [CVE-2020-12865](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12865) <!-- medium -->
    -   [CVE-2020-12864](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12864) <!-- low -->
    -   [CVE-2020-12863](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12863) <!-- low -->
    -   [CVE-2020-12862](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12862) <!-- low -->
    -   [CVE-2020-12861](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12861) <!-- medium -->
    -   [CVE-2017-6318](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-6318) <!-- low -->
-   Heap buffer overflows when accessing network attached scanners - could
    happen automatically when starting a scanning app which then scans the
    local network -> crash / code exec - found by GitHub security team
-   <https://securitylab.github.com/research/last-orders-at-the-house-of-force>
-   <https://youtu.be/EGiQ-0pCcwc>


### [[USN-4472-1](https://usn.ubuntu.com/4472-1/)] PostgreSQL vulnerabilities [06:25] {#usn-4472-1-postgresql-vulnerabilities-06-25}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-14350](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14350) <!-- medium -->
    -   [CVE-2020-14349](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14349) <!-- medium -->
-   2 issues in the mishandling of the search path, allowing a remote
    attacker to execute arbitrary SQL code - one when using logical
    replication and the other with CREATE EXTENSION command.


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Windows Defender and other AVs flagging jq as possibly malicious [06:54] {#windows-defender-and-other-avs-flagging-jq-as-possibly-malicious-06-54}

-   <https://discourse.ubuntu.com/t/several-av-engines-are-hating-on-usr-bin-jq-from-jq-1-6-1-false-positive-imo/18030>
-   <https://bugs.launchpad.net/ubuntu/+source/jq/+bug/1892843>
-   <https://bugs.launchpad.net/ubuntu/+source/jq/+bug/1892552>
-   Windows Defender flags as Trojan:Linux/CoinMiner.N!MTB whilst Trend Micro
    flags as Trojan.SH.HADGLIDER.TSE - false positives, possible hash
    collision?

<!--listend-->

```shell
sudo apt install jq
xdg-open "https://www.virustotal.com/gui/file/$(sha256sum /usr/bin/jq | cut -f1 -d' ')"
```


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
