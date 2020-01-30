+++
title = "Episode 59"
description = """
  After a weeks break we are back to look at updates for ClamAV, GnuTLS,
  nginx, Samba and more, plus we briefly discuss the current 20.04 Mid-Cycle
  Roadmap Review sprint for the Ubuntu Security Team
  """
date = 2020-01-24T08:57:00+10:30
lastmod = 2020-01-30T17:14:37+10:30
draft = false
weight = 1002
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E059.mp3"
podcast_duration = "19:55"
podcast_bytes = 19134301
permalink = "https://ubuntusecuritypodcast.org/episode-59/"
guid = "8c5226e656fef4692233bb39d75e43ecb6afda9c7424fb76b5d55fca10bef921973edeefa7c186a93ddc5a592bce4617ac9bce4c639c4fe4bb9238891be0ae2b"
+++

## Overview {#overview}

After a weeks break we are back to look at updates for ClamAV, GnuTLS,
nginx, Samba and more, plus we briefly discuss the current 20.04 Mid-Cycle
Roadmap Review sprint for the Ubuntu Security Team


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

73 unique CVEs addressed


### [[USN-4230-1](https://usn.ubuntu.com/4230-1/)] ClamAV vulnerability [01:16] {#usn-4230-1-clamav-vulnerability-01-16}

-   1 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-15961](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15961) <!-- medium -->
-   Backport latest upstream release (0.102.1) from focal
-   CPU based DoS when scanning crafted emails - parsing of MIME components
    in particular


### [[USN-4232-1](https://usn.ubuntu.com/4232-1/)] GraphicsMagick vulnerabilities [01:52] {#usn-4232-1-graphicsmagick-vulnerabilities-01-52}

-   11 CVEs addressed in Xenial
    -   [CVE-2017-16353](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-16353) <!-- medium -->
    -   [CVE-2017-16352](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-16352) <!-- medium -->
    -   [CVE-2017-15930](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-15930) <!-- medium -->
    -   [CVE-2017-15277](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-15277) <!-- medium -->
    -   [CVE-2017-14997](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14997) <!-- low -->
    -   [CVE-2017-14994](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14994) <!-- low -->
    -   [CVE-2017-14733](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14733) <!-- low -->
    -   [CVE-2017-14649](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14649) <!-- low -->
    -   [CVE-2017-14504](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14504) <!-- medium -->
    -   [CVE-2017-14314](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14314) <!-- medium -->
    -   [CVE-2017-14165](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14165) <!-- medium -->
-   [Episode 57](https://ubuntusecuritypodcast.org/episode-57/), [Episode 55](https://ubuntusecuritypodcast.org/episode-55/)
-   Heap based buffer over-reads - info leak or crash -> DoS
-   Heap based buffer over-flow - crash -> DoS, RCE
-   NULL ptr derefs - crash -> DoS
-   Memory overallocation -> memory based remote DoS


### [[USN-4231-1](https://usn.ubuntu.com/4231-1/)] NSS vulnerability [03:04] {#usn-4231-1-nss-vulnerability-03-04}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-17006](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17006) <!-- medium -->
-   UBSAN found possible buffer overflow due to failure to check lengths of
    inputs to various functions - so applications using libnss for crypto
    could be vulnerable to buffer overflow


### [[USN-4233-1](https://usn.ubuntu.com/4233-1/)] GnuTLS update [03:54] {#usn-4233-1-gnutls-update-03-54}

-   Affecting Xenial, Bionic
-   Update marks SHA1 as being untrusted for digital signature operations -
    SHA1 has been broken in theory for a while and 2017 Google showed the
    first SHA1 collision - recently the first chosen-prefix attack was
    demonstrated against SHA1 as well - demonstrated by creating a GPG key
    which can impersonate another
-   As such GnuTLS will not trust SHA1 based digital signatures since these
    can relatively easily be forged now (but not for an arbitrary input)
-   As such libraries / applications which use GnuTLS (libsoup, Epiphany)
    will not trust SHA1 based digital signatures
-   <https://sha-mbles.github.io/>


### [[USN-4234-1](https://usn.ubuntu.com/4234-1/)] Firefox vulnerabilities [06:10] {#usn-4234-1-firefox-vulnerabilities-06-10}

-   8 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-17026](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17026) <!-- medium -->
    -   [CVE-2019-17025](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17025) <!-- medium -->
    -   [CVE-2019-17024](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17024) <!-- medium -->
    -   [CVE-2019-17023](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17023) <!-- low -->
    -   [CVE-2019-17022](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17022) <!-- medium -->
    -   [CVE-2019-17020](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17020) <!-- medium -->
    -   [CVE-2019-17017](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17017) <!-- medium -->
    -   [CVE-2019-17016](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17016) <!-- medium -->
-   Latest upstream Firefox release (72.0.1)
-   Usual sorts of issues fixed: DoS, info disclosure, bypass content
    security policy restrictions, conduct XSS attacks or execute arbitrary
    code


### [[USN-4047-2](https://usn.ubuntu.com/4047-2/)] libvirt update vulnerability [06:48] {#usn-4047-2-libvirt-update-vulnerability-06-48}

