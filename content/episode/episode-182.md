+++
title = "Episode 182"
description = """
  After a longer-than-expected break, the Ubuntu Security Podcast is back,
  covering some highlights of the various security items planned during the 23.04
  development cycle, our entrance into the fediverse of Mastodon, some open
  positions on the team and some of the details of the various security updates
  from the past week.
  """
date = 2022-11-25T22:22:00+10:30
lastmod = 2022-11-25T22:25:39+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E182.mp3"
podcast_duration = 759
podcast_bytes = 13700462
permalink = "https://ubuntusecuritypodcast.org/episode-182/"
guid = "9728d506bd7e63f66f06563e60030513e28b8e12a664b7d9b7802c3d8f801578df318c43784fd5e7bc93b22a668dd74334b3252e96057bee08a402549c02dab4"
+++

## Overview {#overview}

After a longer-than-expected break, the Ubuntu Security Podcast is back,
covering some highlights of the various security items planned during the 23.04
development cycle, our entrance into the fediverse of Mastodon, some open
positions on the team and some of the details of the various security updates
from the past week.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

67 unique CVEs addressed


### [[USN-5726-1](https://ubuntu.com/security/notices/USN-5726-1)] Firefox vulnerabilities [00:45] {#usn-5726-1-firefox-vulnerabilities-00-45}

