+++
title = "Episode 102"
description = """
  This week we discuss the recent high profile vulnerability found in
  libcrypt 1.9.0, plus we look at updates for the Linux kernel, XStream,
  Django, Apport and more.
  """
date = 2021-02-05T13:31:00+10:30
lastmod = 2022-05-15T18:06:18+09:30
draft = false
weight = 1058
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E102.mp3"
podcast_duration = "12:26"
podcast_bytes = 10341702
permalink = "https://ubuntusecuritypodcast.org/episode-102/"
guid = "ffb4cd66df50b87f415deaa1a9159cefa012a7dcc211647e7df815377c8b67217fe868f14e5defcb9ff8d15edfb5ba2fb1f655fac0fb93ac44f8a1da9b5bad5a"
+++

## Overview {#overview}

This week we discuss the recent high profile vulnerability found in
libcrypt 1.9.0, plus we look at updates for the Linux kernel, XStream,
Django, Apport and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

66 unique CVEs addressed


### [[USN-4705-2](https://ubuntu.com/security/notices/USN-4705-2)] Sudo vulnerability [00:48] {#usn-4705-2-sudo-vulnerability-00-48}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM)
    -   [CVE-2021-3156](https://ubuntu.com/security/CVE-2021-3156) <!-- high -->
-   [Episode 101](https://ubuntusecuritypodcast.org/episode-101/)


### [[USN-4708-1](https://ubuntu.com/security/notices/USN-4708-1)] Linux kernel vulnerabilities {#usn-4708-1-linux-kernel-vulnerabilities}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2020-27777](https://ubuntu.com/security/CVE-2020-27777) <!-- medium -->
    -   [CVE-2020-25669](https://ubuntu.com/security/CVE-2020-25669) <!-- low -->
    -   [CVE-2019-19816](https://ubuntu.com/security/CVE-2019-19816) <!-- low -->
    -   [CVE-2019-19813](https://ubuntu.com/security/CVE-2019-19813) <!-- low -->
    -   [CVE-2018-13093](https://ubuntu.com/security/CVE-2018-13093) <!-- low -->


### [[USN-4709-1](https://ubuntu.com/security/notices/USN-4709-1)] Linux kernel vulnerabilities {#usn-4709-1-linux-kernel-vulnerabilities}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2020-25669](https://ubuntu.com/security/CVE-2020-25669) <!-- low -->
    -   [CVE-2019-19816](https://ubuntu.com/security/CVE-2019-19816) <!-- low -->
    -   [CVE-2019-19813](https://ubuntu.com/security/CVE-2019-19813) <!-- low -->
    -   [CVE-2018-13093](https://ubuntu.com/security/CVE-2018-13093) <!-- low -->
    -   [CVE-2020-28374](https://ubuntu.com/security/CVE-2020-28374) <!-- high -->


### [[USN-4710-1](https://ubuntu.com/security/notices/USN-4710-1)] Linux kernel vulnerability {#usn-4710-1-linux-kernel-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-25704](https://ubuntu.com/security/CVE-2020-25704) <!-- medium -->


### [[USN-4711-1](https://ubuntu.com/security/notices/USN-4711-1)] Linux kernel vulnerabilities {#usn-4711-1-linux-kernel-vulnerabilities}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-25704](https://ubuntu.com/security/CVE-2020-25704) <!-- medium -->
    -   [CVE-2020-28374](https://ubuntu.com/security/CVE-2020-28374) <!-- high -->


### [[USN-4712-1](https://ubuntu.com/security/notices/USN-4712-1)] Linux kernel regression {#usn-4712-1-linux-kernel-regression}

-   Affecting Focal (20.04 LTS), Groovy (20.10)


### [[USN-4713-1](https://ubuntu.com/security/notices/USN-4713-1)] Linux kernel vulnerability [01:31] {#usn-4713-1-linux-kernel-vulnerability-01-31}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-28374](https://ubuntu.com/security/CVE-2020-28374) <!-- high -->
-   XCOPY requests in the LIO SCSI target would not properly check
    permissions of the requester and so could allow an attacker to access
    backing stores to which they did not have permission. If using iSCSI,
    this could then be exploited over the network to access other LUNs
    etc. Also affected tcmu-runner which is the userspace daemon for handling
    requests in userspace and can be used for HA setups etc.


### [[USN-4707-1](https://ubuntu.com/security/notices/USN-4707-1)] TCMU vulnerability [02:23] {#usn-4707-1-tcmu-vulnerability-02-23}

-   1 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-3139](https://ubuntu.com/security/CVE-2021-3139) <!-- medium -->
-   Separate CVE was assigned but is the same issue as for the kernel above


### [LSN-0074-1] Linux kernel vulnerability [02:40] {#lsn-0074-1-linux-kernel-vulnerability-02-40}

-   4 CVEs addressed
    -   [CVE-2020-28374](https://ubuntu.com/security/CVE-2020-28374) <!-- high -->
    -   [CVE-2020-25645](https://ubuntu.com/security/CVE-2020-25645) <!-- medium -->
    -   [CVE-2020-12352](https://ubuntu.com/security/CVE-2020-12352) <!-- medium -->
    -   [CVE-2020-0427](https://ubuntu.com/security/CVE-2020-0427) <!-- medium -->


### [[USN-4706-1](https://ubuntu.com/security/notices/USN-4706-1)] Ceph vulnerabilities [02:55] {#usn-4706-1-ceph-vulnerabilities-02-55}

-   4 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-25660](https://ubuntu.com/security/CVE-2020-25660) <!-- medium -->
    -   [CVE-2018-1128](https://ubuntu.com/security/CVE-2018-1128) <!-- medium -->
    -   [CVE-2020-10753](https://ubuntu.com/security/CVE-2020-10753) <!-- medium -->
    -   [CVE-2020-10736](https://ubuntu.com/security/CVE-2020-10736) <!-- medium -->


### [[USN-4714-1](https://ubuntu.com/security/notices/USN-4714-1)] XStream vulnerabilities [03:02] {#usn-4714-1-xstream-vulnerabilities-03-02}

-   3 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-26259](https://ubuntu.com/security/CVE-2020-26259) <!-- medium -->
    -   [CVE-2020-26258](https://ubuntu.com/security/CVE-2020-26258) <!-- medium -->
    -   [CVE-2020-26217](https://ubuntu.com/security/CVE-2020-26217) <!-- medium -->
-   Java library to serialise objects to/from XML
-   Possible RCE by manipulating the processed input stream to inject shell
    commands
-   Similarly could obtain arbitrary file deletion (depending on the rights
    of the process which is using XStream)


### [[USN-4715-1](https://ubuntu.com/security/notices/USN-4715-1), [USN-4715-2](https://ubuntu.com/security/notices/USN-4715-2)] Django vulnerability [03:58] {#usn-4715-1-usn-4715-2-django-vulnerability-03-58}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-3281](https://ubuntu.com/security/CVE-2021-3281) <!-- medium -->
-   Directory traversal via archives with absolute paths of relative paths
    with dot components - this is used with startapp or startproject via the
    --template argument so can be exploited if using an attacker controlled
    archive to bootstrap a new django app etc


### [[USN-4716-1](https://ubuntu.com/security/notices/USN-4716-1)] MySQL vulnerabilities [05:00] {#usn-4716-1-mysql-vulnerabilities-05-00}

-   25 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-2122](https://ubuntu.com/security/CVE-2021-2122) <!-- medium -->
    -   [CVE-2021-2088](https://ubuntu.com/security/CVE-2021-2088) <!-- medium -->
    -   [CVE-2021-2087](https://ubuntu.com/security/CVE-2021-2087) <!-- medium -->
    -   [CVE-2021-2081](https://ubuntu.com/security/CVE-2021-2081) <!-- medium -->
    -   [CVE-2021-2076](https://ubuntu.com/security/CVE-2021-2076) <!-- medium -->
    -   [CVE-2021-2072](https://ubuntu.com/security/CVE-2021-2072) <!-- medium -->
    -   [CVE-2021-2070](https://ubuntu.com/security/CVE-2021-2070) <!-- medium -->
    -   [CVE-2021-2065](https://ubuntu.com/security/CVE-2021-2065) <!-- medium -->
    -   [CVE-2021-2061](https://ubuntu.com/security/CVE-2021-2061) <!-- medium -->
    -   [CVE-2021-2060](https://ubuntu.com/security/CVE-2021-2060) <!-- medium -->
    -   [CVE-2021-2058](https://ubuntu.com/security/CVE-2021-2058) <!-- medium -->
    -   [CVE-2021-2056](https://ubuntu.com/security/CVE-2021-2056) <!-- medium -->
    -   [CVE-2021-2048](https://ubuntu.com/security/CVE-2021-2048) <!-- medium -->
    -   [CVE-2021-2046](https://ubuntu.com/security/CVE-2021-2046) <!-- medium -->
    -   [CVE-2021-2038](https://ubuntu.com/security/CVE-2021-2038) <!-- medium -->
    -   [CVE-2021-2036](https://ubuntu.com/security/CVE-2021-2036) <!-- medium -->
    -   [CVE-2021-2032](https://ubuntu.com/security/CVE-2021-2032) <!-- medium -->
    -   [CVE-2021-2031](https://ubuntu.com/security/CVE-2021-2031) <!-- medium -->
    -   [CVE-2021-2024](https://ubuntu.com/security/CVE-2021-2024) <!-- medium -->
    -   [CVE-2021-2022](https://ubuntu.com/security/CVE-2021-2022) <!-- medium -->
    -   [CVE-2021-2021](https://ubuntu.com/security/CVE-2021-2021) <!-- medium -->
    -   [CVE-2021-2014](https://ubuntu.com/security/CVE-2021-2014) <!-- medium -->
    -   [CVE-2021-2011](https://ubuntu.com/security/CVE-2021-2011) <!-- medium -->
    -   [CVE-2021-2010](https://ubuntu.com/security/CVE-2021-2010) <!-- medium -->
    -   [CVE-2021-2002](https://ubuntu.com/security/CVE-2021-2002) <!-- medium -->
-   Latest upstream version: 8.0.23 for 20.10/20.04 LTS and 5.7.33 for 16.04
    LTS/18.04 LTS


### [[USN-4717-1](https://ubuntu.com/security/notices/USN-4717-1)] Firefox vulnerabilities [05:32] {#usn-4717-1-firefox-vulnerabilities-05-32}

-   11 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-23965](https://ubuntu.com/security/CVE-2021-23965) <!-- medium -->
    -   [CVE-2021-23964](https://ubuntu.com/security/CVE-2021-23964) <!-- medium -->
    -   [CVE-2021-23963](https://ubuntu.com/security/CVE-2021-23963) <!-- medium -->
    -   [CVE-2021-23962](https://ubuntu.com/security/CVE-2021-23962) <!-- medium -->
    -   [CVE-2021-23961](https://ubuntu.com/security/CVE-2021-23961) <!-- medium -->
    -   [CVE-2021-23960](https://ubuntu.com/security/CVE-2021-23960) <!-- medium -->
    -   [CVE-2021-23958](https://ubuntu.com/security/CVE-2021-23958) <!-- medium -->
    -   [CVE-2021-23956](https://ubuntu.com/security/CVE-2021-23956) <!-- medium -->
    -   [CVE-2021-23955](https://ubuntu.com/security/CVE-2021-23955) <!-- medium -->
    -   [CVE-2021-23954](https://ubuntu.com/security/CVE-2021-23954) <!-- medium -->
    -   [CVE-2021-23953](https://ubuntu.com/security/CVE-2021-23953) <!-- medium -->
-   Latest upstream version: 85.0


### [[USN-4467-2](https://ubuntu.com/security/notices/USN-4467-2)] QEMU vulnerabilities [05:52] {#usn-4467-2-qemu-vulnerabilities-05-52}

-   6 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2020-14364](https://ubuntu.com/security/CVE-2020-14364) <!-- medium -->
    -   [CVE-2020-13754](https://ubuntu.com/security/CVE-2020-13754) <!-- medium -->
    -   [CVE-2020-13659](https://ubuntu.com/security/CVE-2020-13659) <!-- low -->
    -   [CVE-2020-13362](https://ubuntu.com/security/CVE-2020-13362) <!-- low -->
    -   [CVE-2020-13361](https://ubuntu.com/security/CVE-2020-13361) <!-- low -->
    -   [CVE-2020-13253](https://ubuntu.com/security/CVE-2020-13253) <!-- low -->
-   [Episode 88](https://ubuntusecuritypodcast.org/episode-88/) - subset of these applied for the older release of QEMU in
    14.04 ESM, now fixed there


### [[USN-4718-1](https://ubuntu.com/security/notices/USN-4718-1)] fastd vulnerability [06:12] {#usn-4718-1-fastd-vulnerability-06-12}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Groovy (20.10)
    -   [CVE-2020-27638](https://ubuntu.com/security/CVE-2020-27638) <!-- medium -->
-   DoS in popular VPN daemon for embedded systems etc


### [[USN-4719-1](https://ubuntu.com/security/notices/USN-4719-1)] ca-certificates update [06:28] {#usn-4719-1-ca-certificates-update-06-28}

-   Affecting Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
-   Updated to the latest 2.46 version of the Mozilla certificate authority
    bundle


### [[USN-4720-1](https://ubuntu.com/security/notices/USN-4720-1)] Apport vulnerabilities [06:46] {#usn-4720-1-apport-vulnerabilities-06-46}

-   3 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-25684](https://ubuntu.com/security/CVE-2021-25684) <!-- medium -->
    -   [CVE-2021-25683](https://ubuntu.com/security/CVE-2021-25683) <!-- medium -->
    -   [CVE-2021-25682](https://ubuntu.com/security/CVE-2021-25682) <!-- medium -->
-   3 vulns all discovered by Itai Greenhut and reported to us via Launchpad
-   When a process crashes, Apport reads various files under /proc to obtain
    info about the crashed process to prepare a crash report
-   If an attacker could control the values in the files they could then
    cause Apport to misbehave and fail to drop privileges or possibly get
    code execution - in this case, they found that Apport failed to properly
    handle malformed contents in these files - fixed to parse them more
    strictly


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### libgcrypt 1.9.0 0-day [08:32] {#libgcrypt-1-dot-9-dot-0-0-day-08-32}

-   <https://bugs.chromium.org/p/project-zero/issues/detail?id=2145>
-   Discovered by Tavis Ormandy from GPZ - heap buffer overflow, allows to
    overwrite a structure on the heap which contains the buffer, followed by
    a function pointer - so can relatively easily get code execution by
    overwriting the function pointer to an attacker controlled function
    (which could be in the initial buffer itself)
-   Ubuntu not affected since this only exists in 1.9.0 which was released on
    19th January this year and even current devel release of Ubuntu 21.04
    only contains 1.8.7
-   So is an interesting thought experiment - if you run the most latest
    release of anything, you get both the newest patches automatically BUT
    you also get the 0-days since any unknown, unpatched vulns introduced in
    new code will be present. However, if you run older releases, they won't
    have this newer code so won't have 0-days but may have N-days **if** you
    aren't patching. Worst case is to run old software and never update it
    since it has vulns that are unpatched and which have more time to have
    been discovered **and** more time for exploits to have been developed
    against it. Whereas if you run the latest code, there is less chance an
    exploit exists for any new vulns / 0-days it may contain **but** it clearly
    could have 0-days... Also if you are constantly upgrading to the latest
    version that is a lot of churn and introduces the chance for feature
    regressions and other breakage etc. So the best option then is to run a
    known stable version **and** apply patches on top just for security
    vulnerabilities - this is exactly the approach we take for Ubuntu :)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)