-   1 CVEs addressed in Trusty ESM
    -   [CVE-2019-10161](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10161) <!-- medium -->
-   [Episode 40](https://ubuntusecuritypodcast.org/episode-40/) libvirt updated for regular releases - various APIs which
    could cause effects were accessible to read-only users
-   Now backported for 14.04 ESM users / customers as well


### [[USN-4235-1](https://usn.ubuntu.com/4235-1/), [USN-4235-2](https://usn.ubuntu.com/4235-2/)] nginx vulnerability [07:18] {#usn-4235-1-usn-4235-2-nginx-vulnerability-07-18}

-   1 CVEs addressed in Trusty ESM, Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-20372](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20372) <!-- medium -->
-   HTTP request smuggling ([Episode 52](https://ubuntusecuritypodcast.org/episode-52/)) - allowed attacker to read
    unauthorized web pages where nginx is being fronted by a load balanced
    when used with certain error\_page configurations


### [[USN-4236-1](https://usn.ubuntu.com/4236-1/), USN-4236-2] Libgcrypt vulnerability [08:03] {#usn-4236-1-usn-4236-2-libgcrypt-vulnerability-08-03}

-   1 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-13627](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13627) <!-- medium -->
-   ECDSA timing side-channel attack (Minerva)
    -   observe timing of signature generation on known messages to indicate
        the bit-length of the random nonce scalar during scalar multiplication
        on an elliptic curve - full private key is able to be recovered using
        lattice techniques
-   <https://minerva.crocs.fi.muni.cz/>


### [[USN-4237-1](https://usn.ubuntu.com/4237-1/), [USN-4237-2](https://usn.ubuntu.com/4237-2/)] SpamAssassin vulnerabilities [09:04] {#usn-4237-1-usn-4237-2-spamassassin-vulnerabilities-09-04}

-   2 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-12420](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12420) <!-- medium -->
    -   [CVE-2018-11805](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-11805) <!-- medium -->
-   DoS via excessive resource usage
-   RCE via crafted conf (CF) files - advised should only use trusted conf
    files


### [[USN-4238-1](https://usn.ubuntu.com/4238-1/)] SDL\_image vulnerabilities [09:55] {#usn-4238-1-sdl-image-vulnerabilities-09-55}

-   12 CVEs addressed in Xenial, Bionic
    -   [CVE-2019-7635](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7635) <!-- medium -->
    -   [CVE-2019-5052](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5052) <!-- medium -->
    -   [CVE-2019-5051](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-5051) <!-- medium -->
    -   [CVE-2019-13616](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13616) <!-- low -->
    -   [CVE-2019-12222](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12222) <!-- low -->
    -   [CVE-2019-12221](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12221) <!-- low -->
    -   [CVE-2019-12220](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12220) <!-- low -->
    -   [CVE-2019-12219](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12219) <!-- low -->
    -   [CVE-2019-12218](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12218) <!-- medium -->
    -   [CVE-2019-12217](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12217) <!-- low -->
    -   [CVE-2019-12216](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12216) <!-- medium -->
    -   [CVE-2018-3977](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-3977) <!-- medium -->
-   Image loading library for SDL1.2 (low level library used for various
    games etc - provides common access to audio, input devices, graphics etc)
-   Large C code-base - usual memory safety issues -> usual effects -> crash,
    DoS or possible RCE


### [[USN-4239-1](https://usn.ubuntu.com/4239-1/)] PHP vulnerabilities [10:32] {#usn-4239-1-php-vulnerabilities-10-32}

-   4 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-11050](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11050) <!-- low -->
    -   [CVE-2019-11047](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11047) <!-- low -->
    -   [CVE-2019-11046](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11046) <!-- low -->
    -   [CVE-2019-11045](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11045) <!-- low -->
-   2 heap buffer over-reads in parsing EXIF information, 1 over-read in
    bcmath extension, and 1 issue with handling filenames with embedded NUL
    bytes


### [[USN-4221-2](https://usn.ubuntu.com/4221-2/)] libpcap vulnerability [11:28] {#usn-4221-2-libpcap-vulnerability-11-28}

-   1 CVEs addressed in Precise ESM
    -   [CVE-2019-15165](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-15165) <!-- medium -->