-   19 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-45417](https://ubuntu.com/security/CVE-2022-45417) <!-- medium -->
    -   [CVE-2022-45416](https://ubuntu.com/security/CVE-2022-45416) <!-- medium -->
    -   [CVE-2022-45415](https://ubuntu.com/security/CVE-2022-45415) <!-- medium -->
    -   [CVE-2022-45412](https://ubuntu.com/security/CVE-2022-45412) <!-- medium -->
    -   [CVE-2022-45421](https://ubuntu.com/security/CVE-2022-45421) <!-- medium -->
    -   [CVE-2022-45420](https://ubuntu.com/security/CVE-2022-45420) <!-- medium -->
    -   [CVE-2022-45419](https://ubuntu.com/security/CVE-2022-45419) <!-- medium -->
    -   [CVE-2022-45418](https://ubuntu.com/security/CVE-2022-45418) <!-- medium -->
    -   [CVE-2022-40674](https://ubuntu.com/security/CVE-2022-40674) <!-- medium -->
    -   [CVE-2022-45413](https://ubuntu.com/security/CVE-2022-45413) <!-- medium -->
    -   [CVE-2022-45411](https://ubuntu.com/security/CVE-2022-45411) <!-- medium -->
    -   [CVE-2022-45410](https://ubuntu.com/security/CVE-2022-45410) <!-- medium -->
    -   [CVE-2022-45409](https://ubuntu.com/security/CVE-2022-45409) <!-- medium -->
    -   [CVE-2022-45408](https://ubuntu.com/security/CVE-2022-45408) <!-- medium -->
    -   [CVE-2022-45407](https://ubuntu.com/security/CVE-2022-45407) <!-- medium -->
    -   [CVE-2022-45406](https://ubuntu.com/security/CVE-2022-45406) <!-- medium -->
    -   [CVE-2022-45405](https://ubuntu.com/security/CVE-2022-45405) <!-- medium -->
    -   [CVE-2022-45404](https://ubuntu.com/security/CVE-2022-45404) <!-- medium -->
    -   [CVE-2022-45403](https://ubuntu.com/security/CVE-2022-45403) <!-- medium -->
-   Firefox 107.0
    -   apparently includes support for power profiling in Intel CPUs as part of the
        developer tools


### [[LSN-0090-1](https://ubuntu.com/security/notices/LSN-0090-1)] Linux kernel vulnerability [01:16] {#lsn-0090-1-linux-kernel-vulnerability-01-16}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-42722](https://ubuntu.com/security/CVE-2022-42722) <!-- medium -->
    -   [CVE-2022-42721](https://ubuntu.com/security/CVE-2022-42721) <!-- medium -->
    -   [CVE-2022-42720](https://ubuntu.com/security/CVE-2022-42720) <!-- medium -->
    -   [CVE-2022-41674](https://ubuntu.com/security/CVE-2022-41674) <!-- medium -->
    -   [CVE-2022-2602](https://ubuntu.com/security/CVE-2022-2602) <!-- high -->
    -   [CVE-2022-1015](https://ubuntu.com/security/CVE-2022-1015) <!-- high -->
-   Race condition in `io_uring` -&gt; UAF (from Pwn2Own 2022)
-   OOB write in netfilter - requires `CAP_NET_ADMIN` but this can be obtained from
    within an unprivileged user namespace
    -   Another example of why the Ubuntu Security team is pushing to disable the
        use of unprivileged user namespaces by arbitrary processes in future Ubuntu
        releases


#### Livepatch version information per release {#livepatch-version-information-per-release}

```shell
canonical-livepatch status
```

| Kernel type    | 22.04 | 20.04 | 18.04 |
|----------------|-------|-------|-------|
| aws            | 90.3  | 90.2  | —     |
| aws-5.15       | —     | 90.3  | —     |
| aws-5.4        | —     | —     | 90.2  |
| azure          | 90.2  | 90.2  | —     |
| azure-5.4      | —     | —     | 90.2  |
| gcp            | 90.3  | 90.2  | —     |
| gcp-5.15       | —     | 90.3  | —     |
| gcp-5.4        | —     | —     | 90.2  |
| generic-5.4    | —     | 90.2  | 90.2  |
| gke            | 90.3  | 90.2  | —     |
| gke-5.15       | —     | 90.3  | —     |
| gke-5.4        | —     | —     | 90.2  |
| gkeop          | —     | 90.2  | —     |
| gkeop-5.4      | —     | —     | 90.2  |
| ibm            | 90.2  | 90.2  | —     |
| ibm-5.4        | —     | —     | 90.2  |
| linux          | 90.2  | —     | —     |
| lowlatency     | 90.2  | —     | —     |
| lowlatency-5.4 | —     | 90.2  | 90.2  |


### [[USN-5727-1](https://ubuntu.com/security/notices/USN-5727-1)] Linux kernel vulnerabilities [02:31] {#usn-5727-1-linux-kernel-vulnerabilities-02-31}

-   7 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2022-40768](https://ubuntu.com/security/CVE-2022-40768) <!-- medium -->
    -   [CVE-2022-36879](https://ubuntu.com/security/CVE-2022-36879) <!-- medium -->
    -   [CVE-2022-3635](https://ubuntu.com/security/CVE-2022-3635) <!-- medium -->
    -   [CVE-2022-3028](https://ubuntu.com/security/CVE-2022-3028) <!-- medium -->
    -   [CVE-2022-2978](https://ubuntu.com/security/CVE-2022-2978) <!-- medium -->
    -   [CVE-2022-2153](https://ubuntu.com/security/CVE-2022-2153) <!-- medium -->
    -   [CVE-2022-20422](https://ubuntu.com/security/CVE-2022-20422) <!-- medium -->


### [[USN-5728-1](https://ubuntu.com/security/notices/USN-5728-1)] Linux kernel vulnerabilities {#usn-5728-1-linux-kernel-vulnerabilities}

-   12 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-42719](https://ubuntu.com/security/CVE-2022-42719) <!-- medium -->
    -   [CVE-2022-40768](https://ubuntu.com/security/CVE-2022-40768) <!-- medium -->
    -   [CVE-2022-39188](https://ubuntu.com/security/CVE-2022-39188) <!-- medium -->
    -   [CVE-2022-3635](https://ubuntu.com/security/CVE-2022-3635) <!-- medium -->
    -   [CVE-2022-3625](https://ubuntu.com/security/CVE-2022-3625) <!-- medium -->
    -   [CVE-2022-3028](https://ubuntu.com/security/CVE-2022-3028) <!-- medium -->
    -   [CVE-2022-29901](https://ubuntu.com/security/CVE-2022-29901) <!-- medium -->
    -   [CVE-2022-2978](https://ubuntu.com/security/CVE-2022-2978) <!-- medium -->
    -   [CVE-2022-2153](https://ubuntu.com/security/CVE-2022-2153) <!-- medium -->
    -   [CVE-2022-20422](https://ubuntu.com/security/CVE-2022-20422) <!-- medium -->
    -   [CVE-2022-41222](https://ubuntu.com/security/CVE-2022-41222) <!-- high -->
    -   [CVE-2022-42703](https://ubuntu.com/security/CVE-2022-42703) <!-- high -->


### [[USN-5729-1](https://ubuntu.com/security/notices/USN-5729-1)] Linux kernel vulnerabilities {#usn-5729-1-linux-kernel-vulnerabilities}

-   8 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-40768](https://ubuntu.com/security/CVE-2022-40768) <!-- medium -->
    -   [CVE-2022-39190](https://ubuntu.com/security/CVE-2022-39190) <!-- medium -->
    -   [CVE-2022-3635](https://ubuntu.com/security/CVE-2022-3635) <!-- medium -->
    -   [CVE-2022-3625](https://ubuntu.com/security/CVE-2022-3625) <!-- medium -->
    -   [CVE-2022-3028](https://ubuntu.com/security/CVE-2022-3028) <!-- medium -->
    -   [CVE-2022-2978](https://ubuntu.com/security/CVE-2022-2978) <!-- medium -->
    -   [CVE-2022-2905](https://ubuntu.com/security/CVE-2022-2905) <!-- medium -->
    -   [CVE-2022-20422](https://ubuntu.com/security/CVE-2022-20422) <!-- medium -->


### [[USN-5727-2](https://ubuntu.com/security/notices/USN-5727-2)] Linux kernel (GCP) vulnerabilities {#usn-5727-2-linux-kernel--gcp--vulnerabilities}

-   7 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2022-40768](https://ubuntu.com/security/CVE-2022-40768) <!-- medium -->
    -   [CVE-2022-36879](https://ubuntu.com/security/CVE-2022-36879) <!-- medium -->
    -   [CVE-2022-3635](https://ubuntu.com/security/CVE-2022-3635) <!-- medium -->
    -   [CVE-2022-3028](https://ubuntu.com/security/CVE-2022-3028) <!-- medium -->
    -   [CVE-2022-2978](https://ubuntu.com/security/CVE-2022-2978) <!-- medium -->
    -   [CVE-2022-2153](https://ubuntu.com/security/CVE-2022-2153) <!-- medium -->
    -   [CVE-2022-20422](https://ubuntu.com/security/CVE-2022-20422) <!-- medium -->


### [[USN-5728-2](https://ubuntu.com/security/notices/USN-5728-2)] Linux kernel vulnerabilities {#usn-5728-2-linux-kernel-vulnerabilities}

-   12 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-42719](https://ubuntu.com/security/CVE-2022-42719) <!-- medium -->
    -   [CVE-2022-40768](https://ubuntu.com/security/CVE-2022-40768) <!-- medium -->
    -   [CVE-2022-39188](https://ubuntu.com/security/CVE-2022-39188) <!-- medium -->
    -   [CVE-2022-3635](https://ubuntu.com/security/CVE-2022-3635) <!-- medium -->
    -   [CVE-2022-3625](https://ubuntu.com/security/CVE-2022-3625) <!-- medium -->
    -   [CVE-2022-3028](https://ubuntu.com/security/CVE-2022-3028) <!-- medium -->
    -   [CVE-2022-29901](https://ubuntu.com/security/CVE-2022-29901) <!-- medium -->
    -   [CVE-2022-2978](https://ubuntu.com/security/CVE-2022-2978) <!-- medium -->
    -   [CVE-2022-2153](https://ubuntu.com/security/CVE-2022-2153) <!-- medium -->
    -   [CVE-2022-20422](https://ubuntu.com/security/CVE-2022-20422) <!-- medium -->
    -   [CVE-2022-41222](https://ubuntu.com/security/CVE-2022-41222) <!-- high -->
    -   [CVE-2022-42703](https://ubuntu.com/security/CVE-2022-42703) <!-- high -->


### [[USN-5729-2](https://ubuntu.com/security/notices/USN-5729-2)] Linux kernel vulnerabilities {#usn-5729-2-linux-kernel-vulnerabilities}

-   8 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-40768](https://ubuntu.com/security/CVE-2022-40768) <!-- medium -->
    -   [CVE-2022-39190](https://ubuntu.com/security/CVE-2022-39190) <!-- medium -->
    -   [CVE-2022-3635](https://ubuntu.com/security/CVE-2022-3635) <!-- medium -->
    -   [CVE-2022-3625](https://ubuntu.com/security/CVE-2022-3625) <!-- medium -->
    -   [CVE-2022-3028](https://ubuntu.com/security/CVE-2022-3028) <!-- medium -->
    -   [CVE-2022-2978](https://ubuntu.com/security/CVE-2022-2978) <!-- medium -->
    -   [CVE-2022-2905](https://ubuntu.com/security/CVE-2022-2905) <!-- medium -->
    -   [CVE-2022-20422](https://ubuntu.com/security/CVE-2022-20422) <!-- medium -->


### [[USN-5730-1](https://ubuntu.com/security/notices/USN-5730-1)] WebKitGTK vulnerabilities [02:41] {#usn-5730-1-webkitgtk-vulnerabilities-02-41}

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-42824](https://ubuntu.com/security/CVE-2022-42824) <!-- medium -->
    -   [CVE-2022-42823](https://ubuntu.com/security/CVE-2022-42823) <!-- medium -->
    -   [CVE-2022-42799](https://ubuntu.com/security/CVE-2022-42799) <!-- medium -->
    -   [CVE-2022-32923](https://ubuntu.com/security/CVE-2022-32923) <!-- medium -->
    -   [CVE-2022-32888](https://ubuntu.com/security/CVE-2022-32888) <!-- medium -->
-   Latest upstream version 2.38.2 fixing various web-engine related
    vulnerabilities


### [[USN-5731-1](https://ubuntu.com/security/notices/USN-5731-1)] multipath-tools vulnerabilities [03:05] {#usn-5731-1-multipath-tools-vulnerabilities-03-05}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-41974](https://ubuntu.com/security/CVE-2022-41974) <!-- medium -->
    -   [CVE-2022-41973](https://ubuntu.com/security/CVE-2022-41973) <!-- medium -->
-   2 issues discovered by Qualys - one in handling of symlinks in `/dev/shm` and
    the other around the handling of UNIX domain sockets - could be combined
    together with another unspecified vulnerability in a different component
    installed by default on Ubuntu Server 22.04 to achieve privilege escalation to
    root - will be interesting to find out what this other vulnerability is in the
    future


### [[USN-5638-2](https://ubuntu.com/security/notices/USN-5638-2)] Expat vulnerabilities [03:53] {#usn-5638-2-expat-vulnerabilities-03-53}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-43680](https://ubuntu.com/security/CVE-2022-43680) <!-- medium -->
    -   [CVE-2022-40674](https://ubuntu.com/security/CVE-2022-40674) <!-- medium -->
-   [[USN-5638-1] Expat vulnerability from Episode 179]({{< relref "episode-179#usn-5638-1-expat-vulnerability-07-55" >}})


### [[USN-5732-1](https://ubuntu.com/security/notices/USN-5732-1)] Unbound vulnerability [04:02] {#usn-5732-1-unbound-vulnerability-04-02}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-3204](https://ubuntu.com/security/CVE-2022-3204) <!-- medium -->


### [[USN-5686-2](https://ubuntu.com/security/notices/USN-5686-2), [USN-5686-3](https://ubuntu.com/security/notices/USN-5686-3)] Git vulnerabilities {#usn-5686-2-usn-5686-3-git-vulnerabilities}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Kinetic (22.10)
    -   [CVE-2022-39260](https://ubuntu.com/security/CVE-2022-39260) <!-- medium -->
    -   [CVE-2022-39253](https://ubuntu.com/security/CVE-2022-39253) <!-- medium -->
-   [[USN-5686-1] Git vulnerabilities from Episode 181]({{< relref "episode-181#usn-5686-1-git-vulnerabilities" >}})


### [[USN-5733-1](https://ubuntu.com/security/notices/USN-5733-1)] FLAC vulnerabilities {#usn-5733-1-flac-vulnerabilities}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2021-0561](https://ubuntu.com/security/CVE-2021-0561) <!-- low -->
    -   [CVE-2020-0499](https://ubuntu.com/security/CVE-2020-0499) <!-- low -->
    -   [CVE-2017-6888](https://ubuntu.com/security/CVE-2017-6888) <!-- low -->


### [[USN-5658-3](https://ubuntu.com/security/notices/USN-5658-3)] DHCP vulnerabilities {#usn-5658-3-dhcp-vulnerabilities}

-   2 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2022-2929](https://ubuntu.com/security/CVE-2022-2929) <!-- medium -->
    -   [CVE-2022-2928](https://ubuntu.com/security/CVE-2022-2928) <!-- medium -->


### [[USN-5716-2](https://ubuntu.com/security/notices/USN-5716-2)] SQLite vulnerability {#usn-5716-2-sqlite-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2022-35737](https://ubuntu.com/security/CVE-2022-35737) <!-- medium -->


### [[USN-5734-1](https://ubuntu.com/security/notices/USN-5734-1)] FreeRDP vulnerabilities [04:15] {#usn-5734-1-freerdp-vulnerabilities-04-15}

-   8 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-39347](https://ubuntu.com/security/CVE-2022-39347) <!-- medium -->
    -   [CVE-2022-39320](https://ubuntu.com/security/CVE-2022-39320) <!-- low -->
    -   [CVE-2022-39319](https://ubuntu.com/security/CVE-2022-39319) <!-- low -->
    -   [CVE-2022-39318](https://ubuntu.com/security/CVE-2022-39318) <!-- low -->
    -   [CVE-2022-39317](https://ubuntu.com/security/CVE-2022-39317) <!-- low -->
    -   [CVE-2022-39316](https://ubuntu.com/security/CVE-2022-39316) <!-- low -->
    -   [CVE-2022-39283](https://ubuntu.com/security/CVE-2022-39283) <!-- low -->
    -   [CVE-2022-39282](https://ubuntu.com/security/CVE-2022-39282) <!-- low -->


### [[USN-5735-1](https://ubuntu.com/security/notices/USN-5735-1)] Sysstat vulnerability {#usn-5735-1-sysstat-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-39377](https://ubuntu.com/security/CVE-2022-39377) <!-- medium -->


### [[USN-5737-1](https://ubuntu.com/security/notices/USN-5737-1)] APR-util vulnerability {#usn-5737-1-apr-util-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2017-12618](https://ubuntu.com/security/CVE-2017-12618) <!-- low -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### 23.04 Ubuntu Security roadmap [04:52] {#23-dot-04-ubuntu-security-roadmap-04-52}

-   Since the last podcast in [Episode 181](https://ubuntusecuritypodcast.org/episode-181/), had both the 23.04 start-of-cycle
    product roadmap sprint and engineering sprints in Prague (followed by the
    Ubuntu Summit)
-   Some of the highlights for the Ubuntu Security team's 23.04 roadmap
    -   Tabletop exercises
    -   Improvements to OVAL data
    -   Various AppArmor improvements including user namespace mediation across the
        distro, plus working with upstream kernel developers on `io_uring` mediation
    -   Security improvements for Ubuntu Core including better integrity
        verification
    -   Usual security and other ongoing maintenance tasks
        -   CVE patching, MIR package reviews, Snap Store security reviews, FIPS
            maintenance and more
    -   A heap of customer specific / commercially sensitive stuff too
-   Will talk more about a lot of these topics in future episodes


### Hiring [08:46] {#hiring-08-46}


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180>
-   Engineer position in the security maintenance team


#### Linux Cryptography and Security Engineer {#linux-cryptography-and-security-engineer}

-   <https://canonical.com/careers/4717512>
-   Engineer in the security certifications team


#### Ubuntu Security Manager {#ubuntu-security-manager}

-   <https://canonical.com/careers/4192903>
-   One requisition, looking to fill multiple different manager positions -
    Security Maintenance, Security Certifications and Security Technologies teams


### The Ubuntu Security Team is now part of the Mastodon Fediverse [10:10] {#the-ubuntu-security-team-is-now-part-of-the-mastodon-fediverse-10-10}

-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity)
-   With all the recent drama on twitter, decided to establish a presence on the
    fosstodon.org Mastodon instance as well
-   Mastodon is similar to twitter but instead of being one single centralised
    service, consists of multiple federated servers - so a user on one server can
    follow users on other servers - but allows different communities to have their
    own servers if desired
-   Appears to be a good alternative to Twitter
-   Will operate both and try to keep the two in-sync


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec),
