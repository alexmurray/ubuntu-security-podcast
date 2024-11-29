+++
title = "Episode 242"
description = """
  This week we dive into the details of a number of local privilege escalation
  vulnerablities discovered by Qualys in the needrestart package, covering topics
  from confused deputies to the inner workings of the /proc filesystem and
  responsible disclosure as well.
  """
date = 2024-11-29T11:54:00+10:30
lastmod = 2024-11-29T11:56:46+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E242.mp3"
podcast_duration = 1180
podcast_bytes = 19956813
permalink = "https://ubuntusecuritypodcast.org/episode-242/"
guid = "c320f1b8ebcdc0d84700c3fadb2d2629b56f69c446cba14f98361e9985ac8ceabaea8823354171517df27670ea08afca7159179c097c341ee05663c42cacaeba"
+++

## Overview {#overview}

This week we dive into the details of a number of local privilege escalation
vulnerablities discovered by Qualys in the needrestart package, covering topics
from confused deputies to the inner workings of the /proc filesystem and
responsible disclosure as well.


## Deep dive into needrestart local privilege escalation vulnerabilities {#deep-dive-into-needrestart-local-privilege-escalation-vulnerabilities}

-   <https://blog.qualys.com/vulnerabilities-threat-research/2024/11/19/qualys-tru-uncovers-five-local-privilege-escalation-vulnerabilities-in-needrestart>
-   <https://www.qualys.com/2024/11/19/needrestart/needrestart.txt>
-   <https://www.bleepingcomputer.com/news/security/ubuntu-linux-impacted-by-decade-old-needrestart-flaw-that-gives-root/>
-   Qualys contacted security@ubuntu.com on <span class="timestamp-wrapper"><span class="timestamp">[2024-10-04 Fri] </span></span> to notify of 3
    different local privilege escalation vulnerablities in needrestart
-   needrestart is system service, written in Perl, to automatically restart
    system services if one of the libraries or the service itself was updated
-   installed by default on Ubuntu Server since 21.04 - so anyone using 22.04 LTS
    (jammy) or 24.04 LTS (noble) would be affected - and is integrated into apt so
    that it runs at the end of an apt install/upgrade/remove or via
    unattended-upgrades (which again is installed by default to install security
    updates automatically every 24 hours)
-   since it runs via apt it runs as root so if an unprivileged user can influence
    it to execute code of their chosing, can achieve local privilege escalation
    the next time it runs
-   Initially described these as:
    -   trick needrestart into running the Python interpreter with an attacker controlled PYTHONPATH environment variable
    -   win a race condition with needrestart to trick it into running with attacker
        controlled Python interpreter instead of the system-installed one
    -   perl-related vuln in the ScanDeps module where would open a filename
        containing a pipe - which in turn causes Perl to execute a shell pipeline
        with the filename as input and hence code execution
-   needrestart is written in Perl so why is Python relevant?
    -   basic functionality of needrestart is to look at the shared objects mapped
        into memory of each process and match these against newly updated/installed
        packages - if it sees that one of the shared objects for a given process got
        updated it will then be restarted
    -   back in 2014 introduced support for scanning files of interpreted languages for Java, Perl, Python and Ruby
        -   uses `/proc/self/exe` to first identify the interpreter as say python
        -   then looks at `/proc/self/cmdline` to determine the primary file being run
            by the interpreter and from that looks at `import` statements to determine
            which files are likely being used
        -   uses similar approaches for the other interpreters
-   Interestingly it seems Qualys discovered this by accident - noticed the
    message "Scanning processes..." whilst doing and apt upgrade and wondered what
    that was - and if they controlled a process, whether they could then influence
    the behaviour of it
