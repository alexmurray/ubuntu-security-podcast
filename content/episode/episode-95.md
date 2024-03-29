+++
title = "Episode 95"
description = """
  This week we look at vulnerabilities in Samba, GDM, AccountsService, GOsa
  and more, plus we cover some AppArmor related Ubuntu Security community
  updates as well.
  """
date = 2020-11-06T15:37:00+10:30
lastmod = 2022-05-15T18:06:24+09:30
draft = false
weight = 1065
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E095.mp3"
podcast_duration = "10:26"
podcast_bytes = 8146716
permalink = "https://ubuntusecuritypodcast.org/episode-95/"
guid = "ba46e855fee07787637c03dbae315570f4d3e269fbdcfd0fdbebf21815b0ebeb93d13f039e8cc3d431ce4078ed423070925cc9b3a6592d96c6e4c52107d34bee"
+++

## Overview {#overview}

This week we look at vulnerabilities in Samba, GDM, AccountsService, GOsa
and more, plus we cover some AppArmor related Ubuntu Security community
updates as well.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

26 unique CVEs addressed


### [[USN-4552-3](https://usn.ubuntu.com/4552-3/)] Pam-python regression [00:40] {#usn-4552-3-pam-python-regression-00-40}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2019-16729](https://ubuntu.com/security/CVE-2019-16729) <!-- medium -->
-   Original update ([Episode 92](https://ubuntusecuritypodcast.org/episode-92/) - bionic), ([Episode 94](https://ubuntusecuritypodcast.org/episode-94/) - xenial) caused was
    too restrictive and would disallow PAM modules written in python from
    importing python modules from site-specific directories


### [[USN-4609-1](https://usn.ubuntu.com/4609-1/)] GOsa vulnerabilities [01:18] {#usn-4609-1-gosa-vulnerabilities-01-18}

-   3 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2018-1000528](https://ubuntu.com/security/CVE-2018-1000528) <!-- medium -->
    -   [CVE-2019-11187](https://ubuntu.com/security/CVE-2019-11187) <!-- low -->
    -   [CVE-2019-14466](https://ubuntu.com/security/CVE-2019-14466) <!-- medium -->
-   PHP based LDAP user admin frontend
-   XSS attacks via the change password form
-   Could login to any account with a username containing "success" with any
    arbitrary password
-   Cookie mishandling allowed an authenticated user to delete files on the
    web server in the context of the user account running the web server


### [[USN-4610-1](https://usn.ubuntu.com/4610-1/)] fastd vulnerability [02:11] {#usn-4610-1-fastd-vulnerability-02-11}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-27638](https://ubuntu.com/security/CVE-2020-27638) <!-- medium -->
-   Fast &amp; secure tunnelling daemon
-   Failed to free rx buffers in certain circumstances - memory leak -&gt; DoS


### [[USN-4611-1](https://usn.ubuntu.com/4611-1/)] Samba vulnerabilities [02:29] {#usn-4611-1-samba-vulnerabilities-02-29}

-   3 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-14383](https://ubuntu.com/security/CVE-2020-14383) <!-- medium -->
    -   [CVE-2020-14323](https://ubuntu.com/security/CVE-2020-14323) <!-- medium -->
    -   [CVE-2020-14318](https://ubuntu.com/security/CVE-2020-14318) <!-- medium -->
-   2 different DoS issues - remote attacker could cause DNS server to crash
    by supplying invalid DNS records, or could cause winbind to crash via
    crafted winbind requests
-   Failed to check permissions on ChangeNotify - so an attacker could
    subscribe to get notifications on files they did not have permission to
    read - and so leaks file info


### [[USN-4605-2](https://usn.ubuntu.com/4605-2/)] Blueman update [03:22] {#usn-4605-2-blueman-update-03-22}

-   1 CVEs addressed in Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-15238](https://ubuntu.com/security/CVE-2020-15238) <!-- medium -->
-   [Episode 94](https://ubuntusecuritypodcast.org/episode-94/) - this includes additional fix so that on focal and groovy
    policykit is used to authenticate privileged actions


### [[USN-4614-1](https://usn.ubuntu.com/4614-1/)] GDM vulnerability [03:55] {#usn-4614-1-gdm-vulnerability-03-55}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-16125](https://ubuntu.com/security/CVE-2020-16125) <!-- medium -->
-   Kevin Backhouse - discovered 3 vulnerabilities - one in GDM, 2 in
    AccountsService
-   GDM incorrectly launched the initial setup tool if it could not reach the
    accountsservice daemon
-   If could cause accountsservice to be unresponsive, could get GDM to
    luanch initial setup tool which then allows a local user to create a
    privileged users account
-   But requires accountsservice to be unresponsive...


### [[USN-4616-1](https://usn.ubuntu.com/4616-1/)] AccountsService vulnerabilities [05:00] {#usn-4616-1-accountsservice-vulnerabilities-05-00}

-   3 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2018-14036](https://ubuntu.com/security/CVE-2018-14036) <!-- low -->
    -   [CVE-2020-16127](https://ubuntu.com/security/CVE-2020-16127) <!-- medium -->
    -   [CVE-2020-16126](https://ubuntu.com/security/CVE-2020-16126) <!-- medium -->
-   Drops privileges for certain operations but does so where a local
    unprivileged user can send it SIGSTOP signal - is now unresponsive - so
    could allow the GDM attack above - or could cause it to crash (send
    SIGSEGV etc)
-   Also would exhaust all memory when reading .pam_environment if it was
    really large (ie symlink to /dev/zero) - again could cause it to hang /
    crash -&gt; DoS


### [[USN-4613-1](https://usn.ubuntu.com/4613-1/)] python-cryptography vulnerability [06:34] {#usn-4613-1-python-cryptography-vulnerability-06-34}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-25659](https://ubuntu.com/security/CVE-2020-25659) <!-- medium -->
-   Bleichenbacher timing oracle attack (form of an adaptive
    chosen-ciphertext attack) against RSA decryption could allow a remote
    attacker to infer the private key
-   <https://medium.com/@c0D3M/bleichenbacher-attack-explained-bc630f88ff25>


### [[USN-4615-1](https://usn.ubuntu.com/4615-1/)] Yerase's TNEF vulnerabilities [07:23] {#usn-4615-1-yerase-s-tnef-vulnerabilities-07-23}

-   12 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2017-6802](https://ubuntu.com/security/CVE-2017-6802) <!-- medium -->
    -   [CVE-2017-6801](https://ubuntu.com/security/CVE-2017-6801) <!-- medium -->
    -   [CVE-2017-6800](https://ubuntu.com/security/CVE-2017-6800) <!-- medium -->
    -   [CVE-2017-6306](https://ubuntu.com/security/CVE-2017-6306) <!-- medium -->
    -   [CVE-2017-6305](https://ubuntu.com/security/CVE-2017-6305) <!-- medium -->
    -   [CVE-2017-6304](https://ubuntu.com/security/CVE-2017-6304) <!-- low -->
    -   [CVE-2017-6303](https://ubuntu.com/security/CVE-2017-6303) <!-- medium -->
    -   [CVE-2017-6302](https://ubuntu.com/security/CVE-2017-6302) <!-- medium -->
    -   [CVE-2017-6301](https://ubuntu.com/security/CVE-2017-6301) <!-- low -->
    -   [CVE-2017-6300](https://ubuntu.com/security/CVE-2017-6300) <!-- medium -->
    -   [CVE-2017-6299](https://ubuntu.com/security/CVE-2017-6299) <!-- low -->
    -   [CVE-2017-6298](https://ubuntu.com/security/CVE-2017-6298) <!-- low -->
-   libtynef - TNEF stream reader library (proprietary format used by MS
    Outlook / Exchange Server for email attachments)
-   Lots of issues - NULL ptr deref, infinite loop, buffer overflows, OOB
    reads, directory traversal issues and more :) -&gt; crash / DoS / RCE


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### AppArmor 3.0.1 being prepared [08:22] {#apparmor-3-dot-0-dot-1-being-prepared-08-22}

-   Includes fixes for various application profiles as well as a fix to stop
    aa-notify from exiting after 100s of no activity


### Securing Linux Machines with AppArmor Webinar [08:57] {#securing-linux-machines-with-apparmor-webinar-08-57}

-   <https://www.brighttalk.com/webcast/6793/440491>
-   Currently scheduled for Mon 16th Nov at 16:00 UTC
-   Presented by Mike Salvatore - who also wrote the [Introduction to AppArmor whitepaper](https://ubuntu.com/engage/apparmor-intro)
-   Will cover:
    -   Why a ‘defence in depth’ strategy should be employed to mitigate the
        potential damage caused by a breach
    -   An explanation of AppArmor, its key features and why the principle of
        least privilege is recommended
    -   The use of AppArmor in Ubuntu and snaps


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)