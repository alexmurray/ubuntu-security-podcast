+++
title = "Episode 106"
description = """
  This week we talk about more BootHole-like vulnerabilities in GRUB2, a
  Spectre exploit found in-the-wild, security updates for xterm, screen,
  Python, wpa\\_supplicant and more.
  """
date = 2021-03-04T15:38:00+10:30
lastmod = 2021-03-04T15:39:07+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E106.mp3"
podcast_duration = "14:00"
podcast_bytes = 11510651
permalink = "https://ubuntusecuritypodcast.org/episode-106/"
guid = "85ce611b78e86ab697836030bbe87fac13492f26f69c3e578cdd3d689bd2801603926023f74a31e4ad4b1303355e3c838eb34f5461543ec773c8e7466906ff0f"
+++

## Overview {#overview}

This week we talk about more BootHole-like vulnerabilities in GRUB2, a
Spectre exploit found in-the-wild, security updates for xterm, screen,
Python, wpa\_supplicant and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

52 unique CVEs addressed


### [[USN-4698-2](https://ubuntu.com/security/notices/USN-4698-2)] Dnsmasq regression [00:44] {#usn-4698-2-dnsmasq-regression-00-44}

-   8 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2019-14834](https://ubuntu.com/security/CVE-2019-14834)
    -   [CVE-2020-25686](https://ubuntu.com/security/CVE-2020-25686)
    -   [CVE-2020-25685](https://ubuntu.com/security/CVE-2020-25685)
    -   [CVE-2020-25684](https://ubuntu.com/security/CVE-2020-25684)
    -   [CVE-2020-25683](https://ubuntu.com/security/CVE-2020-25683)
    -   [CVE-2020-25682](https://ubuntu.com/security/CVE-2020-25682)
    -   [CVE-2020-25687](https://ubuntu.com/security/CVE-2020-25687)
    -   [CVE-2020-25681](https://ubuntu.com/security/CVE-2020-25681)
-   Relates to a dnsmasq update done back in January - upstream fixes results
    in regressions in some network environments - backported the resulting
    additional fixes from upstream to resolve these


### [[USN-4746-1](https://ubuntu.com/security/notices/USN-4746-1)] xterm vulnerability [01:14] {#usn-4746-1-xterm-vulnerability-01-14}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021 -27135](https://ubuntu.com/security/CVE-2021-27135)
-   taviso - crafted UTF-8 could cause a crash - related to very similar bug
    in screen


### [[USN-4747-1](https://ubuntu.com/security/notices/USN-4747-1), [USN-4747-2](https://ubuntu.com/security/notices/USN-4747-2)] GNU Screen vulnerability {#usn-4747-1-usn-4747-2-gnu-screen-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-26937](https://ubuntu.com/security/CVE-2021-26937)
-   Crash in screen from crafted UTF-8 - found by users crashing a minecraft
    server with this crafted content - ? - server was running under screen so
    would log this crafted content - screen dies, minecraft server dies -
    lots of tutorials for running a minecraft server mention to run it under
    screen so this is a common thing apparently


### [[USN-4748-1](https://ubuntu.com/security/notices/USN-4748-1)] Linux kernel vulnerabilities [02:54] {#usn-4748-1-linux-kernel-vulnerabilities-02-54}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2020-29661](https://ubuntu.com/security/CVE-2020-29661)
    -   [CVE-2020-29660](https://ubuntu.com/security/CVE-2020-29660)
    -   [CVE-2020-29568](https://ubuntu.com/security/CVE-2020-29568)
    -   [CVE-2020-29374](https://ubuntu.com/security/CVE-2020-29374)
    -   [CVE-2020-27815](https://ubuntu.com/security/CVE-2020-27815)


### [[USN-4749-1](https://ubuntu.com/security/notices/USN-4749-1)] Linux kernel vulnerabilities {#usn-4749-1-linux-kernel-vulnerabilities}

-   9 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-29661](https://ubuntu.com/security/CVE-2020-29661)
    -   [CVE-2020-29660](https://ubuntu.com/security/CVE-2020-29660)
    -   [CVE-2020-29569](https://ubuntu.com/security/CVE-2020-29569)
    -   [CVE-2020-29568](https://ubuntu.com/security/CVE-2020-29568)
    -   [CVE-2020-29374](https://ubuntu.com/security/CVE-2020-29374)
    -   [CVE-2020-28941](https://ubuntu.com/security/CVE-2020-28941)
    -   [CVE-2020-27830](https://ubuntu.com/security/CVE-2020-27830)
    -   [CVE-2020-27815](https://ubuntu.com/security/CVE-2020-27815)
    -   [CVE-2020-25669](https://ubuntu.com/security/CVE-2020-25669)


### [[USN-4750-1](https://ubuntu.com/security/notices/USN-4750-1)] Linux kernel vulnerabilities {#usn-4750-1-linux-kernel-vulnerabilities}

-   10 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-20177](https://ubuntu.com/security/CVE-2021-20177)
    -   [CVE-2020-29661](https://ubuntu.com/security/CVE-2020-29661)
    -   [CVE-2020-29660](https://ubuntu.com/security/CVE-2020-29660)
    -   [CVE-2020-29569](https://ubuntu.com/security/CVE-2020-29569)
    -   [CVE-2020-29568](https://ubuntu.com/security/CVE-2020-29568)
    -   [CVE-2020-28588](https://ubuntu.com/security/CVE-2020-28588)
    -   [CVE-2020-28941](https://ubuntu.com/security/CVE-2020-28941)
    -   [CVE-2020-27830](https://ubuntu.com/security/CVE-2020-27830)
    -   [CVE-2020-27815](https://ubuntu.com/security/CVE-2020-27815)
    -   [CVE-2020-25669](https://ubuntu.com/security/CVE-2020-25669)


### [[USN-4751-1](https://ubuntu.com/security/notices/USN-4751-1)] Linux kernel vulnerabilities {#usn-4751-1-linux-kernel-vulnerabilities}

-   18 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-35508](https://ubuntu.com/security/CVE-2020-35508)
    -   [CVE-2020-29661](https://ubuntu.com/security/CVE-2020-29661)
    -   [CVE-2020-29660](https://ubuntu.com/security/CVE-2020-29660)
    -   [CVE-2020-29569](https://ubuntu.com/security/CVE-2020-29569)
    -   [CVE-2020-29568](https://ubuntu.com/security/CVE-2020-29568)
    -   [CVE-2020-28974](https://ubuntu.com/security/CVE-2020-28974)
    -   [CVE-2020-28588](https://ubuntu.com/security/CVE-2020-28588)
    -   [CVE-2020-27835](https://ubuntu.com/security/CVE-2020-27835)
    -   [CVE-2020-28941](https://ubuntu.com/security/CVE-2020-28941)
    -   [CVE-2020-27830](https://ubuntu.com/security/CVE-2020-27830)
    -   [CVE-2020-27815](https://ubuntu.com/security/CVE-2020-27815)
    -   [CVE-2020-27777](https://ubuntu.com/security/CVE-2020-27777)
    -   [CVE-2020-27675](https://ubuntu.com/security/CVE-2020-27675)
    -   [CVE-2020-27673](https://ubuntu.com/security/CVE-2020-27673)
    -   [CVE-2020-25704](https://ubuntu.com/security/CVE-2020-25704)
    -   [CVE-2020-25669](https://ubuntu.com/security/CVE-2020-25669)
    -   [CVE-2020-25668](https://ubuntu.com/security/CVE-2020-25668)
    -   [CVE-2020-25656](https://ubuntu.com/security/CVE-2020-25656)


### [[USN-4752-1](https://ubuntu.com/security/notices/USN-4752-1)] Linux kernel (OEM) vulnerabilities {#usn-4752-1-linux-kernel--oem--vulnerabilities}

-   20 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-35508](https://ubuntu.com/security/CVE-2020-35508)
    -   [CVE-2020-29661](https://ubuntu.com/security/CVE-2020-29661)
    -   [CVE-2020-29660](https://ubuntu.com/security/CVE-2020-29660)
    -   [CVE-2020-29371](https://ubuntu.com/security/CVE-2020-29371)
    -   [CVE-2020-29369](https://ubuntu.com/security/CVE-2020-29369)
    -   [CVE-2020-29368](https://ubuntu.com/security/CVE-2020-29368)
    -   [CVE-2020-28915](https://ubuntu.com/security/CVE-2020-28915)
    -   [CVE-2020-28588](https://ubuntu.com/security/CVE-2020-28588)
    -   [CVE-2020-27815](https://ubuntu.com/security/CVE-2020-27815)
    -   [CVE-2020-27152](https://ubuntu.com/security/CVE-2020-27152)
    -   [CVE-2020-25704](https://ubuntu.com/security/CVE-2020-25704)
    -   [CVE-2020-25643](https://ubuntu.com/security/CVE-2020-25643)
    -   [CVE-2020-25641](https://ubuntu.com/security/CVE-2020-25641)
    -   [CVE-2020-25284](https://ubuntu.com/security/CVE-2020-25284)
    -   [CVE-2020-25212](https://ubuntu.com/security/CVE-2020-25212)
    -   [CVE-2020-24490](https://ubuntu.com/security/CVE-2020-24490)
    -   [CVE-2020-15437](https://ubuntu.com/security/CVE-2020-15437)
    -   [CVE-2020-15436](https://ubuntu.com/security/CVE-2020-15436)
    -   [CVE-2020-14314](https://ubuntu.com/security/CVE-2020-14314)
    -   [CVE-2020-10135](https://ubuntu.com/security/CVE-2020-10135)


### [[USN-4753-1](https://ubuntu.com/security/notices/USN-4753-1)] Linux kernel (OEM) vulnerability {#usn-4753-1-linux-kernel--oem--vulnerability}

-   2 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-3178](https://ubuntu.com/security/CVE-2021-3178)
    -   [CVE-2020-28374](https://ubuntu.com/security/CVE-2020-28374)


### [[USN-4754-1](https://ubuntu.com/security/notices/USN-4754-1)] Python vulnerabilities [03:07] {#usn-4754-1-python-vulnerabilities-03-07}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-3177](https://ubuntu.com/security/CVE-2021-3177)
    -   [CVE-2020-27619](https://ubuntu.com/security/CVE-2020-27619)
-   unsafe sprintf() call to format doubles - heap buffer overflow - BUT on
    Ubuntu Python (like the vast majority of the archive) is compiled with
    FORTIFY\_SOURCE - just one of various hardening features - so can detect
    some buffer overflows at runtime - turns this into a DoS
-   test code calls eval on content received via HTTP - so if ran the tests
    and someone could interpose on connection, could get RCE


### [[USN-4754-2](https://ubuntu.com/security/notices/USN-4754-2)] Python regression {#usn-4754-2-python-regression}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-27619](https://ubuntu.com/security/CVE-2020-27619)
    -   [CVE-2021-3177](https://ubuntu.com/security/CVE-2021-3177)


### [[USN-4754-4](https://ubuntu.com/security/notices/USN-4754-4)] Python 2.7 vulnerability {#usn-4754-4-python-2-dot-7-vulnerability}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-27619](https://ubuntu.com/security/CVE-2020-27619)
    -   [CVE-2021-3177](https://ubuntu.com/security/CVE-2021-3177)


### [[USN-4755-1](https://ubuntu.com/security/notices/USN-4755-1)] LibTIFF vulnerabilities [04:21] {#usn-4755-1-libtiff-vulnerabilities-04-21}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-35524](https://ubuntu.com/security/CVE-2020-35524)
    -   [CVE-2020-35523](https://ubuntu.com/security/CVE-2020-35523)
-   Heap buffer overflow in tiff2pdf tool and integer overflow -> buffer
    overflow from crafted tiff file input


### [[USN-4737-2](https://ubuntu.com/security/notices/USN-4737-2)] Bind vulnerability [04:39] {#usn-4737-2-bind-vulnerability-04-39}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM)
    -   [CVE-2020-8625](https://ubuntu.com/security/CVE-2020-8625)
-   [Episode 105](https://ubuntusecuritypodcast.org/episode-105/)


### [[USN-4757-1](https://ubuntu.com/security/notices/USN-4757-1)] wpa\_supplicant and hostapd vulnerability [04:53] {#usn-4757-1-wpa-supplicant-and-hostapd-vulnerability-04-53}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-27803](https://ubuntu.com/security/CVE-2021-27803)
-   When using P2P could result in a UAF -> crash or possible RCE from a
    remote user within local radio range


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### GRUB2 Secure Boot Bypass 2021 [05:31] {#grub2-secure-boot-bypass-2021-05-31}

-   <https://ubuntu.com/blog/grub2-secure-boot-bypass-2021>
-   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/GRUB2SecureBootBypass2021>
-   <https://discourse.ubuntu.com/t/grub2-secureboot-bypass-2021-and-one-grub/21200>


### First Spectre Exploit discovered in the wild [09:47] {#first-spectre-exploit-discovered-in-the-wild-09-47}

-   <https://dustri.org/b/spectre-exploits-in-the-wild.html>
-   Uploaded to VT last month - not the first artefacts the use Spectre to be
    uploaded - back in 2018 the original PoCs and various variants thereof
    were uploaded to VT but these were all benign.
-   This one is a real exploit with versions targeting Windows and Linux -
    the Linux variant reads /etc/shadow by default - it does this by spawning
    a call to su to get the file paged into memory, then by walking in-kernel
    file-system structures through their spec exec read gadget to eventually
    read and dump out the file
-   Was developed by Immunity as part of their CANVAS tool
    (<https://vimeo.com/271127615>)


### Linux Mint to more forcefully encourage security updates be installed [12:02] {#linux-mint-to-more-forcefully-encourage-security-updates-be-installed-12-02}

-   <https://blog.linuxmint.com/?p=4037>
-   Update manager will track metrics, can then detect cases where updates
    are overlooked, remind or even insist to apply updates
-   Focus on not getting in the way, here to help, employ smart patters and
    usages, will be configurable etc
-   Still forming strategies but space to watch


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
