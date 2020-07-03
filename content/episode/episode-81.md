+++
title = "Episode 81"
description = """
  Joe talks cyber security policy with Dr David Reed from CU Boulder, plus
  Alex covers the week in security updates including Mutt, NVIDIA graphics
  drivers, Mailman and more.
  """
date = 2020-07-03T12:28:00+09:30
lastmod = 2020-07-03T12:29:22+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E081.mp3"
podcast_duration = "28:50"
podcast_bytes = 27686570
permalink = "https://ubuntusecuritypodcast.org/episode-81/"
guid = "96dabe7210ab90c56ce077c80456e3b140f35accdcbb024dc478e5827b235d909fbbe0a2c2c0fd6530ba219b42bce627b2801a3e75a0fa1efa443b111c5a9b38"
+++

## Overview {#overview}

Joe talks cyber security policy with Dr David Reed from CU Boulder, plus
Alex covers the week in security updates including Mutt, NVIDIA graphics
drivers, Mailman and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

6 unique CVEs addressed


### [[USN-4403-1](https://usn.ubuntu.com/4403-1/)] Mutt vulnerability and regression [00:40] {#usn-4403-1-mutt-vulnerability-and-regression-00-40}

-   1 CVEs addressed in Precise ESM (12.04 ESM), Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-14954](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-14954) <!-- medium -->
-   When connecting to an IMAP/SMTP/POP3 server via STARTTLS, would read
    additional data after the clear-text command to begin TLS - if someone
    was able to intercept the connection they could inject content which
    would then later get processed by Mutt as though it had come from the TLS
    connection. Fixed to simply clear input buffer at the start of TLS
    negotiation.
-   Also includes a fix for a possible regression in the previous security
    update ([Episode 80](https://ubuntusecuritypodcast.org/episode-80/))


### [[USN-4404-1](https://usn.ubuntu.com/4404-1/), [USN-4404-2](https://usn.ubuntu.com/4404-2/)] NVIDIA graphics drivers & Linux kernel vulnerabilities [01:59] {#usn-4404-1-usn-4404-2-nvidia-graphics-drivers-and-linux-kernel-vulnerabilities-01-59}

-   3 CVEs addressed in Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-5973](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-5973) <!-- medium -->
    -   [CVE-2020-5967](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-5967) <!-- medium -->
    -   [CVE-2020-5963](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-5963) <!-- medium -->
-   CUDA driver failed to properly perform access control during IPC - could
    allow a local attacker to DoS/RCE
-   UVM driver (Unified Virtual Memory - used with CUDA driver for better
    performance) race condition - local attacker DoS
-   Virtual guest GPU driver unspecified vuln -> privileged operations -> DoS
-   Updates the linux kernel source package since this is used to provide the
    DKMS packages


### [[USN-4405-1](https://usn.ubuntu.com/4405-1/)] GLib Networking vulnerability [03:15] {#usn-4405-1-glib-networking-vulnerability-03-15}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Eoan (19.10), Focal (20.04 LTS)
    -   [CVE-2020-13645](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-13645) <!-- medium -->
-   glib-networking - additional library for glib/gio to provide TLS (ie
    links against gnutls etc.)
-   Would fail to verify that the hostname of a server's TLS certificate
    matches the expected hostname by the client - but only if the client
    failed to specify the hostname itself. If did not provide hostname, would
    expect it to fail validation completely. Balsa (GNOME mail client) did
    this, so could possibly be tricked into connecting to a different mail
    server as a result.


### [[USN-4406-1](https://usn.ubuntu.com/4406-1/)] Mailman vulnerability [04:48] {#usn-4406-1-mailman-vulnerability-04-48}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS)
    -   [CVE-2020-15011](https://people.canonical.com/~ubuntu-security/cve/CVE-2020-15011) <!-- medium -->
-   Failed to validate inputs to the private archive login page - would then
    echo these back inside the generated page and so provides arbitrary
    content injection from a crafted URL.


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Joe talks cyber security policy with Dr David Reed, Scholar in Residence @ UC Boulder [05:51] {#joe-talks-cyber-security-policy-with-dr-david-reed-scholar-in-residence-uc-boulder-05-51}

-   <https://www.colorado.edu/program/tcp/people/david-reed>
-   Stock price study:
    -   <https://www.comparitech.com/blog/information-security/data-breach-share-price-analysis/>
-   FCC 5G FAST Plan
-   <https://docs.fcc.gov/public/attachments/DOC-354326A1.pdf>


### Ubuntu Security Notices relocated [27:00] {#ubuntu-security-notices-relocated-27-00}

-   Thanks to the design and web teams at Canonical
-   Notices now live at <https://ubuntu.com/security/notices/>
-   Old notices from <https://usn.ubuntu.com> will get redirected


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
