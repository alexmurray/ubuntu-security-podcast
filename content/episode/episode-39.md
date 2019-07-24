+++
title = "Episode 39"
description = """
  A look at security updates for Django, Thunderbird, ZNC, Irssi and more,
  plus news on the CanonicalLtd GitHub account credentials compromise, SKS
  PGP keyservers under attack and Ubuntu 18.10 Cosmic Cuttlefish reaches EOL.
  """
date = 2019-07-09T14:52:00+09:30
lastmod = 2019-07-24T09:27:36+09:30
draft = false
weight = 1002
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E039.mp3"
podcast_duration = "12:12"
podcast_bytes = 11713006
permalink = "https://ubuntusecuritypodcast.org/episode-39/"
+++

## Overview {#overview}

A look at security updates for Django, Thunderbird, ZNC, Irssi and more,
plus news on the CanonicalLtd GitHub account credentials compromise, SKS
PGP keyservers under attack and Ubuntu 18.10 Cosmic Cuttlefish reaches EOL.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

7 unique CVEs addressed


### [[USN-4043-1](https://usn.ubuntu.com/4043-1/)] Django vulnerabilities {#usn-4043-1-django-vulnerabilities}

-   2 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-12781](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12781)
    -   [CVE-2019-12308](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12308)
-   If using django via a reverse proxy, which itself would connect to django
    over HTTPS, if accessing HTTP resources they would not be redirected to
    HTTPS even if configured to do so on the django server.
-   XSS via the 'Current URL' link as this was not validated as a safe URL
    before display - so possible to inject javascript etc via a URL query
    payload parameter etc - such that when the user clicks the link it would
    be executed (RCE bug with user interaction)


### [[USN-4045-1](https://usn.ubuntu.com/4045-1/)] Thunderbird vulnerabilities {#usn-4045-1-thunderbird-vulnerabilities}

-   2 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-11708](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11708)
    -   [CVE-2019-11707](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11707)
-   Latest upstream 60.7.2 release
-   Mentioned in the context of Firefox in [Episode 37](https://ubuntusecuritypodcast.org/episode-37/) and [Episode 38](https://ubuntusecuritypodcast.org/episode-38/) (sandbox
    escape and RCE)
-   By default scripting is disabled in TB so not as high an impact


### [[USN-4044-1](https://usn.ubuntu.com/4044-1/)] ZNC vulnerability {#usn-4044-1-znc-vulnerability}

-   1 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-12816](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12816)
-   ZNC provides support for plugin modules
-   These can be loaded by autenticated, non-admin users

i  - The name of this is checked in various places to ensure control
    characters and other means of code execution are blocked, but not on
    all code-paths using modules

-   Would allow to execute code as the ZNC server via an authenticated user
-   Fixed to validate module name on all code paths which use it


### [[USN-4038-3](https://usn.ubuntu.com/4038-3/), USN-4038-4] bzip2 regression {#usn-4038-3-usn-4038-4-bzip2-regression}

-   Affecting Precise ESM, Trusty ESM, Xenial, Bionic, Cosmic, Disco
-   [Episode 38](https://ubuntusecuritypodcast.org/episode-38/) mentioned bzip2 update - we also mentioned this breaks
    decompression of some archives built by lbzip2 etc - this regression
    fixes that by introducing a new patch proposed by upstream to accept as
    many selectors as specified by to then discard them later


### [[USN-4046-1](https://usn.ubuntu.com/4046-1/)] Irssi vulnerabilities {#usn-4046-1-irssi-vulnerabilities}

-   2 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-13045](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13045)
    -   [CVE-2018-7054](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-7054)
-   2 different UAF's due to mismanagement of data structures:
    -   One on SASL code-paths - so only affected if using SASL
        authentication - would reuse provided username and password
        fields after they had been freed
    -   Another in code to handle netsplits (used to handle when servers get
        disconnected from the wider network)
        -   This was due to an incomplete fix for previous CVE-2017-7191


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 18.10 (Cosmic Cuttlefish) reaches End of Life on July 18 2019 {#ubuntu-18-dot-10--cosmic-cuttlefish--reaches-end-of-life-on-july-18-2019}

-   Released October 18, 2018 - non-LTS so 9 months of support
-   Past 9 months - no new updates/ security fixes and hence no USNs
-   Upgrade to Disco (19.04)
-   <https://lists.ubuntu.com/archives/ubuntu-security-announce/2019-July/004996.html>


### CanonicalLtd GitHub organisation account compromise {#canonicalltd-github-organisation-account-compromise}

-   A single account which was part of the CanonicalLtd GitHub organisation
    was compromised 6th July
-   Used to create proof-of-concept repositories and issues to demonstrate
    the hack was possible
-   Investigation is still on-going but at this stage it only appears to be
    these actions, not malicious but attention seeking in nature
    -   No code has been altered or PII accessed (nor is any PII stored there)
-   Account has been removed from the CanonicaLtd organisation, investigation
    is still on-going, we will release more details as they become available
-   <https://twitter.com/ubuntu%5Fsec/status/1147675201632473088>


### SKS keyserver certificate spamming {#sks-keyserver-certificate-spamming}

-   <https://gist.github.com/rjhansen/67ab921ffb4084c865b3618d6955275f>
-   WoT aspect of PGP allows users to sign one-anothers public keys
    (certificates) and upload these signatures to the keyservers
-   SKS keyservers were designed to never delete anything and instead to append
-   So when downloading a key (certificate) you get it plus all the signatures
-   SKS supports up to 150k sigs - GnuPG is logarithmic in order of signatures
-   So can DoS local GnuPG once have downloaded someones key (cert)
-   Re Ubuntu:
    -   We use GPG for signing the hashes of packages in the repo
    -   This public key is distributed directly inside Ubuntu on install media
        and in the archive and does not depend on the SKS keyserver network
    -   Keys for PPAs are fetched from Launchpad, not SKS as well in general
    -   So only exposure for Ubuntu users is if manually fetching keys from SKS
        keyservers or if using Enigmail in ThunderBird or other software which
        automatically fetches certs from SKS
-   Mitigation
    -   if using Enigmail, [disable auto-fetching / refreshing of public keys](https://www.enigmail.net/index.php/en/user-manual/handbook-faq)
    -   if using GnuPG directly, don't use SKS keyservers, instead use [new
        resistant keyserver](https://keys.openpgp.org)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net?channels=%23ubuntu-hardened&uio=d4)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)