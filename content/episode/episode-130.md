+++
title = "Episode 130"
description = """
  This week we discuss compiler warnings as build errors in the Linux kernel,
  plus we look at security updates for HAProxy, GNU cpio, PySAML2,
  mod-auth-mellon and more.
  """
date = 2021-09-10T14:21:00+09:30
lastmod = 2021-09-10T14:22:09+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E130.mp3"
podcast_duration = "18:33"
podcast_bytes = 14373834
permalink = "https://ubuntusecuritypodcast.org/episode-130/"
guid = "f1c770789e830b60f021a769a30c975ed0121e49ba25c924fc675d70e9be1a2f02f279d2d3f6699cdfd9b70952436b9e367071c5e4e5335069236f80a17ff1e1"
+++

## Overview {#overview}

This week we discuss compiler warnings as build errors in the Linux kernel,
plus we look at security updates for HAProxy, GNU cpio, PySAML2,
mod-auth-mellon and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

15 unique CVEs addressed


### [[USN-5051-4](https://ubuntu.com/security/notices/USN-5051-4)] OpenSSL regression [00:51] {#usn-5051-4-openssl-regression-00-51}

-   1 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2021-3712](https://ubuntu.com/security/CVE-2021-3712)
-   [Episode 129](https://ubuntusecuritypodcast.org/episode-129/)
-   Original backport of patch contained a typo which introduced a regression
    where ASN1_STRINGs would fail to print in some cases


### [[USN-5062-1](https://ubuntu.com/security/notices/USN-5062-1)] Linux kernel vulnerability [01:20] {#usn-5062-1-linux-kernel-vulnerability-01-20}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2021-3653](https://ubuntu.com/security/CVE-2021-3653)
-   AMD specific issue in KVM subsystem with nested virtualisation - would
    fail to validate particular operations which could be performed by a
    guest VM - in this case would allow a guest to enable the Advanced
    Virtual Interrupt Controller for a nested VM (ie L2 VM) - this would then
    allow the L2 VM to write to host memory -> code execution on the host


### [[USN-5063-1](https://ubuntu.com/security/notices/USN-5063-1)] HAProxy vulnerabilities [02:40] {#usn-5063-1-haproxy-vulnerabilities-02-40}

-   1 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-40346](https://ubuntu.com/security/CVE-2021-40346)
-   Integer overflow in handling of header name lengths - most significant
    bit of header **name** length could slip into the LSB of header **value**
    length - could then craft a valid request that would inject a dummy
    content-length on input, this would then be reproduced on the output as
    well as the original correct header length - can then get a "blind"
    request smuggling attack since the extra request bypasses ACL checking
    etc


### [[USN-5064-1](https://ubuntu.com/security/notices/USN-5064-1)] GNU cpio vulnerability [04:13] {#usn-5064-1-gnu-cpio-vulnerability-04-13}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-38185](https://ubuntu.com/security/CVE-2021-38185)
-   Integer overflow -> heap buffer overflow in the handling of pattern
    files - this allows to specify a file which contains a list of patterns
    to match against filenames in the cpio archive which should be
    extracted - is not clear if can easily abuse this as a remote attacker
    since would need to be able to supply a crafted pattern file and have
    this get used but these are not often used in practice


### [[USN-5065-1](https://ubuntu.com/security/notices/USN-5065-1)] Open vSwitch vulnerability [05:08] {#usn-5065-1-open-vswitch-vulnerability-05-08}

-   1 CVEs addressed in Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-36980](https://ubuntu.com/security/CVE-2021-36980)
-   UAF in decoding of RAW_ENCAP actions - remote attacker could craft one ->
    crash / RCE..?


### [[USN-5066-1](https://ubuntu.com/security/notices/USN-5066-1), [USN-5066-2](https://ubuntu.com/security/notices/USN-5066-2)] PySAML2 vulnerability [05:39] {#usn-5066-1-usn-5066-2-pysaml2-vulnerability-05-39}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-21239](https://ubuntu.com/security/CVE-2021-21239)
-   pysaml2 uses xmlsec1 binary to validate cryptographic signatures on SAML
    documents
-   By default xmlsec will accept any type of key found in the document to
    verify the signature - so an attacker could embed their own signature
    using just a HMAC and this would get validated as correct without even
    consulting the X509 cert which should be used to validate the document -
    simple fix to just change the CLI arguments to xmlsec1 to specify that it
    should validate based on x509 certs


### [[USN-5067-1](https://ubuntu.com/security/notices/USN-5067-1)] SSSD vulnerabilities [07:06] {#usn-5067-1-sssd-vulnerabilities-07-06}

-   4 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-3621](https://ubuntu.com/security/CVE-2021-3621)
    -   [CVE-2019-3811](https://ubuntu.com/security/CVE-2019-3811)
    -   [CVE-2018-16838](https://ubuntu.com/security/CVE-2018-16838)
    -   [CVE-2018-10852](https://ubuntu.com/security/CVE-2018-10852)
-   Possible shell command injection via the sssctl binary using the
    logs-fetch and cache-expire subcommands - if could trick root into
    running crafted commands could then get root... - was as a result of
    using the system() syscall which evaluates a string to the shell - so
    allows shell command injection directly - was fixed to instead use
    fork() + execvp() on an array of arguments - which doesn't go via the
    shell to run the specified subcommand
-   common pattern for security vulns, something we specifically look for
    when auditing packages as part of the security review for MIRs


### [[USN-5069-1](https://ubuntu.com/security/notices/USN-5069-1)] mod-auth-mellon vulnerability [08:54] {#usn-5069-1-mod-auth-mellon-vulnerability-08-54}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-3639](https://ubuntu.com/security/CVE-2021-3639)
-   SAML2 auth module for Apache
-   Failed to filter URLS that start with `///` - an attacker could craft a URL
    that specified a particular URL via the `ReturnTo` parameter and this would
    then automatically redirect the user to that crafted URL - so could be
    used for phishing attacks that look more trustworthy. ie. an attacker
    creates a phishing site that copies the victim site at their own
    domain. they then send an email to a user asking them to login and they
    specify a URL to the real victim site but with the `ReturnTo` parameter set
    to their own site - a user looking at this URL will see it specifies the
    real site so won't be concerned - when they visit it they get
    automatically redirected to the victim site - so if they don't then check
    the URL they will start logging into the fake phishing site and not the
    real one - fixed to just reject these URLs so they don't get abused by
    the redirect process


### [[USN-5068-1](https://ubuntu.com/security/notices/USN-5068-1)] GD library vulnerabilities [10:24] {#usn-5068-1-gd-library-vulnerabilities-10-24}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Hirsute (21.04)
    -   [CVE-2021-38115](https://ubuntu.com/security/CVE-2021-38115)
    -   [CVE-2021-40145](https://ubuntu.com/security/CVE-2021-40145)
    -   [CVE-2021-381](https://ubuntu.com/security/CVE-2021-381) <!--  -->
    -   [CVE-2017-6363](https://ubuntu.com/security/CVE-2017-6363)
-   Crafted image files -> OOB read / write - crash / code exec
-   One in TGA handling but others in the proprietary GD/GD2 formats which
    upstream say is now deprecated so shouldn't get a CVE - recommend if you
    are processing GD/GD2 image files from untrusted sources that you stop as
    upstream may stop issuing updates for these / may not get CVEs


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Linux kernel enables -Werror [11:33] {#linux-kernel-enables-werror-11-33}

-   Initially [enabled by default](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3fe617ccafd6f5bb33c2391d6f4eeb41c1fd0151), [in response](https://lore.kernel.org/linux-hardening/CAHk-=wj4EG=kCOaqyPEq5VXa97kyUHsBpBn3DWwE91qcnDytOQ@mail.gmail.com/) to patches from Kees Cook @
    Google which introduced a bunch of new warnings - Linus wants a clean
    build
-   [Lots of push back](https://lore.kernel.org/linux-security-module/20210907183843.33028-1-ndesaulniers@google.com/) since this then immediately broke a heap of CI systems
    as there a lots of existing bits of kernel code that generates warnings -
    and depending on what config options you enable you compile different
    bits of code so can see or not see various warnings - and hence different
    architectures etc - even having a [different locale / LANG setting](https://lore.kernel.org/linux-hardening/202109061009.3C4B6114C3@keescook/) can
    result in different compiler warnings as Kees found due to the nature of
    some of the tests
-   Given the huge codebase with so many different configurations is almost
    impossible to test them all and find all the various warnings, let alone
    actually fix them
-   For years folks have been trying to drive down the warnings but is still
    a hard and ongoing effort
-   As such, ended up [changing](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit?id=b339ec9c229aaf399296a120d7be0e34fbc355ca) this to a [suggestion from Marco Elver](https://lore.kernel.org/linux-security-module/YTfkO2PdnBXQXvsm@elver.google.com/) (also at
    Google) to enable this when `COMPILE_TEST` is enabled - this used as a flag
    to tell the kernel to compile everything even if it is not being used -
    and is then often used by CI systems / developers which explicitly want
    to compile everything who work on detecting new warnings
-   Is a lofty goal and is very useful from a security PoV and is
    illustrative of many real world efforts that try and introduce static
    analysis etc for an existing codebase
-   Immediately get a high number of 'errors' now that need to be addressed -
    was fine before? - so how to introduce these in a way that doesn't impose
    a huge upfront cost but still incentivizes fixing them over time and
    allows to detect new issues
-   Is good to see a focus on this in a more tangible way from upstream as
    compiler warnings are there for a reason and should not be ignored


### Hiring {#hiring}


#### Linux Cryptography and Security Engineer {#linux-cryptography-and-security-engineer}

-   <https://canonical.com/careers/2612092/linux-cryptography-and-security-engineer-remote>


#### Security Engineer - Ubuntu {#security-engineer-ubuntu}

-   <https://canonical.com/careers/2925180/security-engineer-ubuntu-remote>


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu\_sec on twitter](https://twitter.com/ubuntu%5Fsec)
