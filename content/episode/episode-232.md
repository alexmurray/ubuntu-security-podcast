+++
title = "Episode 232"
description = """
  This week we deep-dive into one of the best vulnerabilities we've seen in a long
  time _regreSSHion_ - an unauthenticated, remote, root code-execution vulnerability
  in OpenSSH. Plus we cover updates for Plasma Workspace, Ruby, Netplan,
  FontForge, OpenVPN and a whole lot more.
  """
date = 2024-07-05T19:18:00+09:30
lastmod = 2024-07-05T19:20:20+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E232.mp3"
podcast_duration = 1760
podcast_bytes = 29614794
permalink = "https://ubuntusecuritypodcast.org/episode-232/"
guid = "ded2de69c2c064527178ead61f80eff15ccd66c97cffdee43302e9bb772319cc53c347cd2f57af087c607f7cd54b73ada44f576dd2f2be2ab7c5735869c9631f"
+++

## Overview {#overview}

This week we deep-dive into one of the best vulnerabilities we've seen in a long
time _regreSSHion_ - an unauthenticated, remote, root code-execution vulnerability
in OpenSSH. Plus we cover updates for Plasma Workspace, Ruby, Netplan,
FontForge, OpenVPN and a whole lot more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

39 unique CVEs addressed


### [[USN-6843-1](https://ubuntu.com/security/notices/USN-6843-1)] Plasma Workspace vulnerability (01:23) {#usn-6843-1-plasma-workspace-vulnerability--01-23}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-36041](https://ubuntu.com/security/CVE-2024-36041) <!-- medium -->
-   KDE Session Manager - used for restoring previously running applications at next boot
-   Provides ability to clients to connect to it via Inter-Client Exchange (ICE)
    protocol - protocol within X for allowing X clients to interact with
    one-another
-   Since X supports remote clients, is important to authenticate connections - in
    this case KDE SM would authenticate to ensure the connection was coming from
    the local machine - but this could then allow any local user to connect to
    another users SM and hence use the session management features to set some
    arbitrary application to be run when the session is restored - as that other
    user


### [[USN-6852-1](https://ubuntu.com/security/notices/USN-6852-1), [USN-6852-2](https://ubuntu.com/security/notices/USN-6852-2)] Wget vulnerability (02:42) {#usn-6852-1-usn-6852-2-wget-vulnerability--02-42}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-38428](https://ubuntu.com/security/CVE-2024-38428) <!-- medium -->
-   mishandled semicolons in userinfo of a URL - this is the `user@host:port`
    combination - so would possibly then use a different hostname than the one the
    user expected


### [[USN-6853-1](https://ubuntu.com/security/notices/USN-6853-1)] Ruby vulnerability (03:12) {#usn-6853-1-ruby-vulnerability--03-12}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-27280](https://ubuntu.com/security/CVE-2024-27280) <!-- medium -->
-   Provides methods `ungetbyte()/ungetc()` to push-back characters on an IO
    stream - would possibly read beyond the end of the buffer - OOB read


### [[USN-6851-1](https://ubuntu.com/security/notices/USN-6851-1)] Netplan vulnerabilities (03:37) {#usn-6851-1-netplan-vulnerabilities--03-37}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2022-4968](https://ubuntu.com/security/CVE-2022-4968) <!-- medium -->
-   Two different issues
    -   When configuring a Wireguard interface, would write the wireguard private
        key into the netplan interface configuration - but would then leave this
        with world-readable permissions
    -   This can either be specified as the filename to the private key OR the
        private key itself - so if had chosen to specify the actual private key,
        this is now world-readable to any other user
        -   Fixed to use restrictive permissions on the generated configuration files
            and to fixup any existing ones as well
    -   Failed to escape control characters in various backend files - a malicious
        application that is able to create a netplan configuration could then abuse
        this to get code execution as netplan


### [[USN-6851-2](https://ubuntu.com/security/notices/USN-6851-2)] Netplan regression {#usn-6851-2-netplan-regression}

-   Affecting Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
-   Failed to properly do the permissions fixup on already existing files


### [[USN-6854-1](https://ubuntu.com/security/notices/USN-6854-1)] OpenSSL vulnerability (05:10) {#usn-6854-1-openssl-vulnerability--05-10}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-40735](https://ubuntu.com/security/CVE-2022-40735) <!-- medium -->
-   Related to a historical vulnerability - <https://dheatattack.gitlab.io/> - CVE-2002-20001
-   DoS against Diffie-Hellman key exchange protocol - during key negotiation a
    client can trigger expensive CPU calculations -&gt; CPU-based DoS


