+++
title = "Episode 185"
description = """
  For our final episode of 2022, Camila is back with a special holiday themed
  discussion of the security of open source code, plus we hint at what is in store
  for the podcast for 2023 and we cover some recent security updates including
  Python, PostgreSQL, Squid and more.
  """
date = 2022-12-16T17:11:00+10:30
lastmod = 2022-12-16T17:12:32+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E185.mp3"
podcast_duration = 2195
podcast_bytes = 35827699
permalink = "https://ubuntusecuritypodcast.org/episode-185/"
guid = "edb2dcc56189b5109538e85a76fe7405494a885239076bb73aaae4c73362adb86fc7c4028a4a76508e7e82c7a4abbab89e6ba01764b5b7de79b2d4e9a6995e12"
+++

## Overview {#overview}

For our final episode of 2022, Camila is back with a special holiday themed
discussion of the security of open source code, plus we hint at what is in store
for the podcast for 2023 and we cover some recent security updates including
Python, PostgreSQL, Squid and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

54 unique CVEs addressed


### [[USN-5765-1](https://ubuntu.com/security/notices/USN-5765-1)] PostgreSQL vulnerability [00:55] {#usn-5765-1-postgresql-vulnerability-00-55}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-23222](https://ubuntu.com/security/CVE-2021-23222) <!-- medium -->
-   [[USN-5145-1] PostgreSQL vulnerabilities in Episode 138]({{< relref "episode-138#usn-5145-1-postgresql-vulnerabilities-06-08" >}})
-   Akin to STARTTLS vulns - could inject cleartext before a secure connection has
    been established


### [[USN-5766-1](https://ubuntu.com/security/notices/USN-5766-1)] Heimdal vulnerability [01:38] {#usn-5766-1-heimdal-vulnerability-01-38}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-41916](https://ubuntu.com/security/CVE-2022-41916) <!-- medium -->
-   Buffer over-read of 1 byte with crafted certificate - crash


### [[USN-5768-1](https://ubuntu.com/security/notices/USN-5768-1)] GNU C Library vulnerabilities [01:47] {#usn-5768-1-gnu-c-library-vulnerabilities-01-47}