-   For PYTHONPATH CVE, needrestart needs to replicate the behaviour of the Python
    interpreter when it imports files
    -   PYTHONPATH env var allows to specify a
        custom path to import from - so needrestart looks this up from
        `/proc/pid/environ` and executes the Python interpreter with this same value
        to get it to resolve the imports to files on disk
    -   But the unprivileged user is in control of this environment variable for their
        process - classic case of a [Confused Deputy](https://dl.acm.org/doi/10.1145/54289.871709) - lower privileged application is
        able to trick a higher privileged application into misusing its authority on
        the system - so can set their own PYTHONPATH, and since Python will happy load
        any `__init__.so` files from that path, the attacker controlled shared object
        is then executed by Python running as root via needrestart
-   Initially Qualys suggested the Ruby implementation (which uses the `RUBYLIB`
    env var) may also be affected and subsequently confirmed this to be the case
-   The second aforementioned vuln is also related to Python but instead of the
    `PYTHONPATH` used by the interpreter, is about the interpreter binary itself
    -   Before we said needrestart identified a process as using say Python by
        looking at its `/proc/pid/exe` entry - matches this against a regex like
        /usr/bin/python - back in 2022 Jakub Wilk discovered a vuln where the regex
        was not anchored, so if a process was running via a attacker controlled
        interpreter (`/home/amurray/usr/bin/python`) this would match and
        needrestart would execute that interpreter directly as root - CVE-2022-30688
    -   Hoewever, it turns out needrestart reads the processes `/proc/pid/exe`
        twice - once early on when collecting info on all processes, and then a
        second time to determine if it is say a Python application - but when
        needrestart goes and executes this interpreter to do the PYTHONPATH lookups
        etc, it uses the original value that it collected at the start of its run
    -   Classic TOCTOU issue
    -   So a malicious process can run with say its own malicious Python interpreter
        at startup, then wait for needrestart to probe that (using say inotify to be
        notified when it is accessed) and then quickly exec() the real system Python
        interpreter and hence change its `/proc/self/exe` to trick needrestart -
        which will then go and execute its original malicious interpreter binary
-   Since had found issues in Python and Ruby parts of needrestart, Qualys went
    looking at the Perl parts
    -   since needrestart is written in Perl though it doesn't have to execute a
        Perl interpreter to resolve "imports" etc
    -   instead uses a Perl library (ScanDeps) which analyses Perl scripts directly
    -   Found this module was vulnerable to a very old Perl foot-gun, Pesky Pipe
        (coined in [1999 by rain.forest.puppy in Phrack](https://phrack.org/issues/55/7.html#article))
        -   Perl has a feature where you can call `open` with a string that ends in a
            pipe (`|`) and it will instead execute that string as a shell command
        -   ScanDeps did exactly this - called `open` on any files that it finds along
            the way in its analysis - and since these filenames are controlled by the
            unprivileged attacker, can create a file which ends in a pipe character
            (e.g. `/home/amurray/bin/pwned|`) and Perl will then just execute that
            script directly
    -   Also found cases in ScanDeps where it would call `eval()` on contents from
        these files as well - directly executing whatever strings found as Perl code
-   Mark Esler on our team then liased with Qualys and got the upstream
    needrestart developer involved to coordinate on writing fixes and disclosing
    the issue - first to other distros via the distros mailing list and then
    eventually publicly via oss-security
-   Patches to fix went through a number of revisions before being finalised
-   To fix these, a number of changes were made:
    -   ScanDeps was fixed to use an explicit call to open() to avoid Perl executing
        the argument as code and the uses of eval replaced with safer parsing
    -   needrestart removed the use of ScanDeps entirely and instead replaced this
        with its own regex based parsing of perl files to look for `use` directives
    -   needrestart modified to not set PYTHONPATH when running the Python
        interpreter and instead look inside the specified PYTHONPATH manually (to
        avoid having the Python interpreter possibly load untrusted shared objects
        from that path) - similarly for RUBYLIB
    -   needrestart modified to use the original `/proc/pid/exe` path to match
        against when looking for interpreted processes to remove the TOCTOU race
-   Unfortunately, testing for the patches upstream wasn't complete and a minor
    regression was introduced in the original update which caused needrestart to
    misidentify processes within a container as being on the host and so would
    inadvertently kill them
-   Sudhakar Verma (who handled the technical side of testing proposed patches
    plus preparing and releasing the final updates) liased with upstream to help
    get a fix developed and deployed as a regression fix for Ubuntu
-   Interesting to consider, the info needrestart was using comes from `/proc`
    filesystem - this is a virtual filesystem managed by the kernel, representing
    information about processes in userspace
-   Easy to assume the data it presents is trusted as it is populated by the
    kernel - and generally file permissions are read-only for these files - so a
    process can't just directly write to them to modify them - BUT these values
    all come from the userspace process itself originally
    -   perhaps needrestart could look at dropping privileges to those of the
        process in question before doing the evaluation as well - although this is
        tricky to do correctly - we've seen bugs in a number of applications which
        try and follow this pattern like snap-confine or apport which turn out to
        cause security issues as they don't drop privileges completely etc
-   Ryan Lee is looking to create an AppArmor profile for needrestart to help
    confine it to hopefully limit the damage any other similar bugs may cause


### [[USN-7117-1](https://ubuntu.com/security/notices/USN-7117-1)] needrestart and Module::ScanDeps vulnerabilities {#usn-7117-1-needrestart-and-module-scandeps-vulnerabilities}

-   5 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS), 24.10
    -   2 medium priority CVE(s)
    -   3 high priority CVE(s)


### [[USN-7117-2](https://ubuntu.com/security/notices/USN-7117-2)] needrestart regression {#usn-7117-2-needrestart-regression}

-   5 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS), 24.10
    -   2 medium priority CVE(s)
    -   3 high priority CVE(s)


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
