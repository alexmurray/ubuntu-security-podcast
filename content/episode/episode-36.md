+++
title = "Episode 36"
description = "Security updates for DBus, vim, elfutils, GLib and more, plus Joe and Alex look at another npm package hijack as well as some wider discussions around the big vim RCE of this week."
date = 2019-06-17
lastmod = 2020-01-30T17:15:28+10:30
draft = false
weight = 1025
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E036.mp3"
podcast_duration = "22:30"
podcast_bytes = 21614877
permalink = "https://ubuntusecuritypodcast.org/episode-36/"
+++

## Overview {#overview}

Security updates for DBus, vim, elfutils, GLib and more, plus Joe and Alex look at another npm package hijack as well as some wider discussions around the big vim RCE of this week.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

43 unique CVEs addressed


### [[USN-4012-1](https://usn.ubuntu.com/4012-1/)] elfutils vulnerabilities {#usn-4012-1-elfutils-vulnerabilities}

-   9 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2019-7665](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7665)
    -   [CVE-2019-7150](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7150)
    -   [CVE-2019-7149](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7149)
    -   [CVE-2018-18521](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18521)
    -   [CVE-2018-18520](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18520)
    -   [CVE-2018-18310](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-18310)
    -   [CVE-2018-16403](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16403)
    -   [CVE-2018-16402](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16402)
    -   [CVE-2018-16062](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-16062)
-   Mix of issues found via fuzzing with ASAN - all resulting in crash -> DoS
    from crafted input files
    -   multiple heap-based buffer over-reads in various libraries (libelf,
        libdw) on crafted ELF input
    -   divide-by-zero on crafted ELF input in arlib (used by ar, ranlib and
        other tools to process .a archive files)
    -   multiple invalid pointer dereferences
    -   double-free in libelf on crafted ELF input


### [[USN-4013-1](https://usn.ubuntu.com/4013-1/)] libsndfile vulnerabilities {#usn-4013-1-libsndfile-vulnerabilities}

-   13 CVEs addressed in Xenial, Bionic, Cosmic
    -   [CVE-2019-3832](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-3832)
    -   [CVE-2018-19758](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19758)
    -   [CVE-2018-19662](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19662)
    -   [CVE-2018-19661](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19661)
    -   [CVE-2018-19432](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-19432)
    -   [CVE-2018-13139](https://people.canonical.com/~ubuntu-security/cve/CVE-2018-13139)
    -   [CVE-2017-6892](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-6892)
    -   [CVE-2017-17457](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-17457)
    -   [CVE-2017-17456](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-17456)
    -   [CVE-2017-16942](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-16942)
    -   [CVE-2017-14634](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14634)
    -   [CVE-2017-14246](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14246)
    -   [CVE-2017-14245](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-14245)
-   Range of issues from crashes (DoS) to possible RCE again found via fuzzing with ASAN
    -   Multiple heap-based buffer over-reads on crafted audio files (WAV, ALAW, AIFF) files
    -   NULL pointer dereference
    -   Stack-based buffer overflow - crash -> DoS or possible RCE on crafted
    -   Divide by zeros


### [[USN-4014-1](https://usn.ubuntu.com/4014-1/), [USN-4014-2](https://usn.ubuntu.com/4014-2/)] GLib vulnerability {#usn-4014-1-usn-4014-2-glib-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-12450](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12450)
-   GLib contains GIO which is library to abstract file-IO operations
-   During file copying, would create the new file with default permissions
    and then once copy was done would then set the correct permissions (based
    on the original files permissions)
-   Could allow other users to read the file during the copy process
-   Instead fix to create new file with restrictive permissions (only
    accessible by the current user) to avoid this


### [[USN-4015-1](https://usn.ubuntu.com/4015-1/), [USN-4015-2](https://usn.ubuntu.com/4015-2/)] DBus vulnerability {#usn-4015-1-usn-4015-2-dbus-vulnerability}

-   1 CVEs addressed in Precise ESM, Trusty ESM, Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-12749](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12749)
-   DBus includes multiple authentication mechanisms - usually would just use
    credentials passed via UNIX sockets (is secure as is enforced by the
    kernel), but this is not supported on all platforms (Windows etc)
