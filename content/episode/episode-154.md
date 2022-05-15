+++
title = "Episode 154"
description = """
  It's PIE🥧 for everyone this week as Python finally becomes a position
  independent executable for Ubuntu 22.04, plus Camila brings you the third
  part in her Ubuntu server hardening guide and we cover security updates for
  FUSE, Bind, Apache, the Linux kernel and more.
  """
date = 2022-03-25T15:56:00+10:30
lastmod = 2022-05-15T18:05:39+09:30
draft = false
weight = 1006
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E154.mp3"
podcast_duration = 2454
podcast_bytes = 26904834
permalink = "https://ubuntusecuritypodcast.org/episode-154/"
guid = "59f79b936afb00295267d32e518ed58734b858a7dfe5b010f73bc75d7841f1795a672c2320022a7476a09dd89296b1ca7530e2cd0f015c4e3c57ea19df0fd66f"
+++

## Overview {#overview}

It's PIE🥧 for everyone this week as Python finally becomes a position
independent executable for Ubuntu 22.04, plus Camila brings you the third
part in her Ubuntu server hardening guide and we cover security updates for
FUSE, Bind, Apache, the Linux kernel and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

105 unique CVEs addressed


### [[USN-5326-1](https://ubuntu.com/security/notices/USN-5326-1)] FUSE vulnerability [00:49] {#usn-5326-1-fuse-vulnerability-00-49}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2018-10906](https://ubuntu.com/security/CVE-2018-10906) <!-- low -->
-   When using SELinux on Ubuntu, possible to bypass regular restrictions
    that would normally prevent non-root users from mounting a FUSE fs with
    the `allow_other` mount option - this option specifies all users can access
    files from the FUSE fs whereas normally FUSE enforces on the user which
    mounted the file has access
-   Could trick another user into then accessing files from the FUSE fs


### [[USN-5334-1](https://ubuntu.com/security/notices/USN-5334-1)] man-db vulnerability [02:22] {#usn-5334-1-man-db-vulnerability-02-22}

