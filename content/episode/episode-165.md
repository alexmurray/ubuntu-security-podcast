+++
title = "Episode 165"
description = """
  This week Camila dives into the details on some of the most prolific
  buzzwords flying around the cybersecurity community, plus we cover security
  updates for BlueZ, the Linux kernel, Intel Microcode, QEMU, Apache and
  more.
  """
date = 2022-06-24T16:02:00+09:30
lastmod = 2022-06-24T16:08:39+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E165.mp3"
podcast_duration = 2051
podcast_bytes = 21987701
permalink = "https://ubuntusecuritypodcast.org/episode-165/"
guid = "1ef7b560fd187efb9b0e6167b27197acafc0c1675211b6c0e42a2a62aa199c79a72f21eca4fad4a58d4fe76f9272715ee24e53757f4c6e0e26e4223f4388ae56"
+++

## Overview {#overview}

This week Camila dives into the details on some of the most prolific
buzzwords flying around the cybersecurity community, plus we cover security
updates for BlueZ, the Linux kernel, Intel Microcode, QEMU, Apache and
more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

58 unique CVEs addressed


### [[USN-5481-1](https://ubuntu.com/security/notices/USN-5481-1)] BlueZ vulnerabilities [00:38] {#usn-5481-1-bluez-vulnerabilities-00-38}

-   Affecting Bionic (18.04 LTS), Focal (20.04 LTS)
-   Not all vulnerabilities / security issues get CVEs ;)
-   Possible OOB read in A/V Remote Control Protocol profile
-   Possible OOB write and a possible 1-byte buffer overflow in A/V
    Distribution Transport Protocol profile


