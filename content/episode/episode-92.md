+++
title = "Episode 92"
description = """
  It's CVE bankruptcy! With a deluge of CVEs to cover from the last 2 weeks,
  we take a particular look at the ZeroLogon vulnerability in Samba this
  week, plus Alex covers the AppArmor 3 release and some recent / upcoming
  webinars hosted by the Ubuntu Security team.
  """
date = 2020-10-02T10:14:00+09:30
lastmod = 2020-10-02T10:15:15+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E092.mp3"
podcast_duration = "11:26"
podcast_bytes = 10987011
permalink = "https://ubuntusecuritypodcast.org/episode-92/"
guid = "c01fcea7ba122d9c6ccba207bc4cebf5a7358029b8a66114de13332ac1c55edf6ec53fd60288f3917d6adec39e5917c8b968e97a648d9ea0dfe0b9e6f5602a3b"
+++

## Overview {#overview}

It's CVE bankruptcy! With a deluge of CVEs to cover from the last 2 weeks,
we take a particular look at the ZeroLogon vulnerability in Samba this
week, plus Alex covers the AppArmor 3 release and some recent / upcoming
webinars hosted by the Ubuntu Security team.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

121 unique CVEs addressed


### [[USN-4510-1](https://usn.ubuntu.com/4510-1/), [USN-4510-2](https://usn.ubuntu.com/4510-2/)] Samba vulnerability {#usn-4510-1-usn-4510-2-samba-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-1472](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1472) <!-- medium -->
-   "ZeroLogon"
-   Would allow an attacker who already can communicate with the domain
    controller to reset it's password and so then take control of the DC and
    obtain the domain admin's credentials
-   Flaw in the NetLogon protocol would allow the attacker to impersonate any
    computer in the domain, even the DC itself, and execute calls on that
    computer's behalf
-   This flaw was in the cryptographic authentication scheme employed by
    the NetLogon protocol
-   Samba also implements this protocol - and so contained the same flaw
-   In both cases (Window AD vs Samba) there is an option to use a more
    secure authentication mechanism - for older Ubuntu releases like Trusty,
    Xenial and Bionic the default configuration as specified by upstream
    Samba did not enforce the use of this bu default
-   So the fix is a simple configuration change to enable this by default
-   This is done by patching Samba directly (rather than trying to say update
    everyone's deployed /etc/samba.conf or similar) - which still allows a
    local admin to turn this off if they so desire (although this is
    definitely not recommended)
-   One example of how Ubuntu tries to be secure by default - when known
    better security configuration options become available we try and enable
    them (whilst weighing up the likelihood of breaking existing installs -
    we try very hard not to do this)
-   Similarly we have done the same for the various spec exec mitigations -
    almost all default to on even at the expense of a performance hit in that
    case


### [[USN-4504-1](https://usn.ubuntu.com/4504-1/)] OpenSSL vulnerabilities {#usn-4504-1-openssl-vulnerabilities}

-   4 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2019-1563](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1563) <!-- low -->
    -   [CVE-2019-1551](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1551) <!-- low -->
    -   [CVE-2019-1547](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-1547) <!-- low -->
    -   [CVE-2020-1968](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1968) <!-- low -->


### [[USN-4505-1](https://usn.ubuntu.com/4505-1/)] PHPMailer vulnerability {#usn-4505-1-phpmailer-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2020-13625](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13625) <!-- medium -->


### [[USN-4506-1](https://usn.ubuntu.com/4506-1/)] MCabber vulnerability {#usn-4506-1-mcabber-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2016-9928](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-9928) <!-- medium -->


### [[USN-4507-1](https://usn.ubuntu.com/4507-1/)] ncmpc vulnerability {#usn-4507-1-ncmpc-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2018-9240](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-9240) <!-- medium -->


### [[USN-4508-1](https://usn.ubuntu.com/4508-1/)] StoreBackup vulnerability {#usn-4508-1-storebackup-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-7040](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-7040) <!-- medium -->


### [[USN-4509-1](https://usn.ubuntu.com/4509-1/)] Perl DBI module vulnerabilities {#usn-4509-1-perl-dbi-module-vulnerabilities}

