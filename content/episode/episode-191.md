+++
title = "Episode 191"
description = """
  This week saw the unexpected release of Ubuntu 20.04.6 so we go into the detail
  behind that, plus we talk Everything Open and we cover security updates
  including Emacs, LibreCAD, Python, vim and more.
  """
date = 2023-03-24T13:51:00+10:30
lastmod = 2023-03-24T13:52:19+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E191.mp3"
podcast_duration = 863
podcast_bytes = 15120065
permalink = "https://ubuntusecuritypodcast.org/episode-191/"
guid = "dfbe5c94be00c46f75d3817b0fda07bbdfebf4db797bae1b0eea1519f46d83008a54636f60d4f7ab6840e36166379b5a925f1ac97f13c4ec06df3a5852709851"
+++

## Overview {#overview}

This week saw the unexpected release of Ubuntu 20.04.6 so we go into the detail
behind that, plus we talk Everything Open and we cover security updates
including Emacs, LibreCAD, Python, vim and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

82 unique CVEs addressed


### [[USN-5955-1](https://ubuntu.com/security/notices/USN-5955-1)] Emacs vulnerability [00:50] {#usn-5955-1-emacs-vulnerability-00-50}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-48339](https://ubuntu.com/security/CVE-2022-48339) <!-- medium -->
-   htmlfontify package would try and validate whether a given file is text by
    calling `file` on it - but would fail to escape the filename - so if a user
    could be tricked into running `htmlfontify-copy-and-link-dir` on a crafted
    directory, could get code execution in the context of emacs
-   Unlikely to be an issue in practice, also there doesn't appear to be any users
    of this function on github (other than references to the documentation for it)


### [[USN-5956-1](https://ubuntu.com/security/notices/USN-5956-1), [USN-5956-2](https://ubuntu.com/security/notices/USN-5956-2)] PHPMailer vulnerabilities [02:03] {#usn-5956-1-usn-5956-2-phpmailer-vulnerabilities-02-03}