-   So includes another authentication mechanism - DBUS\_COOKIE\_SHA1
    -   In this case, the authenticating user has to prove they are who they
        say by being able to read and provide a magic value from a keyring file
        which dbus drops in the user's home directory
    -   By abusing symlinks, it would be possible to point the local users
        keyring at some other file and cause DBus to read / write to some other
        file which was not intended
    -   This could further be abused to point your local dbus keyring to root's
        and cause DBus to eventually confuse the local user's authentication to
        the bus as that of the root user and so allow an unprivileged user to
        authenticate as root and so then perform operations as root via DBus
-   Fixed by simply only allowing DBUS\_COOKIE\_SHA1 to authenticate as the
    same user as the DBus server owner - ie. if running DBus as root you can
    only authenticate as root, not as your local user (since this use-case is
    not actually used in practice)


### [[USN-4016-1](https://usn.ubuntu.com/4016-1/)] Vim vulnerabilities {#usn-4016-1-vim-vulnerabilities}

-   2 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-12735](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12735)
    -   [CVE-2017-5953](https://people.canonical.com/~ubuntu-security/cve/CVE-2017-5953)
-   Most over-hyped bug of the week
    -   <https://threatpost.com/linux-command-line-editors-high-severity-bug/145569/>
    -   <https://www.reddit.com/r/netsec/comments/bwrjrx/vimneovim%5Farbitrary%5Fcode%5Fexecution%5Fvia%5Fmodelines/>
-   Will discuss with Joe later in the episode, but briefly:
    -   Vim includes support for 'modelines'
        -   This allows files to include custom settings such as indentation, file
            type etc so that editing is consistent
        -   Only a subset of vim commands can be permitted - ie. set - and then not
            everything can be set by modelines - and is meant to be side-effect
            free
        -   However, the source! command is still allowed - this reads extra
            commands from a file as though typed by the user and is done so outside
            the sandbox
        -   So is possible to bypass the sandbox and execute arbitrary commands via
            the modeline (since vim supports running external commands from the
            editor itself)
        -   PoC included running a reverse shell by just opening a crafted file
    -   However, modelines are disabled by default in Debian (and hence Ubuntu)
        so unless a user had specifically enabled it in their own vimrc they are
        safe
    -   Patched to disable sourcing a file from the modeline or from within the
        sandbox at all
-   One extra low priority issue when vim could be made to crash via a
    crafted spell file (this is used to store locally spelling additions etc)


### [[USN-4016-2](https://usn.ubuntu.com/4016-2/)] Neovim vulnerability {#usn-4016-2-neovim-vulnerability}

-   1 CVEs addressed in Cosmic, Disco
    -   [CVE-2019-12735](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-12735)
-   See above from vim :)


### [[USN-3991-3](https://usn.ubuntu.com/3991-3/)] Firefox regression {#usn-3991-3-firefox-regression}

-   17 CVEs addressed in Xenial, Bionic, Cosmic, Disco
    -   [CVE-2019-9816](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9816)
    -   [CVE-2019-11698](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11698)
    -   [CVE-2019-11697](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11697)
    -   [CVE-2019-9821](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9821)
    -   [CVE-2019-9820](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9820)
    -   [CVE-2019-9819](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9819)
    -   [CVE-2019-9817](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9817)
    -   [CVE-2019-9814](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9814)
    -   [CVE-2019-9800](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-9800)
    -   [CVE-2019-7317](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-7317)
    -   [CVE-2019-11701](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11701)
    -   [CVE-2019-11699](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11699)
    -   [CVE-2019-11696](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11696)
    -   [CVE-2019-11695](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11695)
    -   [CVE-2019-11693](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11693)
    -   [CVE-2019-11692](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11692)
    -   [CVE-2019-11691](https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11691)
-   [Episode 33](https://ubuntusecuritypodcast.org/episode-33/) - Firefox update to version 67.0 - contained a regression so
    updated to 67.0.1 ([Episode 35](https://ubuntusecuritypodcast.org/episode-35/)) - this also contained another regression
    where Firefox would fail to load correctly if run in safe-mode. So
    upstream released 67.0.2 which is this new update.


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Alex and Joe talk about another npm package hijack attack and the vim issue {#alex-and-joe-talk-about-another-npm-package-hijack-attack-and-the-vim-issue}

-   <https://blog.npmjs.org/post/185397814280/plot-to-steal-cryptocurrency-foiled-by-the-npm>


### Hiring {#hiring}


#### Robotics Security Engineer {#robotics-security-engineer}

-   <https://boards.greenhouse.io/canonical/jobs/1550997>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-hardened on the Freenode IRC network](http://webchat.freenode.net/#ubuntu-hardened)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)