-   2 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2014-10401](https://people.canonical.com/~ubuntu-security/cve/CVE-2014-10401) <!-- medium -->
    -   [CVE-2013-7490](https://people.canonical.com/~ubuntu-security/cve/CVE-2013-7490) <!-- medium -->


### [[USN-4511-1](https://usn.ubuntu.com/4511-1/)] QEMU vulnerability {#usn-4511-1-qemu-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-14364](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14364) <!-- medium -->


### [[USN-4512-1](https://usn.ubuntu.com/4512-1/)] util-linux vulnerability {#usn-4512-1-util-linux-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2018-7738](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-7738) <!-- negligible -->


### [[USN-4513-1](https://usn.ubuntu.com/4513-1/)] apng2gif vulnerability {#usn-4513-1-apng2gif-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2017-6960](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-6960) <!-- medium -->


### [[USN-4514-1](https://usn.ubuntu.com/4514-1/)] libproxy vulnerability {#usn-4514-1-libproxy-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-25219](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-25219) <!-- medium -->


### [[USN-4515-1](https://usn.ubuntu.com/4515-1/)] Pure-FTPd vulnerability {#usn-4515-1-pure-ftpd-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2020-9274](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-9274) <!-- low -->


### [[USN-4516-1](https://usn.ubuntu.com/4516-1/)] GnuPG vulnerability {#usn-4516-1-gnupg-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-14855](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14855) <!-- low -->


### [USN-4518-1](https://usn.ubuntu.com/4518-1/)] xawtv vulnerability {#usn-4518-1-xawtv-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2020-13696](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13696) <!-- low -->


### [[USN-4519-1](https://usn.ubuntu.com/4519-1/)] PulseAudio vulnerability {#usn-4519-1-pulseaudio-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2020-15710](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15710) <!-- medium -->


### [[USN-4520-1](https://usn.ubuntu.com/4520-1/)] Exim SpamAssassin vulnerability {#usn-4520-1-exim-spamassassin-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2019-19920](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19920) <!-- medium -->


### [[USN-4521-1](https://usn.ubuntu.com/4521-1/)] pam\_tacplus vulnerability {#usn-4521-1-pam-tacplus-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-13881](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13881) <!-- low -->


### [[USN-4522-1](https://usn.ubuntu.com/4522-1/)] noVNC vulnerability {#usn-4522-1-novnc-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2017-18635](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-18635) <!-- medium -->


### [[USN-4523-1](https://usn.ubuntu.com/4523-1/)] LibOFX vulnerability {#usn-4523-1-libofx-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2019-9656](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9656) <!-- negligible -->


### [[USN-4524-1](https://usn.ubuntu.com/4524-1/)] TNEF vulnerabilities {#usn-4524-1-tnef-vulnerabilities}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2019-18849](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18849) <!-- medium -->


### [[USN-4525-1](https://usn.ubuntu.com/4525-1/)] Linux kernel vulnerabilities {#usn-4525-1-linux-kernel-vulnerabilities}

-   5 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-25212](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-25212) <!-- medium -->
    -   [CVE-2020-16166](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16166) <!-- medium -->
    -   [CVE-2020-12888](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12888) <!-- medium -->
    -   [CVE-2019-19054](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19054) <!-- low -->
    -   [CVE-2019-18808](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18808) <!-- low -->


### [[USN-4526-1](https://usn.ubuntu.com/4526-1/)] Linux kernel vulnerabilities {#usn-4526-1-linux-kernel-vulnerabilities}

-   10 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-16166](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16166) <!-- medium -->
    -   [CVE-2020-14356](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14356) <!-- medium -->
    -   [CVE-2020-12888](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12888) <!-- medium -->
    -   [CVE-2019-9445](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9445) <!-- low -->
    -   [CVE-2019-19074](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19074) <!-- low -->
    -   [CVE-2019-19073](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19073) <!-- low -->
    -   [CVE-2019-19067](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19067) <!-- low -->
    -   [CVE-2019-19061](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19061) <!-- low -->
    -   [CVE-2019-19054](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19054) <!-- low -->
    -   [CVE-2019-18808](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18808) <!-- low -->


### [[USN-4527-1](https://usn.ubuntu.com/4527-1/)] Linux kernel vulnerabilities {#usn-4527-1-linux-kernel-vulnerabilities}