### [[USN-6856-1](https://ubuntu.com/security/notices/USN-6856-1)] FontForge vulnerabilities (05:50) {#usn-6856-1-fontforge-vulnerabilities--05-50}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-25082](https://ubuntu.com/security/CVE-2024-25082) <!-- medium -->
    -   [CVE-2024-25081](https://ubuntu.com/security/CVE-2024-25081) <!-- medium -->
-   Uses various external utilities to do things like decompress archive files etc
-   However, would do this via the `system()` system-call - which spawns a shell -
    so if a filename contained any shell metacharacters, could then just easily
    get arbitrary code execution
-   Changed to use the utility functions from glib that do not spawn a shell and
    instead just exec() the expected command directly


### [[USN-6857-1](https://ubuntu.com/security/notices/USN-6857-1)] Squid vulnerabilities (06:48) {#usn-6857-1-squid-vulnerabilities--06-48}

-   6 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2024-25617](https://ubuntu.com/security/CVE-2024-25617) <!-- medium -->
    -   [CVE-2023-50269](https://ubuntu.com/security/CVE-2023-50269) <!-- medium -->
    -   [CVE-2023-49286](https://ubuntu.com/security/CVE-2023-49286) <!-- medium -->
    -   [CVE-2023-49285](https://ubuntu.com/security/CVE-2023-49285) <!-- medium -->
    -   [CVE-2022-41318](https://ubuntu.com/security/CVE-2022-41318) <!-- medium -->
    -   [CVE-2021-28651](https://ubuntu.com/security/CVE-2021-28651) <!-- medium -->


### [[USN-6566-2](https://ubuntu.com/security/notices/USN-6566-2)] SQLite vulnerability {#usn-6566-2-sqlite-vulnerability}

-   1 CVEs addressed in Bionic ESM (18.04 ESM)
    -   [CVE-2023-7104](https://ubuntu.com/security/CVE-2023-7104) <!-- medium -->


### [[USN-5615-3](https://ubuntu.com/security/notices/USN-5615-3)] SQLite vulnerability {#usn-5615-3-sqlite-vulnerability}

-   3 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2021-20223](https://ubuntu.com/security/CVE-2021-20223) <!-- medium -->
    -   [CVE-2020-35527](https://ubuntu.com/security/CVE-2020-35527) <!-- medium -->
    -   [CVE-2020-35525](https://ubuntu.com/security/CVE-2020-35525) <!-- medium -->


### [[USN-6855-1](https://ubuntu.com/security/notices/USN-6855-1)] libcdio vulnerability (06:58) {#usn-6855-1-libcdio-vulnerability--06-58}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-36600](https://ubuntu.com/security/CVE-2024-36600) <!-- medium -->
-   ISO file parser - used strcpy() instead of strncpy() so could be made to quite
    easily achieve buffer overflow and hence possible code-execution


### [[USN-6858-1](https://ubuntu.com/security/notices/USN-6858-1)] eSpeak NG vulnerabilities (07:33) {#usn-6858-1-espeak-ng-vulnerabilities--07-33}

-   5 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-49994](https://ubuntu.com/security/CVE-2023-49994) <!-- medium -->
    -   [CVE-2023-49993](https://ubuntu.com/security/CVE-2023-49993) <!-- medium -->
    -   [CVE-2023-49992](https://ubuntu.com/security/CVE-2023-49992) <!-- medium -->
    -   [CVE-2023-49991](https://ubuntu.com/security/CVE-2023-49991) <!-- medium -->
    -   [CVE-2023-49990](https://ubuntu.com/security/CVE-2023-49990) <!-- medium -->
-   speech synthesiser - pass file to it and it will read it aloud
-   various buffer overflows when parsing different formats - found by a researcher via fuzzing


### [[USN-6844-2](https://ubuntu.com/security/notices/USN-6844-2)] CUPS regression (07:51) {#usn-6844-2-cups-regression--07-51}

-   Affecting Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
-   [[USN-6844-1] CUPS vulnerability from Episode 231]({{< relref "episode-231#usn-6844-1-cups-vulnerability--04-08" >}})


### [[USN-6860-1](https://ubuntu.com/security/notices/USN-6860-1)] OpenVPN vulnerabilities (07:57) {#usn-6860-1-openvpn-vulnerabilities--07-57}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-5594](https://ubuntu.com/security/CVE-2024-5594) <!-- medium -->
    -   [CVE-2024-28882](https://ubuntu.com/security/CVE-2024-28882) <!-- medium -->
-   Client was able to keep the session alive even when the server had been
    instructed to disconnect the client
-   Client was able to send junk/non-printable characters in the control channel
    since would then get logged and possibly allow to corrupt the log file or
    cause high CPU load


### [[USN-6862-1](https://ubuntu.com/security/notices/USN-6862-1)] Firefox vulnerabilities (08:27) {#usn-6862-1-firefox-vulnerabilities--08-27}

-   13 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2024-5696](https://ubuntu.com/security/CVE-2024-5696) <!-- medium -->
    -   [CVE-2024-5695](https://ubuntu.com/security/CVE-2024-5695) <!-- medium -->
    -   [CVE-2024-5694](https://ubuntu.com/security/CVE-2024-5694) <!-- medium -->
    -   [CVE-2024-5688](https://ubuntu.com/security/CVE-2024-5688) <!-- medium -->
    -   [CVE-2024-5701](https://ubuntu.com/security/CVE-2024-5701) <!-- medium -->
    -   [CVE-2024-5700](https://ubuntu.com/security/CVE-2024-5700) <!-- medium -->
    -   [CVE-2024-5699](https://ubuntu.com/security/CVE-2024-5699) <!-- medium -->
    -   [CVE-2024-5698](https://ubuntu.com/security/CVE-2024-5698) <!-- medium -->
    -   [CVE-2024-5697](https://ubuntu.com/security/CVE-2024-5697) <!-- medium -->
    -   [CVE-2024-5693](https://ubuntu.com/security/CVE-2024-5693) <!-- medium -->
    -   [CVE-2024-5691](https://ubuntu.com/security/CVE-2024-5691) <!-- medium -->
    -   [CVE-2024-5690](https://ubuntu.com/security/CVE-2024-5690) <!-- medium -->
    -   [CVE-2024-5689](https://ubuntu.com/security/CVE-2024-5689) <!-- medium -->
-   [127.0.2](https://www.mozilla.org/en-US/firefox/127.0.2/releasenotes/)


### [[USN-6859-1](https://ubuntu.com/security/notices/USN-6859-1)] OpenSSH vulnerability {#usn-6859-1-openssh-vulnerability}

-   1 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-6387](https://ubuntu.com/security/CVE-2024-6387) <!-- high -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Deep-dive into regreSSHion - Remote Unauthenticated Code Execution Vulnerablity in OpenSSH {#deep-dive-into-regresshion-remote-unauthenticated-code-execution-vulnerablity-in-openssh}

-   <https://blog.qualys.com/vulnerabilities-threat-research/2024/07/01/regresshion-remote-unauthenticated-code-execution-vulnerability-in-openssh-server>
-   <https://www.qualys.com/2024/07/01/cve-2024-6387/regresshion.txt>
-   First notified late last week by Qualys of a pending update for OpenSSH which
    fixes a newly discovered unauthenticated remote code execution vulnerability -
    **as root** - this is about as bad as it can get
    -   Exactly the kind of thing that "Jia Tan" spent all that time working on in
        xz-utils to try and achieve ([xz-utils backdoor and Ubuntu from Episode 224]({{< relref "episode-224#xz-utils-backdoor-and-ubuntu" >}}))
-   Qualys are quite specific to note that this only affects OpenSSH on glibc (so
    distros which use say musl are not affected) - due to the intricacies of the
    vulnerablity and how they exploit it
-   Also OpenSSH is quite carefully designed - employs privilege separation to try
    keep the privileged part as minimal as possible - but in this case, the vuln
    is in this privielged part, hence why code execution as root
-   OpenSSH developers released 9.8p1 on Monday this week which has some quite
    significant refactoring to help address this vuln - in particular it includes
    functionality similar to fail2ban to penalise clients that appear to be
    malicious AND it employs even more privilege separation than before
-   Qualys are quite careful to say that they think OpenSSH is one of the most
    secure pieces of software in the world "near-flawless implementation" with
    inspirational defense-in-depth - but clearly bugs still slip through
-   In this case is a signal handler race condition
    -   Diversion - what are signals?
        -   [signal (7)](https://manpages.ubuntu.com/manpages/noble/en/man7/signal.7.html)
            -   simple, asynchronous form of IPC which allows sending a single piece of information - the type of signal
                -   many different types - e.g. SIGSEGV for invalid memory access, or
                    SIGFPE for a math error - or can be sent by other processes - SIGTERM
                    / SIGKILL / SIGINT
                -   process can then set itself up so that a particular signal handler
                    function of its choosing is invoked for a given signal
                -   when a signal is sent to a process, it is queued up and then delivered
                    to a process the next time the kernel returns from kernel space to
                    that process - ie. when returning from a system-call or scheduling of
                    that process
                -   to deliver it, kernel constructs an entirely new stack frame and
                    passes execution to the signal handler function - this runs and then
                    eventually returns control back to the original thread of the process
        -   Signal handlers are special - since they run on their own special stack
            and outside of the normal thread of execution of the process, they can
            potentially cause issues if they do things which modify the global state
            of the process - many regular functions are off-limits within signal
            handlers since they can inadvertently modify such global state
            -   only some functions are hence [async-signal-safe (7)](https://manpages.ubuntu.com/manpages/noble/en/man7/signal-safety.7.html)
                -   list contains a lot of functions BUT many which might ordinarily get
                    used are not included - in particular [`malloc()/free()`](https://manpages.ubuntu.com/manpages/noble/man3/malloc.3.html)
        -   This vuln was caused then by use of one of these async unsafe functions
    -   OpenSSH has a functionality called LoginGraceTime which allows an admin to
        configure how long OpenSSH will allow a client to take to login - if they
        don't log in in that time then it closes the connection
        -   Since this code is all single-threaded, can't just have the code which is
            listening to the client connection bail out easily - so instead this is
            implemented via the SIGALARM signal - used by the [alarm (2)](https://manpages.ubuntu.com/manpages/noble/en/man2/alarm.2.html) system call to
            configure the SIGALARM signal to be delivered to a process some number of
            seconds later
        -   Unfortunately in the signal handler function for this SIGALARM, OpenSSH
            can end up calling `syslog()` when trying to which is one of those unsafe functions
            -   in glibc `syslog()` will potentially call `malloc()/free()` which as we
                mentioned earlier is not async safe
                -   it is possible that the original thread may be in the middle of a call
                    to `malloc() / free()` and then `SIGALARM` signal is delivered (since
                    `malloc()/free()` calls [brk (2)](https://manpages.ubuntu.com/manpages/noble/man2/brk.2.html) system call under the hood and so a
                    pending signal `SIGALARM` may be delivered on return from `brk()`)
                -   both the original thread and the signal handler are then calling
                    `malloc()` at the same time - corrupting the global state of the heap
                    etc
                -   as we know, if can corrupt the heap state 'correctly' can get code
                    execution
                -   but requires the ability to win this race
    -   In fact, this is a reoccurrence of historical [CVE-2006-5051](https://ubuntu.com/security/CVE-2006-5051) - discovered by
        Mark Dowd but subsequently fixed
        -   code in question was refactored in October 2020 and released in OpenSSH
            8.5p1 which would then call `syslog()` during the `SIGALARM` signal handler
-   To exploit this, Qualys take inspiration from a [2001 paper by Michal Zalewski](https://lcamtuf.coredump.cx/signals.txt)
    (aka lcamtuf previously Director of Information Security Engineering at Google
    and now VP Security Engineering at Snap (ie Snapchat etc))
-   Even so, it is an incredibly difficult path to get to a working exploit - both
    since this is a race-condition so it is very hard to get the right timing
    conditions and second due to defence-in-depth measures like ASLR
    -   First develop an exploit for the original 2006 CVE against a couple older versions
        -   OpenSSH 3.4p1 on Debian Woody
            -   even on i386 which has much worse ASLR than amd64, takes 10,000 tries to
                win the race - even then with 10 concurrent connections and each with a
                LoginGraceTime of 5 minutes - ~1week to get a remote root shell
        -   OpenSSH 4.2p1 on Ubuntu 6.06 (Dapper Drake) - first LTS version of
            Ubuntu - this vuln was patched during the lifetime of 6.06 release but
            original install media still contains the unpatched version
            -   Similarly, takes ~10,000 tries to win the race - with LoginGraceTime of
                only 2 minutes can reduce the time to get a remote root shell to 1-2
                days
        -   Finally, OpenSSH 9.2p1 from current Debian stable on i386
            -   10,000 tries - now 100 connections with 2 minutes grace time - in
                practice still ~6-8 hours since still have to guess the address used by
                glibc and due to ASLR is only 50% accurate
-   All of these are lab conditions - VMs with quite stable network - and only on
    i386 - but Qualys say they were starting on an exploit even for amd64 but
    didn't continue after they noticed a related bug report about this
    async-unsafe signal handling - so decided that may draw attention to the issue
    and others may discover the vuln and start exploiting it - so best to disclose
    it in its current state
-   For Ubuntu, since this only affects version since 8.5p1, only 22.04 LTS
    onwards were affected - we released patches on Monday - unattended-upgrades is
    enabled by default on all relases since 16.04 LTS anyway - checks for and
    installs security updates every 24 hours - so any affected Ubuntu users would
    likely have been automatically patched within ~24 of the vuln becoming public
    (and the restart logic in OpenSSH would have restarted the service when it got
    upgraded as well)
-   Other thing which is more internal for Ubuntu is that Qualys explicitly called
    out OpenSSH in 24.04 LTS as having a deficiency in the enablement of ASLR -
    since we are using systemd socket activation we disable reexec support for
    OpenSSH - so it never reexecutes itself for its child processes - so they
    never get the benefit of ASLR - BUT by chance it also makes this unexploitable
    since it changes the use of `syslog()` within OpenSSH so that `syslog()` gets
    called early on in the use of OpenSSH and so then when it gets called in the
    SIGALARM signal handler it doesn't do the same memory allocation and hence
    can't be used to corrupt memory and get code execution


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
