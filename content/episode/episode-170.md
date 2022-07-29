+++
title = "Episode 170"
description = """
  This week we're diving down into the depths of binary exploitation and
  analysis, looking at a number of recent vulnerability and malware
  teardowns, plus we cover security updates for FreeType, PHP, ImageMagick,
  protobuf-c and more.
  """
date = 2022-07-29T14:36:00+09:30
lastmod = 2022-07-29T14:38:49+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E170.mp3"
podcast_duration = 669
podcast_bytes = 9252288
permalink = "https://ubuntusecuritypodcast.org/episode-170/"
guid = "7f865994becd82b4b740912dcdec4611f3c1aa21498d64af237b68281f63af8b6ccef116c10f64b7a2837fecfd3747c5a83e2196f99070f116a6352625598db2"
+++

## Overview {#overview}

This week we're diving down into the depths of binary exploitation and
analysis, looking at a number of recent vulnerability and malware
teardowns, plus we cover security updates for FreeType, PHP, ImageMagick,
protobuf-c and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

22 unique CVEs addressed


### [[USN-5528-1](https://ubuntu.com/security/notices/USN-5528-1)] FreeType vulnerabilities [01:03] {#usn-5528-1-freetype-vulnerabilities-01-03}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-31782](https://ubuntu.com/security/CVE-2022-31782) <!-- medium -->
    -   [CVE-2022-27406](https://ubuntu.com/security/CVE-2022-27406) <!-- low -->
    -   [CVE-2022-27405](https://ubuntu.com/security/CVE-2022-27405) <!-- low -->
    -   [CVE-2022-27404](https://ubuntu.com/security/CVE-2022-27404) <!-- medium -->
-   Various heap buffer overflows - all which could be triggered from a
    crafted font file


### [[USN-5529-1](https://ubuntu.com/security/notices/USN-5529-1)] Linux kernel (OEM) vulnerabilities [01:22] {#usn-5529-1-linux-kernel--oem--vulnerabilities-01-22}

-   11 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-1652](https://ubuntu.com/security/CVE-2022-1652) <!-- medium -->
    -   [CVE-2022-34495](https://ubuntu.com/security/CVE-2022-34495) <!-- medium -->
    -   [CVE-2022-34494](https://ubuntu.com/security/CVE-2022-34494) <!-- medium -->
    -   [CVE-2022-21166](https://ubuntu.com/security/CVE-2022-21166) <!-- medium -->
    -   [CVE-2022-21125](https://ubuntu.com/security/CVE-2022-21125) <!-- medium -->
    -   [CVE-2022-21123](https://ubuntu.com/security/CVE-2022-21123) <!-- medium -->
    -   [CVE-2022-2078](https://ubuntu.com/security/CVE-2022-2078) <!-- medium -->
    -   [CVE-2022-1973](https://ubuntu.com/security/CVE-2022-1973) <!-- medium -->
    -   [CVE-2022-1852](https://ubuntu.com/security/CVE-2022-1852) <!-- medium -->
    -   [CVE-2022-1789](https://ubuntu.com/security/CVE-2022-1789) <!-- medium -->
    -   [CVE-2022-1679](https://ubuntu.com/security/CVE-2022-1679) <!-- medium -->
-   5.17 22.04 LTS OEM


### [[USN-5530-1](https://ubuntu.com/security/notices/USN-5530-1)] PHP vulnerability [01:41] {#usn-5530-1-php-vulnerability-01-41}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-31627](https://ubuntu.com/security/CVE-2022-31627) <!-- medium -->
-   php-8.1 in 22.04 LTS - heap buffer overflow in `finfo_buffer` function -
    used to get info etc from a binary string - in the example in the
    upstream documentation shows using this function to get the MIME info of
    a `$_POST` parameter - so likely this is being used in a bunch of places on
    untrusted data - DoS/RCE


### [[USN-5532-1](https://ubuntu.com/security/notices/USN-5532-1)] Bottle vulnerability [02:34] {#usn-5532-1-bottle-vulnerability-02-34}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-31799](https://ubuntu.com/security/CVE-2022-31799) <!-- medium -->
-   Python framework for building web-applications
-   Failed to handle errors properly - could allow a remote request to
    trigger an exception -&gt; DoS


### [[USN-5533-1](https://ubuntu.com/security/notices/USN-5533-1)] Vim vulnerability [02:50] {#usn-5533-1-vim-vulnerability-02-50}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-2129](https://ubuntu.com/security/CVE-2022-2129) <!-- low -->
-   Another OOB write in vim -&gt; crash / RCE


### [[USN-5534-1](https://ubuntu.com/security/notices/USN-5534-1)] ImageMagick vulnerabilities [02:58] {#usn-5534-1-imagemagick-vulnerabilities-02-58}

-   3 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-32547](https://ubuntu.com/security/CVE-2022-32547) <!-- medium -->
    -   [CVE-2022-32546](https://ubuntu.com/security/CVE-2022-32546) <!-- medium -->
    -   [CVE-2022-32545](https://ubuntu.com/security/CVE-2022-32545) <!-- medium -->
-   Someone has been running ImageMagick via UBSAN - found a number of cases
    of possible UB - impact is not clear but could be possible to crash/RCE
    etc


### [[USN-5531-1](https://ubuntu.com/security/notices/USN-5531-1)] protobuf-c vulnerability [02:32] {#usn-5531-1-protobuf-c-vulnerability-02-32}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-33070](https://ubuntu.com/security/CVE-2022-33070) <!-- medium -->
-   Used to compile protobuf specification to C code along with a library
    which is then linked against that generated code to marshal/unmarshal
    protobuf's
-   Invalid arithmetic shift - previous code would right shift signed values
    which is implementation defined - so depending on what compiler was used
    could have different behaviour - and thus result in code that would write
    outside of memory bounds etc - fixed by converting the code to cast to
    unsigned type before shifting so that the behaviour is known


## Goings on in Linux Security Community {#goings-on-in-linux-security-community}


### Introduction to x64 Linux Binary Exploitation by [@ch0pin](https://twitter.com/ch0pin) [04:24] {#introduction-to-x64-linux-binary-exploitation-by-ch0pin-04-24}

-   Great series of blog posts from earlier this year
-   Starts by creating a small program with a basic stack buffer overflow
    vulnerability
-   Then disables all the various hardening features which have been added to
    Ubuntu to then allow it to be easily exploited
-   Along the way explains memory layout, processor architecture etc to help
    understand the process of developing exploits
-   Further blog posts in the series then start to enable the various
    hardening features one-by-one and in the process walk through more
    detailed and complex techniques for defeating these
-   Great insight to the process - also includes good references along the
    way to other sources of documentation / information on related concepts


#### Part 1 - Basic Buffer Overflow {#part-1-basic-buffer-overflow}

-   <https://valsamaras.medium.com/introduction-to-x64-linux-binary-exploitation-part-1-14ad4a27aeef>


#### Part 2 - Return into libc {#part-2-return-into-libc}

-   <https://valsamaras.medium.com/introduction-to-x64-binary-exploitation-part-2-return-into-libc-c325017f465>


#### Part 3 - RoP gadgets and chain {#part-3-rop-gadgets-and-chain}

-   <https://valsamaras.medium.com/introduction-to-x64-linux-binary-exploitation-part-3-rop-chains-3cdcf17e8826>


#### Part 4 - Stack Canaries {#part-4-stack-canaries}

-   <https://valsamaras.medium.com/introduction-to-x64-linux-binary-exploitation-part-4-stack-canaries-e9b6dd2c3127>


#### Part 5 - ASLR overview and bypass technique {#part-5-aslr-overview-and-bypass-technique}

-   <https://valsamaras.medium.com/introduction-to-x64-linux-binary-exploitation-part-5-aslr-394d0dc8e4fb>


### CVE-2022-20186 vulnerability + exploit walkthrough by Github [07:04] {#cve-2022-20186-vulnerability-plus-exploit-walkthrough-by-github-07-04}

-   <https://github.blog/2022-07-27-corrupting-memory-without-memory-corruption/>
-   Vulnerability in the ARM Mali GPU driver in the Android kernel
-   Walks through the code to give a good understanding of how memory pages
    are handled by the driver and then eventually how this can be exploited
    from userspace to overwrite arbitrary kernel memory due to an integer
    overflow bug
-   Even includes an exploit for Pixel 6 (patched with the June Pixel update
    from Google)
-   Interesting footnote about how the patch for the vuln was visible in the
    Android tree 2 weeks before the vulnerability was disclosed


### A detailed technical teardown of Symbiote by [@GeeksCyber](https://twitter.com/GeeksCyber) [08:49] {#a-detailed-technical-teardown-of-symbiote-by-geekscyber-08-49}

-   <https://cybergeeks.tech/how-to-analyze-linux-malware-a-case-study-of-symbiote/>
-   We covered a different teardown of Symbiote back in [Episode 163](https://ubuntusecuritypodcast.org/episode-163/) - this
    one has a fair bit more technical details along with disassembled code
    sections - good chance to put your skills in Linux binary exploitation to
    the test to follow along with the analysis


### The Utopic Tale of Ubuntu by the Linux User Space podcast [09:31] {#the-utopic-tale-of-ubuntu-by-the-linux-user-space-podcast-09-31}

-   <https://www.linuxuserspace.show/302>
-   Starts around 9:45 - covers every year of Ubuntu from 2004 through to now
    along with the major developments / highlights and some low-lights along
    the way
-   Great walk down memory lane / background for those new to Ubuntu
-   Not really security specific but is a great listen (beware goes for over
    1.5 hours)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)