-   8 CVEs addressed in Trusty ESM (14.04 ESM), Xenial (16.04 LTS)
    -   [CVE-2020-25212](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-25212) <!-- medium -->
    -   [CVE-2020-0067](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-0067) <!-- medium -->
    -   [CVE-2019-9453](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9453) <!-- low -->
    -   [CVE-2019-9445](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9445) <!-- low -->
    -   [CVE-2019-20811](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20811) <!-- low -->
    -   [CVE-2019-19074](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19074) <!-- low -->
    -   [CVE-2019-19073](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19073) <!-- low -->
    -   [CVE-2019-19054](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19054) <!-- low -->


### [[USN-4528-1](https://usn.ubuntu.com/4528-1/)] Ceph vulnerabilities {#usn-4528-1-ceph-vulnerabilities}

-   3 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-1760](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-1760) <!-- medium -->
    -   [CVE-2020-12059](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12059) <!-- medium -->
    -   [CVE-2020-10753](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-10753) <!-- medium -->


### [[USN-4529-1](https://usn.ubuntu.com/4529-1/)] FreeImage vulnerabilities {#usn-4529-1-freeimage-vulnerabilities}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-12213](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12213) <!-- medium -->
    -   [CVE-2019-12211](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12211) <!-- medium -->


### [[USN-4531-1](https://usn.ubuntu.com/4531-1/)] BusyBox vulnerability {#usn-4531-1-busybox-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2018-1000500](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-1000500) <!-- medium -->


### [[USN-4530-1](https://usn.ubuntu.com/4530-1/)] Debian-LAN vulnerabilities {#usn-4530-1-debian-lan-vulnerabilities}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-3467](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3467) <!-- medium -->


### [[USN-4532-1](https://usn.ubuntu.com/4532-1/)] Netty vulnerabilities {#usn-4532-1-netty-vulnerabilities}

-   3 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-20445](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20445) <!-- medium -->
    -   [CVE-2019-20444](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20444) <!-- medium -->
    -   [CVE-2019-16869](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16869) <!-- medium -->


### [[USN-4533-1](https://usn.ubuntu.com/4533-1/)] LTSP Display Manager vulnerabilities {#usn-4533-1-ltsp-display-manager-vulnerabilities}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2019-20373](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20373) <!-- medium -->


### [[USN-4534-1](https://usn.ubuntu.com/4534-1/)] Perl DBI module vulnerability {#usn-4534-1-perl-dbi-module-vulnerability}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Trusty ESM (14.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2019-20919](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20919) <!-- medium -->


### [[USN-4535-1](https://usn.ubuntu.com/4535-1/)] RDFLib vulnerability {#usn-4535-1-rdflib-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2019-7653](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7653) <!-- medium -->


### [[USN-4537-1](https://usn.ubuntu.com/4537-1/)] Aptdaemon vulnerability {#usn-4537-1-aptdaemon-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-15703](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15703) <!-- medium -->


### [[USN-4538-1](https://usn.ubuntu.com/4538-1/)] PackageKit vulnerabilities {#usn-4538-1-packagekit-vulnerabilities}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-16122](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16122) <!-- medium -->
    -   [CVE-2020-16121](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-16121) <!-- low -->


### [[USN-4536-1](https://usn.ubuntu.com/4536-1/)] SPIP vulnerabilities {#usn-4536-1-spip-vulnerabilities}

-   7 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-16393](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16393) <!-- medium -->
    -   [CVE-2019-19830](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19830) <!-- medium -->
    -   [CVE-2017-15736](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-15736) <!-- medium -->
    -   [CVE-2019-16391](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16391) <!-- medium -->
    -   [CVE-2019-11071](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11071) <!-- medium -->
    -   [CVE-2019-16394](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16394) <!-- medium -->
    -   [CVE-2019-16392](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16392) <!-- medium -->


### [[USN-4539-1](https://usn.ubuntu.com/4539-1/)] AWL vulnerability {#usn-4539-1-awl-vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-11728](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-11728) <!-- medium -->


### [[USN-4540-1](https://usn.ubuntu.com/4540-1/)] atftpd vulnerabilities {#usn-4540-1-atftpd-vulnerabilities}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-11366](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11366) <!-- medium -->
    -   [CVE-2019-11365](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11365) <!-- medium -->


