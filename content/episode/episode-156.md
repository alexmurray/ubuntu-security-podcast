+++
title = "Episode 156"
description = """
  This week we bring you the TL;DL (too-long, didn't listen 😉) version of
  Camila's recent 4-part Ubuntu hardening series, plus we look at security
  updates for Twisted, rsync, the Linux kernel, DOSBox, Tomcat and more.
  """
date = 2022-04-08T15:52:00+09:30
lastmod = 2022-04-08T16:03:31+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E156.mp3"
podcast_duration = 1587
podcast_bytes = 17839745
permalink = "https://ubuntusecuritypodcast.org/episode-156/"
guid = "f224245597a78da4f2562859512a23587415a3962d8f04093e262c47749cc6942101c64f344dc9ead90e17aff9c3a874e53020bbf7c1b486c26fe7f0b8404f43"
+++

## Overview {#overview}

This week we bring you the TL;DL (too-long, didn't listen 😉) version of
Camila's recent 4-part Ubuntu hardening series, plus we look at security
updates for Twisted, rsync, the Linux kernel, DOSBox, Tomcat and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

48 unique CVEs addressed


### [[USN-5354-1](https://ubuntu.com/security/notices/USN-5354-1)] Twisted vulnerabilities [00:47] {#usn-5354-1-twisted-vulnerabilities-00-47}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-21716](https://ubuntu.com/security/CVE-2022-21716) <!-- medium -->
    -   [CVE-2022-21712](https://ubuntu.com/security/CVE-2022-21712) <!-- medium -->
-   No limit to the amount of memory consumed when parsing the SSH version
    string from a client/server - malicious client/server could then send an
    infinite length version and crash the corresponding server/client -
    limited to 4KB
-   Cookies and auth headers exposed in cross-origin redirects - leak
    sensitive info


### [[USN-5355-1](https://ubuntu.com/security/notices/USN-5355-1), USN-5355-2] zlib vulnerability [01:34] {#usn-5355-1-usn-5355-2-zlib-vulnerability-01-34}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2018-25032](https://ubuntu.com/security/CVE-2018-25032) <!-- medium -->
-   Announced by Tavis Ormandy on oss-security in last week of March -
    reproducible crash when compressing certain inputs
-   Reported upstream only to be told was already fixed upstream **back in 2018**
    but no CVE was ever assigned and since no release had been made since
    then no distros had picked it up
-   Shows the importance of CVEs to distros security patching workflows - in
    general no CVE, no patch
-   New upstream release has now been made as well


### [[USN-5359-1](https://ubuntu.com/security/notices/USN-5359-1)] rsync vulnerability [03:09] {#usn-5359-1-rsync-vulnerability-03-09}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2018-25032](https://ubuntu.com/security/CVE-2018-25032) <!-- medium -->
-   Same as above - rsync contains a vendored copy of zlib code


### [[USN-5357-1](https://ubuntu.com/security/notices/USN-5357-1), [USN-5357-2](https://ubuntu.com/security/notices/USN-5357-2)] Linux kernel vulnerability [03:24] {#usn-5357-1-usn-5357-2-linux-kernel-vulnerability-03-24}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2022-27666](https://ubuntu.com/security/CVE-2022-27666) <!-- medium -->
-   4.15 18.04 LTS, 16.04 ESM
-   [Episode 155](https://ubuntusecuritypodcast.org/episode-155/) - heap buffer overflow in handling IPsec ESP transformations
    -&gt; local user crash / codeexec
-   UAF in network traffic control subsystem - requires an attacker to be
    root OR to be able to use unprivileged user namespaces - which is the
    default for Ubuntu (but it is often suggested to disable this in most
    hardening guides)


### [[USN-5358-1](https://ubuntu.com/security/notices/USN-5358-1), [USN-5358-2](https://ubuntu.com/security/notices/USN-5358-2)] Linux kernel vulnerabilities [04:45] {#usn-5358-1-usn-5358-2-linux-kernel-vulnerabilities-04-45}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-27666](https://ubuntu.com/security/CVE-2022-27666) <!-- medium -->
    -   [CVE-2022-1055](https://ubuntu.com/security/CVE-2022-1055) <!-- high -->
-   5.13 (21.10), 5.4 (20.04 LTS, 18.04 LTS HWE)


### [[USN-5356-1](https://ubuntu.com/security/notices/USN-5356-1)] DOSBox vulnerabilities [05:01] {#usn-5356-1-dosbox-vulnerabilities-05-01}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2019-12594](https://ubuntu.com/security/CVE-2019-12594) <!-- medium -->
    -   [CVE-2019-7165](https://ubuntu.com/security/CVE-2019-7165) <!-- medium -->
-   Heap buffer overflow when parsing BAT files with very long lines
-   Incorrectly would allow access to files under `/proc`
    (e.g. `/proc/self/mem`) - could then allow an application to get code
    execution - added checks on file access to prevent this


### [[USN-5360-1](https://ubuntu.com/security/notices/USN-5360-1)] Tomcat vulnerabilities [05:47] {#usn-5360-1-tomcat-vulnerabilities-05-47}

-   9 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-41079](https://ubuntu.com/security/CVE-2021-41079) <!-- medium -->
    -   [CVE-2021-25329](https://ubuntu.com/security/CVE-2021-25329) <!-- low -->
    -   [CVE-2020-9494](https://ubuntu.com/security/CVE-2020-9494) <!-- medium -->
    -   [CVE-2021-33037](https://ubuntu.com/security/CVE-2021-33037) <!-- medium -->
    -   [CVE-2020-9484](https://ubuntu.com/security/CVE-2020-9484) <!-- low -->
    -   [CVE-2021-30640](https://ubuntu.com/security/CVE-2021-30640) <!-- medium -->
    -   [CVE-2021-25122](https://ubuntu.com/security/CVE-2021-25122) <!-- medium -->
    -   [CVE-2020-17527](https://ubuntu.com/security/CVE-2020-17527) <!-- medium -->
    -   [CVE-2020-13943](https://ubuntu.com/security/CVE-2020-13943) <!-- medium -->
-   Thanks to Evren Yurtesen for providing the patches (from Debian) for
    20.04 LTS
-   Various deserialisation issues -&gt; RCE
-   Input length validation -&gt; infinite loop -&gt; CPU DoS
-   HTTP/2 issues on request header handling -&gt; expose requests of one
    connection to a different one -&gt; info leak


### [[USN-5361-1](https://ubuntu.com/security/notices/USN-5361-1)] Linux kernel vulnerabilities [06:46] {#usn-5361-1-linux-kernel-vulnerabilities-06-46}

-   14 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2021-45486](https://ubuntu.com/security/CVE-2021-45486) <!-- medium -->
    -   [CVE-2021-43976](https://ubuntu.com/security/CVE-2021-43976) <!-- low -->
    -   [CVE-2021-42739](https://ubuntu.com/security/CVE-2021-42739) <!-- medium -->
    -   [CVE-2021-4083](https://ubuntu.com/security/CVE-2021-4083) <!-- medium -->
    -   [CVE-2021-39636](https://ubuntu.com/security/CVE-2021-39636) <!-- medium -->
    -   [CVE-2021-37159](https://ubuntu.com/security/CVE-2021-37159) <!-- low -->
    -   [CVE-2021-31916](https://ubuntu.com/security/CVE-2021-31916) <!-- medium -->
    -   [CVE-2021-28964](https://ubuntu.com/security/CVE-2021-28964) <!-- medium -->
    -   [CVE-2021-0935](https://ubuntu.com/security/CVE-2021-0935) <!-- medium -->
    -   [CVE-2021-0920](https://ubuntu.com/security/CVE-2021-0920) <!-- medium -->
    -   [CVE-2020-3702](https://ubuntu.com/security/CVE-2020-3702) <!-- medium -->
    -   [CVE-2020-26145](https://ubuntu.com/security/CVE-2020-26145) <!-- medium -->
    -   [CVE-2020-26141](https://ubuntu.com/security/CVE-2020-26141) <!-- medium -->
    -   [CVE-2020-12888](https://ubuntu.com/security/CVE-2020-12888) <!-- medium -->
-   4.4
-   Various issues from previous episodes


### [[USN-5362-1](https://ubuntu.com/security/notices/USN-5362-1)] Linux kernel (Intel IOTG) vulnerabilities [07:03] {#usn-5362-1-linux-kernel--intel-iotg--vulnerabilities-07-03}

-   16 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-22942](https://ubuntu.com/security/CVE-2022-22942) <!-- medium -->
    -   [CVE-2022-0742](https://ubuntu.com/security/CVE-2022-0742) <!-- medium -->
    -   [CVE-2022-0516](https://ubuntu.com/security/CVE-2022-0516) <!-- medium -->
    -   [CVE-2022-0435](https://ubuntu.com/security/CVE-2022-0435) <!-- medium -->
    -   [CVE-2022-0330](https://ubuntu.com/security/CVE-2022-0330) <!-- medium -->
    -   [CVE-2021-42327](https://ubuntu.com/security/CVE-2021-42327) <!-- low -->
    -   [CVE-2021-4155](https://ubuntu.com/security/CVE-2021-4155) <!-- medium -->
    -   [CVE-2021-4090](https://ubuntu.com/security/CVE-2021-4090) <!-- medium -->
    -   [CVE-2021-4083](https://ubuntu.com/security/CVE-2021-4083) <!-- medium -->
    -   [CVE-2022-0001](https://ubuntu.com/security/CVE-2022-0001) <!-- high -->
    -   [CVE-2022-0185](https://ubuntu.com/security/CVE-2022-0185) <!-- high -->
    -   [CVE-2022-0492](https://ubuntu.com/security/CVE-2022-0492) <!-- high -->
    -   [CVE-2022-0847](https://ubuntu.com/security/CVE-2022-0847) <!-- high -->
    -   [CVE-2022-23222](https://ubuntu.com/security/CVE-2022-23222) <!-- high -->
    -   [CVE-2022-23960](https://ubuntu.com/security/CVE-2022-23960) <!-- high -->
    -   [CVE-2022-25636](https://ubuntu.com/security/CVE-2022-25636) <!-- high -->
-   5.13 kernel targetted to intel IoT platforms
-   Again includes fixes for various vulns discussed in past episodes


### [[USN-5364-1](https://ubuntu.com/security/notices/USN-5364-1)] Waitress vulnerability [07:17] {#usn-5364-1-waitress-vulnerability-07-17}

-   1 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-24761](https://ubuntu.com/security/CVE-2022-24761) <!-- medium -->
-   Pure python impl of Webserver Gateway Interface (WSGI) standard -
    interface spec on how server an application communicate
-   Request smuggling vuln due to differences in how waitress and a possible
    frontend proxy interpret HTTP requests


### [[USN-5365-1](https://ubuntu.com/security/notices/USN-5365-1)] H2 vulnerabilities [07:47] {#usn-5365-1-h2-vulnerabilities-07-47}

-   2 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-23221](https://ubuntu.com/security/CVE-2022-23221) <!-- medium -->
    -   [CVE-2021-42392](https://ubuntu.com/security/CVE-2021-42392) <!-- high -->
-   Database engine
-   Deserialisation of untrusted data -&gt; code execution
-   Crafted connection URLS -&gt; code execution


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### TL;DL of recent series on Ubuntu hardening [08:11] {#tl-dl-of-recent-series-on-ubuntu-hardening-08-11}

-   Various listener requests for a summary on the recent series of episodes
    discussing Ubuntu hardening


#### Transcript {#transcript}

Hello listener! This is going to be a quick episode and so I will make a
quick introduction for it. During our last four episodes we talked about
how to harden our Ubuntu systems, making it more robust...and dare I say
it? More secure! However, four episodes is quite a lot, and not everyone is
willing to listen to several minutes of my awesome voice, so I am here
today to fix that and give you an episode that is a summary, a "Too Long,
Didn't Listen" if you will, of those previous four episodes. So let's get
going because today is no day for delays, and let's talk, shortly and
succinctly, about things you can do to harden your Ubuntu system.

Let's start with hardening measures you can apply to your system whilst
installing it:

(1) Encrypt your disk. Input and output operations might take a little
while longer to happen, but if your hardware can take it, that might not
even be an issue. Do remember though that everytime the device is shutdown,
when you turn it on, you will have to decrypt the disk before using the
operating system, which in turn means: inputting a password to get things
going. So maybe only do this if you have a system where this won't be a
hindrance. Oh, and don't lose your password, or else, you'll end up with a
disk full of pretty, but uninterpretable, characters and no functional
operating system at all!

(2) Create a swap partition or a swap file to get the most out of your
RAM. Availability is also a cyber security concern you should have, and
providing your system with some swap space not only buffs it by giving it
more RAM memory to work with - even it if is only a wannabe RAM - but it
also allows you, as a system administrator, to be better prepared to face
memory issues that might come to haunt your system, since you can monitor
your swap space usage and use this as reference to know if your system
might be feeling a little bit overloaded. Avoiding unnecessary crashes just
got a whole lot easier. Choo OOM manager! A side note, though: check your
system requirements so that you setup swap in a way that fits your system's
needs, or else, instead of making your device work better, you will only
make it work harder.

(3) Partition your system! Put /var and /home in different disk partitions
and avoid all that log file backup or those kitty videos from flooding your
disk space and forcing your critical processes to stop execution because
there is no space left in the system. Ooops. Maybe we should also take some
time to update the log backup script and to remind users that the server is
no place to store videos...even if they are adorable. And while you are at
it, maybe also add /tmp to its own partition. World writable /tmp is a well
known attacker target and grounding it and sending it to the corner to
think about its bad behavior might be a good way to avoid possible
attacks. Especially considering that different partitions can be set to
have different permissions.

(4) Strong passwords. This shouldn't even be in this list because you
already use strong passwords when setting up your users during install,
right? What? I'm not nervous because I definitely need to change my
password from 'security2022' to something a lot better, you are!

With an installed system, our hardening journey is far from over, as we now
need to set everything up securely before getting our service and its
related applications running. How to proceed?

(1) Ubuntu does not enable a password for the 'root' user for a reason, and
so, recommendation number one is: just leave 'root' and its password
alone. Leave it there hibernating with all of its amazing and yet
destructive power over the system. No 'root' user password, no successful
brute force attacks, not even through SSH. An attacker in a regular user
shell is a lot less scary than an attacker in a 'root' shell. Use 'sudo'
instead, and configure 'sudo' permissions for your users appropriately in
the /etc/sudoers file. YOU get to CHOOSE what commands each user can run as
the superuser, so take your time to set these up. Give each user the least
they need to perform their tasks, and stay safe. I know...it's
amazing...you get to CONTROL what your users are allowed to do in your
system. "What? Has this always existed?" Yes, my friend, yes it has, so
it's about time you start configuring it properly.

(2) Use SSH instead of Telnet for remote login, because you are NOT a
caveman that requires your data to be transmitted over the network in plain
text. Yes, cavemen knew not to use Telnet and they also knew that even when
using SSH they had to properly configure it before using it, or else, not
even encryption would save them. If you doubt me, go do your
research...this is 100% historically accurate, my fingers are definitely
not crossed behind my back as I say this. Disable root access through SSH,
use SSH2 instead of SSH1, setup allowlists and denylists for users and IP
addresses, and set a maximum number of login attempts were all of the basic
things cavemen in our planet did when setting up their SSH servers whilst
sitting around their very cozy and newly discovered fires. Plus, they also
setup private key login for their SSH servers, not because they were too
lazy to type in their passwords - …nooooo, they had passphrases for their
keys - but instead because it is a well-known and trusted way to verify the
identity of whoever is trying to connect to the server. Passwords by
themselves sometimes just aren't enough. So...if cavemen were able to
discover fire AND properly set up their SSH servers...then it is more than
your obligation to at least do the same, if not more. Oh, and don't forget
to properly set permissions in the 'authorized_keys' file...I mean...come on
guys...properly setting permissions in a very important file in your OS is
a lot easier than hunting, foraging, surviving in the menacing prehistoric
Earth environments, and that's why cavemen did it as well.

(3) Can we really call it hardening of the system if we don't consider
hardening of the one and only, the star of the show, the kernel itself? The
'sysctl' command in your Ubuntu system is there to attend to all of your
kernel hardening needs, allowing you to define kernel configurations, but
not requiring you to reboot the machine to get them to stick. With 'sysctl'
you can do so many things that I wouldn't be able to summarize it all here,
and I am already in a pinch because I am very bad at making my scripts
short, and I need to keep this one short. So, for now, I will give you a
little taste of what 'sysctl' can do to get those curiosity juices flowing!
Restrict users allowed to read kernel logs and block IP packet forwarding
for devices that are not routers. Was I able to make you interested? Well,
I know I wont get the answer to that, but what I do know is that both those
measures I mentioned can already take you a long way when you think of
hardening your system, and they are two amongst many available...sooo, get
those fingers typing and those kernel options researched and you, my
friend, are in the right path to get your system hardened!

(4) Setup a host based firewall. They are efficient in blocking unwanted
network traffic, they can be configured to your host's specific needs and
they are portable, since, when the host migrates, its firewall goes with
it. Plus, it's very easy to set up, you can use the Ubuntu tool known as
the Uncomplicated Firewall ('ufw') to help you, and it gets you started on
protecting yourself against the harsh, harsh Internet ecosystem that lies
out there.  Oh, and don't even try to argue with me and tell me about your
network based firewall and how it already does the job for you, because I
just discussed it in the long version of this series, so to make it short,
I will say one simple word to get my point across once again: layers!

(5) Remember when we were talking about partitioning your disk/filesystem?
Well, let's kick that up a notch and configure each partition individually,
setting permissions and defining usage configurations for each one of the
different partitions in our disks. We are all unique in this huge world we
live in, and so are our partitions. Treat them with the love, care and
individuality that they deserve and they shall return all of your efforts
in the form of a more secure system. If you have a network shared
partition, for example, why not set the 'noexec' option for this partition,
and avoid executables to be run from an area in your device that could be
considered untrustworthy at best and devastatingly dangerous at worst?
Don't trust users, I always say, specifically when they come for your files
through the network. Another good option would be to set a partition as
read-only, if it is a partition that requires no more permissions than
this. The /etc/fstab file is the one you can go to in order to set all of
these configurations, which will be applied at mount time, exactly during
system boot.

(6) Don't ignore your logs. Setup a nice logging system for your
device. Use syslog or journal to do so, and yeah...sure...thank me later, I
won't complain if you do. But seriously though, how can you expect to
maintain and troubleshoot a device if you don't know what is happening with
that device? And how do you expect to keep a system secure if you can't
maintain and troubleshoot it? Yes, logs can be annoying to look at and
analyze sometimes, but that is why utilities such as 'syslogd' and
'journald' exist to help you search through those logs. Syslog even allows
you to send all of your data to a centralized server, which can then focus
exclusively on processing log data that it gets from various network
devices. You have all of that goldmine of data at your feet and all you
need to do now is use it. Ubuntu has the tools that allow you to do that,
but it doesn't have the will...that, my friend, needs to come from you. So
to show how important it is to set up and use logs, I will end this
suggestion with a quote, because everything that includes quotes is usually
considered important, right? "Knowing yourself is the beginning of all
wisdom" - Aristotle. There, now go get some logging setup.

Ok. Next step is installing your applications so that you can get your
service up and running. I am not even going to go into detail about using
secure software, setting up this software including security
configurations, and using encryption when sending data through the network,
because that is obvious enough, right? If not...then I am sorry to tell
you, you might need to listen to the long version of this. I will go into
detail though, not much, but a little bit (if you want 'much', go listen to
parts 1, 2, 3 and 4), on what you can do after you set up your service, and
on what you can do until forever to keep your hardened system from going
soft on you. So let's jump in.

(1) One or two network services per device!!! Don't make your server a jack
of all trades, because that is a recipe for a hack of all spaces. If you
are going to use the network to expose your service, maybe incorporate it
as a part of the service's architecture as well. Have more than one device
running server software which makes up a part of the entire provided
service, and have those devices communicate with each other through the
network. Different server applications in different devices will isolate
each relevant component and avoid a complete meltdown of the service in
general, in case something is compromised. Divide and conquer. It's like we
don't say this enough.

(2) Close unused ports in your system and disable unnecessary services and
daemons. By not doing so you are only increasing the attack surface for
your system, meaning, you are giving more possibilities for an attacker on
how to attack you. Less is more, and the bare minimum should be enough. Be
sure new installs and new updates don't open up ports you don't want to be
opened and don't bring in new files, scripts or executables that might
compromise you. Keep a continuous eye on everything that is running in the
background. Just because you can't see it, it does not mean it can't be
hacked.

(3) Check your file permissions and change them if necessary! Defaults were
made to be overwritten and you don't need 777 files lying around in your
system anymore, do you? Know your resources and set permissions
accordingly. Correctly setting up users and groups is implied here,
especially considering that users and groups will define who can and can't
access a file in the system. Plus, disable the setuid and the setgid bit
for executables that don't need it. When researching for privilege
escalation techniques in Linux, "Find setuid binaries in the system" is the
first technique to show up, so that should be enough of a warning to you
that an executable should only be allowed to run as another user in case it
is extremely...and let me say that again with emphasis: EXTREMELY
necessary, or else, it might just be another day, another root shell for
some random attacker.

(4) Install some third party software to help you keep your system
safe. "We are all in this together", a quote from a song in a teen musical
I am totally not ashamed to admit I watched too much when I was a bit
younger, used to say, and that applies for the cyber security
community. Software that can help you better the security in your devices
is plenty out there, and here, today, I will mention a few of them that you
can check out and possibly use in order to harden your Ubuntu OS even
more. Obviously, since this is a summary, we are doing this the fast way,
so let's get listing: Fail2ban, Snort and Suricata for intrusion detection
and prevention; the Google PAM package, which allows implementation of
2-factor-authentication for your Ubuntu users; ClamAV, for malware
detection; the Mozilla TLS configuration generator, to help you securely
generate configuration files for well known applications; and finally,
AppArmor, or possibly SELinux, for Mandatory Access Control that will
complement the Discretionary Access Control you already set up with your
file permissions earlier.

To finish this all off, don't forget to keep your packages up-to-date, to
use shred instead of remove to get rid of files containing sensitive data
in your system, and to continuously go back and reconsider all of the
previously mentioned points, so that your system can securely keep up with
changes that are being made around it. The world won't stop spinning and
technology won't stop evolving, so your server cannot afford to not be
maintained and updated on a regular basis, or else, all of your initial
hardening will be for naught.

That is all for today friends, and I hope you enjoyed it. It was a quick
one, but it was an episode made with love. Feel free to share your thoughts
on any of our social media platforms and for now I bid you farewell and
until next time! Bye!


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)