+++
title = "Episode 152"
description = """
  It's a big week for kernel security vulnerabilities - we cover Dirty Pipe
  and fixes for the latest microarchitectural side channel issues, plus we
  bring you the first in a 3 part series on hardening your Ubuntu systems
  against malicious attackers.
  """
date = 2022-03-11T14:19:00+10:30
lastmod = 2022-03-18T13:38:36+10:30
draft = false
weight = 1002
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E152.mp3"
podcast_duration = 1685
podcast_bytes = 18275840
permalink = "https://ubuntusecuritypodcast.org/episode-152/"
guid = "7911dd66f88917a50ea3ec6c6515b11c8313f155c05f8b049f75620b3ffa149d0d74dfb503b868f08237916267a8eb0b65aca16b2855fcf17345ebdba5aeaacd"
+++

## Overview {#overview}

It's a big week for kernel security vulnerabilities - we cover Dirty Pipe
and fixes for the latest microarchitectural side channel issues, plus we
bring you the first in a 3 part series on hardening your Ubuntu systems
against malicious attackers.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

34 unique CVEs addressed


### [[USN-5312-1](https://ubuntu.com/security/notices/USN-5312-1)] HAProxy vulnerability [00:46] {#usn-5312-1-haproxy-vulnerability-00-46}

-   1 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-0711](https://ubuntu.com/security/CVE-2022-0711)
-   CPU based DoS via the `Set-Cookie2` header - obsolete HTTP response header
    used to send cookies from the server to the user - possible infinite loop
    when parsing responses which contained this header


### [[USN-5300-2](https://ubuntu.com/security/notices/USN-5300-2), [USN-5300-3](https://ubuntu.com/security/notices/USN-5300-3)] PHP vulnerabilities [01:24] {#usn-5300-2-usn-5300-3-php-vulnerabilities-01-24}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-21707](https://ubuntu.com/security/CVE-2021-21707)
    -   [CVE-2017-9119](https://ubuntu.com/security/CVE-2017-9119)
    -   [CVE-2017-9120](https://ubuntu.com/security/CVE-2017-9120)
    -   [CVE-2017-9118](https://ubuntu.com/security/CVE-2017-9118)
    -   [CVE-2017-8923](https://ubuntu.com/security/CVE-2017-8923)
    -   [CVE-2015-9253](https://ubuntu.com/security/CVE-2015-9253)
-   [Episode 150](https://ubuntusecuritypodcast.org/episode-150/)


### [[USN-5311-1](https://ubuntu.com/security/notices/USN-5311-1)] containerd vulnerability [01:41] {#usn-5311-1-containerd-vulnerability-01-41}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-23648](https://ubuntu.com/security/CVE-2022-23648)
-   Able to access read-only copies of files from the host via specially
    crafted container image


### [[USN-5314-1](https://ubuntu.com/security/notices/USN-5314-1)] Firefox vulnerabilities [02:11] {#usn-5314-1-firefox-vulnerabilities-02-11}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-26486](https://ubuntu.com/security/CVE-2022-26486)
    -   [CVE-2022-26485](https://ubuntu.com/security/CVE-2022-26485)
-   2 critical impact (as defined by Mozilla) vulns - both UAFs
-   Mozilla reported seeing reports of both being exploited in the wild


### [[USN-5313-1](https://ubuntu.com/security/notices/USN-5313-1)] OpenJDK vulnerabilities [02:36] {#usn-5313-1-openjdk-vulnerabilities-02-36}

-   15 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-21365](https://ubuntu.com/security/CVE-2022-21365)
    -   [CVE-2022-21366](https://ubuntu.com/security/CVE-2022-21366)
    -   [CVE-2022-21360](https://ubuntu.com/security/CVE-2022-21360)
    -   [CVE-2022-21341](https://ubuntu.com/security/CVE-2022-21341)
    -   [CVE-2022-21340](https://ubuntu.com/security/CVE-2022-21340)
    -   [CVE-2022-21305](https://ubuntu.com/security/CVE-2022-21305)
    -   [CVE-2022-21299](https://ubuntu.com/security/CVE-2022-21299)
    -   [CVE-2022-21296](https://ubuntu.com/security/CVE-2022-21296)
    -   [CVE-2022-21294](https://ubuntu.com/security/CVE-2022-21294)
    -   [CVE-2022-21293](https://ubuntu.com/security/CVE-2022-21293)
    -   [CVE-2022-21291](https://ubuntu.com/security/CVE-2022-21291)
    -   [CVE-2022-21283](https://ubuntu.com/security/CVE-2022-21283)
    -   [CVE-2022-21282](https://ubuntu.com/security/CVE-2022-21282)
    -   [CVE-2022-21277](https://ubuntu.com/security/CVE-2022-21277)
    -   [CVE-2022-21248](https://ubuntu.com/security/CVE-2022-21248)
-   Thanks to Matthias Klose from the Ubuntu Foundations team for preparing
    these updates - latest upstream point releases
-   17.0.2 + 11.0.14


### [[USN-5310-2](https://ubuntu.com/security/notices/USN-5310-2)] GNU C Library vulnerabilities [02:56] {#usn-5310-2-gnu-c-library-vulnerabilities-02-56}

-   3 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-23219](https://ubuntu.com/security/CVE-2022-23219)
    -   [CVE-2022-23218](https://ubuntu.com/security/CVE-2022-23218)
    -   [CVE-2021-3999](https://ubuntu.com/security/CVE-2021-3999)
-   [Episode 151](https://ubuntusecuritypodcast.org/episode-151/) - this update is a subset of those


### [[USN-5316-1](https://ubuntu.com/security/notices/USN-5316-1)] Redis vulnerability [03:09] {#usn-5316-1-redis-vulnerability-03-09}

-   1 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-0543](https://ubuntu.com/security/CVE-2022-0543)
-   Redis contains a scripting interface using Lua and implements a sandbox
    for this to try and avoid scripts running arbitrary Lua code
-   Upstream has a vendored copy of lua but in Ubuntu + Debian the redis
    package links against the system installed liblua
    -   this is a good thing as it means that when say a vuln appears in Lua
        itself we only have to patch Lua to fix other applications like redis
        whereas otherwise we would also have to patch the embedded/vendored
        copy of lua in redis and release a redis update for every Lua
        vulnerability as well
-   As such we also want it to use the system lua libs of cjson and bitop
-   Included a small custom piece of code to have it load those instead of
    the ones that would usually be shipped in redis itself
-   Discovered that this shim code failed to set the `package` variable and as
    such left this global variable uninitialised - an attacker with the
    ability to execute a Lua script could then cause Lua to load the full
    system liblua unsandboxed and hence then use this to execute other
    arbitrary commands on the host
-   Note in general it doesn't look like upstream Redis consider the existing
    sandbox to be a security boundary so recommend to only give trusted users
    the permission to EVAL Lua in redis


### [[USN-5317-1](https://ubuntu.com/security/notices/USN-5317-1)] Linux kernel vulnerabilities [05:34] {#usn-5317-1-linux-kernel-vulnerabilities-05-34}

-   5 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-0002](https://ubuntu.com/security/CVE-2022-0002)
    -   [CVE-2022-0001](https://ubuntu.com/security/CVE-2022-0001)
    -   [CVE-2022-0847](https://ubuntu.com/security/CVE-2022-0847)
    -   [CVE-2022-23960](https://ubuntu.com/security/CVE-2022-23960)
    -   [CVE-2022-25636](https://ubuntu.com/security/CVE-2022-25636)
-   Thanks to Thadeu Cascardo from the kernel team for coordinating all the
    work on these fixes
-   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/DirtyPipe>
    -   <https://dirtypipe.cm4all.com/>
    -   Similar to "Dirty Cow" but easier to exploit - one of the more high
        profile vulnerabilities in recent times - due to mishandling of the
        page cache within the Linux kernel, a malicious process could abuse the
        `pipe` and `splice` system calls to cause the kernel to overwrite contents
        of arbitrary files even when a user had no write permission to the
        particular file (even on immutable and RO-filesystems)
    -   Very simple error due to the failure to initialize the flags element
        within a pipe buffer when handling pipe data within the kernel - fix is
        2 lines of code to initialise this to 0
    -   Flaw exists back to 4.9 but this is thought only to be exploitable
        since the 5.8 kernel which refactored this code
    -   As such for now have patched for the 5.13 kernels in 21.10 + 20.04 LTS
        but will also patch in the future during regular development cycle for
        the older kernels like 5.4 in 20.04 LTS as well as an additional
        hardening measure
-   <https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/BHI>
    -   Latest set of hardware microarchitectural issues - in the same vein as
        the original Spectre flaws from Jan 2018 (4 years ago!)
    -   Set of vulnerabilities affecting both Intel and ARM processors which
        can allow unprivileged user to leak (read) memory from kernel / other
        applications
    -   Requires the ability to execute a "gadget" in the kernel to do the
        speculative execution - and the only way known to get one of these is
        to inject it as BPF code
    -   As a result this update also disabled unprivileged eBPF loading as well
        to close off this attack vector


### [[USN-5318-1](https://ubuntu.com/security/notices/USN-5318-1)] Linux kernel vulnerabilities {#usn-5318-1-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-0002](https://ubuntu.com/security/CVE-2022-0002)
    -   [CVE-2022-0001](https://ubuntu.com/security/CVE-2022-0001)
    -   [CVE-2022-23960](https://ubuntu.com/security/CVE-2022-23960)
    -   [CVE-2022-25636](https://ubuntu.com/security/CVE-2022-25636)


### [[USN-5319-1](https://ubuntu.com/security/notices/USN-5319-1)] Linux kernel vulnerabilities {#usn-5319-1-linux-kernel-vulnerabilities}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2022-0002](https://ubuntu.com/security/CVE-2022-0002)
    -   [CVE-2022-0001](https://ubuntu.com/security/CVE-2022-0001)


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Camila discusses Ubuntu hardening (part 1) [10:20] {#camila-discusses-ubuntu-hardening--part-1--10-20}

-   In response to a topic on discourse.ubuntu.com re [Basic security advice
    for running your own server](https://discourse.ubuntu.com/t/basic-security-advice-for-running-your-own-server/26786) - Camila has prepared a 3 part series on
    steps you can take to harden your Ubuntu machines against attack - part 1
    focuses on hardening at install time, part 2 is post install steps and
    part 3 looks at additional measures you can take once the machine is
    deployed - today we bring you the first part in this series


#### Transcript {#transcript}

Hello listener! Welcome to another episode of the Ubuntu Security Podcast
where I, Camila, will be talking to you all more about one subject or
another involving the Ubuntu Linux distribution and cyber security in
general. Today's episode is a response to a request. A request from someone
that wants to learn more about how it is possible to create an Ubuntu
system, which will be running some type of service, in a secure
manner. After all, we do live in times where threats that were only
physical have migrated to the digital world as well, so just having a
server set up with all ports open and no access control set is no longer an
option for those that wish to use the almighty Internet to provide some
type of service. Heck! The concern should exist even if you don't wish to
have an Internet facing server, but simply if you own a computer...or a
smartphone...or a smart TV...or a car. Or anything really. We are all
connected by our WiFis, whether we want it or not, so taking care of our
own digital perimeter has become something essential, and something that we
all should be applying to not get spammed nor scammed in the days of
today. So, since I do love me some lists, let's talk about, in a
chronological list format, what measures you can apply to your Ubuntu OS
and what tools can you use in this same OS to make it safer, hardened
against the cold and harsh wave of 0's and 1's that might be traveling out
there through fiber optics cables just waiting to hack into your system.

Let's start with the basics and talk about what can be done with the tools
that you already have when you have an Ubuntu Linux coming fresh out of the
bootable USB stick you used to format your computer. Actually, if we are
indeed doing this, let's do it for real: we will go back even further, and
talk about the basics that can be done not only after a fresh install, but
also, while you are installing your system. Let's get prepared for the
Ubuntu big bang and talk about what needs to happen before our binary
universe can start to exist and securely function inside our CPUs and hard
drives.

During an Ubuntu install you will make a few choices, such as whether or
not you want to encrypt data in your disk. If you are not the one
installing your own system, and you have an already running basic Ubuntu
system in a cloud service platform, for example, this might not be
something possible for you. However, if you do have the chance to apply
this, it is a hardening measure that can be used to protect all data being
saved in your hard drive. Of course, we need to consider that not all
situations might fit well with this, as, for example, a server that forces
the system to reboot frequently would require a password every time at
system startup, something that one might not want to do, or be available to
do, every single time, specially considering a situation where a completely
automated system is the main goal to be achieved here. It is also important
to consider that encrypting your hard drive might affect general file I/O
performance, since data being read from the disk needs to be decrypted
everytime, before being presented to the user or to the system for further
processing, and data that will be written to the system needs to be
encrypted before it is sent permanently to the hard drive. However, if none
of those cases concerns you at all, the question here might be: why NOT
encrypt your hard drive?  If your hardware allows it, making the process
fast, it might even be worth it despite the delay you can have due to the
necessary encryption and decryption operations being performed. Either way,
your data can be protected from those that might want to access it without
authorization. Do not kid yourself by thinking that hackers will always
stay behind a screen, as there are the very bold who might just think that
by stealing your hard drive they will get what they need. Without a
password, though, hackers can connect the disk to whatever computer they
like, but the data will remain encoded and unreadable. Remember though,
full disk encryption will NOT protect data in transit, also known as data
you sent through the wires or through the air, via the World Wide Web, to
other devices around the world. Disk encryption, as the name suggests, is
local to the disk which is associated with your own device. Oh, also do be
aware that the password that is used to encrypt the disk cannot be lost or
else, you might be your own worst enemy and lose your data which becomes
nearly impossible to crack cipher text.

Still talking about disk configurations during the installation process, do
consider creating a swap partition when setting up your system. The swap
partition is essentially used by the Ubuntu System as if it were
RAM. Therefore, if your RAM is filled up completely, the swap partition,
which is actually a part of the hard drive, will be used rather than the
RAM memory space to perform operations. necessary A swap partition can also
be used to make more RAM space available during a certain point in
processing time, said space being provided for data that is more relevant
or is being used more frequently. Data that is being less used, less
referenced, can therefore be moved to swap space instead of being left in
the ever busy, constantly used RAM. The swap will act as an extension of
your RAM, but do note, it is not as efficient as RAM, since it is actually
your hard drive pretending to be something that it is not: a volatile
memory device. Setting up a swap partition, however, can be very useful to
increase performance in your server. As previously mentioned, swap space
can be used to store data that is not all that frequently accessed, opening
up space in RAM for more regularly accessed information. Since data in the
swap is not being used constantly, the delay you would have when performing
I/O operations on it becomes less of an issue, and you essentially gain
more RAM space to process whatever your server needs to process. And, you
know, even if people do forget it sometimes, remembering about it only when
they suffer a massive DoS attack, availability is one of the 3 pillars of
cyber security, so preparing for that in order to guarantee a system with
better performance is valuable. Another big advantage of having swap lies
in the fact that you as a system administrator might have more time to
react to possible memory issues when your server is facing them. When you
run out of memory and you don't have swap, you risk having your system
suddenly crash and not only losing all data that was in RAM, but having
your service be out of reach for whoever knows how long. You can also have
OOM killer go and kill your most important process because you
are...running out of memory…and it doesn't even have the courtesy of asking
you if you are ok with it. Just rude! If you set up your swap space to at
least the size of your largest process though and you monitor your system,
you are able to detect possible issues by analyzing swap space usage, and
then you can most likely avoid many undesired service and system
crashes. However, do not forget: setting swap can boost your system
performance, as it can hinder it if you don't implement things
correctly. Your main volatile memory source should be your RAM, and the
swap partition will not be a substitute for it. Therefore, if you have
little RAM and over encumber your system, you won't make it any faster by
using swap, as the hard drive will be used to process that overflowing
amount of data that should be being processed primarily by your RAM.  The
idea is to use swap as a complimentary performance measure to your
appropriate RAM sized system. If using swap memory, don't forget to
configure how this extra memory space will be used together with your RAM,
by setting the 'swapiness' metric, for example, which will tell the kernel
how aggressively it will swap memory pages in the system when
necessary. Once again, setting too much of a high value might make your
system inefficient as you start making your kernel believe that the
harddrive is actually RAM - the perfect disguise - but setting a low value
might also not give you the best performance possible. Each case will be
its own, so know your system and your needs, and act accordingly.

Our install happens on our disk, so, unfortunately I must tell you that
once again we will be checking out disk settings we can consider when
creating our hardened Ubuntu server. Cheers to our disks! Installing all of
the system in one single partition tends to be a lot easier and a lot
faster. However, we are not looking for easy here, we are looking for
secure, so let's get out of the one single partition and out of our comfort
zones and possibly separate our system directories into different
partitions. Having /boot in a separate partition is useful to avoid not
being able to log into a system after the current kernel image has run
across issues. The backup kernel images will be available and you might be
able to do a quicker recovery that won't require connecting an external
device in, or removing your own in order to fix what has been broken in the
OS. In case you encrypt your / (root) partition, you will need to perform
this regardless, or else, your OS won't boot. Encrypted code might be cool
looking but it's not exactly functional considering a situation where you
need to know what are the basic instructions that will allow you to get the
operating system up and running. Encrypting /boot together with / (root)
would be the same as hearing the "ready, set, go" at a car race and staying
stuck in place because you just remembered you put a boot in your
wheel. The locked boot is stopping you from moving the car forward and
getting it where you need it to be, and, considering /boot outside of the
analogy, it's stopping you from getting your computer to execute your
operating system because it’s encrypted. Therefore, if you encrypt your
hard drive, as previously suggested, you already get to escape from the old
boring one partition scheme. That being said with this very convenient
analogy, let's get back to it and discuss the other partitioning options
you might have and that you can apply to your system in order to make it
more efficient and more secure, options which include, for example, putting
/tmp in a separate partition. This is most likely a good call, especially
considering that world-writable /tmp is a common target for
attackers. Servers that might use /tmp for storage of, as the name
suggests, temporary files could cause a self DoS in case this directory is
filled up with various large files. If the directory is in a different
partition, however, only that specific partition will fill up and not the
entire system storage instead. Other processes using other directories in
your system are unaffected and only the process filling up /tmp is
terminated. It is also a lot easier to manage a filled up /tmp partition
than it is the entire system. Plus, different permissions can be set for
this specific partition later on, but we will discuss this soon enough,
albeit not now. Separating the /home and the /var directories from the rest
of the system also shares these advantages. Leaving these directories in
their own separate "drawers" inside the closet that is our hard drive might
be an interesting choice in order to avoid necessary space to be taken up
by a file that might not be essential for the workings of the server. The
/home directory will contain user files, and we don't trust users, and the
/var directory might get filled up completely with a huge amount of logs,
for example. Filling up the logs might be an attack of choice made by some
hacker out there, but if you created a separate partition, you were
prepared for it. Having smaller partitions also makes for faster file
searches in the system, which might be a valid performance boost for your
IT infrastructure. If you plan to share resources through the network, have
these resources be connected to a directory mounted in a separate
partition, as you can have more permissive access control rules in the
shared partition, but keep the rigorous one in all others that might
contain sensitive information, which is in itself another advantage:
different partitions, different permissions during mount time. However, we
will go into more detail about this later on, as I already mentioned. The
point here is: separate partitions are separate filesystems, and,
therefore, the OS will not behave in the same way as it would if all data
were to be stored under a single partition…a single filesystem. All of that
being said, it will require more management than a system that has only one
partition, and space usage might not be the most efficient when you
establish limits to each directory. However, if it is feasible for your
needs, it might be a good way to avoid some issues…security issues.

Up next, I say this everytime and I will never get tired of saying it:
strong passwords, people! Strong passwords! Whenever creating the first
user for your Ubuntu system, which will happen during the install process,
do not use your birthday as your password. Or your dog's name...or any 6
letter word followed by the digits that are the current year. Easy to
remember, easy to hack. The first step to avoid being hacked is not wanting
to be hacked, and forgive you me if I am being too blunt, but setting up
lazy passwords and not expecting it to be a problem is like eating rotten
food and expecting to not get sick: you can wish all you want, but the
outcome will not be positive for you, my friend...and to your closest loved
ones involved. So...strong passwords, please, and non-expired food.

Our system is installed. BIG. BANG. Our Ubuntu OS universe now exists after
we set everything up so that it looks just right for our security
needs. All is not done, however, since after the big-bang, the galaxy and
more specifically Earth, had to go through a lot of steps before it was
ready to host life, which is our main goal here: host life in the form of
executable, network service providing code. We now have galaxies, stars,
planets, and all necessary to maybe create life in the future, but first
things first, we need our huge ball of fire to be tweaked a little bit,
since life as we know it will not be born in such an unsafe, or might I
say, insecure environment. Let's then make it secure so that we can start
thinking about giving it some life, or, in our case, installing some
software, developing customized code, setting up frameworks, all that good
stuff that makes developers go crazy with excitement.

I will, however, keep you on your toes, and continue talking more about
this subject in another episode only! So stay tuned to the podcast to
continue on this Ubuntu hardening journey with me, and while you wait for
what is to come, feel free to share your thoughts in any of our social
media platforms, as your opinion is always welcome! I await your return to
the podcast in the following weeks so that we can once again share
information, but for now I bid you all farewell and until next time! Bye!


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