### [[USN-4542-1](https://usn.ubuntu.com/4542-1/)] MiniUPnPd vulnerabilities {#usn-4542-1-miniupnpd-vulnerabilities}

-   5 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2019-12111](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12111) <!-- medium -->
    -   [CVE-2019-12110](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12110) <!-- medium -->
    -   [CVE-2019-12109](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12109) <!-- medium -->
    -   [CVE-2019-12108](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12108) <!-- medium -->
    -   [CVE-2019-12107](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12107) <!-- medium -->


### [[USN-4543-1](https://usn.ubuntu.com/4543-1/)] Sanitize vulnerability {#usn-4543-1-sanitize-vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-4054](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-4054) <!-- medium -->


### [[USN-4541-1](https://usn.ubuntu.com/4541-1/)] Gnuplot vulnerabilities {#usn-4541-1-gnuplot-vulnerabilities}

-   3 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2018-19492](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19492) <!-- low -->
    -   [CVE-2018-19491](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19491) <!-- low -->
    -   [CVE-2018-19490](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19490) <!-- low -->


### [[USN-4545-1](https://usn.ubuntu.com/4545-1/)] libquicktime vulnerabilities {#usn-4545-1-libquicktime-vulnerabilities}

-   7 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2017-9125](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9125) <!-- medium -->
    -   [CVE-2017-9128](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9128) <!-- medium -->
    -   [CVE-2017-9127](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9127) <!-- medium -->
    -   [CVE-2017-9126](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9126) <!-- medium -->
    -   [CVE-2017-9124](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9124) <!-- medium -->
    -   [CVE-2017-9123](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9123) <!-- medium -->
    -   [CVE-2017-9122](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9122) <!-- medium -->


### [[USN-4546-1](https://usn.ubuntu.com/4546-1/)] Firefox vulnerabilities {#usn-4546-1-firefox-vulnerabilities}

-   6 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2020-15678](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15678) <!-- medium -->
    -   [CVE-2020-15677](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15677) <!-- medium -->
    -   [CVE-2020-15676](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15676) <!-- medium -->
    -   [CVE-2020-15675](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15675) <!-- medium -->
    -   [CVE-2020-15674](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15674) <!-- medium -->
    -   [CVE-2020-15673](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15673) <!-- medium -->


### [[USN-3968-3](https://usn.ubuntu.com/3968-3/)] Sudo vulnerabilities {#usn-3968-3-sudo-vulnerabilities}

-   2 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2016-7032](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-7032) <!-- negligible -->
    -   [CVE-2016-7076](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-7076) <!-- medium -->


### [[USN-4549-1](https://usn.ubuntu.com/4549-1/)] ImageMagick vulnerabilities {#usn-4549-1-imagemagick-vulnerabilities}

-   2 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2019-19949](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19949) <!-- low -->
    -   [CVE-2019-19948](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19948) <!-- low -->


### [[USN-4548-1](https://usn.ubuntu.com/4548-1/)] libuv vulnerability {#usn-4548-1-libuv-vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-8252](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-8252) <!-- medium -->


### [[USN-4547-1](https://usn.ubuntu.com/4547-1/)] iTALC vulnerabilities {#usn-4547-1-italc-vulnerabilities}

-   12 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2018-7225](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-7225) <!-- medium -->
    -   [CVE-2018-20750](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20750) <!-- medium -->
    -   [CVE-2018-20749](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20749) <!-- medium -->
    -   [CVE-2018-20748](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20748) <!-- medium -->
    -   [CVE-2018-20024](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20024) <!-- medium -->
    -   [CVE-2018-20023](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20023) <!-- medium -->
    -   [CVE-2018-20022](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20022) <!-- medium -->
    -   [CVE-2018-20021](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20021) <!-- medium -->
    -   [CVE-2018-20020](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20020) <!-- medium -->
    -   [CVE-2018-20019](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20019) <!-- medium -->
    -   [CVE-2018-15127](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-15127) <!-- medium -->
    -   [CVE-2019-15681](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15681) <!-- low -->


### [[USN-4553-1](https://usn.ubuntu.com/4553-1/)] Teeworlds vulnerability {#usn-4553-1-teeworlds-vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-12066](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-12066) <!-- medium -->