-   4 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2017-12132](https://ubuntu.com/security/CVE-2017-12132) <!-- low -->
    -   [CVE-2020-27618](https://ubuntu.com/security/CVE-2020-27618) <!-- low -->
    -   [CVE-2019-25013](https://ubuntu.com/security/CVE-2019-25013) <!-- low -->
    -   [CVE-2016-10228](https://ubuntu.com/security/CVE-2016-10228) <!-- negligible -->
-   Various possible crasher bugs in low-level utils that are not expected to run
    on untrusted input


### [[USN-5767-1](https://ubuntu.com/security/notices/USN-5767-1), [USN-5767-2](https://ubuntu.com/security/notices/USN-5767-2)] Python vulnerabilities [02:24] {#usn-5767-1-usn-5767-2-python-vulnerabilities-02-24}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-45061](https://ubuntu.com/security/CVE-2022-45061) <!-- medium -->
    -   [CVE-2022-37454](https://ubuntu.com/security/CVE-2022-37454) <!-- medium -->
-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-45061](https://ubuntu.com/security/CVE-2022-45061) <!-- medium -->
-   CPU based DoS when parsing IDNA (internationalised domain names in
    applications - ie. unicode / bidirectional in your domain names) - used an
    algorithm that was quadratic [O(n²)] - so if an attacker provided a really
    long domain name that included crafted bidirectional unicode contents to be
    parsed by the client, could cause the client to use lots of CPU resources to
    parse this - this code was used by the socket and asyncio modules - and so
    simply returning a `3xx` redirect header with a crafted Location could trigger
    this bug
-   Possible integer overflow in SHA3 implementation - but python is memory safe -
    true but this code was implemented in C


### [[USN-5769-1](https://ubuntu.com/security/notices/USN-5769-1)] protobuf vulnerabilities [03:56] {#usn-5769-1-protobuf-vulnerabilities-03-56}

-   2 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-1941](https://ubuntu.com/security/CVE-2022-1941) <!-- low -->
    -   [CVE-2015-5237](https://ubuntu.com/security/CVE-2015-5237) <!-- low -->


### [[USN-5770-1](https://ubuntu.com/security/notices/USN-5770-1)] GCC vulnerability {#usn-5770-1-gcc-vulnerability}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2017-11671](https://ubuntu.com/security/CVE-2017-11671) <!-- low -->


### [[USN-5771-1](https://ubuntu.com/security/notices/USN-5771-1)] Squid regression [04:05] {#usn-5771-1-squid-regression-04-05}

-   6 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2018-1000027](https://ubuntu.com/security/CVE-2018-1000027) <!-- low -->
    -   [CVE-2018-1000024](https://ubuntu.com/security/CVE-2018-1000024) <!-- low -->
    -   [CVE-2016-3948](https://ubuntu.com/security/CVE-2016-3948) <!-- low -->
    -   [CVE-2016-2571](https://ubuntu.com/security/CVE-2016-2571) <!-- low -->
    -   [CVE-2016-2570](https://ubuntu.com/security/CVE-2016-2570) <!-- low -->
    -   [CVE-2016-2569](https://ubuntu.com/security/CVE-2016-2569) <!-- low -->
-   Very old update to squid introduced a possible regression - initially thought
    this was just a logging issue but turns out it was a real bug - an off-by-one
    issue would mean squid would sometimes file to find items that were already
    cached - only applies where the HTTP server is using the `Vary` header


### [[USN-5772-1](https://ubuntu.com/security/notices/USN-5772-1)] QEMU vulnerabilities [05:18] {#usn-5772-1-qemu-vulnerabilities-05-18}

-   6 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-3165](https://ubuntu.com/security/CVE-2022-3165) <!-- medium -->
    -   [CVE-2022-2962](https://ubuntu.com/security/CVE-2022-2962) <!-- low -->
    -   [CVE-2022-0216](https://ubuntu.com/security/CVE-2022-0216) <!-- low -->
    -   [CVE-2021-3930](https://ubuntu.com/security/CVE-2021-3930) <!-- low -->
    -   [CVE-2021-3750](https://ubuntu.com/security/CVE-2021-3750) <!-- medium -->
    -   [CVE-2021-3682](https://ubuntu.com/security/CVE-2021-3682) <!-- medium -->
-   Various guest to host issues - allowing a guest to crash QEMU on the host


### [[USN-5754-2](https://ubuntu.com/security/notices/USN-5754-2), [USN-5756-3](https://ubuntu.com/security/notices/USN-5756-3)] Linux kernel (Azure) vulnerabilities [05:39] {#usn-5754-2-usn-5756-3-linux-kernel--azure--vulnerabilities-05-39}

-   8 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Kinetic (22.10)
    -   [CVE-2022-3621](https://ubuntu.com/security/CVE-2022-3621) <!-- low -->
    -   [CVE-2022-3594](https://ubuntu.com/security/CVE-2022-3594) <!-- medium -->
    -   [CVE-2022-3567](https://ubuntu.com/security/CVE-2022-3567) <!-- medium -->
    -   [CVE-2022-3566](https://ubuntu.com/security/CVE-2022-3566) <!-- medium -->
    -   [CVE-2022-3565](https://ubuntu.com/security/CVE-2022-3565) <!-- low -->
    -   [CVE-2022-3564](https://ubuntu.com/security/CVE-2022-3564) <!-- medium -->
    -   [CVE-2022-3524](https://ubuntu.com/security/CVE-2022-3524) <!-- medium -->
    -   [CVE-2022-43945](https://ubuntu.com/security/CVE-2022-43945) <!-- high -->
-   5.19 for 22.10, 5.4 for 20.04 LTS + 18.04 LTS
-   Most interesting is the high priority one we mentioned last week -
    [[USN-5754-1] Linux kernel
    vulnerabilities]({{< relref "episode-184#usn-5754-1-linux-kernel-vulnerabilities-05-50" >}}) - Buffer overflow in NFSD


### [[USN-5773-1](https://ubuntu.com/security/notices/USN-5773-1)] Linux kernel (OEM) vulnerabilities [06:14] {#usn-5773-1-linux-kernel--oem--vulnerabilities-06-14}

-   10 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-3621](https://ubuntu.com/security/CVE-2022-3621) <!-- low -->
    -   [CVE-2022-3594](https://ubuntu.com/security/CVE-2022-3594) <!-- medium -->
    -   [CVE-2022-3567](https://ubuntu.com/security/CVE-2022-3567) <!-- medium -->
    -   [CVE-2022-3566](https://ubuntu.com/security/CVE-2022-3566) <!-- medium -->
    -   [CVE-2022-3564](https://ubuntu.com/security/CVE-2022-3564) <!-- medium -->
    -   [CVE-2022-3524](https://ubuntu.com/security/CVE-2022-3524) <!-- medium -->
    -   [CVE-2022-33743](https://ubuntu.com/security/CVE-2022-33743) <!-- medium -->
    -   [CVE-2022-26365](https://ubuntu.com/security/CVE-2022-26365) <!-- medium -->
    -   [CVE-2022-42703](https://ubuntu.com/security/CVE-2022-42703) <!-- high -->
    -   [CVE-2022-43945](https://ubuntu.com/security/CVE-2022-43945) <!-- high -->
-   5.17
-   Essentially the same as above but also includes the anonymous VMA mapping vuln
    from GPZ discussed in the last 2 episodes


### [[USN-5774-1](https://ubuntu.com/security/notices/USN-5774-1)] Linux kernel (Azure) vulnerabilities [06:59] {#usn-5774-1-linux-kernel--azure--vulnerabilities-06-59}

-   16 CVEs addressed in Trusty ESM (14.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2022-40768](https://ubuntu.com/security/CVE-2022-40768) <!-- medium -->
    -   [CVE-2022-36879](https://ubuntu.com/security/CVE-2022-36879) <!-- medium -->
    -   [CVE-2022-3635](https://ubuntu.com/security/CVE-2022-3635) <!-- medium -->
    -   [CVE-2022-3621](https://ubuntu.com/security/CVE-2022-3621) <!-- low -->
    -   [CVE-2022-3594](https://ubuntu.com/security/CVE-2022-3594) <!-- medium -->
    -   [CVE-2022-3567](https://ubuntu.com/security/CVE-2022-3567) <!-- medium -->
    -   [CVE-2022-3566](https://ubuntu.com/security/CVE-2022-3566) <!-- medium -->
    -   [CVE-2022-3565](https://ubuntu.com/security/CVE-2022-3565) <!-- low -->
    -   [CVE-2022-3564](https://ubuntu.com/security/CVE-2022-3564) <!-- medium -->
    -   [CVE-2022-3524](https://ubuntu.com/security/CVE-2022-3524) <!-- medium -->
    -   [CVE-2022-3239](https://ubuntu.com/security/CVE-2022-3239) <!-- medium -->
    -   [CVE-2022-3028](https://ubuntu.com/security/CVE-2022-3028) <!-- medium -->
    -   [CVE-2022-2978](https://ubuntu.com/security/CVE-2022-2978) <!-- medium -->
    -   [CVE-2022-2153](https://ubuntu.com/security/CVE-2022-2153) <!-- medium -->
    -   [CVE-2022-20422](https://ubuntu.com/security/CVE-2022-20422) <!-- medium -->
    -   [CVE-2022-42703](https://ubuntu.com/security/CVE-2022-42703) <!-- high -->
-   4.15


### [[USN-5775-1](https://ubuntu.com/security/notices/USN-5775-1)] Vim vulnerabilities [07:18] {#usn-5775-1-vim-vulnerabilities-07-18}

-   6 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-3591](https://ubuntu.com/security/CVE-2022-3591) <!-- low -->
    -   [CVE-2022-3324](https://ubuntu.com/security/CVE-2022-3324) <!-- medium -->
    -   [CVE-2022-3256](https://ubuntu.com/security/CVE-2022-3256) <!-- medium -->
    -   [CVE-2022-3099](https://ubuntu.com/security/CVE-2022-3099) <!-- medium -->
    -   [CVE-2022-2581](https://ubuntu.com/security/CVE-2022-2581) <!-- low -->
    -   [CVE-2022-2345](https://ubuntu.com/security/CVE-2022-2345) <!-- medium -->
-   Moar vim CVEs - none of these are high impact - all reported via their bug
    bounty program, found via fuzzing


### [[USN-5776-1](https://ubuntu.com/security/notices/USN-5776-1)] containerd vulnerabilities [08:07] {#usn-5776-1-containerd-vulnerabilities-08-07}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-24778](https://ubuntu.com/security/CVE-2022-24778) <!-- medium -->
    -   [CVE-2022-24769](https://ubuntu.com/security/CVE-2022-24769) <!-- medium -->
    -   [CVE-2022-31030](https://ubuntu.com/security/CVE-2022-31030) <!-- medium -->
    -   [CVE-2022-23471](https://ubuntu.com/security/CVE-2022-23471) <!-- medium -->


### [[USN-5777-1](https://ubuntu.com/security/notices/USN-5777-1)] Pillow vulnerabilities {#usn-5777-1-pillow-vulnerabilities}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-45198](https://ubuntu.com/security/CVE-2022-45198) <!-- low -->
    -   [CVE-2022-24303](https://ubuntu.com/security/CVE-2022-24303) <!-- low -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Camila discusses the security of open source vs proprietary code [08:38] {#camila-discusses-the-security-of-open-source-vs-proprietary-code-08-38}


#### Transcript {#transcript}

Hello listener! It has been a while since I last showed up here to share with
you some of my thoughts and spread the knowledge, and today I am back in order
to try to fix that, remove the void I have left in the hearts of those that
enjoy listening to me rambling about a certain cyber security topic. That being
said, I recorded my first podcast segment during the holiday season last year,
and I thought it would be very poetic to return at the same time this year to
record once again. Especially after I was struck with inspiration after spending
a little time with my family. Nothing more fitting for this once again holiday
episode, considering it is the time of the year - the most wonderful one - when
we usually enjoy mingling and celebrating with family and friends. The time of
the year where we meet in order to eat some good food, spend some quality time
together, catch up on life, share the joy... and answer the always asked
question by someone who knows you work with computers: "Do you think it's a
virus?". "Yes, uncle, it probably is, since the link you clicked on that said
'Free 1000 dollar Christmas vouchers for the first 10 clicks' is most likely a
scam. But hey, I gotta go now, because it is time for some delicious holiday
season desserts! Your computer can survive a few more hours doing some
cryptomining for some random hacker, so I'll check on that later for you".
Anyway, surprising as it may be, this actually was not the topic of conversation
that brought me here today, although I fully expect the previously mentioned
question to come my way whenever I do meet my family for the end of the year
festivities of 2022. Instead, I was asked a question that would probably have my
holiday treats wait for me a little bit longer, since it is one I find
compelling to answer, and one that I thought would be actually interesting to
share the answer to, so that you can take it to your holiday meetings as a hot
topic of conversation...you know...show off a little bit to the ones you love.

So...to elaborate a little bit more on my story and on this so far mysterious
question...while sipping on some delicious cocoa surrounded by some fairy lights
and the cold air - even though it is summer during the end of the year where I
live...I see you, southern hemisphere. I was traveling when this happened - my
dearest not-in-the-IT-field family member asked me the following question while
we had a conversation about my job: "how is it possible to have security in a
software when the code for that software is available for all to see on the
Internet?". Running a prettify function on this question, we can word it as:
"how can open source software be secure if the code is public?". And that,
family and friends, is the question that we wish to answer today. I already
answered my family member, but now, I want to do it the fancy way, the holiday
spirit way! So gather around with your drinks and delicious appetizers, and
before we head for dinner, and of course, dessert, let's think about the year we
leave behind, the code that was a part of it, and why, in the year of 2022, can
this code be secure when everyone knows exactly what it is.

Let's begin this beautiful holiday sharing moment by actually talking about what
is open source software and what is NOT open source software, as well as why one
would think that the former is less secure than the latter. To keep it simple:
open source software is the kind of software where the source code, a.k.a. the
instructions that will be transformed into the computer program that you will
later use, is publicly available for all to see. Those that wish to do so can
inspect this software's code to know exactly how it does what it does. They can
use it freely if following its license terms, and they can even modify it, maybe
change its functionalities, be it through creation of a copy of that code that
branches from the original version, or be it with authorization from the
creator/maintainer of the software to edit the original version wherever it is
being maintained. A beautiful example to bring this all together in your mind:
almost all software packages in Ubuntu are open source. The programs you run in
your Ubuntu OS come from code that is publicly available for all to access
through the loveliest Internet. For many packages, it is possible to choose one
from main or universe, for example, and find its code in a repository after a
quick web search. Even quicker: you can download the source code related to the
executables and libraries apt installs in your Ubuntu OS when you run 'apt-get
install &lt;insert-package-name-here&gt;' by running 'apt-get source
&lt;insert-package-name-here&gt;' instead. Please remember to replace
&lt;insert-package-name-here&gt; with the actual package name if you're gonna try to
do this. Anyway, this package you download with apt may have its code differ a
little bit from the original code for that software package, the one maintained
by its creator or any successors, also known as the upstream code, and that may
happen for various reasons, which I will not go too much further into here,
however, to put it directly: this code associated with the package will most
likely have its regular upstream maintainers, with a lot of them also accepting
contributions from people that might use this software, care about its wellbeing
or even...its security, and the source code in an Ubuntu package will be nothing
more than a copy of an upstream version that is being contributed to by the
Ubuntu teams and the Ubuntu community. Very much in the holiday spirit, one of
the ideas of open source is to have people collaborate on software, as well as
have software be shared with those that wish to use it, sometimes with changes.

Moving on...on the other side of our coin, we have non-open source software,
also known as closed source software, which is software for which the source
code is not publicly available for all to inspect, use or modify. Closed source
software has its source code protected, with only an authorized group of
people - who are usually a part of the organization that developed said software
or that is currently maintaining it after taking responsibility for it at a
certain point in time - having access to this source code, be it to change the
source code or to simply look at it and know what it is. Closed software is
usually not free to use and users that wish to have access to the software and
its functionalities will only be able to obtain a final executable version of
it, where it is very difficult to acquire information on the source...unless you
are very determined, but more on that later. For now, know that closed source
software will allow you to execute it, but you can't know what you are executing
unless you do some very intense digging. As for an example...let's put it this
way, so that you can fill in the blanks: if Ubuntu is a door and the doors are
open, then that must mean that the Windows are ... . And there you have your
answer. I mean...it is the holiday season and we would rather have our guests
come in to celebrate through the door instead of any other way. And I say this
because I want you to understand that there is no right or wrong when it comes
to open source and closed source, there are only preferences and needs. There
are situations where one will be more useful than the other, or where one might
be preferred over the other. Who am I to judge if you let people into your house
through your window, or your chimney? What actually matters to us here is: why
is closed source usually considered something more secure "intuitively" when
open source can be just as, or arguably, even more secure? So, let's try to
answer that question, shall we?  When you think about wanting to protect
something, you think about keeping it hidden, keeping it a secret. Wait...this
is not nearly festive enough for a holiday episode. Let's try again. When you
don't want someone to guess what is going to be the surprise holiday dessert you
are serving by the end of dinner, you usually won't tell them anything about
it. You will hide the recipe, cook your dessert following that recipe, but only
allow your guests to know what it is and eat it once the time is just
right. After all, the holidays are all about each family's tradition, and I know
dessert eating schedules are definitely a part of it for many. Anyway, the point
here is...if no one knows what the dessert is and they don't have access to your
house while you cook it, bake it, prepare it in general, they cannot copy this
recipe to bring their own version of your dessert to your holiday celebration -
or any other holiday celebration, for that matter - and they can only speculate
on the ingredients once they eat it. And...since you kept your ingredients and
your cooking utensils far away from messy hands while you prepared your dessert,
no one can tamper with it, maybe steal a little bite before it is actually
complete, or even add a missing ingredient without authorization. You keep your
dessert "safe" by actually hiding it, allowing people access only when the final
product is complete. As much as I love holiday season analogies, let's put our
cyber security glasses back on and see this situation from the closed source
point of view: your recipe is your source code; you preparing the dessert is you
editing, building and compiling the code to create an executable program; and
this executable program is actually your final holiday dessert.

You're not sharing your source code, meaning people cannot tamper with it,
cannot create a bad copy of it and cannot inspect it in order to figure out
possible failures or ways to exploit it. Yes, even I have fallen victim to the
"too much sugar" mistake when baking stuff, but sometimes we can try to mask
mistakes with other ingredients and no one will ever know...This can also be
called security through obscurity, when you rely on secrecy and confidentiality
in order to avoid the exposure of weaknesses and the direct targeting that may
befall your software. How can a hacker actually exploit my code if they don't
know what the code is? That is the idea behind security through obscurity. I
will not get into the details of whether security through obscurity is an
effective practice or not, because that is a very intense and polarizing
subject, and it is the holiday season...let's leave the heated discussions for
some other time. I will say, however, that it directly clashes with the open
source premise, and it is one of the reasons that may be behind the choice of
making software closed source. However, even though this might be a way to
protect your software from exploitation and from vulnerability discovery, it is
not a fool proof technique to avoid the really determined from figuring out what
they want when they are trying to hack you. Talking once more about desserts,
because they are delicious and a very pleasing analogy to consider...if you
have, for example, a friend or family member that is a chef. They go to your
holiday dinner party and then eat your dessert, which we will consider here as
being a beautiful multilayered trifle. They eat your trifle and because they are
so experienced in the art of cooking, they are able to tell all of the
ingredients you have in your cream after tasting it. It is not a skill everyone
possesses - discovering the trifle recipe is no trifle matter...one might say -
and it is not something everyone will be looking forward to do...after all, some
of us simply want to eat and enjoy the food, be the ingredients what they
may. However, there might just be that someone that is willing and capable to go
the extra mile to figure out your recipe...and let me tell you the bad
news...there is not much you can do about it, because there is not much you can
hide about your dessert if you intend to serve it for people to eat.

The same goes for code. Yes, it is possible to not share the source code of your
software, but for a computer to run a software, it needs to follow the
instructions that were transformed into the executable program that originated
from the source code. So even if the executable does not contain the exact
source code, it will contain something that can be extracted and analyzed by the
brave and patient. Any program out there can be reverse engineered into its low
level code version, and this low level code, mainly created to be machine
readable code, when analyzed, will tell you more about what the source code
could actually be. You are able to get from the final product to the actual
recipe that led you to that product...even if the low level code will be very
difficult to analyze and piece together in order to form something similar to
what would be the original source code that generated it. But doubt not my
friend...there are people out there that are willing to do this, and sometimes
these people can be really, really good at it. So that is why security through
obscurity can help, as it is one more barrier that a hacker needs to cross in
order to be able to possibly tamper with a system, however, it is not an
impenetrable one, and it will only stop those lazy enough to cross it...or those
that maybe ate too much during dinner already and will pass on dessert.

Aah, holiday season food is delicious, isn't it? Plus, I'm not the type to pass
on dessert, and I am definitely not done talking about them, the holiday spirit
and how it all relates to open source code quite yet, so let's keep going. Hold
on to that dessert analogy, because we will bring it back shortly. For now, we
move on, understanding one reason why it might seem that closed source is safer
or more secure than open source. Especially when you think about one of the main
activities performed by the Ubuntu Security team, which is applying patches to
vulnerabilities that are constantly being found in the source code of packages
that can be installed in Ubuntu, or that are found in the core of Ubuntu, the
kernel.  Throughout all the seasons, including the holiday season, we fix issues
that are being found by people from the community that look into and identify
flaws in these packages, sometimes even unintentionally. We can see this as
people finding problems with our recipe and pointing them out to us, forcing us
to change it so that the end result will be something better, something that all
can enjoy. "Hey, you have peanuts here, what about the people who have peanut
allergies that will eat this?"...or..."Hey, if this is cooked in the southern
hemisphere, where it is hot during the holiday season instead of cold, this rest
time for the cream might be too much and it will be too much of a liquid by the
time you want to put your trifle in its final container". And while you listen
to all these complaints and look at your recipe book, you might think it is all
very annoying...having to change your recipe to fix all these problems...but
when you actually think about it...is it not helpful instead? I mean...you don't
wanna kill grandma because you forgot she was allergic to peanuts, do you? Had
you not made your recipe public, you might have not discovered that you had to
change it...the bad way: by having grandma spit that trifle all over the floor
and scold you because grandma might fall for phishing scams from time to time,
but she knows better than to eat hidden peanuts in your trifle. Also...this is a
podcast with positive vibes, so let's not actually consider the worst of the
worst situation here for grandma and for you as well... but you get the point.

Do not kid yourself by thinking that closed source software has less bugs than
open source software. They might be encountered at a smaller rate, since
analysis of the source code is something harder to do and can only be done by
people with access to the code, however, they are there...and sometimes, people
figure this out in the worst way possible: when they have already been
hacked. And then it is a race to figure out where the bug that caused the issue
is, so that it can be fixed. By making the source code public, people that are
willing to help and are willing to make this code better, safer and more robust
have the chance to actively participate in its development and improve the
overall final product. One of the reasons why open source software came to be
was exactly to provide users with more security, since it is easier to find
hidden problems in that which has a lot of people auditing AND it is also easier
to trust that which you can audit. Imagine if your prankster cousin wants to
tamper with your dessert, and they add an extra bad ingredient to the recipe
without your knowledge after you leave them a while with your recipe
book...after all, you also need to prepare your holiday dinner. Anyway, if you
had decided to hide your dessert recipe from everyone, people would only know
something was incredibly wrong once they would have eaten it. Of course, if you
were hiding it from everyone, you would have also hidden it from your prankster
cousin and not shown them the recipe in the first place, but they could have
just as easily found another way to get to it, and if they did a good job
changing the recipe without your knowledge, you might not even know it had been
tampered with at all. Shoutout to a well known comedy series in which someone
adds some savory food to what is supposed to be a dessert trifle because they
thought that was the correct recipe, when it was actually all a
misunderstanding. The ones who know, will know… Of course, when you hide your
recipe book well enough, it is not expected that the recipe will be tampered
with, but sometimes, you yourself are the one doing the tampering...you holiday
prankster, you! You want to play a prank on your friends and family during the
holidays and decide to add something weird to your dessert. If your recipe is
public, however, people are able to check for mistakes, and if they see
something that might be a problem to them, they can tell you so that you can fix
it, or they can choose to not eat your dessert if you don't want to act on your
apparent mistake. Sure, if you make your recipe public maybe you don't get to do
the prank - which is actually not really nice on your part, considering that you
are hosting a holiday party to entertain people you love and care about - but if
you don't make it public, there might be people who just won't eat your dessert
out of lack of trust in you.

When we talk about source code, we have the same. Being able to check the source
code for a program you wish to use will allow you to check if the source code is
doing something you don't see as being secure, or if it is behaving insecurely
due to a bug. You can even create your own copy of the source with the changes
you find are necessary in order to get to use the software in a way you find
acceptable! However, since the code is public and a lot of people end up using
it, a community usually builds around it and there are always the ones looking
to improve code, fix its bugs, and make it more secure overall, so maybe you
won't even need your own edited copy of the source code, since you can just
share your concerns with that community and the issue might be addressed
directly in the upstream version of the code. Of course this all depends if the
software you are considering has an active upstream and is being properly
maintained...that is unfortunately a downside to free and open source software:
not all code out there is being properly taken care of...not everyone has the
holiday spirit and wants to improve on their dessert recipes. They write it once
and just make it available to whoever wants to cook it without any extra
additions or mistake corrections. However, fear not, because at least when we
are talking about security, information regarding vulnerabilities found in open
source code is mostly shared publicly, and, since it is possible to have your
own copy of the code to edit, people who have these copies can also edit their
own versions to fix issues that were found by other people, be it with their own
fixes be it with fixes provided by the upstream developers that maintain the
software (when they exist)...as we do with Ubuntu packages!  So as you can see,
open source truly encompasses the holiday spirit, by allowing people to share
and by allowing software to improve under the suggestions of many people. The
open source community being a group of friends sitting together to share that
holiday dinner, find possible issues and solve them so that next year said
dinner can be even more delicious...and maybe even have some extra desserts!

So there you have it, the reason why you don't need to worry about open source
being insecure just because the source code is public. Sure, there is a risk
involved with having your code be public, but I had a teacher that once taught
me that sometimes it is not about hiding the algorithm, but instead about making
it that the algorithm is so well structured that it doesn't matter that said
algorithm is public, since there is simply no way to exploit it. The basic
example are the cryptographic algorithms out there that we use to encrypt our
data: the algorithms are public, since we need a standard and people need to
know how things work in order to implement the standard and use it in their
applications, however, it doesn't matter that they are public and that people
know the steps necessary to encrypt or decrypt some plain text, because what
matters is that if there is no key, breaking the encryption is simply not
achievable in our average lifespan with the average resources. The power of the
algorithm is in the way it works, the math and the theory that support it, and
not in its visibility. Everyone can look at the algorithm, and its security
stands strong. So without that key, breaking encryption is nearly
impossible. When writing open source code, the idea is to follow this same
premise: write good code, in such a way that it doesn't matter that it is
public, because even if it is, it is not exploitable since you programmed it
with security in mind. So no...please don't hardcode passwords into your open
source code. That is not secure practice, and that is not open source being
secure. Don't do it in your closed source code...because this is not closed
source being secure also!

Strive to write a dessert recipe that is so perfect, that it doesn't matter if
someone tries to tamper with it once it is completed, your dessert will come out
delicious every time! Yeah, I see you prankster cousin, trying to turn on the
heat to get my trifle to melt. It won't though because I added gelatine to
it...or whatever ingredient is needed to not have cream melt...I'm not a cooking
expert...my family and friends definitely know that. Anyway, of course there are
problems that you might still come across even when cooking or coding with
deliciousness and security in mind. Because there is no dessert that can be
saved by you using 3kg of salt instead of 3g of salt on what is supposed to be
something sweet, because there is an accidental extra 'k' in your recipe...but
you get the point, and open source gets the point! Because if your dessert
recipe is an open recipe and someone finds this "accidental" 3kgs-of-salt
mistake - which happens, we are all human and we make mistakes - they can tell
you about it and you can fix it! So buy a recipe notebook that can be left
outside and no one can write on it unless they use the special notebook pen
which you own the rights to, sign your instructions so that you know which ones
are trustworthy, and fix the mistakes you find along the way when people that
want to share this amazing thing with you give you a nudge about it. You will
then know that you are doing your best to provide people with the best holiday
dessert ever, so that everyone can enjoy it together during this special holiday
time! Also...you know...secure open source code during the holidays as well!

Well, dearest friends and family, that is all of the holiday spirit I have to
share with you today! I wish you all an amazing holiday season, filled with
love, joy, open source and lots and lots of security patches! Feel free to share
your thoughts about this podcast segment and the topic related to it in any of
our social media channels! I hope you enjoyed it, and for now, I bid you all
farewell, and until next time! Bye!

Credit to <https://www.fesliyanstudios.com> for the background music.


### Ubuntu Security team and podcast on holiday break [34:37] {#ubuntu-security-team-and-podcast-on-holiday-break-34-37}

-   Almost all of Canonical is on leave for 2 weeks
-   Various security team members will be in and out over the break - some taking more leave after that
-   Podcast will also take a break for a few weeks - likely return in late January
-   Hope to look at some changes / perhaps a more permanent co-host and other changes in 2023
-   Wishing all our listeners a safe and enjoyable holiday season


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
