+++
title = "Episode 72"
description = """
  A huge number of CVEs fixed in the various Ubuntu releases, including for
  PHP, Git, Thunderbird, GNU binutils and more, plus Joe McManus discusses
  ROS with Sid Faber.
  """
date = 2020-04-24T10:46:00+09:30
lastmod = 2020-05-15T16:38:19+09:30
draft = false
weight = 1003
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E072.mp3"
podcast_duration = "20:53"
podcast_bytes = 20060487
permalink = "https://ubuntusecuritypodcast.org/episode-72/"
guid = "750d3ead49a7caba8b2c33f3c220a1dccf0448ec1eb8b808b93da36dcd80fe057a46919509210da2954652e54e721fcdfb9199e5231c363081fba8129b12b9f1"
+++

## Overview {#overview}

A huge number of CVEs fixed in the various Ubuntu releases, including for
PHP, Git, Thunderbird, GNU binutils and more, plus Joe McManus discusses
ROS with Sid Faber.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

93 unique CVEs addressed


### [[USN-4330-1](https://usn.ubuntu.com/4330-1/)] PHP vulnerabilities [01:03] {#usn-4330-1-php-vulnerabilities-01-03}

-   5 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Eoan
    -   [CVE-2020-7066](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7066)
    -   [CVE-2020-7065](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7065)
    -   [CVE-2020-7064](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7064)
    -   [CVE-2020-7063](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7063)
    -   [CVE-2020-7062](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7062)
-   php5, php7.0, php7.2, php7.3
-   get\_headers() would silently truncate a URL containing a NUL terminator
    (\\0) - so if used with user-supplied URL could get wrong details from the
    server
-   stack overflow in mb\_strtolower() when handling UTF32-LE encoding
-   1 byte buffer overread in handling EXIF data - info leak / crash
-   PHAR archives created with world readable permissions
-   NULL pointer dereference on file upload in certain situations -> crash


### [[USN-4331-1](https://usn.ubuntu.com/4331-1/)] WebKitGTK+ vulnerability [02:32] {#usn-4331-1-webkitgtk-plus-vulnerability-02-32}

-   1 CVEs addressed in Bionic, Eoan
    -   [CVE-2020-11793](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11793)
-   UAF when processing maliciously crafted web content


### [[USN-4332-1](https://usn.ubuntu.com/4332-1/)] File Roller vulnerability [02:51] {#usn-4332-1-file-roller-vulnerability-02-51}

-   1 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-11736](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11736)
-   Possible directory traversal issue when extracting an archive where
    parent of file is a symlink pointing outside of the archive


### [[USN-4334-1](https://usn.ubuntu.com/4334-1/)] Git vulnerability [03:08] {#usn-4334-1-git-vulnerability-03-08}