### [[USN-4552-1](https://usn.ubuntu.com/4552-1/)] Pam-python vulnerability {#usn-4552-1-pam-python-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-16729](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16729) <!-- medium -->


### [[USN-4550-1](https://usn.ubuntu.com/4550-1/)] DPDK vulnerabilities {#usn-4550-1-dpdk-vulnerabilities}

-   5 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-14378](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14378) <!-- low -->
    -   [CVE-2020-14377](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14377) <!-- medium -->
    -   [CVE-2020-14376](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14376) <!-- medium -->
    -   [CVE-2020-14375](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14375) <!-- medium -->
    -   [CVE-2020-14374](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14374) <!-- medium -->


### [[USN-4551-1](https://usn.ubuntu.com/4551-1/)] Squid vulnerabilities {#usn-4551-1-squid-vulnerabilities}

-   4 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-24606](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-24606) <!-- medium -->
    -   [CVE-2020-15811](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15811) <!-- low -->
    -   [CVE-2020-15810](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15810) <!-- medium -->
    -   [CVE-2020-15049](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15049) <!-- low -->


### [[USN-4554-1](https://usn.ubuntu.com/4554-1/)] libPGF vulnerability {#usn-4554-1-libpgf-vulnerability}

-   1 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2015-6673](https://people.canonical.com/~ubuntu-security/cve/CVE-2015-6673) <!-- medium -->


### [[USN-4547-2](https://usn.ubuntu.com/4547-2/)] SSVNC vulnerabilities {#usn-4547-2-ssvnc-vulnerabilities}

-   5 CVEs addressed in Xenial (16.04 LTS)
    -   [CVE-2018-20024](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20024) <!-- medium -->
    -   [CVE-2018-2024](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-2024) <!--  -->
    -   [CVE-2018-20022](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20022) <!-- medium -->
    -   [CVE-2018-20021](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20021) <!-- medium -->
    -   [CVE-2018-20020](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-20020) <!-- medium -->


### [[USN-4556-1](https://usn.ubuntu.com/4556-1/)] netqmail vulnerabilities {#usn-4556-1-netqmail-vulnerabilities}

-   5 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-3812](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3812) <!-- medium -->
    -   [CVE-2020-3811](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-3811) <!-- medium -->
    -   [CVE-2005-1515](https://people.canonical.com/~ubuntu-security/cve/CVE-2005-1515) <!-- medium -->
    -   [CVE-2005-1514](https://people.canonical.com/~ubuntu-security/cve/CVE-2005-1514) <!-- medium -->
    -   [CVE-2005-1513](https://people.canonical.com/~ubuntu-security/cve/CVE-2005-1513) <!-- medium -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### AppArmor 3.0 Release {#apparmor-3-dot-0-release}

-   <https://gitlab.com/apparmor/apparmor/-/releases/v3.0.0>
-   <https://gitlab.com/apparmor/apparmor/-/wikis/Release%5FNotes%5F3.0>


### Ubuntu Security Related Webinars {#ubuntu-security-related-webinars}


#### FIPS certification and CIS compliance with Ubuntu Webinar {#fips-certification-and-cis-compliance-with-ubuntu-webinar}

-   <span class="timestamp-wrapper"><span class="timestamp">&lt;2020-10-01 Thu&gt;</span></span>
-   More on the Ubuntu FIPS certification for cryptographic modules in Ubuntu
    18.04 LTS and 16.04 LTS and the Ubuntu FIPS public cloud images
-   The difference between FIPS certified and FIPS compliant modules
-   More on compliance benchmark documentation for Ubuntu CIS compliance
-   How to quickly harden Ubuntu systems and easily view which rules your
    systems are not compliant with using the CIS automation tooling from
    Canonical [demo]
-   Presented by Vineetha Kamatha (Security Engineering Manager), Shaun
    Murphy (Public Cloud Sr Product Manager) & Lech Sandecki (Product
    Manager)
-   <https://www.brighttalk.com/webcast/6793/432536/fips-certification-and-cis-compliance-with-ubuntu>


#### Best Practices for Securing Open Source Webinar {#best-practices-for-securing-open-source-webinar}

-   <span class="timestamp-wrapper"><span class="timestamp">&lt;2020-10-08 Thu&gt;</span></span>
-   <https://www.brighttalk.com/webcast/6793/440071>
-   Presented by me :)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
