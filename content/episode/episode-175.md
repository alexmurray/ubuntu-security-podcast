+++
title = "Episode 175"
description = """
  An increased rate of CVEs in curl is a good thing, and we'll tell you why, plus
  we cover security updates for the Linux kernel, Firefox, Schroot, systemd and
  more.
  """
date = 2022-09-02T22:24:00+09:30
lastmod = 2022-09-02T22:27:53+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E175.mp3"
podcast_duration = 1057
podcast_bytes = 12947194
permalink = "https://ubuntusecuritypodcast.org/episode-175/"
guid = "95c19b5802fa9d9e607ed088a9b2334b23a4dc75719852a298dabdead31716dd905baa7eb157bca7c0f331244f24cd17e9c27c1c23459b693aa0b6861cc590fd"
+++

## Overview {#overview}

An increased rate of CVEs in curl is a good thing, and we'll tell you why, plus
we cover security updates for the Linux kernel, Firefox, Schroot, systemd and
more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

37 unique CVEs addressed


### [[USN-5474-2](https://ubuntu.com/security/notices/USN-5474-2)] Varnish Cache regression [00:43] {#usn-5474-2-varnish-cache-regression-00-43}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2020-11653](https://ubuntu.com/security/CVE-2020-11653) <!-- low -->
-   [USN-5474-1 from Episode 164]({{< relref "episode-164#usn-5474-1-varnish-cache-vulnerabilities-01-41" >}})
-   incomplete fix in original update - required additional patches from
    upstream - thanks to community member who reported this and provided the
    associated debdiff to fix it


### [[USN-5572-2](https://ubuntu.com/security/notices/USN-5572-2), [USN-5579-1](https://ubuntu.com/security/notices/USN-5579-1)] Linux kernel vulnerabilities [01:27] {#usn-5572-2-usn-5579-1-linux-kernel-vulnerabilities-01-27}