-   1 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2015-1336](https://ubuntu.com/security/CVE-2015-1336) <!-- low -->
-   daily cron job could allow a local user to access the man user account


### [[USN-5321-2](https://ubuntu.com/security/notices/USN-5321-2)] Firefox vulnerabilities [02:57] {#usn-5321-2-firefox-vulnerabilities-02-57}

-   7 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-26387](https://ubuntu.com/security/CVE-2022-26387) <!-- medium -->
    -   [CVE-2022-26385](https://ubuntu.com/security/CVE-2022-26385) <!-- medium -->
    -   [CVE-2022-26384](https://ubuntu.com/security/CVE-2022-26384) <!-- medium -->
    -   [CVE-2022-26383](https://ubuntu.com/security/CVE-2022-26383) <!-- medium -->
    -   [CVE-2022-26382](https://ubuntu.com/security/CVE-2022-26382) <!-- medium -->
    -   [CVE-2022-26381](https://ubuntu.com/security/CVE-2022-26381) <!-- medium -->
    -   [CVE-2022-0843](https://ubuntu.com/security/CVE-2022-0843) <!-- medium -->
-   arm64 binaries for Firefox 98.0.1 [Episode 153](https://ubuntusecuritypodcast.org/episode-153/)


### [[USN-5332-1](https://ubuntu.com/security/notices/USN-5332-1), [USN-5332-2](https://ubuntu.com/security/notices/USN-5332-2)] Bind vulnerabilities [03:25] {#usn-5332-1-usn-5332-2-bind-vulnerabilities-03-25}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-0396](https://ubuntu.com/security/CVE-2022-0396) <!-- medium -->
    -   [CVE-2021-25220](https://ubuntu.com/security/CVE-2021-25220) <!-- medium -->
-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2021-25220](https://ubuntu.com/security/CVE-2021-25220) <!-- medium -->
-   Possible cache poisoning attack via forwarded NS records
-   fd exhaustion if client could trick bind into keeping connection in
    `CLOSE_WAIT` status for an indefinite period, after connection was closed -
    DoS


### [[USN-5333-1](https://ubuntu.com/security/notices/USN-5333-1), [USN-5333-2](https://ubuntu.com/security/notices/USN-5333-2)] Apache HTTP Server vulnerabilities [04:11] {#usn-5333-1-usn-5333-2-apache-http-server-vulnerabilities-04-11}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-23943](https://ubuntu.com/security/CVE-2022-23943) <!-- medium -->
    -   [CVE-2022-22721](https://ubuntu.com/security/CVE-2022-22721) <!-- low -->
    -   [CVE-2022-22720](https://ubuntu.com/security/CVE-2022-22720) <!-- medium -->
    -   [CVE-2022-22719](https://ubuntu.com/security/CVE-2022-22719) <!-- medium -->
-   heap OOB r/w via `mod_sed` -&gt; crash, RCE
-   OOB read from crafted request via `mod_lua` - crash -&gt; DoS
-   Possible HTTP request smuggling attack since failed to close an inbound
    connection when an error was encountered which caused the request body to
    be discarded
-   Possible integer overflow on 32-bit systems if had changed default
    `LimitXMLRequestBody` to &gt; 350MB (is 1MB by default) -&gt; OOB write -&gt; crash,
    RCE


### [[USN-5335-1](https://ubuntu.com/security/notices/USN-5335-1)] ImageMagick vulnerabilities [05:51] {#usn-5335-1-imagemagick-vulnerabilities-05-51}

-   15 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-20243](https://ubuntu.com/security/CVE-2021-20243) <!-- low -->
    -   [CVE-2021-20241](https://ubuntu.com/security/CVE-2021-20241) <!-- low -->
    -   [CVE-2021-20176](https://ubuntu.com/security/CVE-2021-20176) <!-- low -->
    -   [CVE-2020-27770](https://ubuntu.com/security/CVE-2020-27770) <!-- low -->
    -   [CVE-2020-27766](https://ubuntu.com/security/CVE-2020-27766) <!-- low -->
    -   [CVE-2020-27762](https://ubuntu.com/security/CVE-2020-27762) <!-- low -->
    -   [CVE-2020-27760](https://ubuntu.com/security/CVE-2020-27760) <!-- low -->
    -   [CVE-2020-27750](https://ubuntu.com/security/CVE-2020-27750) <!-- low -->
    -   [CVE-2020-25676](https://ubuntu.com/security/CVE-2020-25676) <!-- low -->
    -   [CVE-2020-27753](https://ubuntu.com/security/CVE-2020-27753) <!-- low -->
    -   [CVE-2020-25674](https://ubuntu.com/security/CVE-2020-25674) <!-- low -->
    -   [CVE-2020-25665](https://ubuntu.com/security/CVE-2020-25665) <!-- low -->
    -   [CVE-2020-25664](https://ubuntu.com/security/CVE-2020-25664) <!-- medium -->
    -   [CVE-2017-13144](https://ubuntu.com/security/CVE-2017-13144) <!-- negligible -->
    -   [CVE-2020-19667](https://ubuntu.com/security/CVE-2020-19667) <!-- low -->
-   OOB read/write/NULL ptr deref, div by 0 etc when processing crafted image
    files


### [[USN-5337-1](https://ubuntu.com/security/notices/USN-5337-1)] Linux kernel vulnerabilities [06:23] {#usn-5337-1-linux-kernel-vulnerabilities-06-23}

-   21 CVEs addressed in Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2022-0742](https://ubuntu.com/security/CVE-2022-0742) <!-- medium -->
    -   [CVE-2022-0516](https://ubuntu.com/security/CVE-2022-0516) <!-- medium -->
    -   [CVE-2022-0435](https://ubuntu.com/security/CVE-2022-0435) <!-- medium -->
    -   [CVE-2022-0382](https://ubuntu.com/security/CVE-2022-0382) <!-- medium -->
    -   [CVE-2022-0264](https://ubuntu.com/security/CVE-2022-0264) <!-- medium -->
    -   [CVE-2021-45480](https://ubuntu.com/security/CVE-2021-45480) <!-- medium -->
    -   [CVE-2021-45402](https://ubuntu.com/security/CVE-2021-45402) <!-- medium -->
    -   [CVE-2021-45095](https://ubuntu.com/security/CVE-2021-45095) <!-- medium -->
    -   [CVE-2021-44733](https://ubuntu.com/security/CVE-2021-44733) <!-- medium -->
    -   [CVE-2021-43975](https://ubuntu.com/security/CVE-2021-43975) <!-- medium -->
    -   [CVE-2021-4197](https://ubuntu.com/security/CVE-2021-4197) <!-- medium -->
    -   [CVE-2021-4135](https://ubuntu.com/security/CVE-2021-4135) <!-- medium -->
    -   [CVE-2021-39698](https://ubuntu.com/security/CVE-2021-39698) <!-- medium -->
    -   [CVE-2021-39685](https://ubuntu.com/security/CVE-2021-39685) <!-- medium -->
    -   [CVE-2021-28715](https://ubuntu.com/security/CVE-2021-28715) <!-- medium -->
    -   [CVE-2021-28714](https://ubuntu.com/security/CVE-2021-28714) <!-- medium -->
    -   [CVE-2021-28713](https://ubuntu.com/security/CVE-2021-28713) <!-- low -->
    -   [CVE-2021-28712](https://ubuntu.com/security/CVE-2021-28712) <!-- low -->
    -   [CVE-2021-28711](https://ubuntu.com/security/CVE-2021-28711) <!-- low -->
    -   [CVE-2022-0492](https://ubuntu.com/security/CVE-2022-0492) <!-- high -->
    -   [CVE-2022-23222](https://ubuntu.com/security/CVE-2022-23222) <!-- high -->
-   5.13 (impish, 20.04 HWE)
-   BPF verifier could possibly allow pointer arithmetic in BPF operations -
    OOB read / write -&gt; crash (DoS) or privesc
-   cgroups v1 `release_agent` not properly restricted -&gt; privesc


### [[USN-5338-1](https://ubuntu.com/security/notices/USN-5338-1)] Linux kernel vulnerabilities [07:31] {#usn-5338-1-linux-kernel-vulnerabilities-07-31}

-   13 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-0516](https://ubuntu.com/security/CVE-2022-0516) <!-- medium -->
    -   [CVE-2022-0435](https://ubuntu.com/security/CVE-2022-0435) <!-- medium -->
    -   [CVE-2021-45480](https://ubuntu.com/security/CVE-2021-45480) <!-- medium -->
    -   [CVE-2021-45095](https://ubuntu.com/security/CVE-2021-45095) <!-- medium -->
    -   [CVE-2021-44733](https://ubuntu.com/security/CVE-2021-44733) <!-- medium -->
    -   [CVE-2021-43976](https://ubuntu.com/security/CVE-2021-43976) <!-- low -->
    -   [CVE-2021-4135](https://ubuntu.com/security/CVE-2021-4135) <!-- medium -->
    -   [CVE-2021-28715](https://ubuntu.com/security/CVE-2021-28715) <!-- medium -->
    -   [CVE-2021-28714](https://ubuntu.com/security/CVE-2021-28714) <!-- medium -->
    -   [CVE-2021-28713](https://ubuntu.com/security/CVE-2021-28713) <!-- low -->
    -   [CVE-2021-28712](https://ubuntu.com/security/CVE-2021-28712) <!-- low -->
    -   [CVE-2021-28711](https://ubuntu.com/security/CVE-2021-28711) <!-- low -->
    -   [CVE-2022-0492](https://ubuntu.com/security/CVE-2022-0492) <!-- high -->
-   5.4 (focal, bionic HWE)


### [[USN-5339-1](https://ubuntu.com/security/notices/USN-5339-1)] Linux kernel vulnerabilities [07:43] {#usn-5339-1-linux-kernel-vulnerabilities-07-43}

-   6 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS)
    -   [CVE-2022-0435](https://ubuntu.com/security/CVE-2022-0435) <!-- medium -->
    -   [CVE-2021-45095](https://ubuntu.com/security/CVE-2021-45095) <!-- medium -->
    -   [CVE-2021-44733](https://ubuntu.com/security/CVE-2021-44733) <!-- medium -->
    -   [CVE-2021-43976](https://ubuntu.com/security/CVE-2021-43976) <!-- low -->
    -   [CVE-2021-3506](https://ubuntu.com/security/CVE-2021-3506) <!-- medium -->
    -   [CVE-2022-0492](https://ubuntu.com/security/CVE-2022-0492) <!-- high -->
-   4.15 (bionic, xenial ESM, trusty ESM - azure)


### [[USN-5343-1](https://ubuntu.com/security/notices/USN-5343-1)] Linux kernel vulnerabilities [08:00] {#usn-5343-1-linux-kernel-vulnerabilities-08-00}

-   45 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2018-5995](https://ubuntu.com/security/CVE-2018-5995) <!-- negligible -->
    -   [CVE-2021-45485](https://ubuntu.com/security/CVE-2021-45485) <!-- medium -->
    -   [CVE-2021-45469](https://ubuntu.com/security/CVE-2021-45469) <!-- medium -->
    -   [CVE-2021-45095](https://ubuntu.com/security/CVE-2021-45095) <!-- medium -->
    -   [CVE-2021-43389](https://ubuntu.com/security/CVE-2021-43389) <!-- low -->
    -   [CVE-2021-42008](https://ubuntu.com/security/CVE-2021-42008) <!-- low -->
    -   [CVE-2021-40490](https://ubuntu.com/security/CVE-2021-40490) <!-- medium -->
    -   [CVE-2021-39648](https://ubuntu.com/security/CVE-2021-39648) <!-- medium -->
    -   [CVE-2021-38208](https://ubuntu.com/security/CVE-2021-38208) <!-- medium -->
    -   [CVE-2021-38204](https://ubuntu.com/security/CVE-2021-38204) <!-- low -->
    -   [CVE-2021-38198](https://ubuntu.com/security/CVE-2021-38198) <!-- medium -->
    -   [CVE-2021-38160](https://ubuntu.com/security/CVE-2021-38160) <!-- medium -->
    -   [CVE-2021-3679](https://ubuntu.com/security/CVE-2021-3679) <!-- low -->
    -   [CVE-2021-3612](https://ubuntu.com/security/CVE-2021-3612) <!-- medium -->
    -   [CVE-2021-3573](https://ubuntu.com/security/CVE-2021-3573) <!-- medium -->
    -   [CVE-2021-3564](https://ubuntu.com/security/CVE-2021-3564) <!-- medium -->
    -   [CVE-2021-3506](https://ubuntu.com/security/CVE-2021-3506) <!-- medium -->
    -   [CVE-2021-3483](https://ubuntu.com/security/CVE-2021-3483) <!-- medium -->
    -   [CVE-2021-34693](https://ubuntu.com/security/CVE-2021-34693) <!-- low -->
    -   [CVE-2021-33098](https://ubuntu.com/security/CVE-2021-33098) <!-- medium -->
    -   [CVE-2021-33034](https://ubuntu.com/security/CVE-2021-33034) <!-- medium -->
    -   [CVE-2021-33033](https://ubuntu.com/security/CVE-2021-33033) <!-- medium -->
    -   [CVE-2021-32399](https://ubuntu.com/security/CVE-2021-32399) <!-- medium -->
    -   [CVE-2021-29650](https://ubuntu.com/security/CVE-2021-29650) <!-- medium -->
    -   [CVE-2021-28972](https://ubuntu.com/security/CVE-2021-28972) <!-- medium -->
    -   [CVE-2021-28688](https://ubuntu.com/security/CVE-2021-28688) <!-- low -->
    -   [CVE-2021-23134](https://ubuntu.com/security/CVE-2021-23134) <!-- medium -->
    -   [CVE-2021-20317](https://ubuntu.com/security/CVE-2021-20317) <!-- low -->
    -   [CVE-2021-20292](https://ubuntu.com/security/CVE-2021-20292) <!-- low -->
    -   [CVE-2020-36385](https://ubuntu.com/security/CVE-2020-36385) <!-- medium -->
    -   [CVE-2020-36322](https://ubuntu.com/security/CVE-2020-36322) <!-- medium -->
    -   [CVE-2021-0129](https://ubuntu.com/security/CVE-2021-0129) <!-- medium -->
    -   [CVE-2020-26558](https://ubuntu.com/security/CVE-2020-26558) <!-- medium -->
    -   [CVE-2020-26555](https://ubuntu.com/security/CVE-2020-26555) <!-- medium -->
    -   [CVE-2020-26147](https://ubuntu.com/security/CVE-2020-26147) <!-- medium -->
    -   [CVE-2020-26139](https://ubuntu.com/security/CVE-2020-26139) <!-- medium -->
    -   [CVE-2020-25673](https://ubuntu.com/security/CVE-2020-25673) <!-- medium -->
    -   [CVE-2020-25672](https://ubuntu.com/security/CVE-2020-25672) <!-- medium -->
    -   [CVE-2020-25671](https://ubuntu.com/security/CVE-2020-25671) <!-- medium -->
    -   [CVE-2020-25670](https://ubuntu.com/security/CVE-2020-25670) <!-- medium -->
    -   [CVE-2020-12655](https://ubuntu.com/security/CVE-2020-12655) <!-- medium -->
    -   [CVE-2019-19449](https://ubuntu.com/security/CVE-2019-19449) <!-- low -->
    -   [CVE-2016-2854](https://ubuntu.com/security/CVE-2016-2854) <!-- low -->
    -   [CVE-2016-2853](https://ubuntu.com/security/CVE-2016-2853) <!-- low -->
    -   [CVE-2022-0492](https://ubuntu.com/security/CVE-2022-0492) <!-- high -->
-   4.4 (xenial ESM, trusty ESM)


### [[LSN-0085-1](https://ubuntu.com/security/notices/LSN-0085-1)] Linux kernel vulnerability [08:15] {#lsn-0085-1-linux-kernel-vulnerability-08-15}

-   2 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-25636](https://ubuntu.com/security/CVE-2022-25636) <!-- high -->
    -   [CVE-2022-0492](https://ubuntu.com/security/CVE-2022-0492) <!-- high -->
-   Livepatch

| KERNEL TYPE     | 20.04 | 18.04 | 16.04 | 14.04 |
|-----------------|-------|-------|-------|-------|
| aws             | 85.1  | 85.1  | 85.1  | —     |
| azure           | 85.1  | —     | 85.1  | —     |
| azure-4.15      | —     | 85.1  | —     | —     |
| gcp             | 85.1  | —     | —     | —     |
| generic-4.15    | —     | 85.1  | 85.1  | —     |
| generic-4.4     | —     | —     | 85.1  | 85.1  |
| generic-5.4     | 85.2  | 85.2  | —     | —     |
| gke             | 85.1  | —     | —     | —     |
| gke-4.15        | —     | 85.1  | —     | —     |
| gke-5.4         | —     | 85.1  | —     | —     |
| gkeop           | 85.1  | —     | —     | —     |
| gkeop-5.4       | —     | 85.1  | —     | —     |
| ibm             | 85.1  | —     | —     | —     |
| ibm-5.4         | —     | 85.1  | —     | —     |
| lowlatency-4.15 | —     | 85.1  | 85.1  | —     |
| lowlatency-4.4  | —     | —     | 85.1  | 85.1  |
| lowlatency-5.4  | 85.2  | 85.2  | —     | —     |
| oem             | —     | 85.1  | —     | —     |


### [[USN-5341-1](https://ubuntu.com/security/notices/USN-5341-1)] GNU binutils vulnerabilities [09:04] {#usn-5341-1-gnu-binutils-vulnerabilities-09-04}

-   3 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2021-45078](https://ubuntu.com/security/CVE-2021-45078) <!-- negligible -->
    -   [CVE-2021-3487](https://ubuntu.com/security/CVE-2021-3487) <!-- low -->
    -   [CVE-2017-17122](https://ubuntu.com/security/CVE-2017-17122) <!-- low -->
-   OOB read, OOB write and memory leak when handling crafted files -
    binutils is not generally expected to operate on untrusted data so
    upstream and our team do not usually consider vulns in binutils to be
    high impact


### [[USN-5340-1](https://ubuntu.com/security/notices/USN-5340-1)] CKEditor vulnerabilities [09:50] {#usn-5340-1-ckeditor-vulnerabilities-09-50}

-   6 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Impish (21.10)
    -   [CVE-2021-37695](https://ubuntu.com/security/CVE-2021-37695) <!-- medium -->
    -   [CVE-2021-33829](https://ubuntu.com/security/CVE-2021-33829) <!-- medium -->
    -   [CVE-2021-32809](https://ubuntu.com/security/CVE-2021-32809) <!-- medium -->
    -   [CVE-2021-32808](https://ubuntu.com/security/CVE-2021-32808) <!-- medium -->
    -   [CVE-2020-9281](https://ubuntu.com/security/CVE-2020-9281) <!-- medium -->
    -   [CVE-2018-9861](https://ubuntu.com/security/CVE-2018-9861) <!-- medium -->
-   JS rich text editor to be embedded in web pages - often used by django
    and other projects
-   3x XSS, 3xJS RCE


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Camila discusses Ubuntu hardening (part 3) [10:23] {#camila-discusses-ubuntu-hardening--part-3--10-23}

-   In the third part of this series on hardening a Ubuntu machine against
    external attack, Camila looks at steps you can take to secure your
    applications once deployed on your hardened Ubuntu system. This includes
    steps towards reducing your attack surface, using MAC to provide POLA and
    other good security hygiene practices. Listen on to find out more.

Hello listener! Welcome back to our Ubuntu hardening podcast mini-series,
where in three episodes, released across several weeks, we have been
discussing how to build a network service in an Ubuntu operating system,
but not just any Ubuntu operating system, and instead, a HARDENED one. Up
until this point, we went from nothing to digital big bang, which was the
equivalent of our system install; to years of chemical, geological, and
climatic transformations, which were actually a few weeks maybe of setting
up basic security measures after our initial install; to, at last, the
point where we are ready to finally have our server be born, just as life
once did in our beautiful planet Earth. We reach the next stage in our
evolution and prepare ourselves to now finally install our server. Don't be
a cheater though, and don't skip any steps: if you haven't listened to the
other episodes, go do that before you move on here. Earth did not become
what it did in a day, so...you can spare a few minutes to listen to the
other episodes before continuing with this one. Other listeners might have
waited a few weeks, and poor Earth waited billions of years! Lucky you that
hardening your Ubuntu system is slightly easier than creating an entire
planet, and even an entire universe from scratch. Introductions made, lets
jump right in to finally getting our service and all related software up
and running in our already hardened machine. And let's harden it even more,
shall we?

I will start this off by just saying: no installing of services that don't
use cryptography. HTTP? Gone! FTP? Next! Telnet? Please no. Don't even joke
about that. Just don't, or I might actually just start crying unencrypted
tears of anger. Encryption technology should be here to stay, and if you
are sending sensitive data over the wire, give that data a reason to feel
safe and protected during its digital travel. Add that S to the end of the
network protocol names. Level up your HTTP and make it HTTPS. Configure
your Apache or Nginx server to use TLS. Not SSL. SSL is deprecated. TLS
version 1.2 or above. Another important thing to consider when installing
the entire stack of applications, libraries and frameworks you might need
to run your system: less is more. I actually saw this in a cooking show,
and I agree with this statement. I know we sometimes might get amazed at
the huge amount of possibilities we have whenever installing software. The
human mind has created the most incredible utilities, and we have the power
to simply install all of them with one simple command. But just because you
have a wide variety of ingredients, it doesn't mean you have to use
them. Some people might like french fries with ice cream. That does not
imply you need a french fry library to get your sundae application to be
delicious. Sometimes a little chocolate sauce drizzle is all you
need. Chef's kiss! The point here is: install the minimum necessary to run
your application. Don't increase the attack surface. The more you have
running in your system, the more possibilities of entry an attacker will
have. Keep it short and sweet and avoid getting lost in a sea of files,
users and processes that you don't know how they really work or what they
really do. And while we are at it...if you do have the chance, try to
install only one or two network services per system/device. Don't have your
server simultaneously be a web server, a mail server, a file server, a
database server, and an ice cream server, because why not, right? Don't,
though. This limits the number of services that can be compromised if a
compromise ends up happening. It limits the exposure for a single
device. Plus, when installing the applications necessary to run these
services, remember that a lot of applications like Apache, Nginx, MySQL,
PHP…they all have security settings. They know they are the regular targets
of attacks, so they provide the user with the tools to perform a secure
install or set secure post install configuration values. If it is provided
to you, use it! Harden your application as well, after all, it is this
application that will most likely be the point of entry into your
system. So divide, secure and conquer!

We did it, friends. We have a device providing a service over the
network. One would think that after 6 days of work creating a digital
ecosystem we would be able to rest on the 7th day, as done by some mighty
entities before us, however...people concerned with cyber security don't
sleep. Or stop. Ever! Cyber security is a continuous effort, so post
application setup measures must be taken as well if you want your server to
keep securely thriving. We have got to ensure the evolution of the species
and keep our metaphorical Earth safe and in tiptop shape in order to
guarantee the best chances of, not only, survival, but growth and
prosperity. Who needs sleep when you can have the joy of knowing that you
set up your device for execution success and longevity in the grueling
environment that is the Internet! Let's start then by disabling unnecessary
open ports and stopping the execution of unwanted services. You set up your
application using the minimum necessary, which is great. Sometimes,
however, during install, or even during configuration, applications will
open ports and setup services you might not need. Heck, we are talking
about this in the post application install and setup phase of our process,
however, this could also be done in the post installation of the operating
system phase of the process. Checking out which ports are unnecessarily
open, and closing these ports will reduce the attack surface area in your
system, as an attacker has less points of entry to choose from. A house
with one door and one door only provides one single point of entry to an
external entity. Of course this external entity could manufacture a new
entry point using mechanical tools, but I then digress from the real
intention of this analogy, so let's stick to the basics of the idea here,
shall we? An example of an unnecessary open port might be a database
port. Sure, you have set up a host based firewall as we have already
suggested, and no internet traffic which would have this service as a
destination is allowed through, but still...layers!!! When we talk about
security we talk about having various and various layers that will protect
you in case the previous one has somehow been cracked. So...trust your
firewall without trusting it completely. If you don't need the database
port open to the entire Internet, only to localhost, then leave it open
just for localhost. If you don't want to do it for yourself, then do it for
me? Please? It makes me a lot less nervous knowing that a multitude of
unused open ports are being closed and removed from harm's way. The
Internet can be a brutal place, you know? Use a tool such as 'netstat',
check your open ports and disable Internet access for those that don't need
it through the related application's configuration file or other available
resources. It'll be quicker than you think, and will provide you with long
term peace of mind. Bonus points for the fact that you will know something
weird might be happening when you see that some port that should not be
accessible through cyberspace is being used to send some data to some shady
IP address in a remote country. Syslog mail incoming!

This same idea applies to unwanted services or unwanted daemons. Check out
what is set to run automatically or in the background of your system, check
your 'cron' files, and make sure that these background programs that might
be a risk are not just there executing with the sole purpose of being
exploited. Only the bare minimum necessary! Let's not be digital gluttons
here, after all, gluttony is one of the seven deadly sins. Deadly for your
poor server which will have that background daemon cleaning files in a
directory that did exist in the system, but doesn't anymore, and is now
completely useless. Yeah, that server gets exploited by an attacker that
was able to leverage an unpatched zero-day in your Internet facing
application. No, you might not have been able to defend yourself against
the zero-day, but you definitely would’ve been able to avoid a more
sophisticated attack against your device had you not let an unnecessary
vulnerability prone daemon execute in your system just for the fun of
it. The attacker gets in through an issue that is not your fault, but gets
to stay and cause more problems because you were too software hungry to
delete something that was no longer needed by the system. More software,
more vulnerabilities. Another important thing to note here: this is a
continuous effort, remember? Yes, we are talking about post application
installation and setup security measures that be applied to your system in
order for it to be hardened, however, since the application environment
will change together with the application, it is necessary to maintain the
system and reanalyze all that has been setup in order to update the
hardening in case it is necessary. Your hardening needs to evolve together
with your software and your application.

We haven't yet talked about or dove deep into the elephant in the room
subject that is system files. We surrounded the subject, got close to it
here and there, but we still have not faced it head on, so let's go for it
now. Files contain the data which we analyze, which we process, which we
use to perform our computing, since even execution of a program begins with
the file containing the code that is to be executed. In Linux, and
consequently in Ubuntu, everything is a file. This essentially means files
will contain everything an attacker needs to compromise a system. They
might want to just read a file and steal its data, they might want to edit
a text configuration file and change the behavior of an application, or
they might want to create a file from scratch which will be a program that,
when run, will do malicious things in the system. The possibilities with
files are endless, and that is why file permissions must be treated with
the utmost care. We must protect the bricks that make up our operating
system. You have your server running. You have everything you need on the
system and you won't be performing any further install or making any
further changes critical to the service any time in the near future. So why
not spend some time checking your application files and your system files
to make sure they do not have any suspicious or possibly harmful
permissions? What files in the system contain sensitive data that shouldn't
be accessed by every user? Which files can be read by all, but should have
their editing permissions restricted only to the system administrator?
Which executables are allowed to be executed by a specific group of users
but not by any other user in the system due to dangerous commands being a
part of the compiled code? This analysis must be made and sometimes default
permissions must be questioned, since the idea is that you tailor your
environment to your needs. Use 'chmod' and 'chown' to get your permissions
right and protect your files.

An additional point of concern: 'suid' and 'sgid' binaries that might be
available in the system. It is interesting to disable files for which this
permission is unwanted, possibly because it can easily be exploited by an
attacker for privilege escalation or even worse. For those unaware, a
'setuid' or 'setgid' binary will allow a user to execute the program that
is this binary considering privileges that are not necessarily the ones set
for this user. The execution will happen with the privileges of the file
owner or the file group instead. Think about the 'ping' program, for
example. Our old friend, 'ping'. 'Ping' is a 'setuid' binary owned by
'root'. Whenever a user executes the 'ping' program, they run it with
'root' privileges, and this is generally necessary, since 'ping' requires
the opening of a socket and this is not an operation that can be initiated
by any random user in the system. However, since 'ping', IN THEORY, is
pretty harmless, letting a user acquire the temporary privilege to open the
socket and get 'ping' to run is a solution. Let's consider, however, a
situation where the 'ping' file's permissions are changed to allow any user
to edit it, so, writing to the file is available to everyone who wishes to
do it. Makes me nervous just thinking about it…A user with little
privileges in the system is then able to edit the file and change its
contents to that of a program that runs 'ping', but at the end also opens a
new shell. When this new 'ping' is executed with 'root' privileges, the new
shell that is opened can be opened with 'root' privileges as well. See the
problem here? Of course this is an example, and default permissions for the
'ping' executable do not allow any user to write to the file, the only user
allowed to do that being 'root'. The point here is to show the dangers of
the 'setuid' and 'setgid' binaries and encourage you to look at your system
and disable these permission bits for files where this is not necessary,
where setting them is not needed. Maybe you don't need your users to run
'ping' at all, so why not let just those with 'sudo' privileges involving
network access be allowed to actually run it? Disable the 'setuid' bit and
limit usage of 'ping' to those who really need it. The same goes to any
other 'setuid' binary any fresh software install might have created. Or
even files you have created and set permissions to yourself. 'Setuid' and
'setgid' binaries are very commonly leveraged by attackers to exploit a
system, so having less of them is a good measure to apply in order to
reduce your attack surface. Also...let's continue doing continuous work
here, and always check permissions and 'suid' or 'sgid' for new files that
are welcomed into our system, or old ones that are updated.

What's next then? We seem to have covered all of our bases, securing every
part of our system. Go us! However, some say that teamwork is the best kind
of work, so let's increase our hardening by going beyond our lonely manual
configurations and implementations and use some security software to help
us. You are not alone in the digital world. You are not the only one trying
to make your device more secure and trying to protect it against Internet
predators. A lot of people have developed a lot of software to help us
strengthen our defenses and better manage security in our devices. So here
are a few to consider: 'fail2ban', which is an intrusion detection and
prevention system that will analyze your log files and block suspicious
activity through your firewall should any suspicious activity be
detected. Other open source software out there like Snort and Suricata can
also be used to achieve similar things to this; also consider installing
malware detecting software with ClamAV or exploit detecting software with
RootkitHunter; 2FA is highly recommended nowadays to anyone that wishes to
use authentication in a secure manner, so why not implement it directly in
your Ubuntu OS? Through Google's PAM package, for example, it is possible
to set 2FA for users logging into your machine, using 'sudo', doing
everything in the system that requires a password! NO, don't even think
about considering the use of a less strong password because of this, but do
see it as another layer added to the various others we have been building
up here to keep your system secure; another authentication alternative is
considering the usage of a centralized authentication system, where your
users are not authenticated locally, but instead in a remote server
dedicated to this type of service. Of course, do not forget that usually, a
service providing device, such as your own server, will have local
application-only users that do not need to be authenticated with this other
centralized authentication unit in order to run their activities in the
device, so do configure those properly. However, for users that are a part
of your organization layout, it might be interesting to consider
outsourcing your authentication needs to this extra server. Keep in mind,
however, that this increases the attack surface for your infrastructure in
general, since you add to it an entirely new service device, and apply it
only if the pay-off is worth it to you and you entire structure; and last
but not least, do consider using software that enforces Mandatory Access
Control, such as SELinux, and of course, the one and only AppArmor.

Mandatory Access Control, or MAC, for short, is the counterpart to DAC, or
Discretionary Access Control. In DAC we have that access control is
performed in such a way that access is allowed to resources based on the
identity of a user and what the resource owners allow or not for that user
in that resource. Here, all the OS can do is enforce permissions based on
identity limits set by this resource owner. On the other hand, MAC is the
type of access control where a policy administrator, which is usually the
'root' user, but can be another administrative user, is the one to
establish access permissions to a resource, no matter the owner of that
resource. The policy administrator is able to make such choices not only
based on the resource but also based on the entity which will access it as
well, this entity possibly being a user, or even a program, and resources
being files, network devices and other programs. The operating system can
then enforce access beyond the one set by the resource owner and
considering more than just the identity of the entity that wishes to access
the resource. In DAC, permissions for a specific resource can be easily
changed by the user that owns it. The Linux file system permissions are an
example of DAC. Changes to these permissions, as simple as they may be, can
result in programs or users being able to interact with resources they
normally shouldn't, and the ever untrustworthy user is the only one
standing in the way of that. On the other hand, in MAC, with permissions or
sets of permissions being defined by a policy administrator only, a random
user can no longer change the ones associated with a resource just because
they own it. Well, they can, through DAC, but changing overall resource
permissions will no longer be as easy as just running 'chmod'. That is
because, as an additional layer to the checks performed to the DAC set, MAC
will give more granularity to the access control process, and, based on the
rules set by the policy administrator, define in an owner independent
manner, what users or programs can access in the system based on who they
are, and based on what permissions they have assigned to them regarding
each specific resource. And if some shady entity wants to maybe bypass
that, they will have to go through the dead body of the kernel of the
operating system, which is a much harder beast to face. Even though DAC
might be a more flexible way to set resource permissions, MAC is usually
considered the more secure alternative and it can even be used as a
complimentary measure on top of DAC to add more security to your
system. You can do this, for example, by activating the AppArmor kernel
security model in your Ubuntu OS, and it will allow you to restrict actions
that running processes can take and resources they can access. AppArmor,
therefore, will bind programs, and confine them, reducing the range of
harmful operations a program might be able to execute in your system. Each
program will have a profile associated with it, and these will contain
access rules which, when broken, can have the related attempt simply
reported, or instead blocked. An example would be disallowing access to a
certain directory for the process that is your web server. The web server
should only access web server related directories and files and AppArmor
can be set up to guarantee that. Joining DAC and MAC in your system will
allow you to build up your security layers very efficiently, so do consider
learning more about software that allows this to happen, as it will bring
you closer to the hardened utopia we all look forward to achieving.

We did it. We created an inhabitable and secure ecosystem. Just like Earth
after the many, many, MANY years that came after the big bang. Thankfully
it didn't take us that long, although it wasn't a walk in the park getting
all that hardening done. Our job, however, is never complete, as cyber
security is a continuous effort. Have I already mentioned this? I can't
remember. Anyway, the idea is to keep hardening even after all is set and
done to run your service. How can this be achieved?

Well, for starters, keep your Ubuntu system updated and install patched
package versions when possible. Yes, sometimes updating breaks the system,
but between spending time to maybe adjust to changes, and spending a lot of
nights awake having to choo away an attacker instead, which one would you
rather do? Another thing that needs to be done, always, is maintenance of
users, groups and files in the system. I already mentioned this, but I am
bringing it up again because it is very important. Your server is now a
living entity, working to provide data and utilities to users all across
the Internet. Seasons will change, updates will happen, files will
transform, users will come and go, but you will stay. You will stay and
update user and file permissions according to what is applicable to your
ever changing system for that point in time. Don't assume that your initial
configuration of users and files will apply forever. What is forever though
is your effort to monitor and manage this system you have brought to
life. Pretty words to live by, and what we should actually be doing with
our planet, you know...taking care of it...but I once again digress. And
just as a last tip...to end this suggestion list in a very random and
abrupt manner: shred your files, don't just remove them from a
system. Deleting a file simply removes the reference to it in a filesystem,
meaning someone can still dig it up from the disk should they be determined
enough to do it. Get rid of sensitive data the correct way and overwrite in
disk that which will no longer be used in your server.

We finally reach the end my friends, and the key takeaway here is: every
system is unique, and every service will have its own infrastructure and
needs. Do not apply all of the changes suggested here if they don't bring
any benefits to you. Mom used to tell you to eat your vegetables, but if
you are allergic to one of them, I am sure she wouldn't encourage you to do
it, especially if you don't like eating it! What I mean here is: all we
have here are suggestions, some which might be amazing and super useful to
you, some that won't work. Know your system and you will definitely know
what will work best for you. This might even be my actual last tip, if I
haven't made this clear enough with all I have said previously: know your
IT infrastructure well, and you will better know how to manage it and how
to defend it. Hardening might prevent a lot from happening, keeping you
safe from various intended attacks, however, creativity has always been the
evolution of man, and creative hackers are plenty out there, so it might be
that your hardening sometimes might fail you. If you know your system well,
though, you might just be the last layer of hardening the system needs to
kick out that hacker that was able to worm their way into the network. Keep
your planet orbiting around the sun, keep your ecosystem alive and well,
and do it by knowing how it works and by taking care of it when what used
to work might not anymore.

That is all for today's listeners! I hope you enjoyed all of the hardening
suggestions we had for you in this and in the two previous episodes, and I
hope you get to use them in your own systems to make them more secure! As
always, do feel free to share your thoughts in our social media channels,
and for now, I bid you all farewell and until next time! Bye!


### Python3.10 has PIE enabled for Ubuntu 22.04 LTS (🥧) [38:16] {#python3-dot-10-has-pie-enabled-for-ubuntu-22-dot-04-lts-----38-16}

-   [Episode 151](https://ubuntusecuritypodcast.org/episode-151/)
-   Thanks to Foundations team, in particular Matthias Klose (doko)
-   <https://bugs.launchpad.net/ubuntu/+source/python2.7/+bug/1452115>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)