-   1 CVEs addressed in Xenial, Bionic, Eoan
    -   [CVE-2020-11008](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11008)
    -   Similar to [CVE-2020-5260](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-5260) from [Episode 71](https://ubuntusecuritypodcast.org/episode-71/) - due to an incomplete fix for
        that where some credentials may still be leaked but the attacker cannot
        control which ones


### [[USN-4333-1](https://usn.ubuntu.com/4333-1/)] Python vulnerabilities [03:47] {#usn-4333-1-python-vulnerabilities-03-47}

-   2 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Eoan
    -   [CVE-2020-8492](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8492)
    -   [CVE-2019-18348](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18348)
-   CRLF injection via an attacker controlled url parameter to urlopen()
    function in urllib


### [[USN-4335-1](https://usn.ubuntu.com/4335-1/)] Thunderbird vulnerabilities [04:09] {#usn-4335-1-thunderbird-vulnerabilities-04-09}

-   39 CVEs addressed in Xenial
    -   [CVE-2020-6811](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6811)
    -   [CVE-2020-6794](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6794)
    -   [CVE-2020-6822](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6822)
    -   [CVE-2020-6795](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6795)
    -   [CVE-2020-6793](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6793)
    -   [CVE-2020-6792](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6792)
    -   [CVE-2019-15903](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15903)
    -   [CVE-2019-11755](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11755)
    -   [CVE-2019-11745](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11745)
    -   [CVE-2020-6825](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6825)
    -   [CVE-2020-6821](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6821)
    -   [CVE-2020-6820](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6820)
    -   [CVE-2020-6819](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6819)
    -   [CVE-2020-6814](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6814)
    -   [CVE-2020-6812](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6812)
    -   [CVE-2020-6807](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6807)
    -   [CVE-2020-6806](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6806)
    -   [CVE-2020-6805](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6805)
    -   [CVE-2020-6800](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6800)
    -   [CVE-2020-6798](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-6798)
    -   [CVE-2019-20503](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20503)
    -   [CVE-2019-17026](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17026)
    -   [CVE-2019-17024](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17024)
    -   [CVE-2019-17022](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17022)
    -   [CVE-2019-17017](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17017)
    -   [CVE-2019-17016](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17016)
    -   [CVE-2019-17012](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17012)
    -   [CVE-2019-17011](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17011)
    -   [CVE-2019-17010](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17010)
    -   [CVE-2019-17008](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17008)
    -   [CVE-2019-17005](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17005)
    -   [CVE-2019-11764](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11764)
    -   [CVE-2019-11763](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11763)
    -   [CVE-2019-11762](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11762)
    -   [CVE-2019-11761](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11761)
    -   [CVE-2019-11760](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11760)
    -   [CVE-2019-11759](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11759)
    -   [CVE-2019-11758](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11758)
    -   [CVE-2019-11757](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11757)
-   Updated to latest upstream version 68.7.0


### [[USN-4336-1](https://usn.ubuntu.com/4336-1/)] GNU binutils vulnerabilities [04:46] {#usn-4336-1-gnu-binutils-vulnerabilities-04-46}

-   44 CVEs addressed in Bionic
    -   [CVE-2019-9077](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9077)
    -   [CVE-2019-9075](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9075)
    -   [CVE-2019-9074](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9074)
    -   [CVE-2019-9073](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9073)
    -   [CVE-2019-9071](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9071)
    -   [CVE-2019-9070](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9070)
    -   [CVE-2019-17451](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17451)
    -   [CVE-2019-17450](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17450)
    -   [CVE-2019-14444](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14444)
    -   [CVE-2019-14250](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14250)
    -   [CVE-2019-12972](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12972)
    -   [CVE-2018-9138](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-9138)
    -   [CVE-2018-8945](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-8945)
    -   [CVE-2018-20671](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20671)
    -   [CVE-2018-20651](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20651)
    -   [CVE-2018-20623](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20623)
    -   [CVE-2018-20002](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20002)
    -   [CVE-2018-19932](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19932)
    -   [CVE-2018-19931](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19931)
    -   [CVE-2018-18701](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18701)
    -   [CVE-2018-18700](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18700)
    -   [CVE-2018-18607](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18607)
    -   [CVE-2018-18606](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18606)
    -   [CVE-2018-18605](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18605)
    -   [CVE-2018-18484](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18484)
    -   [CVE-2018-18483](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18483)
    -   [CVE-2018-18309](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18309)
    -   [CVE-2018-17985](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17985)
    -   [CVE-2018-17794](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17794)
    -   [CVE-2018-17360](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17360)
    -   [CVE-2018-17359](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17359)
    -   [CVE-2018-17358](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-17358)
    -   [CVE-2018-13033](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13033)
    -   [CVE-2018-12934](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12934)
    -   [CVE-2018-12700](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12700)
    -   [CVE-2018-12699](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12699)
    -   [CVE-2018-12698](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12698)
    -   [CVE-2018-12697](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12697)
    -   [CVE-2018-12641](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-12641)
    -   [CVE-2018-10535](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10535)
    -   [CVE-2018-10534](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10534)
    -   [CVE-2018-10373](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10373)
    -   [CVE-2018-10372](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-10372)
    -   [CVE-2018-1000876](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000876)
-   Huge update covering many issues - thanks Marc Deslauriers - mostly in
    low severity issues like memory leaks in functions / utilities which are
    used only once or which are assumed to process trusted input.
-   Often requested by customers who run vuln scanners - finds many open
    issues but doesn't consider low severity - only 3 out of 44 had medium
    severity


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe McManus talks ROS & ROS2 with Sid Faber from the Ubuntu Security Team [06:26] {#joe-mcmanus-talks-ros-and-ros2-with-sid-faber-from-the-ubuntu-security-team-06-26}


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)