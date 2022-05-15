+++
title = "Episode 155"
description = """
  It's an off-by-one error in the podcast this week as we bring you part 4 of
  Camila's 3-part Ubuntu hardening series, plus we look at security updates
  for Thunderbird, OpenVPN, Python, Paramiko and more.
  """
date = 2022-04-01T15:36:00+10:30
lastmod = 2022-05-15T18:05:38+09:30
draft = false
weight = 1005
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E155.mp3"
podcast_duration = 1989
podcast_bytes = 21898080
permalink = "https://ubuntusecuritypodcast.org/episode-155/"
guid = "6713955fb738b9b7224fb441e9fe53b27964470ff1fbda408c61f88cc122417e4d1e7f2613e51c5a9e684c107a14cbc3411ae51639c3e480e81f4760baf8ac60"
+++

## Overview {#overview}

It's an off-by-one error in the podcast this week as we bring you part 4 of
Camila's 3-part Ubuntu hardening series, plus we look at security updates
for Thunderbird, OpenVPN, Python, Paramiko and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

47 unique CVEs addressed


### [[USN-5345-1](https://ubuntu.com/security/notices/USN-5345-1)] Thunderbird vulnerabilities [00:45] {#usn-5345-1-thunderbird-vulnerabilities-00-45}

-   13 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-0566](https://ubuntu.com/security/CVE-2022-0566) <!-- medium -->
    -   [CVE-2022-26387](https://ubuntu.com/security/CVE-2022-26387) <!-- medium -->
    -   [CVE-2022-26386](https://ubuntu.com/security/CVE-2022-26386) <!-- medium -->
    -   [CVE-2022-22756](https://ubuntu.com/security/CVE-2022-22756) <!-- medium -->
    -   [CVE-2022-22754](https://ubuntu.com/security/CVE-2022-22754) <!-- medium -->
    -   [CVE-2022-26384](https://ubuntu.com/security/CVE-2022-26384) <!-- medium -->
    -   [CVE-2022-26383](https://ubuntu.com/security/CVE-2022-26383) <!-- medium -->
    -   [CVE-2022-26381](https://ubuntu.com/security/CVE-2022-26381) <!-- medium -->
    -   [CVE-2022-22764](https://ubuntu.com/security/CVE-2022-22764) <!-- medium -->
    -   [CVE-2022-22763](https://ubuntu.com/security/CVE-2022-22763) <!-- medium -->
    -   [CVE-2022-22761](https://ubuntu.com/security/CVE-2022-22761) <!-- medium -->
    -   [CVE-2022-22760](https://ubuntu.com/security/CVE-2022-22760) <!-- medium -->
    -   [CVE-2022-22759](https://ubuntu.com/security/CVE-2022-22759) <!-- medium -->
-   91.7.0
-   Long wait times for TB updates raised as an issue in [Ubuntu Discourse](https://discourse.ubuntu.com/t/slow-thunderbird-updates-endanger-users/26963/)


### [[USN-5346-1](https://ubuntu.com/security/notices/USN-5346-1)] Linux kernel (OEM) vulnerability [01:21] {#usn-5346-1-linux-kernel--oem--vulnerability-01-21}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-0742](https://ubuntu.com/security/CVE-2022-0742) <!-- medium -->
-   ICMPv6 memory leak - DoS via remote unauthenticated user


### [[USN-5353-1](https://ubuntu.com/security/notices/USN-5353-1)] Linux kernel (OEM) vulnerability {#usn-5353-1-linux-kernel--oem--vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-27666](https://ubuntu.com/security/CVE-2022-27666) <!-- medium -->
-   Heap buffer overflow in IPsec when doing ESP transformations - not
    remotely triggerable, requires local user -&gt; DoS/privesc


### [[USN-5347-1](https://ubuntu.com/security/notices/USN-5347-1)] OpenVPN vulnerability [02:00] {#usn-5347-1-openvpn-vulnerability-02-00}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-0547](https://ubuntu.com/security/CVE-2022-0547) <!-- medium -->
-   Possible authentication bypass through only partially correct credentials
    due to use of multiple plugins which do deferred authentication - updated
    to only allow one plugin to do deferred auth


### [[USN-5321-3](https://ubuntu.com/security/notices/USN-5321-3)] Firefox regressions [02:42] {#usn-5321-3-firefox-regressions-02-42}

-   7 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-26387](https://ubuntu.com/security/CVE-2022-26387) <!-- medium -->
    -   [CVE-2022-26385](https://ubuntu.com/security/CVE-2022-26385) <!-- medium -->
    -   [CVE-2022-26384](https://ubuntu.com/security/CVE-2022-26384) <!-- medium -->
    -   [CVE-2022-26383](https://ubuntu.com/security/CVE-2022-26383) <!-- medium -->
    -   [CVE-2022-26382](https://ubuntu.com/security/CVE-2022-26382) <!-- medium -->
    -   [CVE-2022-26381](https://ubuntu.com/security/CVE-2022-26381) <!-- medium -->
    -   [CVE-2022-0843](https://ubuntu.com/security/CVE-2022-0843) <!-- medium -->
-   98.0.2


### [[USN-5342-1](https://ubuntu.com/security/notices/USN-5342-1)] Python vulnerabilities [02:54] {#usn-5342-1-python-vulnerabilities-02-54}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-0391](https://ubuntu.com/security/CVE-2022-0391) <!-- medium -->
    -   [CVE-2021-4189](https://ubuntu.com/security/CVE-2021-4189) <!-- medium -->
    -   [CVE-2021-3426](https://ubuntu.com/security/CVE-2021-3426) <!-- low -->
-   pydoc server could disclose other files - shouldn't be exposed to
    untrusted users
-   Mishandling of FTP requests (could be tricked into connecting to wrong
    server)
-   `urllib.parse` mishandled URLs with embedded newlines - possible to bypass
    regular checks leading to possible URL/request injection etc


### [[USN-5348-1](https://ubuntu.com/security/notices/USN-5348-1)] Smarty vulnerabilities [03:42] {#usn-5348-1-smarty-vulnerabilities-03-42}

-   6 CVEs addressed in Bionic (18.04 LTS), Impish (21.10)
    -   [CVE-2021-29454](https://ubuntu.com/security/CVE-2021-29454) <!-- high -->
    -   [CVE-2021-26120](https://ubuntu.com/security/CVE-2021-26120) <!-- medium -->
    -   [CVE-2021-26119](https://ubuntu.com/security/CVE-2021-26119) <!-- medium -->
    -   [CVE-2021-21408](https://ubuntu.com/security/CVE-2021-21408) <!-- medium -->
    -   [CVE-2018-16831](https://ubuntu.com/security/CVE-2018-16831) <!-- medium -->
    -   [CVE-2018-13982](https://ubuntu.com/security/CVE-2018-13982) <!-- medium -->
-   PHP templating engine
-   Failed to validate paths in templates - attacker controlled template
    could then get arbitrary file read
-   Various code execution vulns affecting applications that use Smarty


### [[USN-5349-1](https://ubuntu.com/security/notices/USN-5349-1)] GNU binutils vulnerability [04:17] {#usn-5349-1-gnu-binutils-vulnerability-04-17}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2019-1010204](https://ubuntu.com/security/CVE-2019-1010204) <!-- low -->
-   gold linker - not the default linker in Ubuntu (would have to specify it
    manually via `-fuse-ld=gold` to gcc)
-   OOB read when handling a crafted ELF file


### [[USN-5352-1](https://ubuntu.com/security/notices/USN-5352-1)] Libtasn1 vulnerability [04:42] {#usn-5352-1-libtasn1-vulnerability-04-42}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2018-1000654](https://ubuntu.com/security/CVE-2018-1000654) <!-- negligible -->
-   CPU based DoS on crafted ASN.1 input


### [[USN-5351-1](https://ubuntu.com/security/notices/USN-5351-1), [USN-5351-2](https://ubuntu.com/security/notices/USN-5351-2)] Paramiko vulnerability [05:11] {#usn-5351-1-usn-5351-2-paramiko-vulnerability-05-11}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-24302](https://ubuntu.com/security/CVE-2022-24302) <!-- medium -->
-   Race condition between creating a then setting permissions on the private
    key file allows a local attacker to possibly read the private key - fixed
    to simply create the file with the restricted permissions in the first
    place


### [[USN-5313-2](https://ubuntu.com/security/notices/USN-5313-2)] OpenJDK 11 regression [05:55] {#usn-5313-2-openjdk-11-regression-05-55}

-   15 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-21365](https://ubuntu.com/security/CVE-2022-21365) <!-- medium -->
    -   [CVE-2022-21366](https://ubuntu.com/security/CVE-2022-21366) <!-- medium -->
    -   [CVE-2022-21360](https://ubuntu.com/security/CVE-2022-21360) <!-- medium -->
    -   [CVE-2022-21341](https://ubuntu.com/security/CVE-2022-21341) <!-- medium -->
    -   [CVE-2022-21340](https://ubuntu.com/security/CVE-2022-21340) <!-- medium -->
    -   [CVE-2022-21305](https://ubuntu.com/security/CVE-2022-21305) <!-- medium -->
    -   [CVE-2022-21299](https://ubuntu.com/security/CVE-2022-21299) <!-- medium -->
    -   [CVE-2022-21296](https://ubuntu.com/security/CVE-2022-21296) <!-- medium -->
    -   [CVE-2022-21294](https://ubuntu.com/security/CVE-2022-21294) <!-- medium -->
    -   [CVE-2022-21293](https://ubuntu.com/security/CVE-2022-21293) <!-- medium -->
    -   [CVE-2022-21291](https://ubuntu.com/security/CVE-2022-21291) <!-- medium -->
    -   [CVE-2022-21283](https://ubuntu.com/security/CVE-2022-21283) <!-- medium -->
    -   [CVE-2022-21282](https://ubuntu.com/security/CVE-2022-21282) <!-- medium -->
    -   [CVE-2022-21277](https://ubuntu.com/security/CVE-2022-21277) <!-- medium -->
    -   [CVE-2022-21248](https://ubuntu.com/security/CVE-2022-21248) <!-- medium -->
-   OpenJDK 11 specific regression in handling of HTTP/2 - upstream -
    11.0.14.1


### [[USN-5350-1](https://ubuntu.com/security/notices/USN-5350-1)] Chromium vulnerability [06:17] {#usn-5350-1-chromium-vulnerability-06-17}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2022-1096](https://ubuntu.com/security/CVE-2022-1096) <!-- high -->
-   Thanks to Olivier Tilloy (oSoMoN) from Desktop team


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Camila discusses Ubuntu hardening (part 4 / follow-up) [06:43] {#camila-discusses-ubuntu-hardening--part-4-follow-up--06-43}

-   Follow-up to the previous 3 part series on Ubuntu hardening ([Episode 154](https://ubuntusecuritypodcast.org/episode-154/),
    [Episode 153](https://ubuntusecuritypodcast.org/episode-153/), [Episode 152](https://ubuntusecuritypodcast.org/episode-152/))
-   Minor improvements and corrections to the various tips presented over the
    past few episodes


#### Transcript {#transcript}

Hello listener! Welcome back to our Ubuntu hardening journey in the Ubuntu
Security Podcast. Hey! I know what you're thinking: I can't count. I said
this would be a three part series...and well...here I am in a fourth
episode talking about this again. You could also be thinking "Hey, you've
got the wrong title there...what's the new topic for this episode?", and
should this be any other situation, I might've said you are right to either
one of these two assumptions because I can be a bit of a scatterbrain
sometimes. But not this time! I am here today once again talking about
Ubuntu hardening because, hey...cyber security is a continuous
effort. Remember that? And you know what also is a continuous effort?
Learning and becoming wiser, and in our journey to do so, it is very likely
that we will make a few mistakes here and there, myself included. Ok, ok,
I'll stop rambling and saying pretty words to distract you from the real
deal here: I might've made some mistakes...Ooops! I apologize. Because yes,
I do know about cyber security, but I am definitely not the master of all
when it comes to it. So, in the past three episodes there were some
sentences here and there that might have been a little bit incorrect, and
some other sentences that might have been forgotten to be said. BUT WORRY
NOT! I am here today to fix this. I got a review on my script for the last
three episodes made by another one of the security team members, and they
gave me a lot of helpful feedback on what I said and on what I suggested to
you all. Since I had already recorded the other episodes and my laziness
spoke a little higher than my willingness to spend the day re-editing audio
files, I decided to instead bring a new episode to you. Coincidentally,
recording a part 4 to a previously established 3 part series really
resonates with the vibe that is the hardening process of an operating
system: we want to always review our work, and fix mistakes whenever
possible. Maintain and evolve, even if we do hit a few bumps on the road
and make some mistakes along the way. We are human after all, and even if
the computer isn't, all that it does is do what we ask of it, so...yeah!
Enough introductions, let's move on to the meat and potatoes of this
episode and right some wrongs! Oh...actually...I don't think it is really
necessary to mention this...but there is always that one person, so: listen
to the other episodes if you haven't yet. I can't really fix something that
you don't even know is broken.

Ok, point number one that was brought to my attention: remember when we
were talking about the swap partition in part 1? Well, it is a valid
solution for all the reasons that I mentioned there, but it is not the only
one. Drumroll please, as I introduce you all, if you don't already know it,
to the swap file. TADA! The swap file, as the name suggests, is a file in
your system that will serve the same purpose as a swap partition. However,
instead of being configured as a separate partition of your disk, a swap
file is created under the root partition in your system and you simply
nudge the OS to remind it that that specific file should be used as swap
whenever necessary. Neat, right? Specially because resizing swap files is a
lot easier than resizing an entire swap partition. A LOT easier. Using
command 'fallocate' or command 'dd 'will help you get a swap file ready in
case you wish to use this method of swapping instead of creating an entire
new partition during install, or in case you forgot about it during
install. Use the 'mkswap' tool to tell Ubuntu that the new file is a swap
space and enable the swap file with 'swapon'. To finish it off, and make
changes permanent, add information on the swapfile to 'fstab'. Remember to
correctly set permissions in this swap file, as, even though it is a swap
entity, it is still a file. Only the root user should be able to write to
that file or read from it, so get your 'chmod 600' ready for that. The
conclusion here is: both a swap partition and a swap file will serve the
same purpose, and they are both located on disk, so not much to compare on
that front. However, if you are looking for something more flexible,
stretchy, if you will, consider using the swap file. It will help you out
with your maintainability needs, and with adjusting to changes in the
future, especially if these changes involve increasing the size of the
swap, or decreasing it due to hardware changes applied to your device, or
any other type of related changes. I do stress though, hopefully enough
that you are just being reminded of this here: do this if it suits YOUR
needs. Maybe you already have a swap partition, and it is ok to you for it
to have an immutable size until the end of eternity, and that is great! You
do you. What is important for you to takeaway here is that I am giving you
another option, one that might better suit your needs, or not, but I am not
the one to decide that for you.

Next up, let's talk about that 'hidepid=2' suggestion I made in part 2,
shall we? This suggestion came up when we were talking about fstab, and I
was telling you about ways to protect your /proc directory from the prying
eyes of possibly malicious users. Well, it unfortunately doesn't work when
you have systemd installed, which is the case for Ubuntu. Whewhe. So yes,
blame me for relaying possibly incorrect information to you. I am deeply
sorry...but please don't cancel me for it. There are a few bug threads that
mention this error and a lot of proposed solutions given by the community
can be found in the various comments. I will not go into too much detail on
those here because it might be a bit difficult to get the actual solution
through without any visual aid, but I do encourage you to do some research
on this, and maybe apply one of the suggested alternatives should it be
adequate for your system. Sorry once again for giving you a hardening tip
that would cause an error in your system, but hopefully the solutions out
there will allow you to get right what I initially got wrong. I'll try to
get some links containing some of these solutions added to the podcast
notes in order to help you out, and in order to atone for my mistakes. I'm
sorry, I'm sorry once again. Ok, I'll stop now.

Point number three: I told you to love your logs and embrace your logs
during part 2 of this series. The computer pours out its innermost secrets
to you and you decide to ignore it? Well...I kind of ignored it a little
bit as well, because I talked so much about 'syslog' and all of its log
files that I forgot about another oh so very important member of the
logging squad: 'journald'. If your Linux system has 'systemd', it does have
'journald', and therefore, if you are using Ubuntu, you most likely have it
too. Since 'journald' stores data in binary format, the usual way of
accessing the data it collects is not recommended here, as our brains have
still not yet evolved to immediately read and process unreadable characters
when looking at a sequence of those characters. There are no plain text log
files here. Instead, if you want to check out all of the logging goodness
that 'journald' can provide, and expose all of your device's secrets, you
have to use the 'journalctl' utility. I am pretty sure this name is
familiar to you, as most times when you have a service issue in Ubuntu or a
system issue in general, it recommends you check out the output of
'journald' by typing in a shell 'journalctl -x'. 'Journald' is a very
interesting logging tool and it can allow you to troubleshoot your system
very efficiently. It tracks each log to a specific system boot, for
example, and this means that you can check logs considering only data
connected to a specific boot instance when using the '-b' option. So, if
you have a situation where you know that the issue happened the last time
you turned on your computer, instead of checking all of the log, you can
narrow it down and try to find your problem in fewer lines of log data
instead. You can also filter log data based on a time range, based on a
specific service, based on a specific user or based on message priority
level. Which one is better to use between 'syslog' and 'journald', you ask?
It depends on your needs. Advantages of using 'journald' include the fact
that it structures data in such a way that searches can be optimized, plus,
it indexes data, meaning that lookup operations of the log files will
happen in a much faster manner than they would when searching for
information in plain text files. Filtering is also easier with 'journald',
as seen by all of the options I mentioned previously that you can use
together with 'journalctl'. With 'syslog' and all its different plain text
log files, it might be a little bit more difficult or troublesome to find
exactly what you are looking for, and even correlate log information
without having a third party software to maybe assist you with this
job. When searching through 'syslog' logs we usually end up using 'grep',
our handy-dandy text file search tool, but unfortunately, 'grep' will not
take into account the context of a situation. So, when searching through
'syslog' logs, instead of a simple one line command you would type if using
'journalctl', you create a huge multiline beast with a lot of pipes to get
a coherent and valuable result out of the many 'syslog' files you wish to
have analyzed. Another advantage of 'journald' is that 'journald' has
permissions associated to its log files, so every user is able to see their
own log without actually being able to see output that would be exclusive
only to root, for example, said users needing to prove their privileged
identity before accessing this other sensitive data about the
system. Therefore, regular users are able to troubleshoot using 'journald'
logs, but at the same time, information that should not be exposed to
regular users for one reason or another is protected. With 'syslog' it will
all depend on permissions associated to the log text files, and these will
include ALL of the information for one specific log source, so it won't be
every random user that will have the opportunity to possibly use log data
to solve their issues, unless you allow said random user to actually read
logs in their entirety. Talking a bit about possible disadvantages related
to 'journald': 'journald' does not include a well-defined remote logging
implementation and, therefore, is not the best option to consider when you
need to build a central logging server, whereas 'syslog' allows that to
happen very well, since there is even a same name protocol which is used to
send messages to a main log server running a 'syslog' instance. Plus,
'journald' considers only information of Linux systems, while 'syslog'
encopasses more, such as logs generated by firewall devices and
routers. This means that correlation between the logs of the different
devices in your infrastructure might be made more efficient when you indeed
have a centralized 'syslog' server to gather all of that information,
especially considering that it is possible to send 'journald' data to an
already existing 'syslog' implementation, as 'journald' retains full
'syslog' compatibility. One of the issues we find with this though, is that
most advantages that come with 'journald' are lost when such messages are
sent to the centralized 'syslog' server, as this server, as the name
implies, will include a 'syslog' implementation instead of a 'journald'
one, this 'syslog' implementation recovering, storing and processing
messages as a regular 'syslog' instance would…so, no indexing and no
optimized data reading and filtering. The other possible issue is that
'journald' needs to send its data to a local 'syslog' server, and this
server will then send that data to the remote one.  Having two tools doing
the same logging work might not be the most ideal thing for you or your
infrastructure, so do take that into account when setting up your logs and
your whole logging system. For this reason and the other reasons mentioned
we have that 'journald' ends up being more "host-based" than
'syslog'. Therefore, I once again ask the question: which one is better to
use? Maybe it's 'journald' in case you have one host only, maybe it's
'syslog' if you have an entire infrastructure and a centralized log server
with third party software that processes all information it gets, or maybe
it’s even both, since, as we already discussed in previous episodes, an
extra layer of protection is what will help you build up your cyber
security walls of defense more efficiently, especially when you consider
that you already have 'journald' installed by default in your system.

Going on to point number four: when installing tools such as Rootkit
Hunter, be aware of possible false positives. It is always useful to have
tools that scan your system for you, and point you towards the direction
issues might be, however, it is interesting to confirm that the issue
database used by such programs is updated and well matched to your system
in order for results to be actually useful. So keep two things in mind:
that tools such as Rootkit Hunter exist and can be very helpful, and that,
even though they can be helpful, they can also not be if they are
out-of-date and just end up flooding you with false positives that will
then lead you on a wild goose chase that generates nothing of value to you
or your system. Also, do be careful about installing programs such as
vulnerability scanners that can be later on used by attackers themselves to
find flaws in your system. If you've used it and no longer need it
installed, maybe remove it until it is once again necessary...after all,
even security tools increase the attack surface of your system, and they
themselves might have vulnerabilities related to them that could be
exploited by someone with enough knowledge of it. Finally - and me saying
this might sound unnecessary because it should be obvious, but I do say it
because there is always that someone out there...right? - don't think that
a scan performed by ONE single scanning tool is enough to guarantee
security of a device, especially when we consider tools that do need to
rely on previously known hashes, or rules, or sets of steps, in order to
identify a possibly malicious entity in a system. That is because attackers
are always trying to circumvent these tools by using digital fake
mustaches, and, sometimes, these disguises are enough, as is a certain
superhero's glasses. I mean...how can people not know they are the same
person? Unfortunately, this major oversight might happen sometimes with
your security tools as well, so knowing this is key in order to actually
build a truly secure system. By knowing, you also know that said tools
should only be a part of a bigger, LAYERED strategy you use to harden your
system. Agreed?

Time to dive into point number five. I was asked a question: is 'ping'
still 'setuid' root? And the answer is actually “no”. Oh, well! Remember
when we were talking about the dangers of the 'setuid' binaries and I used
'ping' as an example to show the issues that might arrive when you set that
sneaky permission bit to 1? Well, it turns out that my example was a little
bit outdated, since 'setuid ping' was already put in the WANTED list for
"causing too many security issues" and was therefore demoted to
non-'setuid' status. So, if you are using Ubuntu 20.04 LTS, for example,
you can run an 'ls -la /usr/bin/ping' and you will see permissions set to
755 instead of 4755. How is the privileged socket access performed in this
case? Ah...well, that might be a discussion for a future podcast episode,
especially since a little bird told me that the solution for that might
have caused an even bigger issue than the 'setuid' bit when changes to
remove it were initially being made. For now, I'll just leave you to wonder
a little bit more about this, and reinforce that, even if 'ping' is no
longer 'setuid', the example stands to show the dangers of having this bit
set, be it 'ping', be it any other executable in your system that might
allow for malicious tampering. Consider the 'ping' example a template of
what COULD happen should you decide to maybe set its 'setuid' bit. Don't
actually do that though, please.

Point number six is as simple as: 'netstat' has been replaced with 'ss'. I
mentioned using 'netstat' to check open ports in your system because that
is what I have been using since forever. Old habits die hard, I guess...and
that, my friends, is definitely something I shouldn't be saying here,
because old habits will also compromise you, since it is always important
to keep up-to-date with recent software if you plan on being secure. So
yes, forgive me for I have been a hypocrite. Information on 'netstat' being
deprecated is even in the 'man' page for netstat. Oof...hurts to see my own
mistakes. Read your manuals people, their existence is not trivial. But,
you know what? You live and you learn. I know better now, and you do
too. So let's be better together, friends, and use 'ss' instead of the
obsolete 'netstat' to find open ports in our system that are open for
absolutely no reason! The good thing to come out of this mistake is that we
get to once again remember the importance of updating and maintaining
systems in order to actually keep them secure, and this also includes the
system that is our own minds.

Ok, now that we have tackled the **ahem** minor errors I made in the last few
episodes, and honorably mentioned applications I forgot about, let's bring
up a few other hardening suggestions made by the Ubuntu Security Team so
that you can harden your system even more!

Let's start with the Mozilla TLS configuration generator: this tool which
can be accessed through the “<https://ssl-config.mozilla.org/>” URL can be
used to generate configuration files for various server programs, Apache
and Nginx included, and it considers three different security levels!
Pretty nifty, and gives you the opportunity to maybe learn more about
application settings you might not have known all that much about in the
first place, and how they can help you when you wish to do hardening for
applications you use.

Let’s Encrypt is in this list as suggestion number two, and it is a tool
that allows you to get certificates and renew them often enough that you
can't have expired certificates ruin your day. Let's Encrypt is a CA, or,
expanding on the acronym, a Certificate Authority, which is an entity you
will need if you plan on using TLS to encrypt your web server's
communications, for example. You can use Let’s Encrypt to create your
certificates and then configure the tool to automatically update these
certificates whenever they are close to expiring. Phew! No need to worry
about unintentionally sending unencrypted data over the wire because of a
missed expired certificate! Give those attackers NO windows of opportunity!

AppArmor is installed in Ubuntu by default, and we already talked about it
in the last episode, but I am here to ensure that you remember that it does
exist, and, even better, you don't even have to install it in your Ubuntu
system to start using it. Take advantage of its existence and don't forget
to profile applications running in your system! Profile 'til you can't no
more and get that metaphorical armor polished and ready to take on
everything and everyone, just because you can.

And last but not least, I can't NOT reinforce this, as I am in the security
team and this is what we do for you: always install your updates. Always!
It might seem annoying, it might take some of your time, it might even be a
little bit angering...but isn't making changes for the better what life is
all about? Update and live to see your server survive another day! Update
and sleep peacefully knowing that you are doing the best you can for that
server you care about! Update and be ready! Some updates will require the
restarting of services, so that those actually start using patched versions
of recently changed libraries, and, when we are talking about the kernel,
reboots might be necessary, so include restarting and rebooting in your
update plans as well, or else the patching done by the security team won't
be effective in your system. If you are having trouble with
this...shameless plug: consider using Ubuntu Livepatch in order to get
those kernel security-critical updates installed into your system without
having to reboot the machine! It’s free for personal use on up to three
computers, and it is easy to set up through your Ubuntu system with your
Ubuntu One account.

And that is it! An extra episode to patch my previous mistakes, and to
deliver to you updates on some previously incomplete information! An
episode that mirrors the work done by the Ubuntu Team on its packages, and
that hopefully brings you as many benefits as those patches do! Keep your
patches up to date, keep your hardening up to date, keep your knowledge up
to date, and I am sure you will be ready to face a lot more than you
expect! Thank you all for listening to this extra episode of the Ubuntu
hardening series on the Ubuntu Security Podcast. Feel free to share your
thoughts on this subject and on this series in any of our social media
channels! I hope to talk to you all once again in the future, but for now,
I bid you farewell and until next time! Bye!


### Ubuntu 22.04 Beta Released {#ubuntu-22-dot-04-beta-released}

-   <https://lists.ubuntu.com/archives/ubuntu-announce/2022-March/000278.html>
-   <https://help.ubuntu.com/community/JammyUpgrades>
-   <https://discourse.ubuntu.com/t/jammy-jellyfish-release-notes/24668>
-   <https://www.omgubuntu.co.uk/2022/03/ubuntu-22-04-beta-is-now-available-download>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)