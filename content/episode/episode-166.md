+++
title = "Episode 166"
description = """
  From the deep-web to encryption we decode more cybersecurity buzzwords,
  plus we cover security updates for Squid, Vim, the Linux kernel, curl and
  more.
  """
date = 2022-07-02T13:43:00+10:00
lastmod = 2022-07-02T13:46:16+10:00
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E166.mp3"
podcast_duration = 1912
podcast_bytes = 19680947
permalink = "https://ubuntusecuritypodcast.org/episode-166/"
guid = "7fc48246b9f49d2ef034ba9347a3956a125b773b9173f5766823bd1e3ec7b5ad88bbc35c050c294e5fd2140ca64a0425926a9b911da7a21cf4baf783f37f88e4"
+++

## Overview {#overview}

From the deep-web to encryption we decode more cybersecurity buzzwords,
plus we cover security updates for Squid, Vim, the Linux kernel, curl and
more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

16 unique CVEs addressed


### [[USN-5491-1](https://ubuntu.com/security/notices/USN-5491-1)] Squid vulnerability [00:29] {#usn-5491-1-squid-vulnerability-00-29}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2021-46784](https://ubuntu.com/security/CVE-2021-46784) <!-- medium -->
-   Possible DoS when handling Gopher protocol (early alternative to HTTP)


### [[USN-5487-2](https://ubuntu.com/security/notices/USN-5487-2), [USN-5487-3](https://ubuntu.com/security/notices/USN-5487-3)] Apache HTTP Server regression [01:09] {#usn-5487-2-usn-5487-3-apache-http-server-regression-01-09}