### [[LSN-0087-1](https://ubuntu.com/security/notices/LSN-0087-1)] Linux kernel vulnerability [01:20] {#lsn-0087-1-linux-kernel-vulnerability-01-20}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-1972](https://ubuntu.com/security/CVE-2022-1972) <!-- medium -->
    -   [CVE-2022-1966](https://ubuntu.com/security/CVE-2022-1966) <!-- high -->
-   2 different netfilter issues
    -   OOB write (can be mitigated by disabling unprivileged user namespaces)
    -   UAF

| Kernel type     | 22.04 | 20.04 | 18.04 | 16.04 | 14.04 |
|-----------------|-------|-------|-------|-------|-------|
| aws             | —     | 87.1  | 87.2  | 87.1  | —     |
| aws-5.4         | —     | —     | 87.1  | —     | —     |
| aws-hwe         | —     | —     | —     | 87.2  | —     |
| azure           | —     | 87.1  | —     | 87.1  | —     |
| azure-4.15      | —     | —     | 87.1  | —     | —     |
| azure-5.4       | —     | —     | 87.1  | —     | —     |
| gcp             | 87.1  | 87.1  | —     | 87.1  | —     |
| gcp-4.15        | —     | —     | 87.1  | —     | —     |
| gcp-5.4         | —     | —     | 87.1  | —     | —     |
| generic-4.15    | —     | —     | 87.1  | 87.1  | —     |
| generic-4.4     | —     | —     | —     | 87.1  | 87.1  |
| generic-5.4     | —     | 87.1  | 87.1  | —     | —     |
| gke             | 87.1  | 87.1  | —     | —     | —     |
| gke-4.15        | —     | —     | 87.1  | —     | —     |
| gke-5.4         | —     | —     | 87.1  | —     | —     |
| gkeop           | —     | 87.1  | —     | —     | —     |
| gkeop-5.4       | —     | —     | 87.1  | —     | —     |
| ibm             | 87.1  | 87.1  | —     | —     | —     |
| linux           | 87.1  | —     | —     | —     | —     |
| lowlatency      | 87.1  | —     | —     | —     | —     |
| lowlatency-4.15 | —     | —     | 87.1  | 87.1  | —     |
| lowlatency-4.4  | —     | —     | —     | 87.1  | 87.1  |
| lowlatency-5.4  | —     | 87.1  | 87.1  | —     | —     |
| oem             | —     | —     | 87.1  | —     | —     |

```shell
canonical-livepatch status
```


### [[USN-5485-1](https://ubuntu.com/security/notices/USN-5485-1)] Linux kernel vulnerabilities [02:14] {#usn-5485-1-linux-kernel-vulnerabilities-02-14}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-21166](https://ubuntu.com/security/CVE-2022-21166) <!-- medium -->
    -   [CVE-2022-21125](https://ubuntu.com/security/CVE-2022-21125) <!-- medium -->
    -   [CVE-2022-21123](https://ubuntu.com/security/CVE-2022-21123) <!-- medium -->
-   All GA and some HWE kernels
-   Intel MMIO stale data
    -   Mentioned in passing in last week's episode - kernels are now available
        as well as microcode to mitigate these issues - once have installed the
        new kernel can see if vulnerable via a new sysfs file:

<!--listend-->

```shell
cat /sys/devices/system/cpu/vulnerabilities/mmio_stale_data
```

-   Will display either `Not affected`, `Vulnerable` (no mitigation),
    `Vulnerable: Clear CPU buffers attempted, no microcode` or `Mitigation:
          Clear CPU buffers` if have mitigation enabled and microcode to support
    it
-   Will also display info on SMT since if vulnerable then need to disable
    SMT to be completely protected
-   Mitigation comes with a performance hit so if not doing untrusted
    virtualisation can perhaps disable it (but please do your own research
    as needed 😉) via kernel command-line option:

<!--listend-->

```shell
mmio_stale_data=full # or 'full,nosmt'  or 'off'
```

-   To have complete mitigation need to enable clear buffers **and** disable
    SMT on affected CPUs
-   <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/admin-guide/hw-vuln/processor_mmio_stale_data.rst>


### [[USN-5484-1](https://ubuntu.com/security/notices/USN-5484-1)] Linux kernel vulnerabilities [05:22] {#usn-5484-1-linux-kernel-vulnerabilities-05-22}

-   5 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2022-21166](https://ubuntu.com/security/CVE-2022-21166) <!-- medium -->
    -   [CVE-2022-21125](https://ubuntu.com/security/CVE-2022-21125) <!-- medium -->
    -   [CVE-2022-21123](https://ubuntu.com/security/CVE-2022-21123) <!-- medium -->
    -   [CVE-2021-39713](https://ubuntu.com/security/CVE-2021-39713) <!-- high -->
    -   [CVE-2022-21499](https://ubuntu.com/security/CVE-2022-21499) <!-- high -->
-   3.13 GA kernel for 14.04 ESM
-   2 recent high priority kernel vulns:
    -   UAF due to race condition in network packet scheduler
    -   Secure boot bypass through `kgdb`
-   Intel MMIO stale data


### [[USN-5486-1](https://ubuntu.com/security/notices/USN-5486-1)] Intel Microcode vulnerabilities [06:01] {#usn-5486-1-intel-microcode-vulnerabilities-06-01}

-   9 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-21166](https://ubuntu.com/security/CVE-2022-21166) <!-- medium -->
    -   [CVE-2022-21151](https://ubuntu.com/security/CVE-2022-21151) <!-- medium -->
    -   [CVE-2022-21127](https://ubuntu.com/security/CVE-2022-21127) <!-- medium -->
    -   [CVE-2022-21123](https://ubuntu.com/security/CVE-2022-21123) <!-- medium -->
    -   [CVE-2021-33120](https://ubuntu.com/security/CVE-2021-33120) <!-- medium -->
    -   [CVE-2021-33117](https://ubuntu.com/security/CVE-2021-33117) <!-- medium -->
    -   [CVE-2021-0146](https://ubuntu.com/security/CVE-2021-0146) <!-- medium -->
    -   [CVE-2021-0145](https://ubuntu.com/security/CVE-2021-0145) <!-- medium -->
    -   [CVE-2021-0127](https://ubuntu.com/security/CVE-2021-0127) <!-- medium -->
-   Latest intel-microcode release (20220510 / SPU 2022.1)
-   Originally mentioned 3 CVEs at release back in May
-   Now Intel have mentioned this is also required for mitigation of the MMIO
    stale data issues as well


### [[USN-5483-1](https://ubuntu.com/security/notices/USN-5483-1)] Exempi vulnerabilities [07:08] {#usn-5483-1-exempi-vulnerabilities-07-08}

-   22 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2021-42532](https://ubuntu.com/security/CVE-2021-42532) <!-- medium -->
    -   [CVE-2021-42531](https://ubuntu.com/security/CVE-2021-42531) <!-- medium -->
    -   [CVE-2021-42530](https://ubuntu.com/security/CVE-2021-42530) <!-- medium -->
    -   [CVE-2021-42529](https://ubuntu.com/security/CVE-2021-42529) <!-- medium -->
    -   [CVE-2021-42528](https://ubuntu.com/security/CVE-2021-42528) <!-- medium -->
    -   [CVE-2021-40732](https://ubuntu.com/security/CVE-2021-40732) <!-- medium -->
    -   [CVE-2021-40716](https://ubuntu.com/security/CVE-2021-40716) <!-- medium -->
    -   [CVE-2021-39847](https://ubuntu.com/security/CVE-2021-39847) <!-- medium -->
    -   [CVE-2021-36064](https://ubuntu.com/security/CVE-2021-36064) <!-- medium -->
    -   [CVE-2021-36058](https://ubuntu.com/security/CVE-2021-36058) <!-- medium -->
    -   [CVE-2021-36056](https://ubuntu.com/security/CVE-2021-36056) <!-- medium -->
    -   [CVE-2021-36055](https://ubuntu.com/security/CVE-2021-36055) <!-- low -->
    -   [CVE-2021-36054](https://ubuntu.com/security/CVE-2021-36054) <!-- medium -->
    -   [CVE-2021-36053](https://ubuntu.com/security/CVE-2021-36053) <!-- medium -->
    -   [CVE-2021-36052](https://ubuntu.com/security/CVE-2021-36052) <!-- medium -->
    -   [CVE-2021-36051](https://ubuntu.com/security/CVE-2021-36051) <!-- medium -->
    -   [CVE-2021-36050](https://ubuntu.com/security/CVE-2021-36050) <!-- medium -->
    -   [CVE-2021-36048](https://ubuntu.com/security/CVE-2021-36048) <!-- low -->
    -   [CVE-2021-36047](https://ubuntu.com/security/CVE-2021-36047) <!-- medium -->
    -   [CVE-2021-36046](https://ubuntu.com/security/CVE-2021-36046) <!-- medium -->
    -   [CVE-2021-36045](https://ubuntu.com/security/CVE-2021-36045) <!-- medium -->
    -   [CVE-2018-12648](https://ubuntu.com/security/CVE-2018-12648) <!-- low -->
-   xmp metadata parsing library
    -   used by EOG, tracker, nemo and others
-   Usual mix of issues from memory unsafe languages - Stack and heap-based
    OOB reads / writes, integer overflows etc
    -   RCE / DoS


### [[USN-5482-1](https://ubuntu.com/security/notices/USN-5482-1)] SPIP vulnerabilities [07:55] {#usn-5482-1-spip-vulnerabilities-07-55}

-   7 CVEs addressed in Bionic (18.04 LTS), Impish (21.10)
    -   [CVE-2022-26847](https://ubuntu.com/security/CVE-2022-26847) <!-- medium -->
    -   [CVE-2022-26846](https://ubuntu.com/security/CVE-2022-26846) <!-- medium -->
    -   [CVE-2021-44123](https://ubuntu.com/security/CVE-2021-44123) <!-- medium -->
    -   [CVE-2021-44122](https://ubuntu.com/security/CVE-2021-44122) <!-- medium -->
    -   [CVE-2021-44120](https://ubuntu.com/security/CVE-2021-44120) <!-- medium -->
    -   [CVE-2021-44118](https://ubuntu.com/security/CVE-2021-44118) <!-- medium -->
    -   [CVE-2020-28984](https://ubuntu.com/security/CVE-2020-28984) <!-- medium -->
-   Thanks again to Luís Infante da Câmara for preparing the update for
    bionic
-   website engine
    -   CSRF, XSS, info disclosure, RCE


### [[USN-5487-1](https://ubuntu.com/security/notices/USN-5487-1)] Apache HTTP Server vulnerabilities [08:28] {#usn-5487-1-apache-http-server-vulnerabilities-08-28}

-   7 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-31813](https://ubuntu.com/security/CVE-2022-31813) <!-- medium -->
    -   [CVE-2022-30556](https://ubuntu.com/security/CVE-2022-30556) <!-- medium -->
    -   [CVE-2022-30522](https://ubuntu.com/security/CVE-2022-30522) <!-- medium -->
    -   [CVE-2022-29404](https://ubuntu.com/security/CVE-2022-29404) <!-- medium -->
    -   [CVE-2022-28615](https://ubuntu.com/security/CVE-2022-28615) <!-- medium -->
    -   [CVE-2022-28614](https://ubuntu.com/security/CVE-2022-28614) <!-- low -->
    -   [CVE-2022-26377](https://ubuntu.com/security/CVE-2022-26377) <!-- medium -->
-   Request smuggling, RCE, DoS, expose sensitive info etc


### [[USN-5488-1](https://ubuntu.com/security/notices/USN-5488-1)] OpenSSL vulnerability [08:53] {#usn-5488-1-openssl-vulnerability-08-53}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-2068](https://ubuntu.com/security/CVE-2022-2068) <!-- medium -->
-   `c_rehash` - very similar to [CVE-2022-1292](https://ubuntu.com/security/CVE-2022-1292) ([Episode 159](https://ubuntusecuritypodcast.org/episode-159/)) - possible code
    execution if running it against certificates with crafted file names -
    unlikely anyone is doing this in practice, plus upstream say this is
    deprecated and instead should just use `openssl rehash` instead


### [[USN-5489-1](https://ubuntu.com/security/notices/USN-5489-1)] QEMU vulnerabilities [09:57] {#usn-5489-1-qemu-vulnerabilities-09-57}

-   7 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-26354](https://ubuntu.com/security/CVE-2022-26354) <!-- low -->
    -   [CVE-2022-26353](https://ubuntu.com/security/CVE-2022-26353) <!-- low -->
    -   [CVE-2022-0358](https://ubuntu.com/security/CVE-2022-0358) <!-- medium -->
    -   [CVE-2021-4207](https://ubuntu.com/security/CVE-2021-4207) <!-- medium -->
    -   [CVE-2021-4206](https://ubuntu.com/security/CVE-2021-4206) <!-- medium -->
    -   [CVE-2021-3929](https://ubuntu.com/security/CVE-2021-3929) <!-- low -->
    -   [CVE-2021-3507](https://ubuntu.com/security/CVE-2021-3507) <!-- low -->
-   Various guest -&gt; host issues via emulation drivers for various devices
    (floppy disk, NVME controller, QXL display device, virtio-net,
    vhost-vsock etc)
    -   crash host QEMU, code execution, change file ownership


## Decoding cybersecurity buzzwords (part 1) [10:45] {#decoding-cybersecurity-buzzwords--part-1--10-45}

-   From ransomware to botnets and phishing, Camila dives into the details on
    some of the most prolific buzzwords flying around the cybersecurity
    community


### Transcript {#transcript}

Hello listener! Welcome to another segment o'mine in the Ubuntu Security
Podcast! It's been a while, but I have returned to bring some real buzz
into today's episode! How, you might ask? The buzz will come from the
buzzwords we will be exploring...cyber security buzzwords to be more
specific. Let's start by defining what a buzzword is, for those who might
not know this term: a buzzword is a word - or a term - that, as the name
suggests, is currently buzzing. It's a word that is popular within the
scope of its usage. Everyone says it all the time, and it seems like you
can't escape it. The most popular articles about topics in a specific field
use it every other sentence, people put them in big, bold and shiny letters
right there on the title of their scientific papers, and even your baby's
first words end up being that buzzword because they end up hearing it more
than the eternal and classic infant buzz phrase "Say mama!". A buzzword is,
therefore, a fashionable word at a specific point in time. Every field has
its own, and cyber security is not exempt from them. Today, I want to
actually explore some of the cyber security buzzwords we have and actually
try to demystify them, as buzzwords can become something much more absurd
or grandiose than they actually are just because everyone is choosing to
use them. I think we all remember the era of the super low-rise jeans and
can agree (or maybe agree to disagree) that just because something is being
used by everyone out there, it does not mean it deserves all the hype…of
course that is my own opinion on the subject matter that is low-rise
jeans. As for the buzzwords, the statement stands! So, let's bring up some
of these super duper amazingly popular buzzwords in to play here, let's
actually define what they are for the ones out there that might not be
cyber-security wizards, and let's remove the buzzing that these buzzwords
might have brought into our minds, shall we?

Buzzword #1: ransomware. Aaah, ransomware. You see this simple and yet
deadly word everywhere. "Defend yourself against ransomware!", "Ransomware
might be just around the corner!", "No need to fear ransomware
anymore!". It was the dawn of 2017 when ransomware became a thing to people
outside of the cyber security community because of the infamous WannaCry
malware. That picture with a red pop-up window telling you that all of your
files had been encrypted and could only be recovered after some type of
crypto currency payment was made to the attackers was absolutely
everywhere! And after that, the ransomware wave only got stronger, with new
and improved types showing up all the time, an honorable mention being the
Petya variants. Anyway, since WannaCry was such a big deal at the time, and
people were so scared of it after it left behind its trail of mayhem and
huge amounts of lost data, ransomware became THE word chosen by various
cybersecurity companies to describe that which is your main enemy in the
digital world, the supervillain in this installment of the cyber security
movie series that is actually our real lives. All defense tools now
implement some type of measure against ransomware, because if they don't,
you know that clients of said tool will ask "but what about defending
against ransomware?", because that, my friends, is the buzzword that comes
to their minds. Like the word "computer virus" in the early 2000s. Computer
viruses still exist, but you don't see people freaking out about it
anymore, because now we have the "antivirus". Phew, problem solved, right?
So no need to have this as a buzzword anymore. However, just like computer
viruses existed before the 2000s and still exist to this day, ransomware
also existed before WannaCry and much worse versions of it will continue to
exist while there still are vulnerabilities and hackers out there, which is
to say…probably forever. The only difference is, we now live in a time
where people seem to care about it a little bit more, maybe because they
are not implementing security measures to be safe against it, or at least
they are not doing it very well. But I am getting ahead of myself
here. Let's first talk about what ransomware really is, which is actually
something very simple to do: a ransomware is a malware, as a computer virus
is also a malware. A malware is a 'malicious software', or, in other words,
a software that executes in a computing device and that does things that
the owner of the device might not want it to do, like...for example,
encrypt all of your files and not allow you to access them. That is what
ransomware does, in most cases. The main idea is, a ransomware will be a
malicious software that will prevent you from accessing your files until
you pay some amount of money to the malicious entity that was able to get
that ransomware to run in your network devices in the first place...so,
until you pay a ransom to the kidnapper of your data. Of course this only
works if you have someone on the other side waiting to exchange the money
for the key that will decrypt your files, or else, you could simply have a
very destructive trojan, or worm, or whatever other malware that is
combined with the file encrypting functionality in order for the malicious
software itself to spread through the network before actually causing the
data harm it does. The question now is, whatever is the ransomware-hybrid
malware that targeted you and your network, the only way to recover the
data you lost, the data as it was during the time of total encryption, is
to pay the ransom. Should you? Cyber security professionals usually
recommend against paying ransom, as it only shows hackers that they can
continue launching ransomware attacks to get what they want. The correct
way to avoid your files from being forever lost after your network has been
infected by one of these nasty malwares is to recover data from the backup
server you set up...you did set up a backup server to store the backup for
all of your company data, right? I know, I know...not always it will be the
case that people will be able to set backups, and then, recovering all that
is lost might be a much more difficult task if you decide to not pay the
ransom. But come on...we live at a time where cyber security should no
longer be put in the benches, and you should be highly concerned about
possible attacks, especially attacks related to the ever popular buzzword
ransomware. Save some of your budget for backups, you won't regret it.

Buzzword #2: botnets. 'Botnet' is an interesting buzzword because it opens
the door to many other tech buzzwords that are in everyone's minds out
there right now...like crypto mining, for example. Why? Because you can use
botnets to perform crypto mining...you can also use botnets to spread
malware, including ransomware. Oh...and botnets...their participants
usually include lots of IoT devices! BAM, another buzzword right there! Now
would you look at that! Seems like instead of a buzzword, we actually have
a buzzword magnet in our hands ladies and gentlemen. So...yes, maybe
'botnet' is not the hottest buzzword out there right now, but I decided to
include it in the list because I feel like it is a disguised buzzword. What
do I mean by disguised? It's the word that is in the subtitle for an
article named "CRYPTO MINING HACKER GANG CAUSES DAMAGES TO COMPANY X", or
the word that is implied in a video that is named "IoT DEVICE Y SECURITY
VULNERABILITY ONCE AGAIN EXPOSED BY MASSIVE DENIAL OF SERVICE ATTACK", or
even the word that is a part of a title or a conversation about cyber
security, cyber attacks and vulnerabilities, but it might not be the one in
big bold flashy fonts, like it was the case for our dearest friend
ransomware. But it all comes back to the botnets eventually. So what is a
botnet? As the name suggests, it is a network of bots! Wooow, could I get a
round of applause for that definition, please and thank you very much! When
we think about a robot, we think about a technological humanoid that speaks
in a digitalized voice and obeys commands without question, unless they are
actually trying to take over the planet and overthrow human supremacy...but
that is a topic for another podcast to maybe discuss. The point here is:
what is a computer if not a robot? No, it does not possess humanoid form
most of the time, but it does communicate with us through a digital screen
and it will execute commands that the software it is running tells it to,
this software being created and programmed by a human
being. So...yes...robots are computers, computers are robots, or at
least...fancy humanoid robots and even cute round cleaning robots need
computers to exist and computers are the basis to create a robot. So when
we say botnet, we are actually referring to a network of computers. A
network of computers, or a group of computers, which are all performing
some type of common activity, executing software with the same purpose… and
unfortunately for us, in this case it is a malicious purpose. Botnets are
created through the infection of computing devices. A hacker releases
malware on the Internet and this malware is able to propagate, infecting
various devices connected to our fairest of ladies, usually devices that
are vulnerable to some type of specific vulnerability. So, yes, once again
we have malwares being a problem and ruining our days…surprise,
surprise. Once infected, the device becomes a robot, a "mindless" soldier
in an army of many that will respond to a hacker, most likely the one that
created the malware. It connects back to this hacker, usually sending some
type of short and sweet - bitter sweet for us, that is - message to a
command and control server, which we can see as an HQ, but is actually
nothing more than an attacker controlled device. And then...it waits. It
continuously calls home to indicate that it is a part of the malicious
group of infected devices that are "at the hacker's service", and it
expects to eventually receive a message that will contain instructions
which will give it an attack target and an attack to launch on that
target. The malware that is running on the infected device, our bot, will
contain the code or will receive and process the code that will allow this
attack to be carried out, and then we have a huge amount of possibilities
that we can consider for this attack, one of them being: the bots could be
instructed to send absurd amounts of data through the network to a specific
target. The target device gets overwhelmed and the service it provides
through the network can no longer be accessed by legitimate users because
the device crashes. This is a denial of service attack, which is very hard
to stop at the source, as you have thousands of sources, most of which the
device owners don't even have malicious intent. The devices got hacked and
are secretly and mercilessly being used to the advantage of the
attacker. Granted...the reason for the infection, the presence of the
vulnerability that initially caused this could be the owner's fault. Maybe
they wouldn't have been unwillingly attacking the server of their favorite
website had they applied that patch that recently came out for a critical
vulnerability, however, you can't really call them the mastermind of it all
when all they did was keep a vulnerable computer, can you? Anyway, I might
leave that philosophical question for a later time…for now, another well
known use for botnets is crypto mining. Infect, divide and profit! Why use
your own computer and your own resources to mine crypto currency when you
have hundreds of thousands of unpatched IoT devices at your disposal to
mine for you? That's what the hackers think...not me….just to be veeeery
clear. A botnet can also be used to spread ransomware. The bots worry about
creating other bots as well as infecting devices in their own local
networks that might make a hacker profit from a ransomware attack. And it
all ties in beautifully to create the most amazing of buzzword sentences:
Phishing campaign allows for creation of ransomware botnet!
Oh...wait...there is a buzzword in there we have yet to talk about...

Buzzword #3: phishing! Did you like how I introduced this one by just
name-dropping it previously? Since I gave it such a direct introduction,
let's also give it a direct definition. Phishing is a type of social
engineering attack where an attacker throws what we can only call as the
equivalent to "bait" into the Internet “ocean” in hopes of hooking some
"fish", in their fishing rods. So...the "fish" are like the victims of the
attack, if that wasn't clear enough for you... Our situation therefore, is
kind of like real fishing, but in a different context, because here we are
looking at people getting fooled into clicking on links that will cause
them to access malicious websites, and then share sensitive information
like passwords and credit card numbers through that website, all because
they get fooled into doing it by a very clever attacker which is using of
their social engineering skills achieve this. They could also simply get
fooled into responding directly to a well crafted message with sensitive
information they wouldn't even share with their own diaries! Or maybe just
with their diaries, but not other people. The question which remains is:
what is social engineering? To put it simply, a social engineer is someone
that knows how to "hack" the human psyche. To put it not so simply, it is
the art - can I call it that? - of manipulating other people into doing
something they might not want to have done in the first place. So, every
spy movie when you see the almighty main character get into a building they
shouldn't by fooling the guard and making them believe they actually work
there because they are wearing a fancy suit and spilling out complex terms
to a phone...well that is social engineering. The super spy plays the part
and gives no time for the guard to think too much about whether they are
actually a legitimate authorized person or not, because when the guard
starts questioning it, they emphatically say something in the lines of "Oh
my god...I am going to be late to my meeting and you do not want
Mr. Whatever to hear about this'. Mr. Whatever is an actual big boss around
the place and Mr. Guard worries he will get fired if he doesn't comply
immediately, so just this time, he skips the ID checking phase of the
process to let super spy waltz into the building unscathed. His fear of
getting fired was used against him in order to make him do something he
wouldn't do were he thinking clearly, not affected by emotion: skip a part
of the identification process of a person wanting to access the
building. When we talk about spy movies of course we have a much more
interesting example than when we are talking about actual phishing
campaigns, but the underlying idea is the same in both. The difference is,
in phishing attacks, a hacker will usually send an e-mail or a text message
to a bunch of random people with a message that will toy with their
emotions somehow. They focus on quantity instead of quality because
eventually someone is bound to be freaked out by the email they get saying
that their bank account will be closed if they don't immediately click the
link in the message and change their password using the form provided. They
click the link without paying attention to the website URL, which is not at
all related to the one of their bank’s actual website, and are redirected
to a webpage which looks exactly like the password changing page you would
get had you accessed this legitimate bank website. They input their data,
which is quickly sent to the attacker, because they are the actual entity
controlling the device behind said website, and now, this attacker has the
password to this person's bank account. Fishing rod: fake email sent to
thousands of people saying the bank will close accounts that don't change
their passwords. Bait: the human feeling of desperation one might get when
thinking about having their bank account suddenly be inaccessible, caused
by the wording and official looking appearance of the email message that
was sent. Fish who bite on that bait: people who believe this message and
don't pay too much attention to the signs that indicate that it is
fake. Most times, people who are not that tech savvy and don't even know
how it is possible that a fake website could have the same appearance as
the one from the actual bank. If it looks like the bank webpage, it can
only be the bank webpage…right? So...yes, I am unfortunately talking about
all of the grandmas out there, which end up being a very common victim of
these types of attacks. But do not get me wrong. I am not saying here that
if you are not a grandma that you are unaffected by phishing
attacks. Social engineering techniques go way beyond fear or desperation,
and anyone can be a target should a hacker strike the correct emotions on
this target. Remember a certain Nigerian prince who was asking for a small
sum of money only to return 10 times this amount to you as soon as their
investment worked? Greed can also be your downfall. So the main tip for
those that are worried about falling for phishing scams is simple: if
something looks like it is too good to be true, it probably is. Also...if
something seems too crazy to be true, maybe ask trustworthy people related
to the craziness in question if that message you are receiving is indeed
legitimate. So...for our bank situation, call your bank manager! Have more
than one information source and breathe before making any harsh decisions
and clicking the link that will ask you for your credentials or for any
kind of sensitive information for absolutely no reason! I mean…why do you
need my credit card number if I am not actually buying anything? Think
before you type! That is the best way to not be that sad struggling fish at
the mercy of some hook.

Well friends, sadly, we have reached that point of the episode which will
actually transform this into a series instead of leaving it as a single
episode, since I am unable to write a small script. Oops, sorry about that!
We will continue on this journey next week, where I will talk about some
other interesting buzzwords you might have heard when out and about. No
spoilers though, as it might ruin the fun of it! I await you all in the
next episode of this series. For now, feel free to share any of your
thoughts on this episode in any of our social media channels! I bid you all
farewell and until next time! Bye!


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)