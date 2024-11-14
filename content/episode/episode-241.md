+++
title = "Episode 241"
description = """
  This week we take a deep dive into the latest Linux malware, GoblinRAT to look
  at how malware is evolving to stay stealthy and evade detection and how malware
  authors are learning from modern software development along the way.
  """
date = 2024-11-14T22:59:00+10:30
lastmod = 2024-11-14T22:59:21+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E241.mp3"
podcast_duration = 1096
podcast_bytes = 19033937
permalink = "https://ubuntusecuritypodcast.org/episode-241/"
guid = "5d23108a1e6c6d5cd045b9215686dbbaeccb86f6ab3409bfdabb747cfb1a105563d893ce6bf330b43d6ab633ab3e5dd9865aa400157ccf6fc69554a5e868ac37"
+++

## Overview {#overview}

This week we take a deep dive into the latest Linux malware, GoblinRAT to look
at how malware is evolving to stay stealthy and evade detection and how malware
authors are learning from modern software development along the way.


## GoblinRAT Linux Malware teardown {#goblinrat-linux-malware-teardown}

-   <https://rt-solar.ru/solar-4rays/blog/4861/>
-   Solar 4RAYS team (Cyber Threat Research Center at SOLAR - Russian
    Cybersecurity firm) describes a new piece of Linux malware which they name
    GoblinRAT (RAT = Remote Access Trojan) 2023 when contacted by an IT company which provides
    services to (presumably) Russian government agencies - noticed system logs
    being deleted off one of their servers and a utility being downloaded to steal
    account passwords from a domain controller
-   Found this malware masquerading as a legitimate process which takes quite
    careful steps to avoid detection - in fact most of the functionality within
    the malware is devoted to hiding its presence on the target system
-   Doesn't include automatic persistence but instead appears to be manually
    "installed" by the attackers with a unique name for each target where it would
    be named after an existing legitimate process on the target system - similarly
    even the names of its files and libraries were also unique per-system as well
    to avoid detection
    -   e.g. in one case where zabbix was running, the malware named itself
        `zabbix_agent` and setup a new systemd service to launch itself at boot
        which looks identical to the real zabbix agent (except the real one is
        `zabbix_agentd`) and then once running it edits its own command-line
        arguments after startup to insert standard parameters expected by the real
        `zabbix_agentd` so that on a `ps aux` or similar output it appears basically
        identical to the real `zabbix_agentd`
    -   in another case it named itself `rhsmd` to mimic the Red Hat subscription
        manager service again using systemd as the launcher, whilst for others as
        `memcached` using cron to launch
    -   C2 uses DDNS (Dynamic DNS) and legitimate hacked sites to hide in noise of
        "normal" traffic - using DDNS attackers would use specifically named C2
        machines per target host - in one case where it was named `chrony_debug` to
        mimic the `chronyd` time synchronisation service, it would connect to C2 a
        machine named `chronyd.tftpd.net` - attackers clearly went to a lot of work
        to hide this in plain sight
-   Automatically deletes itself off the system if does not get pinged by the C2
    operator after a certain period of time - and when it deletes itself it [shreds](https://en.wikipedia.org/wiki/Shred_(Unix))
    itself to reduce the chance of being detected later via disk forensics etc
-   Has 2 versions - a "server" and "client" - the server uses [port-knocking](https://en.wikipedia.org/wiki/Port_knocking) to
    watching incoming connection requests on a given network interface and then
    only actually allowing a connection if the expected sequence of port numbers
    was tried - this allows the controller of the malware to connect into it
    without the malware actively listening on a given port and hence reduces the
    chance it is detected accidentally
-   Client instead connects back to its specific C2 server
-   Logs collected by 4RAYS team appear to show the commands executed by the
    malware were quite manual looking - invoking bash and then later invoking
    commands like systemctl to stop and replace an existing service, where the
    time lag between commands is in the order of seconds - minutes and so would
    seem like these were manually typed command rather than automatically driven
    by scripts
-   Malware itself is implemented in Go and includes the ability to execute single
    commands as well as providing an interactive shell; also includes support for
    listing / copying / moving files including with compression; also works as a
    SOCKS5 proxy to allow it to proxy traffic to/from other hosts that may be
    behind more restrictive firewalls etc; and as detailed above the ability to
    mimic existing processes on the system to avoid detection
-   To try and frustrate reverse engineering [Gobfuscate](https://github.com/unixpickle/gobfuscate) was used to obfuscate the
    compiled code - odd choice though since this project was seemingly abandonded
    3 years ago and nowadays [garble](https://github.com/burrowers/garble) seems to be the go-to tool for this (no pun
    intended)- but perhaps this is evidence of the time of the campaign since
    these samples were all found back in 2020 which this project was more active...
-   Encrypts its configuration using AES-GCM and the config contains details like
    the shell to invoke, kill-switch delay and secret value to use to disable it,
    alternate process name to use plus the TLS certificate and keys to use when
    communicating with the C2 server

-   Uses the [yamux](https://github.com/hashicorp/yamux) Go connection multiplexing library then to multiplex the single
    TLS connection to/from the C2 server

-   Can then be instructed to perform the various actions like running commands /
    launching a shell / list files in a directory / reading files etc as discussed
    before

-   Other interesting part is the kill switch / self-destruct functionality - if
    kill switch delay is specified in the encrypted configuration malware will
    automatically delete itself by invoking dd to overwrite itself with input from
    /dev/urandom 8 times; once more with 0 bytes and finally then removing the
    file from disk

-   Overall 4 organisations were found to have been hacked with this and in each
    it was running with full admin rights - with some running for over 3 years -
    and various binaries show compilation dates and golang toolchain versions
    indicating this was developed since at least 2020
-   But unlike other malware that we have covered, it does not appear to be a more
    widespread campaign since "other information security companies with global
    sensor networks" couldn't find any similar samples in their own collections
-   No clear evidence of origin - Solar 4RAYS asking for other cybersecurity
    companies to help contribute to their evidence to identify the attackers

-   Interesting to see the evolution of malware mirrors that of normal software
    development - no longer using C/C++ etc but more modern languages like Go
    which provide exactly the sorts of functionality you want in your malware -
    systems-level programming functionality with built-in concurrency and memory
    safety - also Go binaries are statically linked so no need to worry about
    dependencies on the target system


## Get in contact {#get-in-contact}

-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