-   3 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2022-33741](https://ubuntu.com/security/CVE-2022-33741) <!-- medium -->
    -   [CVE-2022-33740](https://ubuntu.com/security/CVE-2022-33740) <!-- medium -->
    -   [CVE-2022-26365](https://ubuntu.com/security/CVE-2022-26365) <!-- medium -->
-   4.4 AWS 14.04 ESM + 4.4 generic etc 16.04 ESM + 14.04 ESM
-   3 issues in Xen PV drivers - all memory management issues
-   [See USN-5572-1 from Episode 174]({{< relref "episode-174#usn-5572-1-linux-kernel--aws--vulnerabilities-02-45" >}})


### [[USN-5580-1](https://ubuntu.com/security/notices/USN-5580-1)] Linux kernel (AWS) vulnerabilities [01:54] {#usn-5580-1-linux-kernel--aws--vulnerabilities-01-54}

-   4 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-36946](https://ubuntu.com/security/CVE-2022-36946) <!-- medium -->
    -   [CVE-2022-20368](https://ubuntu.com/security/CVE-2022-20368) <!-- medium -->
    -   [CVE-2021-33656](https://ubuntu.com/security/CVE-2021-33656) <!-- medium -->
    -   [CVE-2021-33655](https://ubuntu.com/security/CVE-2021-33655) <!-- medium -->
-   4.4 AWS 16.04 ESM
-   One of these is an OOB write in the framebuffer driver - covered previously in
    [USN-5577-1 in Episode 174]({{< relref "episode-174#usn-5577-1-linux-kernel--oem--vulnerabilities-03-38" >}})
-   Others:
    -   OOB write in virtual terminal driver when changing VGA console fonts
    -   OOB read in Packet network protocol -&gt; info leak
    -   Assertion failure (-&gt; kernel panic) in netfilter when handling rules which
        truncate packets below their header size -&gt; remote DoS


### [[USN-5582-1](https://ubuntu.com/security/notices/USN-5582-1)] Linux kernel (Azure CVM) vulnerabilities [02:42] {#usn-5582-1-linux-kernel--azure-cvm--vulnerabilities-02-42}

-   11 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-28893](https://ubuntu.com/security/CVE-2022-28893) <!-- medium -->
    -   [CVE-2022-1975](https://ubuntu.com/security/CVE-2022-1975) <!-- low -->
    -   [CVE-2022-1974](https://ubuntu.com/security/CVE-2022-1974) <!-- medium -->
    -   [CVE-2022-1734](https://ubuntu.com/security/CVE-2022-1734) <!-- medium -->
    -   [CVE-2022-1679](https://ubuntu.com/security/CVE-2022-1679) <!-- medium -->
    -   [CVE-2022-1652](https://ubuntu.com/security/CVE-2022-1652) <!-- medium -->
    -   [CVE-2022-1048](https://ubuntu.com/security/CVE-2022-1048) <!-- medium -->
    -   [CVE-2022-0494](https://ubuntu.com/security/CVE-2022-0494) <!-- medium -->
    -   [CVE-2022-2586](https://ubuntu.com/security/CVE-2022-2586) <!-- high -->
    -   [CVE-2022-2588](https://ubuntu.com/security/CVE-2022-2588) <!-- high -->
    -   [CVE-2022-34918](https://ubuntu.com/security/CVE-2022-34918) <!-- high -->
-   Azure Confidential Virtual Machines - implements FDE so that contents is
    protected from VM host
-   5.4 kernel
-   3 high priority vulns that allow a local unpriv user to privesc - first
    covered back in [USN-5557-1 in Episode 172]({{< relref "episode-172#usn-5557-1-linux-kernel-vulnerabilities-13-44" >}}) - all in netfilter / network packet
    scheduler subsystems


### [[USN-5588-1](https://ubuntu.com/security/notices/USN-5588-1)] Linux kernel vulnerability [03:43] {#usn-5588-1-linux-kernel-vulnerability-03-43}

-   1 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2022-2588](https://ubuntu.com/security/CVE-2022-2588) <!-- high -->
-   3.13 GA


### [[USN-5589-1](https://ubuntu.com/security/notices/USN-5589-1)] Linux kernel vulnerabilities [03:56] {#usn-5589-1-linux-kernel-vulnerabilities-03-56}

-   2 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-33656](https://ubuntu.com/security/CVE-2021-33656) <!-- medium -->
    -   [CVE-2021-33061](https://ubuntu.com/security/CVE-2021-33061) <!-- medium -->
-   5.4 GA/OEM/Raspi/lowlatency
-   OOB write in virtual terminal driver mentioned earlier
-   Improper control flow mgmt in Intel 10GbE PCIe driver - local DoS


### [[USN-5590-1](https://ubuntu.com/security/notices/USN-5590-1)] Linux kernel (OEM) vulnerability [04:24] {#usn-5590-1-linux-kernel--oem--vulnerability-04-24}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-36946](https://ubuntu.com/security/CVE-2022-36946) <!-- medium -->
-   5.14 OEM
-   Assertion failure on netfilter rules that truncate packets below their header
    size mentioned earlier


### [[USN-5578-2](https://ubuntu.com/security/notices/USN-5578-2)] Open VM Tools vulnerability [04:34] {#usn-5578-2-open-vm-tools-vulnerability-04-34}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-31676](https://ubuntu.com/security/CVE-2022-31676) <!-- medium -->
-   Privesc within guest - [USN-5578-1 from Episode 174]({{< relref "episode-174#usn-5578-1-open-vm-tools-vulnerability-06-23" >}})


### [[USN-5581-1](https://ubuntu.com/security/notices/USN-5581-1)] Firefox vulnerabilities [04:57] {#usn-5581-1-firefox-vulnerabilities-04-57}

-   5 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-38478](https://ubuntu.com/security/CVE-2022-38478) <!-- medium -->
    -   [CVE-2022-38477](https://ubuntu.com/security/CVE-2022-38477) <!-- medium -->
    -   [CVE-2022-38475](https://ubuntu.com/security/CVE-2022-38475) <!-- medium -->
    -   [CVE-2022-38473](https://ubuntu.com/security/CVE-2022-38473) <!-- medium -->
    -   [CVE-2022-38472](https://ubuntu.com/security/CVE-2022-38472) <!-- medium -->
-   104.0 - usual mix of browser security issues - DoS, chrome UI spoofing, bypass
    security restrictions, RCE via malicious web content


### [[USN-5584-1](https://ubuntu.com/security/notices/USN-5584-1)] Schroot vulnerability [05:25] {#usn-5584-1-schroot-vulnerability-05-25}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-2787](https://ubuntu.com/security/CVE-2022-2787) <!-- medium -->
-   Not a tool that is normally used by most users / customers - BUT is used by
    many Ubuntu developers - interesting avenue for a supply chain attack perhaps?
-   DoS via crafted schroot names - one user could launch a schroot with a crafted
    name that would then result in schroot corrupting its internal state and then
    stopping it from launching any more schroot sessions for any other users on
    the machine


### [[USN-5586-1](https://ubuntu.com/security/notices/USN-5586-1)] SDL vulnerability [07:05] {#usn-5586-1-sdl-vulnerability-07-05}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-34568](https://ubuntu.com/security/CVE-2022-34568) <!-- low -->
-   UAF in handling of crafted video content on X11


### [[USN-5583-1](https://ubuntu.com/security/notices/USN-5583-1)] systemd vulnerability [07:14] {#usn-5583-1-systemd-vulnerability-07-14}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2022-2526](https://ubuntu.com/security/CVE-2022-2526) <!-- medium -->
-   Possible UAF when handling crafted DNS requests -&gt; crash / RCE
-   Ask me about this one next week 😉


### [[USN-5585-1](https://ubuntu.com/security/notices/USN-5585-1)] Jupyter Notebook vulnerabilities [07:44] {#usn-5585-1-jupyter-notebook-vulnerabilities-07-44}

-   8 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-29238](https://ubuntu.com/security/CVE-2022-29238) <!-- medium -->
    -   [CVE-2022-24758](https://ubuntu.com/security/CVE-2022-24758) <!-- medium -->
    -   [CVE-2020-26215](https://ubuntu.com/security/CVE-2020-26215) <!-- medium -->
    -   [CVE-2019-9644](https://ubuntu.com/security/CVE-2019-9644) <!-- medium -->
    -   [CVE-2019-10856](https://ubuntu.com/security/CVE-2019-10856) <!-- medium -->
    -   [CVE-2019-10255](https://ubuntu.com/security/CVE-2019-10255) <!-- low -->
    -   [CVE-2018-21030](https://ubuntu.com/security/CVE-2018-21030) <!-- medium -->
    -   [CVE-2018-19351](https://ubuntu.com/security/CVE-2018-19351) <!-- medium -->
-   Another community contributed update - fixes various issues such as XSS, open
    redirect, info leak etc


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Increased CVE activity in curl [08:09] {#increased-cve-activity-in-curl-08-09}

-   <https://daniel.haxx.se/blog/2022/08/22/increased-cve-activity-in-curl/>
-   Daniel Stenberg (curl maintainer) put a poll on twitter asking if folks had
    noticed an increased rate in CVEs for curl in the last year
    -   ~45% - yes - and it's good
    -   ~2% - yes - and it's bad
    -   ~40% - no
    -   ~12% - I don't understand the question
-   This can be seen easily on the curl dashboard <https://curl.se/dashboard.html>
    in particular on <https://curl.se/dashboard1.html#vulns-per-year>
-   We can see the same results from the Ubuntu CVE Tracker via jq and gnuplot
    (plus curl itself to fetch the data in the first place):

<!--listend-->

```shell
#!/bin/bash
for d in $(curl -s "https://ubuntu.com/security/cves.json?order=newest&package=curl&limit=100" | jq -r ".cves[].published"); do
  date +%s -d "$d";
done > curlhist
```

```gnuplot
#!/usr/bin/gnuplot
binwidth = 60*60*24*365 # ~30days in seconds
bin(x,width)=width*floor(x/width) + width/2.0
set xdata time
set datafile missing NaN
set boxwidth binwidth
set xtics format "%Y" time rotate
set style fill solid 0.5 # fill style
set title 'Frequency of curl CVEs in the Ubuntu CVE Tracker by year'
plot 'curlhist' using (bin($1,binwidth)):(1.0) \
    smooth freq with boxes notitle
```

{{< figure src="/img/curlhist.svg" >}}

-   curl CVE frequency has increased in recent years
-   however is still less than what it was back in 2016
-   Daniel explains how for each CVE wounds his pride that he didn't find it in
    the first place (or actually not introduce it) - but overall it is good they
    are being looked for and found and fixed
-   curl has a bug bounty - and this works as a good incentive
    -   has paid out over $40kUSD since it started
-   This year though the 15 reports came from just 4 people
    -   and 60% came from a single individual
    -   shows that to do this kind of work you need to have a deep, intimate
        knowledge of the code - can't just drive by and find bugs - need to spend a
        lot of time getting to know the code and protocols etc well to be able to
        find these sorts of issues
    -   indicates that curl is a high quality project since it is hard to find
        security issues
    -   long lived codebase that has been well studied and improved over the years
-   Speaking of being long-lived - Daniel also then looks at the average lifetime
    of each CVE in curl - like the Linux kernel, curl developers go back and try
    find out what commit introduced a particular vulnerability - they can then
    compare the time from when that original commit was introduced to when the
    commit which fixes the bug was made
-   On average, for all CVEs - 2,867 days - 7 years 10 months
    -   For those in the past 12 months - 3,245 days - almost 9 years
-   I mentioned the Linux kernel - Kees Cook (ex Ubuntu Security) has done [similar
    analysis](https://outflux.net/blog/archives/2016/10/18/security-bug-lifetime/) using the data we collect in the Ubuntu CVE Tracker over the years
    and found that for kernel vulnerabilities the average lifetime is 5.5 years
-   In general, curl has had a steady rate of development of around 1300 commits
    per year since 2007
-   So on average the same amount of code churn is happening still (although this
    doesn't tell us if say the same amount of new code is being written each
    year - perhaps this is more refactoring / cleanups over time?)
    -   but if we assume it is the same amount of new code being written each year,
        but since the CVE lifetime is growing over time, then more CVEs are being
        found in the older code than newer code - and as such the quality of the
        code seems to be improving over time
    -   we can clean a bunch of info from the dashboard:
        -   test cases - these are growing linearly over time
        -   number of CI jobs - also growing linearly over time
        -   both indicate an increase in tooling to improve quality over time
-   Final thought: whilst on the surface the idea that curl has got more CVEs
    recently sounds bad, this is actually a good thing - it means these long lived
    vulnerabilties are being found and fixed - this is a good thing - and the bug
    bounty provides a good incentive to first encourage vulns to be looked for and
    found and then to make sure they get reported and hence fixed (and not say
    hoarded or sold to third parties etc)
-   [Great graph showing the rate of vulns introduced over time and vulns being fixed over time](https://curl.se/dashboard1.html#vulns-plot)
    -   Shows vulns get introduced linearly but they are getting fixed
        exponentially - so over time the number of latent vulns in the curl codebase
        is decreasing - and this is definitely a good thing
    -   Also shows the benefit of having a bug bounty - if you want vulns to get
        found and fixed you need to create an environment that encourages that - and
        what is more motivating than cold hard cash?


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)