-   [Episode 56](https://ubuntusecuritypodcast.org/episode-56/)


### [[USN-4240-1](https://usn.ubuntu.com/4240-1/)] Kamailio vulnerability [11:42] {#usn-4240-1-kamailio-vulnerability-11-42}

-   1 CVEs addressed in Xenial
    -   [CVE-2018-8828](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-8828) <!-- high -->
-   SIP server written in C
-   Heap based buffer overflow when receiving a specially crafted REGISTER
    message


### [[USN-4241-1](https://usn.ubuntu.com/4241-1/)] Thunderbird vulnerabilities [11:59] {#usn-4241-1-thunderbird-vulnerabilities-11-59}

-   11 CVEs addressed in Bionic, Eoan
    -   [CVE-2019-11745](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11745) <!-- medium -->
    -   [CVE-2019-17026](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17026) <!-- medium -->
    -   [CVE-2019-17024](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17024) <!-- medium -->
    -   [CVE-2019-17022](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17022) <!-- medium -->
    -   [CVE-2019-17017](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17017) <!-- medium -->
    -   [CVE-2019-17016](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17016) <!-- medium -->
    -   [CVE-2019-17012](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17012) <!-- medium -->
    -   [CVE-2019-17011](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17011) <!-- medium -->
    -   [CVE-2019-17010](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17010) <!-- medium -->
    -   [CVE-2019-17008](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17008) <!-- medium -->
    -   [CVE-2019-17005](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17005) <!-- medium -->
-   Latest upstream release (68.4.1)
-   Derived from Firefox code-base so contains fixes for lots issues which
    also affected Firefox above


### [[USN-4225-2](https://usn.ubuntu.com/4225-2/)] Linux kernel (HWE) vulnerabilities [12:21] {#usn-4225-2-linux-kernel--hwe--vulnerabilities-12-21}

-   15 CVEs addressed in Bionic
    -   [CVE-2019-18813](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18813) <!-- negligible -->
    -   [CVE-2019-19534](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19534) <!-- low -->
    -   [CVE-2019-19529](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19529) <!-- low -->
    -   [CVE-2019-19524](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19524) <!-- low -->
    -   [CVE-2019-19072](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19072) <!-- medium -->
    -   [CVE-2019-19055](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19055) <!-- low -->
    -   [CVE-2019-19052](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19052) <!-- low -->
    -   [CVE-2019-19051](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19051) <!-- low -->
    -   [CVE-2019-19045](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19045) <!-- low -->
    -   [CVE-2019-18660](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-18660) <!-- medium -->
    -   [CVE-2019-16231](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16231) <!-- low -->
    -   [CVE-2019-14897](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14897) <!-- medium -->
    -   [CVE-2019-14896](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14896) <!-- medium -->
    -   [CVE-2019-14901](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14901) <!-- medium -->
    -   [CVE-2019-14895](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14895) <!-- medium -->
-   [Episode 58](https://ubuntusecuritypodcast.org/episode-58/) - eoan (19.10) 5.3 kernel is now used as the HWE kernel for
    bionic (18.04 LTS)


### [[USN-4242-1](https://usn.ubuntu.com/4242-1/)] Sysstat vulnerabilities [13:07] {#usn-4242-1-sysstat-vulnerabilities-13-07}

-   2 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-19725](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19725) <!-- medium -->
    -   [CVE-2019-16167](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16167) <!-- low -->
-   Both issues occur when reading a crafted input file using the sadf
    utility - likely the original reported is fuzzing this
-   Double free - heap corruption but on Ubuntu we enable the glibc
    heap-protector so this is just a crash -> DoS
-   Integer overflow -> heap buffer overflow when reading crafted input file


### [[USN-4243-1](https://usn.ubuntu.com/4243-1/)] libbsd vulnerabilities [14:12] {#usn-4243-1-libbsd-vulnerabilities-14-12}

-   2 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-20367](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-20367) <!-- medium -->
    -   [CVE-2016-2090](https://people.canonical.com/~ubuntu-security/cve/CVE-2016-2090) <!-- low -->
-   Library providing common BSD C functions which are not available on Linux
    (strlcpy() etc)
    -   OOB read (crash -> DoS)
    -   Off-by-one in fgetwln() (get line of wide characters from a stream) ->
        heap buffer overflow -> crash / RCE (doesn't appear to be used by any
        software in Ubuntu)


### [[USN-4244-1](https://usn.ubuntu.com/4244-1/)] Samba vulnerabilities [15:15] {#usn-4244-1-samba-vulnerabilities-15-15}

-   3 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-19344](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-19344) <!-- medium -->
    -   [CVE-2019-14907](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14907) <!-- low -->
    -   [CVE-2019-14902](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14902) <!-- low -->
-   UAF in DNS zone scavenging in AD DC
-   Crash if fail to convert characters at log level 3
-   Does not automatically replicate ACLs which are set to inherit down a
    subtree (unable to be easily backported to Xenial so only fixed on
    Bionic, Disco and Eoan - instead can workaround by manually replication
    ACLs from one DC to another for a given naming context)


### [[USN-4245-1](https://usn.ubuntu.com/4245-1/)] PySAML2 vulnerability [16:32] {#usn-4245-1-pysaml2-vulnerability-16-32}

-   1 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2020-5390](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-5390) <!-- medium -->
-   May fail to properly validate signatures in a particularly crafted SAML
    document by using the wrong data - so could assert a document has been
    fully signed when only a part of it has


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Mid cycle product roadmap sprint [17:18] {#mid-cycle-product-roadmap-sprint-17-18}

-   Security team presents progress on plans for Ubuntu 20.04 Focal Fossa -
    ie. ESM offerings, AppArmor features, snapd security features, Ubuntu
    Core security features, MIR security reviews progress etc
-   Represented by Joe McManus, Mark Morlino, Chris Coulson and John Johansen


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)