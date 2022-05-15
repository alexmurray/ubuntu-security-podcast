+++
title = "Episode 107"
description = """
  This week we check on the status of the pending GRUB2 Secure Boot updates
  and detail some open positions within the team, plus we look at security
  updates for GLib, zstd, Go, Git and more.
  """
date = 2021-03-12T15:49:00+10:30
lastmod = 2022-05-15T18:06:14+09:30
draft = false
weight = 1053
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E107.mp3"
podcast_duration = "12:04"
podcast_bytes = 9803443
permalink = "https://ubuntusecuritypodcast.org/episode-107/"
guid = "2cff740070f0e2f9d66336b177a65b768ba592f6c389400d1bd35808ec13ec1a85b09ed142cbf3988051d22a43410be8c82254dacf8d288e78866c45aa0d215c"
+++

## Overview {#overview}

This week we check on the status of the pending GRUB2 Secure Boot updates
and detail some open positions within the team, plus we look at security
updates for GLib, zstd, Go, Git and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

7 unique CVEs addressed


### [[USN-4757-2](https://ubuntu.com/security/notices/USN-4757-2)] wpa_supplicant and hostapd vulnerability [00:45] {#usn-4757-2-wpa-supplicant-and-hostapd-vulnerability-00-45}

-   1 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2021-27803](https://ubuntu.com/security/CVE-2021-27803) <!-- medium -->
-   P2P/wifi direct UAF -&gt; crash, RCE from [Episode 106](https://ubuntusecuritypodcast.org/episode-106/)


### [[USN-4733-2](https://ubuntu.com/security/notices/USN-4733-2)] GNOME Autoar regression [01:23] {#usn-4733-2-gnome-autoar-regression-01-23}

-   Affecting Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
-   [Episode 104](https://ubuntusecuritypodcast.org/episode-104/) - upstream patch caused a regression such that folders within
    the archive may fail to be extracted - once noticed and fixed by upstream
    we have now included this too


### [[USN-4759-1](https://ubuntu.com/security/notices/USN-4759-1)] GLib vulnerabilities [02:06] {#usn-4759-1-glib-vulnerabilities-02-06}

-   2 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-27219](https://ubuntu.com/security/CVE-2021-27219) <!-- medium -->
    -   [CVE-2021-27218](https://ubuntu.com/security/CVE-2021-27218) <!-- medium -->
-   Possible integer overflow when allocation memory due to implicit cast
    from a 64-bit long to a 32-bit int when allocating memory - g_memdup()
    function takes an 32-bit int argument but is called by g_bytes_new()
    which takes a gsize 64-bit argument. Ends up allocating much less memory
    than expected, then later when this is copied into a buffer overflow can
    occur.
-   Since g_memdup() is a public API, can't just change it to take a gsize as
    argument since this would break the ABI - so instead added g_memdup2()
    and converted internal callers to use this - but other applications
    should think about porting to this new API to avoid this sort of issue
    (and audit their own code to check they don't have similar implicit
    integer overflow issues)


### [[USN-4760-1](https://ubuntu.com/security/notices/USN-4760-1)] libzstd vulnerabilities [04:44] {#usn-4760-1-libzstd-vulnerabilities-04-44}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-24032](https://ubuntu.com/security/CVE-2021-24032) <!-- medium -->
    -   [CVE-2021-24031](https://ubuntu.com/security/CVE-2021-24031) <!-- medium -->
-   Files created with default permissions - so was patched to chmod() so
    only owner could read/write them
-   But this introduced a race condition where the file initially still has
    the default permissions so a different user could potentially access it
    during that time until the chmod() call is made - so was deemed an
    incomplete fix for the first CVE - second CVE allocated for this
    incomplete fix - instead changed to set umask() before creating the file
    in the first place so permissions get set properly at creation


### [[USN-4758-1](https://ubuntu.com/security/notices/USN-4758-1)] Go vulnerability [05:41] {#usn-4758-1-go-vulnerability-05-41}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2020-24553](https://ubuntu.com/security/CVE-2020-24553) <!-- low -->
-   Possible XSS issue in CGI and FastCGI impl since go would treat non-HTML
    data as HTML and so would return a text/html content-type which would
    then be served as such by the webserver even if it had been uploaded with
    a different content type
-   Thanks to Dariusz Gadomski from SEG team for preparing these fixes (since
    these versions of golang are in universe on these Ubuntu releases)


### [[USN-4761-1](https://ubuntu.com/security/notices/USN-4761-1)] Git vulnerability [06:59] {#usn-4761-1-git-vulnerability-06-59}

-   1 CVEs addressed in Xenial (16.04 LTS), Bionic (18.04 LTS), Focal (20.04 LTS), Groovy (20.10)
    -   [CVE-2021-21300](https://ubuntu.com/security/CVE-2021-21300) <!-- medium -->
-   Possible code execution by local git client when cloning a malicious
    remote repository - local client would need a git filter to be
    installed - like git LFS - and would have to be on a case-insensitive
    file-system - so would be a more common scenario for Windows users but
    unlikely to affect Linux users - patched anyway


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### GRUB2 updates still in progress [08:54] {#grub2-updates-still-in-progress-08-54}

-   Still being tested internally by our hardware certification lab and
    others and some minor tweaks being made, plus shim devel work is still
    ongoing, thanks to Dimitri John Ledkov from Foundations team for handling
    that work, as well as all the one-grub work too


### Hiring [09:53] {#hiring-09-53}


#### AppArmor Security Engineer {#apparmor-security-engineer}

-   <https://canonical.com/careers/2114847/apparmor-security-engineer-remote>


#### Ubuntu Security Engineer {#ubuntu-security-engineer}

-   <https://canonical.com/careers/2612092/ubuntu-security-engineer-remote>
    <!-- certifications -->


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>
    <!-- generalist, world wide -->


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)