-   7 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2021-3603](https://ubuntu.com/security/CVE-2021-3603) <!-- medium -->
    -   [CVE-2020-13625](https://ubuntu.com/security/CVE-2020-13625) <!-- medium -->
    -   [CVE-2018-19296](https://ubuntu.com/security/CVE-2018-19296) <!-- medium -->
    -   [CVE-2017-5223](https://ubuntu.com/security/CVE-2017-5223) <!-- medium -->
    -   [CVE-2017-11503](https://ubuntu.com/security/CVE-2017-11503) <!-- low -->
    -   [CVE-2016-10045](https://ubuntu.com/security/CVE-2016-10045) <!-- medium -->
    -   [CVE-2016-10033](https://ubuntu.com/security/CVE-2016-10033) <!-- medium -->
-   email sending library for PHP
-   similarly, possible RCE since could possibly inject commands that would be
    passed to the shell when executing the underlying `mail` command - original
    patch didn't fix properly so second CVE was issued for the fix


### [[USN-5957-1](https://ubuntu.com/security/notices/USN-5957-1)] LibreCAD vulnerabilities [02:58] {#usn-5957-1-librecad-vulnerabilities-02-58}

-   7 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-45343](https://ubuntu.com/security/CVE-2021-45343) <!-- low -->
    -   [CVE-2021-45342](https://ubuntu.com/security/CVE-2021-45342) <!-- low -->
    -   [CVE-2021-45341](https://ubuntu.com/security/CVE-2021-45341) <!-- low -->
    -   [CVE-2021-21900](https://ubuntu.com/security/CVE-2021-21900) <!-- medium -->
    -   [CVE-2021-21899](https://ubuntu.com/security/CVE-2021-21899) <!-- medium -->
    -   [CVE-2021-21898](https://ubuntu.com/security/CVE-2021-21898) <!-- medium -->
    -   [CVE-2018-19105](https://ubuntu.com/security/CVE-2018-19105) <!-- medium -->
-   Various memory corruption issues when parsing DXF, DWG, DRW or JWW files
    -   OOB writes, UAFs, NULL ptr deref - RCE / DoS


### [[USN-5855-2](https://ubuntu.com/security/notices/USN-5855-2)] ImageMagick vulnerabilities [03:37] {#usn-5855-2-imagemagick-vulnerabilities-03-37}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-44268](https://ubuntu.com/security/CVE-2022-44268) <!-- medium -->
    -   [CVE-2022-44267](https://ubuntu.com/security/CVE-2022-44267) <!-- medium -->


### [[USN-5958-1](https://ubuntu.com/security/notices/USN-5958-1)] FFmpeg vulnerabilities [03:45] {#usn-5958-1-ffmpeg-vulnerabilities-03-45}

-   4 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-3965](https://ubuntu.com/security/CVE-2022-3965) <!-- medium -->
    -   [CVE-2022-3964](https://ubuntu.com/security/CVE-2022-3964) <!-- medium -->
    -   [CVE-2022-3341](https://ubuntu.com/security/CVE-2022-3341) <!-- medium -->
    -   [CVE-2022-3109](https://ubuntu.com/security/CVE-2022-3109) <!-- medium -->
-   2 NULL ptr derefs and 2 OOB reads -&gt; DoS


### [[USN-5954-1](https://ubuntu.com/security/notices/USN-5954-1)] Firefox vulnerabilities [03:59] {#usn-5954-1-firefox-vulnerabilities-03-59}

-   9 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2023-28161](https://ubuntu.com/security/CVE-2023-28161) <!-- low -->
    -   [CVE-2023-28164](https://ubuntu.com/security/CVE-2023-28164) <!-- medium -->
    -   [CVE-2023-28160](https://ubuntu.com/security/CVE-2023-28160) <!-- medium -->
    -   [CVE-2023-25751](https://ubuntu.com/security/CVE-2023-25751) <!-- medium -->
    -   [CVE-2023-28177](https://ubuntu.com/security/CVE-2023-28177) <!-- medium -->
    -   [CVE-2023-28176](https://ubuntu.com/security/CVE-2023-28176) <!-- medium -->
    -   [CVE-2023-28162](https://ubuntu.com/security/CVE-2023-28162) <!-- medium -->
    -   [CVE-2023-25752](https://ubuntu.com/security/CVE-2023-25752) <!-- medium -->
    -   [CVE-2023-25750](https://ubuntu.com/security/CVE-2023-25750) <!-- medium -->
-   111.0
    -   usual mix of issues for web engines (DoS, info leak across domains, RCE) if
        visited a malicious website
    -   memory corruption, plus a few logic issues that could be used to either
        cause firefox to leak local information back to the web server or spoof
        parts of the UI etc


### [[USN-5961-1](https://ubuntu.com/security/notices/USN-5961-1)] abcm2ps vulnerabilities {#usn-5961-1-abcm2ps-vulnerabilities}

-   6 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2021-32436](https://ubuntu.com/security/CVE-2021-32436) <!-- medium -->
    -   [CVE-2021-32435](https://ubuntu.com/security/CVE-2021-32435) <!-- medium -->
    -   [CVE-2021-32434](https://ubuntu.com/security/CVE-2021-32434) <!-- medium -->
    -   [CVE-2019-1010069](https://ubuntu.com/security/CVE-2019-1010069) <!-- low -->
    -   [CVE-2018-10771](https://ubuntu.com/security/CVE-2018-10771) <!-- medium -->
    -   [CVE-2018-10753](https://ubuntu.com/security/CVE-2018-10753) <!-- medium -->


### [[USN-5962-1](https://ubuntu.com/security/notices/USN-5962-1)] Linux kernel (Intel IoTG) vulnerabilities [04:47] {#usn-5962-1-linux-kernel--intel-iotg--vulnerabilities-04-47}

-   18 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-26605](https://ubuntu.com/security/CVE-2023-26605) <!-- medium -->
    -   [CVE-2023-0468](https://ubuntu.com/security/CVE-2023-0468) <!-- medium -->
    -   [CVE-2022-47521](https://ubuntu.com/security/CVE-2022-47521) <!-- medium -->
    -   [CVE-2022-47520](https://ubuntu.com/security/CVE-2022-47520) <!-- medium -->
    -   [CVE-2022-47519](https://ubuntu.com/security/CVE-2022-47519) <!-- low -->
    -   [CVE-2022-47518](https://ubuntu.com/security/CVE-2022-47518) <!-- low -->
    -   [CVE-2022-45869](https://ubuntu.com/security/CVE-2022-45869) <!-- medium -->
    -   [CVE-2022-4379](https://ubuntu.com/security/CVE-2022-4379) <!-- medium -->
    -   [CVE-2022-42329](https://ubuntu.com/security/CVE-2022-42329) <!-- medium -->
    -   [CVE-2022-42328](https://ubuntu.com/security/CVE-2022-42328) <!-- medium -->
    -   [CVE-2022-4139](https://ubuntu.com/security/CVE-2022-4139) <!-- medium -->
    -   [CVE-2022-3545](https://ubuntu.com/security/CVE-2022-3545) <!-- medium -->
    -   [CVE-2022-3521](https://ubuntu.com/security/CVE-2022-3521) <!-- medium -->
    -   [CVE-2022-3435](https://ubuntu.com/security/CVE-2022-3435) <!-- medium -->
    -   [CVE-2022-3344](https://ubuntu.com/security/CVE-2022-3344) <!-- medium -->
    -   [CVE-2022-3169](https://ubuntu.com/security/CVE-2022-3169) <!-- medium -->
    -   [CVE-2023-0179](https://ubuntu.com/security/CVE-2023-0179) <!-- high -->
    -   [CVE-2023-0461](https://ubuntu.com/security/CVE-2023-0461) <!-- high -->
-   two high priority issues
    -   netfilter mishandling of vlan headers - OOB write -&gt; crash / RCE
    -   UAF in upper-level protocol subsystem - can be triggered by local user -
        similarly, crash / RCE


### [[USN-5959-1](https://ubuntu.com/security/notices/USN-5959-1)] Kerberos vulnerabilities [05:32] {#usn-5959-1-kerberos-vulnerabilities-05-32}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-37750](https://ubuntu.com/security/CVE-2021-37750) <!-- medium -->
    -   [CVE-2021-36222](https://ubuntu.com/security/CVE-2021-36222) <!-- medium -->
-   NULL ptr derefs -&gt; crash in kerberos daemon -&gt; DoS


### [[USN-5960-1](https://ubuntu.com/security/notices/USN-5960-1)] Python vulnerability [05:51] {#usn-5960-1-python-vulnerability-05-51}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-24329](https://ubuntu.com/security/CVE-2023-24329) <!-- medium -->
-   possibly to bypass blocklists in `urllib.parse()` simply by prefixing the URL
    with a space - blocklisting is not part of upstream functionality but often
    would be implemented in application / library logic by first using `urlparse()`
    to parse the given URL - if prefixed with a space then can get `urlparse()` to
    fail to return the correct scheme/hostname - can workaround simply by first
    calling `strip()` on URL - apparently upstream still discussing whether the
    current fix is sufficient so watch this space


### [[USN-5963-1](https://ubuntu.com/security/notices/USN-5963-1)] Vim vulnerabilities [07:14] {#usn-5963-1-vim-vulnerabilities-07-14}

-   9 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-1264](https://ubuntu.com/security/CVE-2023-1264) <!-- medium -->
    -   [CVE-2023-1175](https://ubuntu.com/security/CVE-2023-1175) <!-- medium -->
    -   [CVE-2023-1170](https://ubuntu.com/security/CVE-2023-1170) <!-- medium -->
    -   [CVE-2023-0051](https://ubuntu.com/security/CVE-2023-0051) <!-- medium -->
    -   [CVE-2023-0433](https://ubuntu.com/security/CVE-2023-0433) <!-- medium -->
    -   [CVE-2023-0288](https://ubuntu.com/security/CVE-2023-0288) <!-- medium -->
    -   [CVE-2023-0054](https://ubuntu.com/security/CVE-2023-0054) <!-- medium -->
    -   [CVE-2023-0049](https://ubuntu.com/security/CVE-2023-0049) <!-- medium -->
    -   [CVE-2022-47024](https://ubuntu.com/security/CVE-2022-47024) <!-- medium -->
-   moar vim vulns from bug-bounty - all found via fuzzing of vim - all memory
    corruption vulns -&gt; DoS / RCE


### [[USN-5964-1](https://ubuntu.com/security/notices/USN-5964-1)] curl vulnerabilities [07:41] {#usn-5964-1-curl-vulnerabilities-07-41}

-   5 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-27538](https://ubuntu.com/security/CVE-2023-27538) <!-- low -->
    -   [CVE-2023-27536](https://ubuntu.com/security/CVE-2023-27536) <!-- low -->
    -   [CVE-2023-27535](https://ubuntu.com/security/CVE-2023-27535) <!-- medium -->
    -   [CVE-2023-27534](https://ubuntu.com/security/CVE-2023-27534) <!-- low -->
    -   [CVE-2023-27533](https://ubuntu.com/security/CVE-2023-27533) <!-- low -->
-   various connection reuse issues - eg. would reuse an SSH connection even if
    caller had changed an SSH option - similar for FTP.
-   mishandling of ~ in SFTP could then allow access to unintended files (would
    expand even if not the first part of the path)


### [[USN-5806-3](https://ubuntu.com/security/notices/USN-5806-3)] Ruby vulnerability [08:43] {#usn-5806-3-ruby-vulnerability-08-43}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-33621](https://ubuntu.com/security/CVE-2021-33621) <!-- medium -->


### [[USN-5965-1](https://ubuntu.com/security/notices/USN-5965-1)] TigerVNC vulnerability [08:53] {#usn-5965-1-tigervnc-vulnerability-08-53}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-26117](https://ubuntu.com/security/CVE-2020-26117) <!-- medium -->
-   when processing a TLS certificate, would store that internally as a
    certificate authority - then if client connected to a different server would
    use that stored cert as a CA cert to validate the new server - could then
    allow a malicious server to impersonate other servers


### [[USN-5904-2](https://ubuntu.com/security/notices/USN-5904-2)] SoX regression [09:35] {#usn-5904-2-sox-regression-09-35}

-   9 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-31651](https://ubuntu.com/security/CVE-2022-31651) <!-- low -->
    -   [CVE-2022-31650](https://ubuntu.com/security/CVE-2022-31650) <!-- low -->
    -   [CVE-2021-40426](https://ubuntu.com/security/CVE-2021-40426) <!-- medium -->
    -   [CVE-2021-3643](https://ubuntu.com/security/CVE-2021-3643) <!-- medium -->
    -   [CVE-2021-23210](https://ubuntu.com/security/CVE-2021-23210) <!-- low -->
    -   [CVE-2021-23172](https://ubuntu.com/security/CVE-2021-23172) <!-- medium -->
    -   [CVE-2021-23159](https://ubuntu.com/security/CVE-2021-23159) <!-- medium -->
    -   [CVE-2019-13590](https://ubuntu.com/security/CVE-2019-13590) <!-- medium -->
    -   [CVE-2021-33844](https://ubuntu.com/security/CVE-2021-33844) <!-- medium -->
-   Fix for one of the vulns fixed in the original update was incomplete


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 20.04.6 LTS Released [09:49] {#ubuntu-20-dot-04-dot-6-lts-released-09-49}

-   <https://lists.ubuntu.com/archives/ubuntu-announce/2023-March/000287.html>
-   <https://wiki.ubuntu.com/FocalFossa/ReleaseSchedule>
-   Wasn't originally planned to be released

> Unlike previous point releases, 20.04.6 is a refresh of the amd64
> installer media after recent key revocations, re-enabling their usage
> on Secure Boot enabled systems.
>
> Many other security updates for additional high-impact bug fixes are also
> included, with a focus on maintaining stability and compatibility with
> Ubuntu 20.04 LTS.

-   TL;DR - recent vulnerabilities in shim and grub meant that we revoked those
    old versions such that they would not boot anymore if updates had been
    installed - so if wanted to reinstall using the 20.04.5 media it would fail to
    boot. Can prove this to yourself:

<!--listend-->

```shell
cat /sys/firmware/efi/efivars/SbatLevelRT-605dab50-e046-4300-abb6-3dd810dd8b23
```

```text
sbat,1,2022052400
grub,2
```

```shell
objdump -j .sbat -s grubx64.efi
```


### Ubuntu Security at Everything Open 2023 [12:02] {#ubuntu-security-at-everything-open-2023-12-02}

-   <https://ubuntu.com/blog/everything-open-2023-in-melbourne>
-   <https://2023.everythingopen.au/schedule/presentation/64/>
-   Presented about how the Ubuntu Security keeps Ubuntu secure and also gave
    advice on how you can improve the security of your own open source projects


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
