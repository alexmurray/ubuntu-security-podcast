+++
title = "Episode 42"
description = """
  This week we have a special interview with Ubuntu Security Team member
  Jamie Strandboge, talking about security aspects of the Snap packaging
  system, as well as the usual roundup of security fixes from the past week.
  """
date = 2019-08-14T21:13:00+09:30
lastmod = 2020-01-30T17:15:14+10:30
draft = false
weight = 1019
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E042.mp3"
podcast_duration = "21:17"
podcast_bytes = 20441247
permalink = "https://ubuntusecuritypodcast.org/episode-42/"
guid = "8d026811c700eb17a35225aad802fabfb76a5f89e860868d40a8e1148b55954acdd5ed0768b1b7d855d7e4be63edf5b0c20c051adcd335e36c12f67eaa7181a8"
+++

## Overview {#overview}

This week we have a special interview with Ubuntu Security Team member
Jamie Strandboge, talking about security aspects of the Snap packaging
system, as well as the usual roundup of security fixes from the past week.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

7 unique CVEs addressed


### [[USN-4058-2](https://usn.ubuntu.com/4058-2/)] Bash vulnerability {#usn-4058-2-bash-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty ESM
    -   [CVE-2019-9924](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9924)
-   [Episode 40](https://ubuntusecuritypodcast.org/episode-40/) (rbash, BASH\_CMDS)


### [[USN-4049-3](https://usn.ubuntu.com/4049-3/), [USN-4049-4](https://usn.ubuntu.com/4049-4/)] GLib regression {#usn-4049-3-usn-4049-4-glib-regression}

-   Affecting Precise ESM, Trusty ESM, Xenial
-   [Episode 40](https://ubuntusecuritypodcast.org/episode-40/) - previous update introduced a memory leak due to backport
    using different API which didn't just return a const string but allocated
    it and returned it but was not freed
    -   <https://bugs.launchpad.net/ubuntu/+source/glib2.0/+bug/1838890>


### [[USN-4086-1](https://usn.ubuntu.com/4086-1/)] Mercurial vulnerability {#usn-4086-1-mercurial-vulnerability}

-   1 CVEs addressed in Disco
    -   [CVE-2019-3902](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3902)
-   Able to write to files outside of the repository by using a combination of symlinks and subrepositories
    -   Can be mitigated either by disabling support for subrepositories in
        your local configuration or by ensuring any cloned repos don't contain
        malicious symlinks ...


### [[USN-4087-1](https://usn.ubuntu.com/4087-1/)] BWA vulnerability {#usn-4087-1-bwa-vulnerability}

-   1 CVEs addressed in Bionic, Disco
    -   [CVE-2019-10269](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10269)
-   Genome sequencing - maps DNA sequences against large reference genome (aka human genome mapping)
-   Takes input from .alt file - contains a name for the DNS sequence - which
    is read into a fixed sized buffer - stack buffer overflow if name too
    long (code even had a note - [FIXME segfault here](https://github.com/lh3/bwa/commit/20d0a13092aa4cb73230492b05f9697d5ef0b88e#diff-4b41da18d8e305ac5b0bea6db815bc20L200))


### [[USN-4088-1](https://usn.ubuntu.com/4088-1/)] PHP vulnerability {#usn-4088-1-php-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty ESM
    -   [CVE-2019-13224](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-13224)
-   Use-after-free in the embedded oniguruma regular expression library if
    regular expression was multi-byte but input string was not (or
    vice-versa) - fix to disallow processing if either is not the same as the
    other


### [[USN-4089-1](https://usn.ubuntu.com/4089-1/)] Rack vulnerability {#usn-4089-1-rack-vulnerability}

-   1 CVEs addressed in Xenial, Bionic
    -   [CVE-2018-16471](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16471)
-   XSS in Ruby webserver interface (used as middleware for writing Ruby web
    application)


### [[USN-4090-1](https://usn.ubuntu.com/4090-1/)] PostgreSQL vulnerabilities {#usn-4090-1-postgresql-vulnerabilities}

-   2 CVEs addressed in Xenial, Bionic, Disco
    -   [CVE-2019-10209](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10209)
    -   [CVE-2019-10208](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-10208)
-   Disco only - if a database contained super-user defined hash-equality
    operators, could allow attacker to read arbitrary server memory
-   If a function was declared as "SECURITY DEFINER" an attacker could
    execute arbitrary SQL as the identity of the function owner - needs
    EXECUTE permission on the function and then requires the function itself
    to have inexact argument type matching otherwise will be disallowed.


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Discussion with Joe McManus on Capital One breach and special guest Jamie Strandboge on snaps and security {#discussion-with-joe-mcmanus-on-capital-one-breach-and-special-guest-jamie-strandboge-on-snaps-and-security}

-   <https://www.zdnet.com/article/100-million-americans-and-6-million-canadians-caught-up-in-capital-one-breach/>
-   <https://snapcraft.io>
-   <https://forum.snapcraft.io/t/security-policy-and-sandboxing/554>
-   <https://assets.ubuntu.com/v1/66fcd858-ubuntu-core-security-whitepaper.pdf>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)