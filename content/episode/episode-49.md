+++
title = "Episode 49"
description = """
  This week we look at updates for Sudo, Python, OpenStack Octavia and more,
  plus we discuss a recent CVE for Python which resulted in erroneous
  scientific research results, and we go over some of your feedback from
  Episode 48.
  """
date = 2019-10-18T14:18:00+10:30
lastmod = 2020-01-30T17:14:58+10:30
draft = false
weight = 1012
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E049.mp3"
podcast_duration = "22:45"
podcast_bytes = 29867695
permalink = "https://ubuntusecuritypodcast.org/episode-49/"
guid = "4a49a1057918c7b343e9a3d3a318c0bab7d8d3997f2168bcece3a17c461358362c51850bc3414e7c3dfc0575bda71abd59b121437efaffcf9c5b74341e50219d"
+++

## Overview {#overview}

This week we look at updates for Sudo, Python, OpenStack Octavia and more,
plus we discuss a recent CVE for Python which resulted in erroneous
scientific research results, and we go over some of your feedback from
Episode 48.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

27 unique CVEs addressed


### [[USN-4148-1](https://usn.ubuntu.com/4148-1/)] OpenEXR vulnerabilities [00:45] {#usn-4148-1-openexr-vulnerabilities-00-45}

-   8 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2018-18444](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18444) <!-- low -->
    -   [CVE-2017-9115](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9115) <!-- low -->
    -   [CVE-2017-9113](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9113) <!-- low -->
    -   [CVE-2017-9111](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9111) <!-- low -->
    -   [CVE-2017-9116](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9116) <!-- low -->
    -   [CVE-2017-9112](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9112) <!-- low -->
    -   [CVE-2017-9110](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-9110) <!-- low -->
    -   [CVE-2017-12596](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-12596) <!-- low -->
-   Image format developed by ILM with a high definition range for computer
    imaging applications
-   Range of issues (c++ codebase)
    -   OOB writes (usually only of a few bytes past the end of a buffer) -
        assertion failure or memory corruption -> crash / code execution
    -   OOB reads (same) - crash


### [[USN-4149-1](https://usn.ubuntu.com/4149-1/)] Unbound vulnerability [02:06] {#usn-4149-1-unbound-vulnerability-02-06}

-   1 CVEs addressed in Disco
    -   [CVE-2019-16866](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16866) <!-- medium -->
-   Validating, recursive DNS resolver
-   OOB read due to a remotely crafted NOTIFY query (source IP needs to match
    an ACL) -> crash


### [[USN-4151-1](https://usn.ubuntu.com/4151-1/), [USN-4151-2](https://usn.ubuntu.com/4151-2/)] Python vulnerabilities [02:40] {#usn-4151-1-usn-4151-2-python-vulnerabilities-02-40}

-   2 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-16935](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16935) <!-- low -->
    -   [CVE-2019-16056](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-16056) <!-- medium -->
-   XML-RPC server module could end up serving arbitrary JS if set via the
    set\_server\_title() method as did not escape content
-   Python email module tries to parse email address into sender + domain -
    if domain contains multiple @ chars could get confused and return wrong
    output - so applications which rely on this for validating email
    addresses could accept an email address which is actually invalid


### [[USN-4152-1](https://usn.ubuntu.com/4152-1/)] libsoup vulnerability [03:53] {#usn-4152-1-libsoup-vulnerability-03-53}

-   1 CVEs addressed in Bionic, Disco
    -   [CVE-2019-17266](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17266) <!-- medium -->
-   Heap buffer OOB read - fails to check the specified length of message
    against the actual received message - could then memcpy past the end of
    the input message -> crash


### [[USN-4153-1](https://usn.ubuntu.com/4153-1/)] Octavia vulnerability [04:33] {#usn-4153-1-octavia-vulnerability-04-33}

-   1 CVEs addressed in Disco
    -   [CVE-2019-17134](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17134) <!-- medium -->
-   Amphora Images in OpenStack Octavia - fails to properly validate client
    certificates for management network clients -> could allow anyone with
    management network access to retrieve information / issue config commands


### [[USN-4154-1](https://usn.ubuntu.com/4154-1/)] Sudo vulnerability [05:06] {#usn-4154-1-sudo-vulnerability-05-06}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-14287](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-14287) <!-- medium -->
-   Lots of press around a seemingly high priority privilege escalation
    vulnerability - BUT requires an admin to have configured sudo with a
    particular configuration (ie specifying a user can run a command as any
    other user via the ALL keyword in a Runas rule). In this case if the rule
    had also been configured to explicitly deny running the command as root,
    this could be bypassed by the user specifying a UID of -1. So would only
    affect a very small number of installations.


### [[USN-4155-1](https://usn.ubuntu.com/4155-1/)] Aspell vulnerability [07:26] {#usn-4155-1-aspell-vulnerability-07-26}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Disco
    -   [CVE-2019-17544](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-17544) <!-- medium -->
-   Stack buffer over-read - found by Google's oss-fuzz


### [[USN-4156-1](https://usn.ubuntu.com/4156-1/)] SDL vulnerabilities [08:03] {#usn-4156-1-sdl-vulnerabilities-08-03}

-   12 CVEs addressed in Xenial, Bionic
    -   [CVE-2019-7638](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7638) <!-- medium -->
    -   [CVE-2019-7637](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7637) <!-- medium -->
    -   [CVE-2019-7636](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7636) <!-- medium -->
    -   [CVE-2019-7635](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7635) <!-- medium -->
    -   [CVE-2019-7578](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7578) <!-- low -->
    -   [CVE-2019-7577](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7577) <!-- low -->
    -   [CVE-2019-7576](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7576) <!-- low -->
    -   [CVE-2019-7575](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7575) <!-- low -->
    -   [CVE-2019-7574](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7574) <!-- low -->
    -   [CVE-2019-7573](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7573) <!-- low -->
    -   [CVE-2019-7572](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7572) <!-- low -->
    -   [CVE-2019-13616](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13616) <!-- low -->
-   Covered all the higher priority ones in [Episode 48](https://ubuntusecuritypodcast.org/episode-48/) for SDL 2.0 - fixed
    now for SDL1.2 as well, plus rolled in a bunch of fixes for lower
    priority issues (buffer over-reads in WAV handling etc)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe talk CVEs for bad documentation and resulting scientific research? [09:20] {#alex-and-joe-talk-cves-for-bad-documentation-and-resulting-scientific-research-09-20}

-   <https://nvd.nist.gov/vuln/detail/CVE-2019-17514>


### Feedback on desired features for 20.04 [18:53] {#feedback-on-desired-features-for-20-dot-04-18-53}

-   [cafzo on discourse.ubuntu.com](https://discourse.ubuntu.com/t/ubuntu-security-podcast-ep-48-feedback/12922) <!-- bring up this link during recording to talk about it directly -->
    -   encrypted home directories
    -   guest-accounts


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)