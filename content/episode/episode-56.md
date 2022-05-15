+++
title = "Episode 56"
description = """
  In the second to last episode for 2019, we look at security updates for
  Samba, Squid, Git, HAProxy and more, plus Alex and Joe discuss Evil Corp
  hacker indictments, unsecured AWS S3 buckets and more.
  """
date = 2019-12-13T20:49:00+10:30
lastmod = 2022-05-15T18:06:54+09:30
draft = false
weight = 1104
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E056.mp3"
podcast_duration = "26:37"
podcast_bytes = 25564185
permalink = "https://ubuntusecuritypodcast.org/episode-56/"
guid = "f287302b1359224248445e7bc22ea58930f25defb4f809f390a9c6589bef6a2fd5f945c313fbf20124d5d495339fa35f77edf452e00177e07b1c3ee0555d9a40"
+++

## Overview {#overview}

In the second to last episode for 2019, we look at security updates for
Samba, Squid, Git, HAProxy and more, plus Alex and Joe discuss Evil Corp
hacker indictments, unsecured AWS S3 buckets and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

43 unique CVEs addressed


### [[USN-4212-1](https://usn.ubuntu.com/4212-1/)] HAProxy vulnerability [00:50] {#usn-4212-1-haproxy-vulnerability-00-50}

-   1 CVEs addressed in Bionic, Disco, Eoan
    -   [CVE-2019-19330](https://ubuntu.com/security/CVE-2019-19330) <!-- medium -->
-   Failed to treat malformed headers as invalid - HTTP/2 allows encoding
    headers as binary and these can then contain characters which would be
    invalid when converted to HTTP/1.1 - as such these should be treated as
    invalid, otherwise allows to send on invalid headers to HTTP/1.1 servers
    and could be used to launch attacks against them - so test for and reject
    in valid chars (CR, LF and NUL)


### [[USN-4213-1](https://usn.ubuntu.com/4213-1/)] Squid vulnerabilities [01:37] {#usn-4213-1-squid-vulnerabilities-01-37}

-   7 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-18679](https://ubuntu.com/security/CVE-2019-18679) <!-- medium -->
    -   [CVE-2019-18678](https://ubuntu.com/security/CVE-2019-18678) <!-- medium -->
    -   [CVE-2019-18677](https://ubuntu.com/security/CVE-2019-18677) <!-- medium -->
    -   [CVE-2019-18676](https://ubuntu.com/security/CVE-2019-18676) <!-- medium -->
    -   [CVE-2019-12854](https://ubuntu.com/security/CVE-2019-12854) <!-- low -->
    -   [CVE-2019-12526](https://ubuntu.com/security/CVE-2019-12526) <!-- medium -->
    -   [CVE-2019-12523](https://ubuntu.com/security/CVE-2019-12523) <!-- medium -->
-   2 issues in URN handling (uniform resource name, globally unique
    identifier within a particular namespace - e.g. urn:ietf:rfc:2648):
    -   When handling URN requests Squid makes a corresponding HTTP request but
        the various access control checks that are normally done for HTTP
        weren't done so could end up accessing restricted HTTP resources (such
        as servers that listen to localhost etc)
    -   Heap buffer overflow if response received from a server that is
        handling a URN request does not fit within the buffer
    -   Failure to NUL terminal strings - buffer overflow on read -&gt; crash in
        cachemgr cgi process - DoS to all clients using the cachemgr
-   Able to redirect traffic to origins that should be disallowed due to use
    of append_domain setting
-   HTTP request smuggling ([Episode 52](https://ubuntusecuritypodcast.org/episode-52/) for HAProxy)
-   Nonces used for HTTP digest authentication were generated from a raw byte
    value of a pointer from a heap memory allocation - this allows attackers
    to deduce this pointer value and therefore help to defeat ASLR


### [[USN-4214-1](https://usn.ubuntu.com/4214-1/)] RabbitMQ vulnerability [03:54] {#usn-4214-1-rabbitmq-vulnerability-03-54}

-   1 CVEs addressed in Trusty ESM, Disco, Eoan
    -   [CVE-2019-18609](https://ubuntu.com/security/CVE-2019-18609) <!-- medium -->
-   Integer overflow if a client sent a frame of size close to UINT32_MAX - a
    resulting size is calculated that could overflow, and then memory
    allocated with this overflowed (and hence small) size, resulting in a
    heap buffer overflow when the frame is copied to that resulting buffer -
    so instead just reject frames greater than INT32_MAX


### [[USN-4215-1](https://usn.ubuntu.com/4215-1/)] NSS vulnerability [04:38] {#usn-4215-1-nss-vulnerability-04-38}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-17007](https://ubuntu.com/security/CVE-2019-17007) <!-- medium -->
-   NULL pointer dereference -&gt; crash -&gt; DoS when handling Netscape
    Certificate Sequences (a type of encoded certificate) handled by NSS


### [[USN-4216-1](https://usn.ubuntu.com/4216-1/)] Firefox vulnerabilities [05:07] {#usn-4216-1-firefox-vulnerabilities-05-07}

-   9 CVEs addressed in Bionic, Disco, Eoan
    -   [CVE-2019-17014](https://ubuntu.com/security/CVE-2019-17014) <!-- medium -->
    -   [CVE-2019-17013](https://ubuntu.com/security/CVE-2019-17013) <!-- medium -->
    -   [CVE-2019-17012](https://ubuntu.com/security/CVE-2019-17012) <!-- medium -->
    -   [CVE-2019-17011](https://ubuntu.com/security/CVE-2019-17011) <!-- medium -->
    -   [CVE-2019-17010](https://ubuntu.com/security/CVE-2019-17010) <!-- medium -->
    -   [CVE-2019-17008](https://ubuntu.com/security/CVE-2019-17008) <!-- medium -->
    -   [CVE-2019-17005](https://ubuntu.com/security/CVE-2019-17005) <!-- medium -->
    -   [CVE-2019-11756](https://ubuntu.com/security/CVE-2019-11756) <!-- medium -->
    -   [CVE-2019-11745](https://ubuntu.com/security/CVE-2019-11745) <!-- medium -->
-   Latest upstream firefox release (71.0)
    -   Includes fix for NSS issue discussed last week plus other sorts of issues:
        -   UAFs
        -   Stack memory corruption
        -   Heap buffer overflows etc


### [[USN-4217-1](https://usn.ubuntu.com/4217-1/)] Samba vulnerabilities [05:45] {#usn-4217-1-samba-vulnerabilities-05-45}

-   2 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-14870](https://ubuntu.com/security/CVE-2019-14870) <!-- medium -->
    -   [CVE-2019-14861](https://ubuntu.com/security/CVE-2019-14861) <!-- medium -->
-   Kerberos delegation allows to be configured as non-forwardable - but this
    would not be honored properly by the Samba AD DC - so could allow
    delegation to be forwarded by clients even when was disabled by config
-   Able to read invalid memory and so crash AD DC if a DNS record was
    created that matched the name of a DNS zone due to type confusion


### [[USN-4218-1](https://usn.ubuntu.com/4218-1/)] GNU C vulnerability [06:43] {#usn-4218-1-gnu-c-vulnerability-06-43}

-   1 CVEs addressed in Precise ESM, Trusty ESM
    -   [CVE-2018-6485](https://ubuntu.com/security/CVE-2018-6485) <!-- medium -->
-   eglibc was used as the standard libc in Ubuntu in older releases like
    Trusty/Precise etc - posix_memalign integer overflow - allocates memory
    of a given size aligned to a certain size - could return a smaller area
    than requested -&gt; heap overflow as a result


### [[USN-4219-1](https://usn.ubuntu.com/4219-1/)] libssh vulnerability [07:30] {#usn-4219-1-libssh-vulnerability-07-30}

-   1 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-14889](https://ubuntu.com/security/CVE-2019-14889) <!-- medium -->
-   libssh ssh_scp_new() function takes a 3rd argument - if this could be
    attacker influenced then could possible inject arbitrary commands which
    will then be run on the server - so requires the API to be used in a
    particular way - but could then allow users to execute commands on the
    server even if they should only have been able to copy files


### [[USN-4220-1](https://usn.ubuntu.com/4220-1/)] Git vulnerabilities [08:16] {#usn-4220-1-git-vulnerabilities-08-16}

-   9 CVEs addressed in Xenial, Bionic, Disco, Eoan
    -   [CVE-2019-19604](https://ubuntu.com/security/CVE-2019-19604) <!-- medium -->
    -   [CVE-2019-1387](https://ubuntu.com/security/CVE-2019-1387) <!-- low -->
    -   [CVE-2019-1354](https://ubuntu.com/security/CVE-2019-1354) <!-- low -->
    -   [CVE-2019-1353](https://ubuntu.com/security/CVE-2019-1353) <!-- medium -->
    -   [CVE-2019-1352](https://ubuntu.com/security/CVE-2019-1352) <!-- medium -->
    -   [CVE-2019-1351](https://ubuntu.com/security/CVE-2019-1351) <!-- medium -->
    -   [CVE-2019-1350](https://ubuntu.com/security/CVE-2019-1350) <!-- medium -->
    -   [CVE-2019-1349](https://ubuntu.com/security/CVE-2019-1349) <!-- low -->
    -   [CVE-2019-1348](https://ubuntu.com/security/CVE-2019-1348) <!-- medium -->
-   RCE if clone a malicious repo with a crafted .gitmodules file (used to
    specify git submodules for the parent repo)
-   Mishandling of CLI arguments during cloning of repos via SSH URLs allowed
    possible RCE
-   Arbitrary path overwrite during a fast-import due to incorrect handling
    of the export-marks option
-   WSL relevant issues:
    -   On Windows would write out filenames that contained backslashes even
        though these then act as directory separators on Windows
    -   Wouldn't enforce NTFS protections in the working directory
    -   Didn't take into account NTFS Alternate Data Streams, allowing files
        inside the .git dir to be overwritten during clone (file attribute
        specific to NTFS, allowing to store data for a file alongside the
        actual file itself)
    -   Second attack via NTFS ADS via name squatting on the git~2 short-name
    -   Didn't handle Window virtual drives which can be named as not just say
        A: but a full name - git would handle these as relative paths, allowing
        writing outside the worktree during a clone


### [[USN-4202-2](https://usn.ubuntu.com/4202-2/)] Thunderbird regression [10:15] {#usn-4202-2-thunderbird-regression-10-15}

-   10 CVEs addressed in Bionic, Eoan
    -   [CVE-2019-15903](https://ubuntu.com/security/CVE-2019-15903) <!-- medium -->
    -   [CVE-2019-11764](https://ubuntu.com/security/CVE-2019-11764) <!-- medium -->
    -   [CVE-2019-11763](https://ubuntu.com/security/CVE-2019-11763) <!-- medium -->
    -   [CVE-2019-11762](https://ubuntu.com/security/CVE-2019-11762) <!-- medium -->
    -   [CVE-2019-11761](https://ubuntu.com/security/CVE-2019-11761) <!-- medium -->
    -   [CVE-2019-11760](https://ubuntu.com/security/CVE-2019-11760) <!-- medium -->
    -   [CVE-2019-11759](https://ubuntu.com/security/CVE-2019-11759) <!-- medium -->
    -   [CVE-2019-11758](https://ubuntu.com/security/CVE-2019-11758) <!-- medium -->
    -   [CVE-2019-11757](https://ubuntu.com/security/CVE-2019-11757) <!-- medium -->
    -   [CVE-2019-11755](https://ubuntu.com/security/CVE-2019-11755) <!-- medium -->
-   Upstream regression - previous update 68.2.1 could result in a new
    profile being created for some users so would appear to lose settings etc


### [[USN-4221-1](https://usn.ubuntu.com/4221-1/)] libpcap vulnerability [10:37] {#usn-4221-1-libpcap-vulnerability-10-37}

-   1 CVEs addressed in Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-15165](https://ubuntu.com/security/CVE-2019-15165) <!-- medium -->
-   Possible buffer overflow when handling PHB headers - confusion upstream
    about which commit fixes which part but have included all the various
    commits from upstream - thanks Steve for taking the time to dig into this
    issue


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe discuss Evil Corp hackers and unsecured S3 buckets [11:06] {#alex-and-joe-discuss-evil-corp-hackers-and-unsecured-s3-buckets-11-06}

-   <https://threatpost.com/birth-certificate-data-multiple-states/150948/>
-   <https://threatpost.com/feds-5m-reward-evil-corp-dridex-hacker/150858/>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)