-   7 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2022-31813](https://ubuntu.com/security/CVE-2022-31813) <!-- medium -->
    -   [CVE-2022-30556](https://ubuntu.com/security/CVE-2022-30556) <!-- medium -->
    -   [CVE-2022-30522](https://ubuntu.com/security/CVE-2022-30522) <!-- medium -->
    -   [CVE-2022-29404](https://ubuntu.com/security/CVE-2022-29404) <!-- medium -->
    -   [CVE-2022-28615](https://ubuntu.com/security/CVE-2022-28615) <!-- medium -->
    -   [CVE-2022-28614](https://ubuntu.com/security/CVE-2022-28614) <!-- low -->
    -   [CVE-2022-26377](https://ubuntu.com/security/CVE-2022-26377) <!-- medium -->
-   [Episode 165](https://ubuntusecuritypodcast.org/episode-165/)


### [[USN-5492-1](https://ubuntu.com/security/notices/USN-5492-1)] Vim vulnerability [01:25] {#usn-5492-1-vim-vulnerability-01-25}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-2042](https://ubuntu.com/security/CVE-2022-2042) <!-- medium -->
-   UAF which could be triggered when opening and then searching through a
    crafted file -&gt; crash -&gt; DoS / RCE


### [[USN-5493-1](https://ubuntu.com/security/notices/USN-5493-1)] Linux kernel vulnerability [01:54] {#usn-5493-1-linux-kernel-vulnerability-01-54}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-28388](https://ubuntu.com/security/CVE-2022-28388) <!-- medium -->
-   GA kernels (5.13 for 21.10, 5.4 for 20.04 LTS, 4.15 for 18.04 LTS and 4.15 HWE for 16.04 ESM)
-   8 Devices USB2CAN driver - double-free in error scenario - local attacker
    could use a crafted device to trigger -&gt; DoS


### [[USN-5494-1](https://ubuntu.com/security/notices/USN-5494-1)] SpiderMonkey JavaScript Library vulnerabilities [02:47] {#usn-5494-1-spidermonkey-javascript-library-vulnerabilities-02-47}

-   2 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-31740](https://ubuntu.com/security/CVE-2022-31740) <!-- medium -->
    -   [CVE-2022-28285](https://ubuntu.com/security/CVE-2022-28285) <!-- medium -->
-   aka libmozjs-91 - 91.10
-   Jeremy Bicha from Ubuntu Desktop team
-   Not easy to identify security issues in mozjs - Jeremy had to search
    through the list of commits in mozjs and search for bug numbers in
    upsteam mozilla bug tracker which were then referenced by the various
    Mozilla security advisories
-   also incidentally fixes a FTBFS with vendored ICU (test failure during
    build)


### [[USN-5495-1](https://ubuntu.com/security/notices/USN-5495-1)] curl vulnerabilities [04:19] {#usn-5495-1-curl-vulnerabilities-04-19}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10), Jammy (22.04 LTS)
    -   [CVE-2022-32208](https://ubuntu.com/security/CVE-2022-32208) <!-- medium -->
    -   [CVE-2022-32207](https://ubuntu.com/security/CVE-2022-32207) <!-- medium -->
    -   [CVE-2022-32206](https://ubuntu.com/security/CVE-2022-32206) <!-- medium -->
    -   [CVE-2022-32205](https://ubuntu.com/security/CVE-2022-32205) <!-- medium -->
-   All 4 issues identified by Harry Sintonen
    -   Mishandling of Set-Cookies header - crash -&gt; DoS
    -   mishandling of chained HTTP compression algorithms - a server which
        compressed a response with a huge number of repeated steps could result
        in a malloc bomb during decompression -&gt; OOM -&gt; DoS
    -   Failed to properly set permissions when downloading cookies or other
        files so they could possibly by read by other users - can mitigate by
        making sure you use a strict umask locally (but that can have other
        unintended consequences for other applications)
    -   FTP xfer secured by krb5 - fails to properly verify messages - could
        then have a MiTM inject data etc


## Decoding cybersecurity buzzwords (part 2) [06:07] {#decoding-cybersecurity-buzzwords--part-2--06-07}

-   From encryption to the deep/dark web Camila continues the journey into
    demystifying some more of the most popular buzzwords in cybersecurity


### Transcript {#transcript}

Hello listener! Welcome to part 2 of our cyber security buzzword series!
Last episode we talked about ransomwares, botnets and phishing attacks!
Let's keep the bees happy and continue on in this buzzing journey of better
understanding what is the meaning behind the word and turning the
"bzzzzzzzzzz" into an "aaaaah, I see" instead! 039 If you haven't listened
to the last episode I highly recommend you do it before you proceed with
this one, but hey, that is your choice. I don't want to take too long with
this introduction, so, for those who are already in for this ride, without
further ado, let's jump in! Our first word of today and the fourth
overall...we've talked about it before, and we are talking about it now
once again… buzzword #4 is the one and only firewall! If you listened to
the episodes involving the Ubuntu hardening topic, you already know that
our dearest friend firewall is one way to keep your network safe because it
allows you to filter and possibly block incoming and outgoing traffic in
your network. Through use of a firewall you can define that users in your
network can't access a specific website, or you can keep connections coming
from a specific IP address from ever being established with these same
users. It's an important job the one done by a firewall, however, it is not
100% hacker proof. A firewall does what it needs to do well, but it won't
save you from yourself, for example, if you decide to become the victim of
every phishing campaign happening out there. So...do you see that buzzword
right there: "phishing"? That is why I recommended you listen to the last
episode, because I explain what is phishing THERE. Moving on, if e-mail
service is allowed by the firewall, a hacker can try to get to the network
through it, and in that case, my friend, you are the weakest link, as said
hacker is expecting you to make the mistake that will allow them passage
when the firewall will not do so through other ports or services in the
network. Don't expect a wall to protect your network if your staff is
handing out keys to the building's backdoor to anyone that mentions that
they work there!!! I am adding firewalls here on this list because ever
since the dawn of time...or at least the dawn of my time...I see the word
firewall being thrown around in television shows, in presentations that
want to nudge cyber security a little bit, and even on the thoughts of
people who are wondering "How did I get infected with malware, I have a
firewall!!!". So...yeah. Unfortunately the buzzword became a universal term
used to describe all software and defensive techniques, even if they are
not all the same. To make an analogy, a firewall is one fruit amongst the
huge selection of different fruits that exist in this beautiful world, but
people insist on calling all fruits 'firewalls'. I am sure you can imagine
a situation where I give you a lime and call it an apple, and I am sure
that in your imagination you are not too pleased about the result once you
bite into that fruit expecting one thing and instead getting another. You
might feel a little 'sour' should I decide to do such a thing. Haha, get
it? Bad jokes aside, it's important to understand what a firewall really is
and what it can actually do for you in terms of protecting your
network. Not all attacks are the same, so not all attacks will be stopped
by a firewall. If you go beyond the buzzword and beyond the beautiful wall
and fire icon - which at this point could be called a buzzicon - you start
to actually build a defense strategy that makes sense and is efficient for
your network, one that will include a firewall, BUT will not expect it to
defend the network, cook and wash your clothes all at the same
time. Therefore, the next time your hear someone in a show mentioning that
they have breached 50% of the firewall, remember your training, remember
what a firewall actually is, and remember that if you are able to bypass
the firewall, you either did it 100% or you simply didn't, and then relax
and laugh a little, because you used your knowledge to actually build a
defense strategy that even if an attacker bypasses the firewall by 100%,
you are able to prevent an attack from actually being successful with the
help of your other layers of defense. You fought valiantly firewall friend,
but not all threats are avoidable by you, and we know that now. We also
know now that movie security in movie networks are probably awful, because
they seem to only use a firewall to defend very important data, and the
firewall is most likely broken, being only 50% bypassed and all…geez, get a
grip, hollywood, or hacking might become TOO easy for those imaginary
hackers.

Buzzword #5: encryption...encrypting...encrypted...encrypt. This buzzword
is also one that I think can be considered a long-living buzzword. Data
encryption suffers from the same problem as firewalls in the sense that
people see it as a solution to all of their problems. Oh…and movies also
like to use the word a lot. "If my data is encrypted it is completely
safe". Right? Wrong. What is encryption then, and what purpose does it
serve? When you encrypt your data, you are actually just encoding
it. Transforming it in such a way that whatever information is actually
imbued within it cannot be extracted because the data no longer represents
something that can be understood by a potential snooper of that data. One
encrypted character a day keeps the snooper away, or at least that is the
goal anyway. The main purpose of encryption is to maintain data
confidentiality, or, in other words, to prevent an unauthorized party from
getting access to the data that is going to be encrypted. Therefore,
encryption is a technique that will serve the purpose of encoding data in
such a way that it loses its meaning to whoever is not authorized to know
it. Who are the ones authorized? Those that have the decryption key...and
if that key is stolen or shared with someone it shouldn't be...well then
you can say goodbye to your expected confidentiality, as this new someone
can now decode the data and interpret it as you would. I guess what annoys
me a little bit about this buzzword is the fact that it is used to make
people feel completely safe even when the situation does not necessarily
guarantee this. The most simple example I can think of is VPNs. I see
advertisements for those all the time, and in these advertisements people
mention how VPNs will help you stay safe from hackers when you are browsing
online...and that is not completely true. It depends on what the hacker is
doing. If a hacker is trying to track you and figure out what you are doing
in the internet, that is, they are trying to snoop on your browsing
activities, then yes, a VPN, which will help you mask your tracks by adding
a layer of encryption to your traffic and acting as a middle man in your
communication with your destination, will indeed protect you. Think of it
as sending an encrypted letter to an intermediary courier. Only you and the
courier know the decryption key and so anyone that tries to intercept the
letter and does not have this key will be unable to do anything about
it. They don't know who is the actual destination of the letter nor do they
know what is the purpose of the letter, all they know is that the courier
will receive it and send it to the actual destination.  Encryption keeps
your communication confidential. Once it gets to the courier, the courier
decrypts it and then sends it to the actual destination and your snooper
can't know it is from you because the courier is also sending and receiving
data from a bunch of people, and that courier has promised secrecy to you,
meaning, it promised it won't tell others which is your letter. Anyway, now
think about the situation where you willingly decide to access a malicious
website through a VPN. There is no encryption that will save you from your
bad choices here. An encrypted conversation with an attacker is still a
conversation with an attacker, and an encrypted malware sent to you through
your VPN tunnel will still execute in your machine should you tell it
to. So once again I tell you, use encryption but know its purpose! It is
not because a website is HTTPS, or, in other words, it is not because a
website has that little lock in the top left corner, that you are protected
from all evil lurking on the internet. All it means is that data you send
to that website's server will be sent to it encrypted. This in turn means
that your login credentials won't be out in the open, being sent in clear
text through the network, free to be accessed by anyone that chooses to
sniff the data in any point of the path from source to destination. They
will be encrypted, and whoever comes across this data in transit won't be
able to know the true contents unless they have the decryption key, which
is shared between you and the server only. However, you can decide to send
encrypted credentials to an attacker as well. Malicious websites can be
HTTPS. In fact, attackers take advantage of the fact that people blindly
trust HTTPS websites because they are "encrypted" and make fake HTTPS bank
pages in order to steal credentials. Phishing attacks, remember those? So
here we have a situation where the buzz in the word is being harmful for
those that don't actually try to understand the meaning behind it. When you
want to make sure a website is safe, not only check for the tiny lock in
the top-left corner of the browser, also do check if the website's
certificate actually identifies that page as being authentic, as being
owned and provided by the entity that you believe it to be. So...yeah. I
guess final thoughts on this once again are: encryption is fine when you
don't forget to combine….it with other security measures. I wanted to make
a cool rhyme, but that didn't work out. Oh well...onto the next buzzword!

Buzzword #6: the deep web. Ooooh, spooky! Once again we are in "buzzword
because of the movies" territory. Hacker, firewall, encrypted data, network
breach, deep web. Oh, and a guy wearing a black hoodie. The cliché buzzword
we see getting thrown around every time someone wants to talk about cyber
security and sound mysterious while doing it. I mean...I can't really blame
them, as it is human nature to enjoy mysteries and to want to solve
them. So, I guess if you are in the entertainment industry, throwing out
the word "deep web" around is indeed one of the ways to go. However, if you
are an IT professional, blindly trusting that what you see in movies is how
things actually work is definitely not. Does the deep web contain
mysterious websites and crazy mind bending information? Yes. Is it a
blackhole where only the most courageous may enter and the most bizarre may
stay? No. No! A bunch of the websites you have in the surface web also
exist in the deep web! If you want, you can do your regular browsing but
using the roads - let's call them that for now - of the deep web
instead. All you have to do is download the software tool that will allow
you to access it. The most well known tool to do so is the Tor browser,
which will give you access to the Tor network, where lot's of deep web
websites are hosted. So let's talk a little bit about the Tor network and
try to understand what is the oh-so-mysterious deep web and why you can't
access it by simply typing "Take me to the deep web" on a search engine in
your regular browser. Think about the Internet as being the entire
planet. Earth as you know it. Everyone and everything we know and can
access is inside the planet...and for the smarty pants that will try to say
"but what about space travel???", don't be a downer and destroy my
analogy. Use your imagination and PRETEND like all we know is inside the
planet only, which is the ONLY thing we have access to. The planet is like
the entire Internet. Now imagine all of the roads on the planet. You can
drive through them and go anywhere you want, the same way your data can
flow through the Internet and reach several destinations which will provide
you with services such as web browsing and e-mail sending. Consider now,
however, that a group of servers, or, to stick to the analogy, a group of
destinations for road trips, decide to bundle together and create their own
underground secret routes and make themselves and their services accessible
only to travelers which use those secret routes. The regular roads that
would lead you to them are destroyed and there are now a few single regular
roads that lead to the entry-points of the underground tunnels. Anyone can
enter the underground tunnels if they wish to and use the tunnels to reach
those "secret" destinations, as can anyone download a Tor browser and find
websites which are deb web or even darknet services. However, if you want
to reach your destination you must use the tunnel, and you can no longer
use maps to reach this destination, since in the underground tunnels they
provide you with no maps as they do in the surface roads. No maps so that
the destinations remain well hidden within this secret underground road
network, and so that they can "change their location" or "stop existing"
whenever they wish to do so. No records means no tracking. When entering
the underground tunnels you set up three intermediate tunnel only
destinations that will help you reach your desired end point, let’s
consider those toll booths. The first one is where you will always stop at
the beginning of your journey, the second one will connect you to the last
one, which in turn will be the one that will finally tell you which road to
follow to access the destination which will provide you with the service
you wish to access. Think now that these intermediate points recognize you
by your car color. A very specific color you and each toll booth attendant
have previously decided on, the moment you knew they would be your
intermediate stops. So the first point recognizes a red car, the second a
blue car, and the last a green car. I am using simple colors here, but to
amuse your own imagination, you can think of it as a very specific shade of
red that cannot be replicated by anyone else, meaning it will identify you
uniquely to that specific toll booth. Same goes to the blue and to the
green. Before passing through your underground toll booths you paint your
car green, then blue and then red. When you get to the first mark, the toll
booth guard recognizes the red hue of your car and identifies you as a
valid passenger. It removes the red hue and you tell it your next toll
booth stop. It forwards you in that direction, meaning it shows you the way
to the blue toll booth. You go to the blue tollbooth and the same thing
happens. It recognizes the blue hue, removes it and sees that you are going
to the green toll booth, and it directs you there. Finally, when you reach
green they do the same, but they finally send you to your final
destination. Notice that this allows you to stay anonymous because you got
in in a red car and got to your destination in a green colored car. The red
toll booth does not know your final tollbooth was green, knowing only you
went to blue, and the green does not know your starting point was red,
knowing only you came from blue. Blue does not know your starting point nor
you final destination, knowing only that you came from red and left for
green. Going back to that final destination: your final destination can be
outside of the underground tunnels and back on the main roads. You used the
underground tunnels just so that people who see you get in through the
tunnels in a red car don't follow you and don't know where you got
out. Your final destination, however, can also be inside the tunnel
network. If that is the case, you will never go to the actual destination,
because underground tunnel services establish an intermediate rendezvous
point for communication and service offering instead of letting you reach
them at their actual location. Knowing the secret name of the service, you
are able to obtain information on what places are set as these rendezvous
points. So...leaving the analogy for a little bit...this is basically what
the Tor network is and what at least part of the deep web is. The Tor
network is an established network inside the internet. The secret
underground roads inside of the planet's entire road network. It still uses
roads, meaning, it still uses IP addresses and establishes communication
between devices using regular means in layers under the application layer
itself. However, it defines a private communication method within the
public internet. Anyone can download a Tor browser and access Tor websites,
which would be part of the deep web websites, however, to do so, you need
to know the website's address in the format that will be recognized in the
Tor network. Unlike the surface web where you register the mapping of your
website name and the IP address of the server that will host that website
in order for people to be able to find it without having to memorize a
complex number to do so - thank you DNS -, in the Tor network what you will
know is the name of the onion service and the location where this service
meets clients wishing to access it. Tor nodes, our toll booths, can then
route you to this destination, where you can introduce yourself to the
server and then set a rendezvous point which is where the rest of the
communication between you will actually happen. In the Tor network, it is
not as simple as the definition of an explicit mapping that says "oh, you
want to get to this place? Here is the address!". Nope. Here, everything is
done covertly and secretly. You have a meeting place to define the
definitive meeting place. So maybe it is a little bit mysterious after
all. I'll give the movies that. Of course you can use the Tor network, our
secret underground tunnels, to access a regular surface web website if you
want to. It is not necessary, but a lot of people do it because it allows
for anonymous browsing. Our underground tunnels won't allow for
identification of who sent a message that is reaching a specific
destination, remember the whole car painting process and the colorful toll
booths? Well, in technical terms, Tor uses layers of encryption and
intermediate proxy nodes in order to stop someone snooping from knowing who
is the original sender of a message arriving at a certain
destination. ENCRYPTION being used to assist in keeping anonymity and to
maintain confidentiality of the data that is being transferred by whoever
is using the Tor network. So yeah...kind of a long explanation, but
demystifying it, this is what the deep web is: encryption, intermediary
nodes, regular websites, creepy websites, and lots of bureaucracy to get
you to your final destination. Oh, wait...that's just part of it, since Tor
is only one of the many underground tunnel networks that exists out
there. There are others with different rules, different entry regulations
and different functionalities and purposes in general. I decided to tell
you about how the most famous one of these secret networks within the
network works so that you can get the genral iceberg idea of it. However,
lady Internet is a vast place, filled with opportunity to create and embed,
so secret networks which can not have their services accessed through the
regular WWW URL are plenty out there, all you need is the will and the
knowledge of the way to explore it! Oh, and the permission as well. I am
not condoning you committing a crime here.

Anyway, I think that is enough of me talking for one episode. Tune in for
next time where we will talk about our last three buzzwords for this
series, which I might add, are three giants...all of them suggested by my
Ubuntu Security Team peers of course! Feel free to share your thoughts on
today's episode and buzzwords in any of our social media channels, I would
love to hear what you have to say about it! For now, I bid you all farewell
and until next time! Bye!


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)