+++
title = "Episode 213"
description = """
  As we ease back into regular programming, we cover the various activities the
  team got up to over the past few weeks whilst away in Riga for the Ubuntu Summit
  and Ubuntu Engineering Sprint.
  """
date = 2023-11-17T16:59:00+10:30
lastmod = 2023-11-17T17:01:21+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E213.mp3"
podcast_duration = 549
podcast_bytes = 9454333
permalink = "https://ubuntusecuritypodcast.org/episode-213/"
guid = "acd3fb1a5d192f6a10536faa9017e11410bc0af3959b5568869ca13405bd30fa27dee0da6a59f179ed5f75202fb94c0d4c98b895e074382722e9b06c1cdb13d2"
+++

## Overview {#overview}

As we ease back into regular programming, we cover the various activities the
team got up to over the past few weeks whilst away in Riga for the Ubuntu Summit
and Ubuntu Engineering Sprint.


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu Security team at the Ubuntu Summit (00:48) {#ubuntu-security-team-at-the-ubuntu-summit--00-48}

-   [Preparation for Riga Product Roadmap Sprint, Ubuntu Summit and Engineering Sprint from Episode 212]({{< relref "episode-212#preparation-for-riga-product-roadmap-sprint-ubuntu-summit-and-engineering-sprint--17-33" >}})
-   In the last episode we previewed a couple talks by different folks from the
    Ubuntu Security Team - recordings for these will be available but currently
    there is only the livestreams from the main plenary room - as such, right now
    you can go watch Tobias' talk "From Asahi Linux to Ubuntu: Running Linux on
    Apple Silicon"
    -   <https://youtu.be/XIGxKyekvBQ?list=PL-qBHd6_LXWZqbxr3542fZs_IMn0gAb2B&t=20272>


### Andrei publishes The Open Source Fortress (01:41) {#andrei-publishes-the-open-source-fortress--01-41}

-   <https://discourse.ubuntu.com/t/the-open-source-fortress-is-now-live/40183>
-   Back in August, Andrei put out a call for topic suggestions for a
    vulnerability discovery workshop that he was putting together, with a
    particular focus on open source code bases
-   He presented this in a 90 minute session 2 weeks ago on the final day of the
    Ubuntu Summit
-   He covered a number of topics with a focus on practical application of each
    using dedicated tooling, e.g.:
    -   Threat modelling with OWASP Threat Dragon
    -   Secret scanning with Gitleaks
    -   Dependency scanning with OSV-Scanner
    -   Linting with Bandit and flawfinder
    -   Code querying with Semgrep
    -   Fuzzing with AFL++
    -   Symbolic execution with KLEE
-   So not only did participants learn about a given technique, such as what
    fuzzing is etc, but also how they can easily apply it with standard tooling to
    find real world problems
-   Due to the success of the workshop, he has decided to make the contents
    publicly available
    -   Online wiki <https://ossfortress.io/>
    -   [Presentation from the Summit](https://github.com/iosifache/oss_fortress/blob/main/presentation/ubuntu-summit-23/export.pdf)
    -   [Github repository](https://github.com/iosifache/oss_fortress) with example projects to run the various tools against
    -   Pre-built docker images for the various tools used in the workshop
-   Designed to be worked through in your own time


### UbuCTF at the Ubuntu Engineering Sprint (04:15) {#ubuctf-at-the-ubuntu-engineering-sprint--04-15}

-   Emi, Nishit, Andei, Amir and David from the team organised and held the first
    UbuCTF at the Engineering Sprint the week after the Ubuntu Summit
-   Organised around a story of cyber crime fighting against a criminal gang in Riga
-   5 days, 26 challenges, 64 players
-   Challenges covered a variety of topics
    -   Networking
    -   Web
    -   Crypto(graphy)
    -   Reverse engineering
    -   Pwning
    -   Vulnerability Patching
-   Gave experience using tools like [Wfuzz](https://github.com/xmendez/wfuzz), [Pwntools](https://github.com/Gallopsled/pwntools), [cutter](https://cutter.re/) / [rizin](https://rizin.re/) / [radare2](https://snapcraft.io/radare2),
    [Ghidra](https://snapcraft.io/ghidra), [Wireshark](https://www.wireshark.org/), [insomnia](https://snapcraft.io/insomnia) and more
-   457 flags submitted (110 correct), 47 patches submitted
-   Result was very close - won by Anton Troyanov (Senior Engineer on the MAAS team)
-   Ubuntu Security team members were barred from competing as we had previously
    worked on these challenges - BUT shout out to Sudhakar Verma who just joined
    our team only 4 weeks ago and so didn't have any prior experience with this
    CTF - managed to solve every single challenge 💪💪💪


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
