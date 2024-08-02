+++
title = "Episode 233"
description = """
  This week we take a look at the recent Crowdstrike outage and what we can learn
  from it compared to the testing and release process for security updates in
  Ubuntu, plus we cover details of vulnerabilities in popper, phpCAS, EDK II,
  Python, OpenJDK and one package with over 300 CVE fixes in a single update.
  """
date = 2024-08-02T17:05:00+09:30
lastmod = 2024-08-02T17:06:22+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E233.mp3"
podcast_duration = 1447
podcast_bytes = 22580692
permalink = "https://ubuntusecuritypodcast.org/episode-233/"
guid = "ba8f315e6aff94fd8f0f481fef53b3cb064a5383e1e2673a7dfe3998fdf2d50476f22f2050b82f7f7f6ab8a51ce3a7ceebef1739cce5b8a2f341c5cdab896d7e"
+++

## Overview {#overview}

This week we take a look at the recent Crowdstrike outage and what we can learn
from it compared to the testing and release process for security updates in
Ubuntu, plus we cover details of vulnerabilities in popper, phpCAS, EDK II,
Python, OpenJDK and one package with over 300 CVE fixes in a single update.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

462 unique CVEs addressed


### [[USN-6915-1](https://ubuntu.com/security/notices/USN-6915-1)] poppler vulnerability (01:35) {#usn-6915-1-poppler-vulnerability--01-35}

-   1 CVEs addressed in Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-6239](https://ubuntu.com/security/CVE-2024-6239) <!-- medium -->
-   Installed by default in Ubuntu due to use by cups
-   PDF document format describes a Catalog which has a tree of destinations -
    essentially hyperlinks within the document. These can be either a page number
    etc or a named location within the document. If open a crafted document with a
    missing name property for a destination - name would then be NULL and would
    trigger a NULL ptr deref -&gt; crash -&gt; DoS


### [[USN-6913-1](https://ubuntu.com/security/notices/USN-6913-1)] phpCAS vulnerability (02:26) {#usn-6913-1-phpcas-vulnerability--02-26}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-39369](https://ubuntu.com/security/CVE-2022-39369) <!-- medium -->
-   Authentication library for PHP to allow PHP applications to authenticates
    users against a Central Authentication Server (ie. SSO).
-   When used for SSO, a client who is trying to use a web application gets
    directed to the CAS. The CAS then authenticates the user and returns a service
    ticket - the client then needs to validate this ticket with the CAS since it
    could have possibly been injected via the application. To do this, pass the
    ticket along with its own service identifier to CAS - and if this succeeds is
    provided with the details of which user was authenticated etc.
-   For clients, previously would use HTTP headers to determine where the CAS
    server was to authenticate the ticket. Since these can be manipulated by a
    malicious application, could essentially redirect the client to send the
    ticket to the attacker who could then use that to impersonate the client and
    login as the user.
-   Fix requires a refactor to include an additional API parameter which specifies
    either a fixed CAS server for the client to use, or a mechanism to
    auto-discover this in a secure way - either way, applications using phpCAS now
    need to be updated.


### [[USN-6914-1](https://ubuntu.com/security/notices/USN-6914-1)] OCS Inventory vulnerability {#usn-6914-1-ocs-inventory-vulnerability}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-39369](https://ubuntu.com/security/CVE-2022-39369) <!-- medium -->
-   Same as above since has an embedded copy of phpCAS


### [[USN-6916-1](https://ubuntu.com/security/notices/USN-6916-1)] Lua vulnerabilities (04:44) {#usn-6916-1-lua-vulnerabilities--04-44}

-   2 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-33099](https://ubuntu.com/security/CVE-2022-33099) <!-- low -->
    -   [CVE-2022-28805](https://ubuntu.com/security/CVE-2022-28805) <!-- medium -->
-   Heap buffer over-read and a possible heap buffer over-flow via recursive error
    handling - looks like both require to be interpreting malicious code


### [[USN-6920-1](https://ubuntu.com/security/notices/USN-6920-1)] EDK II vulnerabilities (05:04) {#usn-6920-1-edk-ii-vulnerabilities--05-04}

-   5 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2019-0160](https://ubuntu.com/security/CVE-2019-0160) <!-- medium -->
    -   [CVE-2018-3613](https://ubuntu.com/security/CVE-2018-3613) <!-- low -->
    -   [CVE-2018-12183](https://ubuntu.com/security/CVE-2018-12183) <!-- low -->
    -   [CVE-2018-12182](https://ubuntu.com/security/CVE-2018-12182) <!-- low -->
    -   [CVE-2017-5731](https://ubuntu.com/security/CVE-2017-5731) <!-- medium -->
-   UEFI firmware implementation in qemu etc
-   Various missing bounds checks -&gt; stack and heap buffer overflows -&gt; DoS or
    code execution in BIOS context -&gt; privilege escalation within VM


### [[USN-6928-1](https://ubuntu.com/security/notices/USN-6928-1)] Python vulnerabilities (05:49) {#usn-6928-1-python-vulnerabilities--05-49}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-4032](https://ubuntu.com/security/CVE-2024-4032) <!-- low -->
    -   [CVE-2024-0397](https://ubuntu.com/security/CVE-2024-0397) <!-- medium -->
-   Memory race in the ssl module - can call into various functions to get
    certificate information at the same time as certs are loaded if happening to
    be doing a TLS handshake with a certificate directory configured - all via
    different threads. Python would then possibly return inconsistent results
    leading to various issues
-   Occurs since ssl module is implemented in C to interface with openssl and did
    not properly lock access to the certificate store


### [[USN-6929-1](https://ubuntu.com/security/notices/USN-6929-1), [USN-6930-1](https://ubuntu.com/security/notices/USN-6930-1)] OpenJDK 8 and OpenJDK 11 vulnerabilities (06:52) {#usn-6929-1-usn-6930-1-openjdk-8-and-openjdk-11-vulnerabilities--06-52}

-   6 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-21147](https://ubuntu.com/security/CVE-2024-21147) <!-- medium -->
    -   [CVE-2024-21145](https://ubuntu.com/security/CVE-2024-21145) <!-- medium -->
    -   [CVE-2024-21144](https://ubuntu.com/security/CVE-2024-21144) <!-- medium -->
    -   [CVE-2024-21140](https://ubuntu.com/security/CVE-2024-21140) <!-- medium -->
    -   [CVE-2024-21138](https://ubuntu.com/security/CVE-2024-21138) <!-- medium -->
    -   [CVE-2024-21131](https://ubuntu.com/security/CVE-2024-21131) <!-- medium -->
-   Latest upstream releases of OpenJDK 8 and 11
-   8u422-b05-1,  11.0.24+8
-   Fixes various issues in the Hotspot and Concurrency components


### [[USN-6931-1](https://ubuntu.com/security/notices/USN-6931-1), [USN-6932-1](https://ubuntu.com/security/notices/USN-6932-1)] OpenJDK 17 and OpenJDK 21 vulnerabilities (07:11) {#usn-6931-1-usn-6932-1-openjdk-17-and-openjdk-21-vulnerabilities--07-11}

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-21147](https://ubuntu.com/security/CVE-2024-21147) <!-- medium -->
    -   [CVE-2024-21145](https://ubuntu.com/security/CVE-2024-21145) <!-- medium -->
    -   [CVE-2024-21140](https://ubuntu.com/security/CVE-2024-21140) <!-- medium -->
    -   [CVE-2024-21138](https://ubuntu.com/security/CVE-2024-21138) <!-- medium -->
    -   [CVE-2024-21131](https://ubuntu.com/security/CVE-2024-21131) <!-- medium -->
-   Latest upstream releases of OpenJDK 17 and 21
-   17.0.12+7,  21.0.4+7
-   Fixes the same issues in the Hotspot component


### [[USN-6934-1](https://ubuntu.com/security/notices/USN-6934-1)] MySQL vulnerabilities (07:29) {#usn-6934-1-mysql-vulnerabilities--07-29}

-   15 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Noble (24.04 LTS)
    -   [CVE-2024-21185](https://ubuntu.com/security/CVE-2024-21185) <!-- medium -->
    -   [CVE-2024-21179](https://ubuntu.com/security/CVE-2024-21179) <!-- medium -->
    -   [CVE-2024-21177](https://ubuntu.com/security/CVE-2024-21177) <!-- medium -->
    -   [CVE-2024-21173](https://ubuntu.com/security/CVE-2024-21173) <!-- medium -->
    -   [CVE-2024-21171](https://ubuntu.com/security/CVE-2024-21171) <!-- medium -->
    -   [CVE-2024-21165](https://ubuntu.com/security/CVE-2024-21165) <!-- medium -->
    -   [CVE-2024-21163](https://ubuntu.com/security/CVE-2024-21163) <!-- medium -->
    -   [CVE-2024-21162](https://ubuntu.com/security/CVE-2024-21162) <!-- medium -->
    -   [CVE-2024-21142](https://ubuntu.com/security/CVE-2024-21142) <!-- medium -->
    -   [CVE-2024-21134](https://ubuntu.com/security/CVE-2024-21134) <!-- medium -->
    -   [CVE-2024-21130](https://ubuntu.com/security/CVE-2024-21130) <!-- medium -->
    -   [CVE-2024-21129](https://ubuntu.com/security/CVE-2024-21129) <!-- medium -->
    -   [CVE-2024-21127](https://ubuntu.com/security/CVE-2024-21127) <!-- medium -->
    -   [CVE-2024-21125](https://ubuntu.com/security/CVE-2024-21125) <!-- medium -->
    -   [CVE-2024-20996](https://ubuntu.com/security/CVE-2024-20996) <!-- medium -->
-   Also latest upstream release
-   8.0.39
-   Bug fixes, possible new features and incompatible changes - consult release
    notes:
    -   <https://dev.mysql.com/doc/relnotes/mysql/8.0/en/news-8-0-38.html>
    -   <https://dev.mysql.com/doc/relnotes/mysql/8.0/en/news-8-0-39.html>
    -   <https://www.oracle.com/security-alerts/cpujul2024.html>


### [[USN-6917-1](https://ubuntu.com/security/notices/USN-6917-1)] Linux kernel vulnerabilities (07:57) {#usn-6917-1-linux-kernel-vulnerabilities--07-57}

-   156 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-35933](https://ubuntu.com/security/CVE-2024-35933) <!-- medium -->
    -   [CVE-2024-35910](https://ubuntu.com/security/CVE-2024-35910) <!-- medium -->
    -   [CVE-2024-27393](https://ubuntu.com/security/CVE-2024-27393) <!-- medium -->
    -   [CVE-2024-27004](https://ubuntu.com/security/CVE-2024-27004) <!-- medium -->
    -   [CVE-2024-27396](https://ubuntu.com/security/CVE-2024-27396) <!-- medium -->
    -   [CVE-2024-36029](https://ubuntu.com/security/CVE-2024-36029) <!-- medium -->
    -   [CVE-2024-26955](https://ubuntu.com/security/CVE-2024-26955) <!-- medium -->
    -   [CVE-2024-35976](https://ubuntu.com/security/CVE-2024-35976) <!-- medium -->
    -   [CVE-2024-26966](https://ubuntu.com/security/CVE-2024-26966) <!-- medium -->
    -   [CVE-2024-26811](https://ubuntu.com/security/CVE-2024-26811) <!-- medium -->
    -   [CVE-2024-35871](https://ubuntu.com/security/CVE-2024-35871) <!-- medium -->
    -   [CVE-2023-52699](https://ubuntu.com/security/CVE-2023-52699) <!-- medium -->
    -   [CVE-2024-35796](https://ubuntu.com/security/CVE-2024-35796) <!-- medium -->
    -   [CVE-2024-35851](https://ubuntu.com/security/CVE-2024-35851) <!-- medium -->
    -   [CVE-2024-35885](https://ubuntu.com/security/CVE-2024-35885) <!-- medium -->
    -   [CVE-2024-35813](https://ubuntu.com/security/CVE-2024-35813) <!-- medium -->
    -   [CVE-2024-35789](https://ubuntu.com/security/CVE-2024-35789) <!-- medium -->
    -   [CVE-2024-35825](https://ubuntu.com/security/CVE-2024-35825) <!-- medium -->
    -   [CVE-2024-26994](https://ubuntu.com/security/CVE-2024-26994) <!-- medium -->
    -   [CVE-2024-35815](https://ubuntu.com/security/CVE-2024-35815) <!-- medium -->
    -   [CVE-2024-27395](https://ubuntu.com/security/CVE-2024-27395) <!-- medium -->
    -   [CVE-2024-26981](https://ubuntu.com/security/CVE-2024-26981) <!-- medium -->
    -   [CVE-2024-35886](https://ubuntu.com/security/CVE-2024-35886) <!-- medium -->
    -   [CVE-2024-26931](https://ubuntu.com/security/CVE-2024-26931) <!-- medium -->
    -   [CVE-2024-35791](https://ubuntu.com/security/CVE-2024-35791) <!-- medium -->
    -   [CVE-2024-35849](https://ubuntu.com/security/CVE-2024-35849) <!-- medium -->
    -   [CVE-2024-35978](https://ubuntu.com/security/CVE-2024-35978) <!-- medium -->
    -   [CVE-2024-35895](https://ubuntu.com/security/CVE-2024-35895) <!-- medium -->
    -   [CVE-2024-35918](https://ubuntu.com/security/CVE-2024-35918) <!-- medium -->
    -   [CVE-2024-35902](https://ubuntu.com/security/CVE-2024-35902) <!-- medium -->
    -   [CVE-2024-26926](https://ubuntu.com/security/CVE-2024-26926) <!-- medium -->
    -   [CVE-2024-35934](https://ubuntu.com/security/CVE-2024-35934) <!-- medium -->
    -   [CVE-2024-35807](https://ubuntu.com/security/CVE-2024-35807) <!-- medium -->
    -   [CVE-2024-35805](https://ubuntu.com/security/CVE-2024-35805) <!-- medium -->
    -   [CVE-2024-36008](https://ubuntu.com/security/CVE-2024-36008) <!-- medium -->
    -   [CVE-2024-26950](https://ubuntu.com/security/CVE-2024-26950) <!-- medium -->
    -   [CVE-2024-26973](https://ubuntu.com/security/CVE-2024-26973) <!-- medium -->
    -   [CVE-2024-35898](https://ubuntu.com/security/CVE-2024-35898) <!-- medium -->
    -   [CVE-2024-35955](https://ubuntu.com/security/CVE-2024-35955) <!-- medium -->
    -   [CVE-2024-36004](https://ubuntu.com/security/CVE-2024-36004) <!-- medium -->
    -   [CVE-2024-36006](https://ubuntu.com/security/CVE-2024-36006) <!-- medium -->
    -   [CVE-2024-35990](https://ubuntu.com/security/CVE-2024-35990) <!-- medium -->
    -   [CVE-2024-35944](https://ubuntu.com/security/CVE-2024-35944) <!-- medium -->
    -   [CVE-2024-36007](https://ubuntu.com/security/CVE-2024-36007) <!-- medium -->
    -   [CVE-2024-35896](https://ubuntu.com/security/CVE-2024-35896) <!-- medium -->
    -   [CVE-2024-35819](https://ubuntu.com/security/CVE-2024-35819) <!-- medium -->
    -   [CVE-2024-26988](https://ubuntu.com/security/CVE-2024-26988) <!-- medium -->
    -   [CVE-2024-35872](https://ubuntu.com/security/CVE-2024-35872) <!-- medium -->
    -   [CVE-2024-36025](https://ubuntu.com/security/CVE-2024-36025) <!-- medium -->
    -   [CVE-2024-26957](https://ubuntu.com/security/CVE-2024-26957) <!-- medium -->
    -   [CVE-2024-35897](https://ubuntu.com/security/CVE-2024-35897) <!-- medium -->
    -   [CVE-2024-27016](https://ubuntu.com/security/CVE-2024-27016) <!-- medium -->
    -   [CVE-2024-35806](https://ubuntu.com/security/CVE-2024-35806) <!-- medium -->
    -   [CVE-2024-35927](https://ubuntu.com/security/CVE-2024-35927) <!-- medium -->
    -   [CVE-2022-48808](https://ubuntu.com/security/CVE-2022-48808) <!-- medium -->
    -   [CVE-2024-35960](https://ubuntu.com/security/CVE-2024-35960) <!-- medium -->
    -   [CVE-2024-27001](https://ubuntu.com/security/CVE-2024-27001) <!-- medium -->
    -   [CVE-2024-35970](https://ubuntu.com/security/CVE-2024-35970) <!-- medium -->
    -   [CVE-2024-35988](https://ubuntu.com/security/CVE-2024-35988) <!-- medium -->
    -   [CVE-2024-36005](https://ubuntu.com/security/CVE-2024-36005) <!-- medium -->
    -   [CVE-2024-35821](https://ubuntu.com/security/CVE-2024-35821) <!-- medium -->
    -   [CVE-2024-35925](https://ubuntu.com/security/CVE-2024-35925) <!-- medium -->
    -   [CVE-2024-26961](https://ubuntu.com/security/CVE-2024-26961) <!-- medium -->
    -   [CVE-2024-35817](https://ubuntu.com/security/CVE-2024-35817) <!-- medium -->
    -   [CVE-2024-26922](https://ubuntu.com/security/CVE-2024-26922) <!-- medium -->
    -   [CVE-2024-26976](https://ubuntu.com/security/CVE-2024-26976) <!-- medium -->
    -   [CVE-2024-35899](https://ubuntu.com/security/CVE-2024-35899) <!-- medium -->
    -   [CVE-2024-35984](https://ubuntu.com/security/CVE-2024-35984) <!-- medium -->
    -   [CVE-2024-26929](https://ubuntu.com/security/CVE-2024-26929) <!-- medium -->
    -   [CVE-2024-27018](https://ubuntu.com/security/CVE-2024-27018) <!-- medium -->
    -   [CVE-2024-35907](https://ubuntu.com/security/CVE-2024-35907) <!-- medium -->
    -   [CVE-2024-35884](https://ubuntu.com/security/CVE-2024-35884) <!-- medium -->
    -   [CVE-2023-52488](https://ubuntu.com/security/CVE-2023-52488) <!-- medium -->
    -   [CVE-2024-35982](https://ubuntu.com/security/CVE-2024-35982) <!-- medium -->
    -   [CVE-2024-26934](https://ubuntu.com/security/CVE-2024-26934) <!-- medium -->
    -   [CVE-2024-26935](https://ubuntu.com/security/CVE-2024-26935) <!-- medium -->
    -   [CVE-2024-35973](https://ubuntu.com/security/CVE-2024-35973) <!-- medium -->
    -   [CVE-2024-26958](https://ubuntu.com/security/CVE-2024-26958) <!-- medium -->
    -   [CVE-2024-27008](https://ubuntu.com/security/CVE-2024-27008) <!-- medium -->
    -   [CVE-2024-35809](https://ubuntu.com/security/CVE-2024-35809) <!-- medium -->
    -   [CVE-2024-26951](https://ubuntu.com/security/CVE-2024-26951) <!-- medium -->
    -   [CVE-2024-35900](https://ubuntu.com/security/CVE-2024-35900) <!-- medium -->
    -   [CVE-2024-35888](https://ubuntu.com/security/CVE-2024-35888) <!-- medium -->
    -   [CVE-2024-26965](https://ubuntu.com/security/CVE-2024-26965) <!-- medium -->
    -   [CVE-2024-26828](https://ubuntu.com/security/CVE-2024-26828) <!-- high -->
    -   [CVE-2024-35935](https://ubuntu.com/security/CVE-2024-35935) <!-- medium -->
    -   [CVE-2024-35857](https://ubuntu.com/security/CVE-2024-35857) <!-- medium -->
    -   [CVE-2024-26642](https://ubuntu.com/security/CVE-2024-26642) <!-- high -->
    -   [CVE-2024-26989](https://ubuntu.com/security/CVE-2024-26989) <!-- medium -->
    -   [CVE-2024-35893](https://ubuntu.com/security/CVE-2024-35893) <!-- medium -->
    -   [CVE-2024-35877](https://ubuntu.com/security/CVE-2024-35877) <!-- medium -->
    -   [CVE-2024-27009](https://ubuntu.com/security/CVE-2024-27009) <!-- medium -->
    -   [CVE-2024-35785](https://ubuntu.com/security/CVE-2024-35785) <!-- medium -->
    -   [CVE-2024-35905](https://ubuntu.com/security/CVE-2024-35905) <!-- medium -->
    -   [CVE-2024-27020](https://ubuntu.com/security/CVE-2024-27020) <!-- medium -->
    -   [CVE-2024-35901](https://ubuntu.com/security/CVE-2024-35901) <!-- medium -->
    -   [CVE-2024-26956](https://ubuntu.com/security/CVE-2024-26956) <!-- medium -->
    -   [CVE-2024-26977](https://ubuntu.com/security/CVE-2024-26977) <!-- medium -->
    -   [CVE-2024-26969](https://ubuntu.com/security/CVE-2024-26969) <!-- medium -->
    -   [CVE-2024-26810](https://ubuntu.com/security/CVE-2024-26810) <!-- medium -->
    -   [CVE-2024-26813](https://ubuntu.com/security/CVE-2024-26813) <!-- medium -->
    -   [CVE-2024-35930](https://ubuntu.com/security/CVE-2024-35930) <!-- medium -->
    -   [CVE-2024-26970](https://ubuntu.com/security/CVE-2024-26970) <!-- medium -->
    -   [CVE-2024-26687](https://ubuntu.com/security/CVE-2024-26687) <!-- medium -->
    -   [CVE-2024-27015](https://ubuntu.com/security/CVE-2024-27015) <!-- medium -->
    -   [CVE-2024-35847](https://ubuntu.com/security/CVE-2024-35847) <!-- medium -->
    -   [CVE-2024-26999](https://ubuntu.com/security/CVE-2024-26999) <!-- medium -->
    -   [CVE-2024-35940](https://ubuntu.com/security/CVE-2024-35940) <!-- medium -->
    -   [CVE-2024-35890](https://ubuntu.com/security/CVE-2024-35890) <!-- medium -->
    -   [CVE-2024-26814](https://ubuntu.com/security/CVE-2024-26814) <!-- medium -->
    -   [CVE-2024-35958](https://ubuntu.com/security/CVE-2024-35958) <!-- medium -->
    -   [CVE-2024-35804](https://ubuntu.com/security/CVE-2024-35804) <!-- medium -->
    -   [CVE-2024-26629](https://ubuntu.com/security/CVE-2024-26629) <!-- medium -->
    -   [CVE-2024-26974](https://ubuntu.com/security/CVE-2024-26974) <!-- medium -->
    -   [CVE-2023-52880](https://ubuntu.com/security/CVE-2023-52880) <!-- high -->
    -   [CVE-2024-26937](https://ubuntu.com/security/CVE-2024-26937) <!-- medium -->
    -   [CVE-2024-35922](https://ubuntu.com/security/CVE-2024-35922) <!-- medium -->
    -   [CVE-2024-35854](https://ubuntu.com/security/CVE-2024-35854) <!-- medium -->
    -   [CVE-2024-27013](https://ubuntu.com/security/CVE-2024-27013) <!-- medium -->
    -   [CVE-2024-35853](https://ubuntu.com/security/CVE-2024-35853) <!-- medium -->
    -   [CVE-2024-27000](https://ubuntu.com/security/CVE-2024-27000) <!-- medium -->
    -   [CVE-2024-35989](https://ubuntu.com/security/CVE-2024-35989) <!-- medium -->
    -   [CVE-2024-35852](https://ubuntu.com/security/CVE-2024-35852) <!-- medium -->
    -   [CVE-2024-35823](https://ubuntu.com/security/CVE-2024-35823) <!-- medium -->
    -   [CVE-2024-36020](https://ubuntu.com/security/CVE-2024-36020) <!-- medium -->
    -   [CVE-2024-36031](https://ubuntu.com/security/CVE-2024-36031) <!-- medium -->
    -   [CVE-2024-26923](https://ubuntu.com/security/CVE-2024-26923) <!-- high -->
    -   [CVE-2024-26654](https://ubuntu.com/security/CVE-2024-26654) <!-- medium -->
    -   [CVE-2024-26925](https://ubuntu.com/security/CVE-2024-26925) <!-- high -->
    -   [CVE-2024-35855](https://ubuntu.com/security/CVE-2024-35855) <!-- medium -->
    -   [CVE-2024-35997](https://ubuntu.com/security/CVE-2024-35997) <!-- medium -->
    -   [CVE-2024-35822](https://ubuntu.com/security/CVE-2024-35822) <!-- medium -->
    -   [CVE-2024-27019](https://ubuntu.com/security/CVE-2024-27019) <!-- medium -->
    -   [CVE-2024-35938](https://ubuntu.com/security/CVE-2024-35938) <!-- medium -->
    -   [CVE-2024-35915](https://ubuntu.com/security/CVE-2024-35915) <!-- medium -->
    -   [CVE-2024-35912](https://ubuntu.com/security/CVE-2024-35912) <!-- medium -->
    -   [CVE-2024-35936](https://ubuntu.com/security/CVE-2024-35936) <!-- medium -->
    -   [CVE-2024-35969](https://ubuntu.com/security/CVE-2024-35969) <!-- medium -->
    -   [CVE-2024-27059](https://ubuntu.com/security/CVE-2024-27059) <!-- medium -->
    -   [CVE-2024-26964](https://ubuntu.com/security/CVE-2024-26964) <!-- medium -->
    -   [CVE-2024-27437](https://ubuntu.com/security/CVE-2024-27437) <!-- medium -->
    -   [CVE-2024-26960](https://ubuntu.com/security/CVE-2024-26960) <!-- medium -->
    -   [CVE-2024-35950](https://ubuntu.com/security/CVE-2024-35950) <!-- medium -->
    -   [CVE-2024-26817](https://ubuntu.com/security/CVE-2024-26817) <!-- medium -->
    -   [CVE-2024-26984](https://ubuntu.com/security/CVE-2024-26984) <!-- medium -->
    -   [CVE-2024-26812](https://ubuntu.com/security/CVE-2024-26812) <!-- medium -->
    -   [CVE-2024-35879](https://ubuntu.com/security/CVE-2024-35879) <!-- medium -->
    -   [CVE-2024-26996](https://ubuntu.com/security/CVE-2024-26996) <!-- medium -->
    -   [CVE-2024-26993](https://ubuntu.com/security/CVE-2024-26993) <!-- medium -->
    -   [CVE-2024-25739](https://ubuntu.com/security/CVE-2024-25739) <!-- medium -->
    -   [CVE-2024-24861](https://ubuntu.com/security/CVE-2024-24861) <!-- medium -->
    -   [CVE-2024-24859](https://ubuntu.com/security/CVE-2024-24859) <!-- low -->
    -   [CVE-2024-24858](https://ubuntu.com/security/CVE-2024-24858) <!-- low -->
    -   [CVE-2024-24857](https://ubuntu.com/security/CVE-2024-24857) <!-- low -->
    -   [CVE-2024-23307](https://ubuntu.com/security/CVE-2024-23307) <!-- low -->
    -   [CVE-2022-38096](https://ubuntu.com/security/CVE-2022-38096) <!-- medium -->
-   5.15 - Azure + FDE (CVM)


### [[USN-6918-1](https://ubuntu.com/security/notices/USN-6918-1)] Linux kernel vulnerabilities {#usn-6918-1-linux-kernel-vulnerabilities}

-   180 CVEs addressed in Noble (24.04 LTS)
    -   [CVE-2024-24859](https://ubuntu.com/security/CVE-2024-24859) <!-- low -->
    -   [CVE-2024-24858](https://ubuntu.com/security/CVE-2024-24858) <!-- low -->
    -   [CVE-2024-24857](https://ubuntu.com/security/CVE-2024-24857) <!-- low -->
    -   [CVE-2024-35932](https://ubuntu.com/security/CVE-2024-35932) <!-- medium -->
    -   [CVE-2024-35937](https://ubuntu.com/security/CVE-2024-35937) <!-- medium -->
    -   [CVE-2024-27006](https://ubuntu.com/security/CVE-2024-27006) <!-- medium -->
    -   [CVE-2024-35960](https://ubuntu.com/security/CVE-2024-35960) <!-- medium -->
    -   [CVE-2024-27011](https://ubuntu.com/security/CVE-2024-27011) <!-- medium -->
    -   [CVE-2024-35924](https://ubuntu.com/security/CVE-2024-35924) <!-- medium -->
    -   [CVE-2024-35946](https://ubuntu.com/security/CVE-2024-35946) <!-- medium -->
    -   [CVE-2024-35942](https://ubuntu.com/security/CVE-2024-35942) <!-- medium -->
    -   [CVE-2024-35921](https://ubuntu.com/security/CVE-2024-35921) <!-- medium -->
    -   [CVE-2024-35908](https://ubuntu.com/security/CVE-2024-35908) <!-- medium -->
    -   [CVE-2024-26811](https://ubuntu.com/security/CVE-2024-26811) <!-- medium -->
    -   [CVE-2024-27008](https://ubuntu.com/security/CVE-2024-27008) <!-- medium -->
    -   [CVE-2024-35871](https://ubuntu.com/security/CVE-2024-35871) <!-- medium -->
    -   [CVE-2024-36019](https://ubuntu.com/security/CVE-2024-36019) <!-- medium -->
    -   [CVE-2024-35965](https://ubuntu.com/security/CVE-2024-35965) <!-- medium -->
    -   [CVE-2024-35973](https://ubuntu.com/security/CVE-2024-35973) <!-- medium -->
    -   [CVE-2024-26981](https://ubuntu.com/security/CVE-2024-26981) <!-- medium -->
    -   [CVE-2024-27009](https://ubuntu.com/security/CVE-2024-27009) <!-- medium -->
    -   [CVE-2024-27019](https://ubuntu.com/security/CVE-2024-27019) <!-- medium -->
    -   [CVE-2024-36022](https://ubuntu.com/security/CVE-2024-36022) <!-- medium -->
    -   [CVE-2024-35910](https://ubuntu.com/security/CVE-2024-35910) <!-- medium -->
    -   [CVE-2024-35907](https://ubuntu.com/security/CVE-2024-35907) <!-- medium -->
    -   [CVE-2024-35860](https://ubuntu.com/security/CVE-2024-35860) <!-- medium -->
    -   [CVE-2024-35951](https://ubuntu.com/security/CVE-2024-35951) <!-- medium -->
    -   [CVE-2024-26924](https://ubuntu.com/security/CVE-2024-26924) <!-- high -->
    -   [CVE-2024-26921](https://ubuntu.com/security/CVE-2024-26921) <!-- high -->
    -   [CVE-2024-35901](https://ubuntu.com/security/CVE-2024-35901) <!-- medium -->
    -   [CVE-2024-35972](https://ubuntu.com/security/CVE-2024-35972) <!-- medium -->
    -   [CVE-2024-35889](https://ubuntu.com/security/CVE-2024-35889) <!-- medium -->
    -   [CVE-2024-27017](https://ubuntu.com/security/CVE-2024-27017) <!-- medium -->
    -   [CVE-2024-35913](https://ubuntu.com/security/CVE-2024-35913) <!-- medium -->
    -   [CVE-2024-35936](https://ubuntu.com/security/CVE-2024-35936) <!-- medium -->
    -   [CVE-2024-36025](https://ubuntu.com/security/CVE-2024-36025) <!-- medium -->
    -   [CVE-2024-35961](https://ubuntu.com/security/CVE-2024-35961) <!-- medium -->
    -   [CVE-2024-35977](https://ubuntu.com/security/CVE-2024-35977) <!-- medium -->
    -   [CVE-2024-35902](https://ubuntu.com/security/CVE-2024-35902) <!-- medium -->
    -   [CVE-2024-26817](https://ubuntu.com/security/CVE-2024-26817) <!-- medium -->
    -   [CVE-2024-26994](https://ubuntu.com/security/CVE-2024-26994) <!-- medium -->
    -   [CVE-2023-52699](https://ubuntu.com/security/CVE-2023-52699) <!-- medium -->
    -   [CVE-2024-35868](https://ubuntu.com/security/CVE-2024-35868) <!-- medium -->
    -   [CVE-2024-35899](https://ubuntu.com/security/CVE-2024-35899) <!-- medium -->
    -   [CVE-2024-35888](https://ubuntu.com/security/CVE-2024-35888) <!-- medium -->
    -   [CVE-2024-26995](https://ubuntu.com/security/CVE-2024-26995) <!-- medium -->
    -   [CVE-2024-35865](https://ubuntu.com/security/CVE-2024-35865) <!-- medium -->
    -   [CVE-2024-26993](https://ubuntu.com/security/CVE-2024-26993) <!-- medium -->
    -   [CVE-2024-35863](https://ubuntu.com/security/CVE-2024-35863) <!-- medium -->
    -   [CVE-2024-35970](https://ubuntu.com/security/CVE-2024-35970) <!-- medium -->
    -   [CVE-2024-35943](https://ubuntu.com/security/CVE-2024-35943) <!-- medium -->
    -   [CVE-2024-35875](https://ubuntu.com/security/CVE-2024-35875) <!-- medium -->
    -   [CVE-2024-35978](https://ubuntu.com/security/CVE-2024-35978) <!-- medium -->
    -   [CVE-2024-27005](https://ubuntu.com/security/CVE-2024-27005) <!-- medium -->
    -   [CVE-2024-35909](https://ubuntu.com/security/CVE-2024-35909) <!-- medium -->
    -   [CVE-2024-35957](https://ubuntu.com/security/CVE-2024-35957) <!-- medium -->
    -   [CVE-2024-35950](https://ubuntu.com/security/CVE-2024-35950) <!-- medium -->
    -   [CVE-2024-26986](https://ubuntu.com/security/CVE-2024-26986) <!-- medium -->
    -   [CVE-2024-36020](https://ubuntu.com/security/CVE-2024-36020) <!-- medium -->
    -   [CVE-2024-35952](https://ubuntu.com/security/CVE-2024-35952) <!-- medium -->
    -   [CVE-2024-26928](https://ubuntu.com/security/CVE-2024-26928) <!-- medium -->
    -   [CVE-2024-35878](https://ubuntu.com/security/CVE-2024-35878) <!-- medium -->
    -   [CVE-2024-35954](https://ubuntu.com/security/CVE-2024-35954) <!-- medium -->
    -   [CVE-2024-26998](https://ubuntu.com/security/CVE-2024-26998) <!-- medium -->
    -   [CVE-2024-36024](https://ubuntu.com/security/CVE-2024-36024) <!-- medium -->
    -   [CVE-2024-26936](https://ubuntu.com/security/CVE-2024-26936) <!-- medium -->
    -   [CVE-2024-27018](https://ubuntu.com/security/CVE-2024-27018) <!-- medium -->
    -   [CVE-2024-35900](https://ubuntu.com/security/CVE-2024-35900) <!-- medium -->
    -   [CVE-2024-35940](https://ubuntu.com/security/CVE-2024-35940) <!-- medium -->
    -   [CVE-2024-35985](https://ubuntu.com/security/CVE-2024-35985) <!-- medium -->
    -   [CVE-2024-35944](https://ubuntu.com/security/CVE-2024-35944) <!-- medium -->
    -   [CVE-2024-35958](https://ubuntu.com/security/CVE-2024-35958) <!-- medium -->
    -   [CVE-2024-35864](https://ubuntu.com/security/CVE-2024-35864) <!-- medium -->
    -   [CVE-2024-35975](https://ubuntu.com/security/CVE-2024-35975) <!-- medium -->
    -   [CVE-2024-27002](https://ubuntu.com/security/CVE-2024-27002) <!-- medium -->
    -   [CVE-2024-36018](https://ubuntu.com/security/CVE-2024-36018) <!-- medium -->
    -   [CVE-2024-35974](https://ubuntu.com/security/CVE-2024-35974) <!-- medium -->
    -   [CVE-2024-26926](https://ubuntu.com/security/CVE-2024-26926) <!-- medium -->
    -   [CVE-2024-35877](https://ubuntu.com/security/CVE-2024-35877) <!-- medium -->
    -   [CVE-2024-35916](https://ubuntu.com/security/CVE-2024-35916) <!-- medium -->
    -   [CVE-2024-35934](https://ubuntu.com/security/CVE-2024-35934) <!-- medium -->
    -   [CVE-2024-35930](https://ubuntu.com/security/CVE-2024-35930) <!-- medium -->
    -   [CVE-2024-35898](https://ubuntu.com/security/CVE-2024-35898) <!-- medium -->
    -   [CVE-2024-35893](https://ubuntu.com/security/CVE-2024-35893) <!-- medium -->
    -   [CVE-2024-35887](https://ubuntu.com/security/CVE-2024-35887) <!-- medium -->
    -   [CVE-2024-35929](https://ubuntu.com/security/CVE-2024-35929) <!-- medium -->
    -   [CVE-2024-26923](https://ubuntu.com/security/CVE-2024-26923) <!-- high -->
    -   [CVE-2024-35911](https://ubuntu.com/security/CVE-2024-35911) <!-- medium -->
    -   [CVE-2024-35919](https://ubuntu.com/security/CVE-2024-35919) <!-- medium -->
    -   [CVE-2024-26984](https://ubuntu.com/security/CVE-2024-26984) <!-- medium -->
    -   [CVE-2024-27016](https://ubuntu.com/security/CVE-2024-27016) <!-- medium -->
    -   [CVE-2024-35926](https://ubuntu.com/security/CVE-2024-35926) <!-- medium -->
    -   [CVE-2024-35872](https://ubuntu.com/security/CVE-2024-35872) <!-- medium -->
    -   [CVE-2024-35922](https://ubuntu.com/security/CVE-2024-35922) <!-- medium -->
    -   [CVE-2024-27007](https://ubuntu.com/security/CVE-2024-27007) <!-- medium -->
    -   [CVE-2024-35931](https://ubuntu.com/security/CVE-2024-35931) <!-- medium -->
    -   [CVE-2024-36021](https://ubuntu.com/security/CVE-2024-36021) <!-- medium -->
    -   [CVE-2024-35953](https://ubuntu.com/security/CVE-2024-35953) <!-- medium -->
    -   [CVE-2024-27004](https://ubuntu.com/security/CVE-2024-27004) <!-- medium -->
    -   [CVE-2024-27001](https://ubuntu.com/security/CVE-2024-27001) <!-- medium -->
    -   [CVE-2024-27014](https://ubuntu.com/security/CVE-2024-27014) <!-- medium -->
    -   [CVE-2024-35866](https://ubuntu.com/security/CVE-2024-35866) <!-- medium -->
    -   [CVE-2024-27021](https://ubuntu.com/security/CVE-2024-27021) <!-- medium -->
    -   [CVE-2024-35870](https://ubuntu.com/security/CVE-2024-35870) <!-- medium -->
    -   [CVE-2024-35925](https://ubuntu.com/security/CVE-2024-35925) <!-- medium -->
    -   [CVE-2024-35891](https://ubuntu.com/security/CVE-2024-35891) <!-- medium -->
    -   [CVE-2024-26982](https://ubuntu.com/security/CVE-2024-26982) <!-- medium -->
    -   [CVE-2024-35879](https://ubuntu.com/security/CVE-2024-35879) <!-- medium -->
    -   [CVE-2024-35979](https://ubuntu.com/security/CVE-2024-35979) <!-- medium -->
    -   [CVE-2024-35912](https://ubuntu.com/security/CVE-2024-35912) <!-- medium -->
    -   [CVE-2024-35982](https://ubuntu.com/security/CVE-2024-35982) <!-- medium -->
    -   [CVE-2024-27015](https://ubuntu.com/security/CVE-2024-27015) <!-- medium -->
    -   [CVE-2024-26985](https://ubuntu.com/security/CVE-2024-26985) <!-- medium -->
    -   [CVE-2024-35861](https://ubuntu.com/security/CVE-2024-35861) <!-- medium -->
    -   [CVE-2024-35939](https://ubuntu.com/security/CVE-2024-35939) <!-- medium -->
    -   [CVE-2024-27003](https://ubuntu.com/security/CVE-2024-27003) <!-- medium -->
    -   [CVE-2024-35945](https://ubuntu.com/security/CVE-2024-35945) <!-- medium -->
    -   [CVE-2024-35967](https://ubuntu.com/security/CVE-2024-35967) <!-- medium -->
    -   [CVE-2024-35966](https://ubuntu.com/security/CVE-2024-35966) <!-- medium -->
    -   [CVE-2024-26983](https://ubuntu.com/security/CVE-2024-26983) <!-- medium -->
    -   [CVE-2024-35894](https://ubuntu.com/security/CVE-2024-35894) <!-- medium -->
    -   [CVE-2024-35896](https://ubuntu.com/security/CVE-2024-35896) <!-- medium -->
    -   [CVE-2024-36027](https://ubuntu.com/security/CVE-2024-36027) <!-- medium -->
    -   [CVE-2024-35895](https://ubuntu.com/security/CVE-2024-35895) <!-- medium -->
    -   [CVE-2024-26987](https://ubuntu.com/security/CVE-2024-26987) <!-- medium -->
    -   [CVE-2024-35873](https://ubuntu.com/security/CVE-2024-35873) <!-- medium -->
    -   [CVE-2024-26996](https://ubuntu.com/security/CVE-2024-26996) <!-- medium -->
    -   [CVE-2024-26991](https://ubuntu.com/security/CVE-2024-26991) <!-- medium -->
    -   [CVE-2024-27013](https://ubuntu.com/security/CVE-2024-27013) <!-- medium -->
    -   [CVE-2024-36026](https://ubuntu.com/security/CVE-2024-36026) <!-- medium -->
    -   [CVE-2024-26922](https://ubuntu.com/security/CVE-2024-26922) <!-- medium -->
    -   [CVE-2024-35897](https://ubuntu.com/security/CVE-2024-35897) <!-- medium -->
    -   [CVE-2024-35917](https://ubuntu.com/security/CVE-2024-35917) <!-- medium -->
    -   [CVE-2024-35968](https://ubuntu.com/security/CVE-2024-35968) <!-- medium -->
    -   [CVE-2024-35890](https://ubuntu.com/security/CVE-2024-35890) <!-- medium -->
    -   [CVE-2024-35904](https://ubuntu.com/security/CVE-2024-35904) <!-- medium -->
    -   [CVE-2024-35867](https://ubuntu.com/security/CVE-2024-35867) <!-- medium -->
    -   [CVE-2024-35933](https://ubuntu.com/security/CVE-2024-35933) <!-- medium -->
    -   [CVE-2024-35918](https://ubuntu.com/security/CVE-2024-35918) <!-- medium -->
    -   [CVE-2024-35920](https://ubuntu.com/security/CVE-2024-35920) <!-- medium -->
    -   [CVE-2024-26997](https://ubuntu.com/security/CVE-2024-26997) <!-- medium -->
    -   [CVE-2024-35981](https://ubuntu.com/security/CVE-2024-35981) <!-- medium -->
    -   [CVE-2024-35963](https://ubuntu.com/security/CVE-2024-35963) <!-- medium -->
    -   [CVE-2024-26989](https://ubuntu.com/security/CVE-2024-26989) <!-- medium -->
    -   [CVE-2024-26999](https://ubuntu.com/security/CVE-2024-26999) <!-- medium -->
    -   [CVE-2024-35892](https://ubuntu.com/security/CVE-2024-35892) <!-- medium -->
    -   [CVE-2024-27010](https://ubuntu.com/security/CVE-2024-27010) <!-- medium -->
    -   [CVE-2024-26992](https://ubuntu.com/security/CVE-2024-26992) <!-- medium -->
    -   [CVE-2024-35935](https://ubuntu.com/security/CVE-2024-35935) <!-- medium -->
    -   [CVE-2024-27022](https://ubuntu.com/security/CVE-2024-27022) <!-- medium -->
    -   [CVE-2024-35971](https://ubuntu.com/security/CVE-2024-35971) <!-- medium -->
    -   [CVE-2024-35956](https://ubuntu.com/security/CVE-2024-35956) <!-- medium -->
    -   [CVE-2024-35862](https://ubuntu.com/security/CVE-2024-35862) <!-- medium -->
    -   [CVE-2024-35969](https://ubuntu.com/security/CVE-2024-35969) <!-- medium -->
    -   [CVE-2024-27012](https://ubuntu.com/security/CVE-2024-27012) <!-- medium -->
    -   [CVE-2024-26990](https://ubuntu.com/security/CVE-2024-26990) <!-- medium -->
    -   [CVE-2024-35885](https://ubuntu.com/security/CVE-2024-35885) <!-- medium -->
    -   [CVE-2024-26925](https://ubuntu.com/security/CVE-2024-26925) <!-- high -->
    -   [CVE-2024-35905](https://ubuntu.com/security/CVE-2024-35905) <!-- medium -->
    -   [CVE-2024-35914](https://ubuntu.com/security/CVE-2024-35914) <!-- medium -->
    -   [CVE-2024-35884](https://ubuntu.com/security/CVE-2024-35884) <!-- medium -->
    -   [CVE-2024-35927](https://ubuntu.com/security/CVE-2024-35927) <!-- medium -->
    -   [CVE-2024-35882](https://ubuntu.com/security/CVE-2024-35882) <!-- medium -->
    -   [CVE-2024-26980](https://ubuntu.com/security/CVE-2024-26980) <!-- medium -->
    -   [CVE-2024-35964](https://ubuntu.com/security/CVE-2024-35964) <!-- medium -->
    -   [CVE-2024-35955](https://ubuntu.com/security/CVE-2024-35955) <!-- medium -->
    -   [CVE-2024-27020](https://ubuntu.com/security/CVE-2024-27020) <!-- medium -->
    -   [CVE-2024-35980](https://ubuntu.com/security/CVE-2024-35980) <!-- medium -->
    -   [CVE-2024-35903](https://ubuntu.com/security/CVE-2024-35903) <!-- medium -->
    -   [CVE-2024-35976](https://ubuntu.com/security/CVE-2024-35976) <!-- medium -->
    -   [CVE-2024-35886](https://ubuntu.com/security/CVE-2024-35886) <!-- medium -->
    -   [CVE-2024-35883](https://ubuntu.com/security/CVE-2024-35883) <!-- medium -->
    -   [CVE-2024-35959](https://ubuntu.com/security/CVE-2024-35959) <!-- medium -->
    -   [CVE-2024-35915](https://ubuntu.com/security/CVE-2024-35915) <!-- medium -->
    -   [CVE-2024-35880](https://ubuntu.com/security/CVE-2024-35880) <!-- medium -->
    -   [CVE-2024-27000](https://ubuntu.com/security/CVE-2024-27000) <!-- medium -->
    -   [CVE-2024-35938](https://ubuntu.com/security/CVE-2024-35938) <!-- medium -->
    -   [CVE-2024-35869](https://ubuntu.com/security/CVE-2024-35869) <!-- medium -->
    -   [CVE-2024-36023](https://ubuntu.com/security/CVE-2024-36023) <!-- medium -->
    -   [CVE-2024-26988](https://ubuntu.com/security/CVE-2024-26988) <!-- medium -->
-   6.8 - Oracle


### [[USN-6919-1](https://ubuntu.com/security/notices/USN-6919-1)] Linux kernel vulnerabilities {#usn-6919-1-linux-kernel-vulnerabilities}

-   304 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2024-35976](https://ubuntu.com/security/CVE-2024-35976) <!-- medium -->
    -   [CVE-2023-52880](https://ubuntu.com/security/CVE-2023-52880) <!-- high -->
    -   [CVE-2024-35849](https://ubuntu.com/security/CVE-2024-35849) <!-- medium -->
    -   [CVE-2024-27073](https://ubuntu.com/security/CVE-2024-27073) <!-- medium -->
    -   [CVE-2024-35934](https://ubuntu.com/security/CVE-2024-35934) <!-- medium -->
    -   [CVE-2024-27038](https://ubuntu.com/security/CVE-2024-27038) <!-- medium -->
    -   [CVE-2024-26973](https://ubuntu.com/security/CVE-2024-26973) <!-- medium -->
    -   [CVE-2024-35853](https://ubuntu.com/security/CVE-2024-35853) <!-- medium -->
    -   [CVE-2024-27047](https://ubuntu.com/security/CVE-2024-27047) <!-- medium -->
    -   [CVE-2024-36007](https://ubuntu.com/security/CVE-2024-36007) <!-- medium -->
    -   [CVE-2024-27024](https://ubuntu.com/security/CVE-2024-27024) <!-- medium -->
    -   [CVE-2024-26750](https://ubuntu.com/security/CVE-2024-26750) <!-- medium -->
    -   [CVE-2024-26833](https://ubuntu.com/security/CVE-2024-26833) <!-- medium -->
    -   [CVE-2024-26960](https://ubuntu.com/security/CVE-2024-26960) <!-- medium -->
    -   [CVE-2024-26929](https://ubuntu.com/security/CVE-2024-26929) <!-- medium -->
    -   [CVE-2023-52488](https://ubuntu.com/security/CVE-2023-52488) <!-- medium -->
    -   [CVE-2024-27417](https://ubuntu.com/security/CVE-2024-27417) <!-- medium -->
    -   [CVE-2024-26922](https://ubuntu.com/security/CVE-2024-26922) <!-- medium -->
    -   [CVE-2024-26863](https://ubuntu.com/security/CVE-2024-26863) <!-- medium -->
    -   [CVE-2024-35890](https://ubuntu.com/security/CVE-2024-35890) <!-- medium -->
    -   [CVE-2024-27015](https://ubuntu.com/security/CVE-2024-27015) <!-- medium -->
    -   [CVE-2024-27395](https://ubuntu.com/security/CVE-2024-27395) <!-- medium -->
    -   [CVE-2024-26779](https://ubuntu.com/security/CVE-2024-26779) <!-- medium -->
    -   [CVE-2024-27419](https://ubuntu.com/security/CVE-2024-27419) <!-- medium -->
    -   [CVE-2024-27013](https://ubuntu.com/security/CVE-2024-27013) <!-- medium -->
    -   [CVE-2024-26981](https://ubuntu.com/security/CVE-2024-26981) <!-- medium -->
    -   [CVE-2024-26798](https://ubuntu.com/security/CVE-2024-26798) <!-- medium -->
    -   [CVE-2024-26895](https://ubuntu.com/security/CVE-2024-26895) <!-- low -->
    -   [CVE-2024-35922](https://ubuntu.com/security/CVE-2024-35922) <!-- medium -->
    -   [CVE-2023-52699](https://ubuntu.com/security/CVE-2023-52699) <!-- medium -->
    -   [CVE-2024-26883](https://ubuntu.com/security/CVE-2024-26883) <!-- medium -->
    -   [CVE-2024-35871](https://ubuntu.com/security/CVE-2024-35871) <!-- medium -->
    -   [CVE-2024-27410](https://ubuntu.com/security/CVE-2024-27410) <!-- medium -->
    -   [CVE-2024-26884](https://ubuntu.com/security/CVE-2024-26884) <!-- medium -->
    -   [CVE-2024-26885](https://ubuntu.com/security/CVE-2024-26885) <!-- medium -->
    -   [CVE-2024-27074](https://ubuntu.com/security/CVE-2024-27074) <!-- medium -->
    -   [CVE-2024-26751](https://ubuntu.com/security/CVE-2024-26751) <!-- medium -->
    -   [CVE-2024-26857](https://ubuntu.com/security/CVE-2024-26857) <!-- medium -->
    -   [CVE-2024-26848](https://ubuntu.com/security/CVE-2024-26848) <!-- medium -->
    -   [CVE-2024-26901](https://ubuntu.com/security/CVE-2024-26901) <!-- medium -->
    -   [CVE-2024-35844](https://ubuntu.com/security/CVE-2024-35844) <!-- medium -->
    -   [CVE-2024-35809](https://ubuntu.com/security/CVE-2024-35809) <!-- medium -->
    -   [CVE-2024-26687](https://ubuntu.com/security/CVE-2024-26687) <!-- medium -->
    -   [CVE-2024-35988](https://ubuntu.com/security/CVE-2024-35988) <!-- medium -->
    -   [CVE-2024-26835](https://ubuntu.com/security/CVE-2024-26835) <!-- medium -->
    -   [CVE-2024-26764](https://ubuntu.com/security/CVE-2024-26764) <!-- medium -->
    -   [CVE-2024-27020](https://ubuntu.com/security/CVE-2024-27020) <!-- medium -->
    -   [CVE-2024-35907](https://ubuntu.com/security/CVE-2024-35907) <!-- medium -->
    -   [CVE-2024-35886](https://ubuntu.com/security/CVE-2024-35886) <!-- medium -->
    -   [CVE-2024-27077](https://ubuntu.com/security/CVE-2024-27077) <!-- medium -->
    -   [CVE-2024-26787](https://ubuntu.com/security/CVE-2024-26787) <!-- medium -->
    -   [CVE-2024-26950](https://ubuntu.com/security/CVE-2024-26950) <!-- medium -->
    -   [CVE-2024-26974](https://ubuntu.com/security/CVE-2024-26974) <!-- medium -->
    -   [CVE-2024-35905](https://ubuntu.com/security/CVE-2024-35905) <!-- medium -->
    -   [CVE-2024-27008](https://ubuntu.com/security/CVE-2024-27008) <!-- medium -->
    -   [CVE-2024-26744](https://ubuntu.com/security/CVE-2024-26744) <!-- medium -->
    -   [CVE-2024-35935](https://ubuntu.com/security/CVE-2024-35935) <!-- medium -->
    -   [CVE-2024-26988](https://ubuntu.com/security/CVE-2024-26988) <!-- medium -->
    -   [CVE-2024-26748](https://ubuntu.com/security/CVE-2024-26748) <!-- medium -->
    -   [CVE-2024-26776](https://ubuntu.com/security/CVE-2024-26776) <!-- medium -->
    -   [CVE-2024-26907](https://ubuntu.com/security/CVE-2024-26907) <!-- medium -->
    -   [CVE-2024-27053](https://ubuntu.com/security/CVE-2024-27053) <!-- medium -->
    -   [CVE-2024-35970](https://ubuntu.com/security/CVE-2024-35970) <!-- medium -->
    -   [CVE-2024-35950](https://ubuntu.com/security/CVE-2024-35950) <!-- medium -->
    -   [CVE-2024-35854](https://ubuntu.com/security/CVE-2024-35854) <!-- medium -->
    -   [CVE-2024-35822](https://ubuntu.com/security/CVE-2024-35822) <!-- medium -->
    -   [CVE-2024-26961](https://ubuntu.com/security/CVE-2024-26961) <!-- medium -->
    -   [CVE-2024-26733](https://ubuntu.com/security/CVE-2024-26733) <!-- medium -->
    -   [CVE-2024-26773](https://ubuntu.com/security/CVE-2024-26773) <!-- medium -->
    -   [CVE-2024-27390](https://ubuntu.com/security/CVE-2024-27390) <!-- medium -->
    -   [CVE-2024-35888](https://ubuntu.com/security/CVE-2024-35888) <!-- medium -->
    -   [CVE-2024-36029](https://ubuntu.com/security/CVE-2024-36029) <!-- medium -->
    -   [CVE-2024-26643](https://ubuntu.com/security/CVE-2024-26643) <!-- high -->
    -   [CVE-2024-35821](https://ubuntu.com/security/CVE-2024-35821) <!-- medium -->
    -   [CVE-2024-35819](https://ubuntu.com/security/CVE-2024-35819) <!-- medium -->
    -   [CVE-2024-26809](https://ubuntu.com/security/CVE-2024-26809) <!-- high -->
    -   [CVE-2024-35984](https://ubuntu.com/security/CVE-2024-35984) <!-- medium -->
    -   [CVE-2024-26851](https://ubuntu.com/security/CVE-2024-26851) <!-- medium -->
    -   [CVE-2024-35940](https://ubuntu.com/security/CVE-2024-35940) <!-- medium -->
    -   [CVE-2024-26654](https://ubuntu.com/security/CVE-2024-26654) <!-- medium -->
    -   [CVE-2024-35910](https://ubuntu.com/security/CVE-2024-35910) <!-- medium -->
    -   [CVE-2024-26891](https://ubuntu.com/security/CVE-2024-26891) <!-- medium -->
    -   [CVE-2024-26793](https://ubuntu.com/security/CVE-2024-26793) <!-- medium -->
    -   [CVE-2024-35938](https://ubuntu.com/security/CVE-2024-35938) <!-- medium -->
    -   [CVE-2024-26736](https://ubuntu.com/security/CVE-2024-26736) <!-- medium -->
    -   [CVE-2024-26583](https://ubuntu.com/security/CVE-2024-26583) <!-- high -->
    -   [CVE-2024-26870](https://ubuntu.com/security/CVE-2024-26870) <!-- medium -->
    -   [CVE-2024-35828](https://ubuntu.com/security/CVE-2024-35828) <!-- medium -->
    -   [CVE-2024-35885](https://ubuntu.com/security/CVE-2024-35885) <!-- medium -->
    -   [CVE-2024-35958](https://ubuntu.com/security/CVE-2024-35958) <!-- medium -->
    -   [CVE-2024-26889](https://ubuntu.com/security/CVE-2024-26889) <!-- medium -->
    -   [CVE-2024-35899](https://ubuntu.com/security/CVE-2024-35899) <!-- medium -->
    -   [CVE-2024-26839](https://ubuntu.com/security/CVE-2024-26839) <!-- medium -->
    -   [CVE-2024-26894](https://ubuntu.com/security/CVE-2024-26894) <!-- medium -->
    -   [CVE-2024-26937](https://ubuntu.com/security/CVE-2024-26937) <!-- medium -->
    -   [CVE-2024-35925](https://ubuntu.com/security/CVE-2024-35925) <!-- medium -->
    -   [CVE-2024-35933](https://ubuntu.com/security/CVE-2024-35933) <!-- medium -->
    -   [CVE-2024-26771](https://ubuntu.com/security/CVE-2024-26771) <!-- medium -->
    -   [CVE-2024-26923](https://ubuntu.com/security/CVE-2024-26923) <!-- high -->
    -   [CVE-2024-26852](https://ubuntu.com/security/CVE-2024-26852) <!-- medium -->
    -   [CVE-2024-26924](https://ubuntu.com/security/CVE-2024-26924) <!-- high -->
    -   [CVE-2024-26872](https://ubuntu.com/security/CVE-2024-26872) <!-- low -->
    -   [CVE-2024-26774](https://ubuntu.com/security/CVE-2024-26774) <!-- medium -->
    -   [CVE-2024-35930](https://ubuntu.com/security/CVE-2024-35930) <!-- medium -->
    -   [CVE-2024-27065](https://ubuntu.com/security/CVE-2024-27065) <!-- medium -->
    -   [CVE-2024-26993](https://ubuntu.com/security/CVE-2024-26993) <!-- medium -->
    -   [CVE-2024-27034](https://ubuntu.com/security/CVE-2024-27034) <!-- medium -->
    -   [CVE-2024-36020](https://ubuntu.com/security/CVE-2024-36020) <!-- medium -->
    -   [CVE-2024-26802](https://ubuntu.com/security/CVE-2024-26802) <!-- medium -->
    -   [CVE-2024-26976](https://ubuntu.com/security/CVE-2024-26976) <!-- medium -->
    -   [CVE-2022-48808](https://ubuntu.com/security/CVE-2022-48808) <!-- medium -->
    -   [CVE-2024-35847](https://ubuntu.com/security/CVE-2024-35847) <!-- medium -->
    -   [CVE-2024-26996](https://ubuntu.com/security/CVE-2024-26996) <!-- medium -->
    -   [CVE-2024-36025](https://ubuntu.com/security/CVE-2024-36025) <!-- medium -->
    -   [CVE-2023-52652](https://ubuntu.com/security/CVE-2023-52652) <!-- medium -->
    -   [CVE-2024-27403](https://ubuntu.com/security/CVE-2024-27403) <!-- medium -->
    -   [CVE-2023-52447](https://ubuntu.com/security/CVE-2023-52447) <!-- high -->
    -   [CVE-2024-27037](https://ubuntu.com/security/CVE-2024-27037) <!-- medium -->
    -   [CVE-2024-27413](https://ubuntu.com/security/CVE-2024-27413) <!-- medium -->
    -   [CVE-2024-26749](https://ubuntu.com/security/CVE-2024-26749) <!-- medium -->
    -   [CVE-2024-26956](https://ubuntu.com/security/CVE-2024-26956) <!-- medium -->
    -   [CVE-2024-26958](https://ubuntu.com/security/CVE-2024-26958) <!-- medium -->
    -   [CVE-2024-26754](https://ubuntu.com/security/CVE-2024-26754) <!-- medium -->
    -   [CVE-2024-26812](https://ubuntu.com/security/CVE-2024-26812) <!-- medium -->
    -   [CVE-2024-26772](https://ubuntu.com/security/CVE-2024-26772) <!-- medium -->
    -   [CVE-2024-27436](https://ubuntu.com/security/CVE-2024-27436) <!-- medium -->
    -   [CVE-2024-27437](https://ubuntu.com/security/CVE-2024-27437) <!-- medium -->
    -   [CVE-2024-35912](https://ubuntu.com/security/CVE-2024-35912) <!-- medium -->
    -   [CVE-2024-35805](https://ubuntu.com/security/CVE-2024-35805) <!-- medium -->
    -   [CVE-2024-26845](https://ubuntu.com/security/CVE-2024-26845) <!-- medium -->
    -   [CVE-2024-35990](https://ubuntu.com/security/CVE-2024-35990) <!-- medium -->
    -   [CVE-2024-35791](https://ubuntu.com/security/CVE-2024-35791) <!-- medium -->
    -   [CVE-2024-26906](https://ubuntu.com/security/CVE-2024-26906) <!-- low -->
    -   [CVE-2024-27039](https://ubuntu.com/security/CVE-2024-27039) <!-- medium -->
    -   [CVE-2024-26915](https://ubuntu.com/security/CVE-2024-26915) <!-- medium -->
    -   [CVE-2024-26970](https://ubuntu.com/security/CVE-2024-26970) <!-- medium -->
    -   [CVE-2024-26782](https://ubuntu.com/security/CVE-2024-26782) <!-- medium -->
    -   [CVE-2024-26813](https://ubuntu.com/security/CVE-2024-26813) <!-- medium -->
    -   [CVE-2023-52645](https://ubuntu.com/security/CVE-2023-52645) <!-- medium -->
    -   [CVE-2024-26935](https://ubuntu.com/security/CVE-2024-26935) <!-- medium -->
    -   [CVE-2024-27076](https://ubuntu.com/security/CVE-2024-27076) <!-- medium -->
    -   [CVE-2024-35823](https://ubuntu.com/security/CVE-2024-35823) <!-- medium -->
    -   [CVE-2024-26743](https://ubuntu.com/security/CVE-2024-26743) <!-- medium -->
    -   [CVE-2024-26846](https://ubuntu.com/security/CVE-2024-26846) <!-- low -->
    -   [CVE-2024-26811](https://ubuntu.com/security/CVE-2024-26811) <!-- medium -->
    -   [CVE-2024-26989](https://ubuntu.com/security/CVE-2024-26989) <!-- medium -->
    -   [CVE-2024-26642](https://ubuntu.com/security/CVE-2024-26642) <!-- high -->
    -   [CVE-2024-26659](https://ubuntu.com/security/CVE-2024-26659) <!-- medium -->
    -   [CVE-2024-26766](https://ubuntu.com/security/CVE-2024-26766) <!-- medium -->
    -   [CVE-2024-27393](https://ubuntu.com/security/CVE-2024-27393) <!-- medium -->
    -   [CVE-2024-26859](https://ubuntu.com/security/CVE-2024-26859) <!-- medium -->
    -   [CVE-2024-35898](https://ubuntu.com/security/CVE-2024-35898) <!-- medium -->
    -   [CVE-2024-35893](https://ubuntu.com/security/CVE-2024-35893) <!-- medium -->
    -   [CVE-2023-52640](https://ubuntu.com/security/CVE-2023-52640) <!-- medium -->
    -   [CVE-2024-26795](https://ubuntu.com/security/CVE-2024-26795) <!-- medium -->
    -   [CVE-2024-27009](https://ubuntu.com/security/CVE-2024-27009) <!-- medium -->
    -   [CVE-2024-26791](https://ubuntu.com/security/CVE-2024-26791) <!-- medium -->
    -   [CVE-2024-27043](https://ubuntu.com/security/CVE-2024-27043) <!-- medium -->
    -   [CVE-2024-26934](https://ubuntu.com/security/CVE-2024-26934) <!-- medium -->
    -   [CVE-2024-27051](https://ubuntu.com/security/CVE-2024-27051) <!-- medium -->
    -   [CVE-2024-26804](https://ubuntu.com/security/CVE-2024-26804) <!-- medium -->
    -   [CVE-2024-26878](https://ubuntu.com/security/CVE-2024-26878) <!-- medium -->
    -   [CVE-2024-27030](https://ubuntu.com/security/CVE-2024-27030) <!-- medium -->
    -   [CVE-2024-27000](https://ubuntu.com/security/CVE-2024-27000) <!-- medium -->
    -   [CVE-2024-26777](https://ubuntu.com/security/CVE-2024-26777) <!-- medium -->
    -   [CVE-2024-35825](https://ubuntu.com/security/CVE-2024-35825) <!-- medium -->
    -   [CVE-2024-27415](https://ubuntu.com/security/CVE-2024-27415) <!-- medium -->
    -   [CVE-2024-27001](https://ubuntu.com/security/CVE-2024-27001) <!-- medium -->
    -   [CVE-2024-27004](https://ubuntu.com/security/CVE-2024-27004) <!-- medium -->
    -   [CVE-2024-26769](https://ubuntu.com/security/CVE-2024-26769) <!-- medium -->
    -   [CVE-2024-26816](https://ubuntu.com/security/CVE-2024-26816) <!-- medium -->
    -   [CVE-2024-35807](https://ubuntu.com/security/CVE-2024-35807) <!-- medium -->
    -   [CVE-2024-35900](https://ubuntu.com/security/CVE-2024-35900) <!-- medium -->
    -   [CVE-2024-35851](https://ubuntu.com/security/CVE-2024-35851) <!-- medium -->
    -   [CVE-2024-27052](https://ubuntu.com/security/CVE-2024-27052) <!-- medium -->
    -   [CVE-2024-26805](https://ubuntu.com/security/CVE-2024-26805) <!-- medium -->
    -   [CVE-2024-35804](https://ubuntu.com/security/CVE-2024-35804) <!-- medium -->
    -   [CVE-2024-35944](https://ubuntu.com/security/CVE-2024-35944) <!-- medium -->
    -   [CVE-2024-35895](https://ubuntu.com/security/CVE-2024-35895) <!-- medium -->
    -   [CVE-2024-26897](https://ubuntu.com/security/CVE-2024-26897) <!-- medium -->
    -   [CVE-2024-27045](https://ubuntu.com/security/CVE-2024-27045) <!-- medium -->
    -   [CVE-2024-26814](https://ubuntu.com/security/CVE-2024-26814) <!-- medium -->
    -   [CVE-2024-26801](https://ubuntu.com/security/CVE-2024-26801) <!-- medium -->
    -   [CVE-2024-26874](https://ubuntu.com/security/CVE-2024-26874) <!-- medium -->
    -   [CVE-2024-35982](https://ubuntu.com/security/CVE-2024-35982) <!-- medium -->
    -   [CVE-2024-35915](https://ubuntu.com/security/CVE-2024-35915) <!-- medium -->
    -   [CVE-2024-26820](https://ubuntu.com/security/CVE-2024-26820) <!-- low -->
    -   [CVE-2024-26603](https://ubuntu.com/security/CVE-2024-26603) <!-- medium -->
    -   [CVE-2024-35997](https://ubuntu.com/security/CVE-2024-35997) <!-- medium -->
    -   [CVE-2024-26688](https://ubuntu.com/security/CVE-2024-26688) <!-- medium -->
    -   [CVE-2024-27054](https://ubuntu.com/security/CVE-2024-27054) <!-- medium -->
    -   [CVE-2024-26828](https://ubuntu.com/security/CVE-2024-26828) <!-- high -->
    -   [CVE-2024-35857](https://ubuntu.com/security/CVE-2024-35857) <!-- medium -->
    -   [CVE-2023-52662](https://ubuntu.com/security/CVE-2023-52662) <!-- medium -->
    -   [CVE-2024-35989](https://ubuntu.com/security/CVE-2024-35989) <!-- medium -->
    -   [CVE-2024-36005](https://ubuntu.com/security/CVE-2024-36005) <!-- medium -->
    -   [CVE-2024-35785](https://ubuntu.com/security/CVE-2024-35785) <!-- medium -->
    -   [CVE-2024-27396](https://ubuntu.com/security/CVE-2024-27396) <!-- medium -->
    -   [CVE-2024-35884](https://ubuntu.com/security/CVE-2024-35884) <!-- medium -->
    -   [CVE-2023-52650](https://ubuntu.com/security/CVE-2023-52650) <!-- medium -->
    -   [CVE-2024-26882](https://ubuntu.com/security/CVE-2024-26882) <!-- medium -->
    -   [CVE-2024-26879](https://ubuntu.com/security/CVE-2024-26879) <!-- low -->
    -   [CVE-2024-26898](https://ubuntu.com/security/CVE-2024-26898) <!-- medium -->
    -   [CVE-2024-27388](https://ubuntu.com/security/CVE-2024-27388) <!-- medium -->
    -   [CVE-2024-35879](https://ubuntu.com/security/CVE-2024-35879) <!-- medium -->
    -   [CVE-2024-35918](https://ubuntu.com/security/CVE-2024-35918) <!-- medium -->
    -   [CVE-2024-35978](https://ubuntu.com/security/CVE-2024-35978) <!-- medium -->
    -   [CVE-2024-26585](https://ubuntu.com/security/CVE-2024-26585) <!-- high -->
    -   [CVE-2024-35872](https://ubuntu.com/security/CVE-2024-35872) <!-- medium -->
    -   [CVE-2023-52497](https://ubuntu.com/security/CVE-2023-52497) <!-- medium -->
    -   [CVE-2024-26778](https://ubuntu.com/security/CVE-2024-26778) <!-- medium -->
    -   [CVE-2024-26999](https://ubuntu.com/security/CVE-2024-26999) <!-- medium -->
    -   [CVE-2024-27046](https://ubuntu.com/security/CVE-2024-27046) <!-- medium -->
    -   [CVE-2023-52434](https://ubuntu.com/security/CVE-2023-52434) <!-- medium -->
    -   [CVE-2024-26862](https://ubuntu.com/security/CVE-2024-26862) <!-- medium -->
    -   [CVE-2024-26810](https://ubuntu.com/security/CVE-2024-26810) <!-- medium -->
    -   [CVE-2024-35796](https://ubuntu.com/security/CVE-2024-35796) <!-- medium -->
    -   [CVE-2024-35960](https://ubuntu.com/security/CVE-2024-35960) <!-- medium -->
    -   [CVE-2024-35969](https://ubuntu.com/security/CVE-2024-35969) <!-- medium -->
    -   [CVE-2024-26966](https://ubuntu.com/security/CVE-2024-26966) <!-- medium -->
    -   [CVE-2024-26856](https://ubuntu.com/security/CVE-2024-26856) <!-- medium -->
    -   [CVE-2024-35936](https://ubuntu.com/security/CVE-2024-35936) <!-- medium -->
    -   [CVE-2024-35955](https://ubuntu.com/security/CVE-2024-35955) <!-- medium -->
    -   [CVE-2024-26763](https://ubuntu.com/security/CVE-2024-26763) <!-- medium -->
    -   [CVE-2024-35806](https://ubuntu.com/security/CVE-2024-35806) <!-- medium -->
    -   [CVE-2024-27059](https://ubuntu.com/security/CVE-2024-27059) <!-- medium -->
    -   [CVE-2024-35855](https://ubuntu.com/security/CVE-2024-35855) <!-- medium -->
    -   [CVE-2024-36008](https://ubuntu.com/security/CVE-2024-36008) <!-- medium -->
    -   [CVE-2024-27075](https://ubuntu.com/security/CVE-2024-27075) <!-- medium -->
    -   [CVE-2023-52620](https://ubuntu.com/security/CVE-2023-52620) <!-- high -->
    -   [CVE-2024-26931](https://ubuntu.com/security/CVE-2024-26931) <!-- medium -->
    -   [CVE-2024-35813](https://ubuntu.com/security/CVE-2024-35813) <!-- medium -->
    -   [CVE-2024-26788](https://ubuntu.com/security/CVE-2024-26788) <!-- medium -->
    -   [CVE-2024-27412](https://ubuntu.com/security/CVE-2024-27412) <!-- medium -->
    -   [CVE-2024-26861](https://ubuntu.com/security/CVE-2024-26861) <!-- medium -->
    -   [CVE-2024-36004](https://ubuntu.com/security/CVE-2024-36004) <!-- medium -->
    -   [CVE-2024-26951](https://ubuntu.com/security/CVE-2024-26951) <!-- medium -->
    -   [CVE-2024-26903](https://ubuntu.com/security/CVE-2024-26903) <!-- medium -->
    -   [CVE-2024-26584](https://ubuntu.com/security/CVE-2024-26584) <!-- high -->
    -   [CVE-2024-35877](https://ubuntu.com/security/CVE-2024-35877) <!-- medium -->
    -   [CVE-2024-26792](https://ubuntu.com/security/CVE-2024-26792) <!-- medium -->
    -   [CVE-2024-27416](https://ubuntu.com/security/CVE-2024-27416) <!-- medium -->
    -   [CVE-2024-27432](https://ubuntu.com/security/CVE-2024-27432) <!-- medium -->
    -   [CVE-2024-26651](https://ubuntu.com/security/CVE-2024-26651) <!-- medium -->
    -   [CVE-2024-35852](https://ubuntu.com/security/CVE-2024-35852) <!-- medium -->
    -   [CVE-2024-35973](https://ubuntu.com/security/CVE-2024-35973) <!-- medium -->
    -   [CVE-2023-52656](https://ubuntu.com/security/CVE-2023-52656) <!-- medium -->
    -   [CVE-2024-26965](https://ubuntu.com/security/CVE-2024-26965) <!-- medium -->
    -   [CVE-2024-26969](https://ubuntu.com/security/CVE-2024-26969) <!-- medium -->
    -   [CVE-2024-26840](https://ubuntu.com/security/CVE-2024-26840) <!-- medium -->
    -   [CVE-2024-26817](https://ubuntu.com/security/CVE-2024-26817) <!-- medium -->
    -   [CVE-2024-27028](https://ubuntu.com/security/CVE-2024-27028) <!-- medium -->
    -   [CVE-2024-26752](https://ubuntu.com/security/CVE-2024-26752) <!-- medium -->
    -   [CVE-2024-27016](https://ubuntu.com/security/CVE-2024-27016) <!-- medium -->
    -   [CVE-2023-52641](https://ubuntu.com/security/CVE-2023-52641) <!-- medium -->
    -   [CVE-2024-35789](https://ubuntu.com/security/CVE-2024-35789) <!-- medium -->
    -   [CVE-2024-27078](https://ubuntu.com/security/CVE-2024-27078) <!-- medium -->
    -   [CVE-2024-26994](https://ubuntu.com/security/CVE-2024-26994) <!-- medium -->
    -   [CVE-2024-26629](https://ubuntu.com/security/CVE-2024-26629) <!-- medium -->
    -   [CVE-2024-26803](https://ubuntu.com/security/CVE-2024-26803) <!-- medium -->
    -   [CVE-2024-26977](https://ubuntu.com/security/CVE-2024-26977) <!-- medium -->
    -   [CVE-2024-35830](https://ubuntu.com/security/CVE-2024-35830) <!-- medium -->
    -   [CVE-2024-27019](https://ubuntu.com/security/CVE-2024-27019) <!-- medium -->
    -   [CVE-2024-26957](https://ubuntu.com/security/CVE-2024-26957) <!-- medium -->
    -   [CVE-2024-36006](https://ubuntu.com/security/CVE-2024-36006) <!-- medium -->
    -   [CVE-2024-35817](https://ubuntu.com/security/CVE-2024-35817) <!-- medium -->
    -   [CVE-2024-26601](https://ubuntu.com/security/CVE-2024-26601) <!-- medium -->
    -   [CVE-2024-35845](https://ubuntu.com/security/CVE-2024-35845) <!-- medium -->
    -   [CVE-2024-35897](https://ubuntu.com/security/CVE-2024-35897) <!-- medium -->
    -   [CVE-2024-27414](https://ubuntu.com/security/CVE-2024-27414) <!-- medium -->
    -   [CVE-2024-26855](https://ubuntu.com/security/CVE-2024-26855) <!-- medium -->
    -   [CVE-2024-26877](https://ubuntu.com/security/CVE-2024-26877) <!-- medium -->
    -   [CVE-2024-35829](https://ubuntu.com/security/CVE-2024-35829) <!-- medium -->
    -   [CVE-2024-35896](https://ubuntu.com/security/CVE-2024-35896) <!-- medium -->
    -   [CVE-2024-26875](https://ubuntu.com/security/CVE-2024-26875) <!-- medium -->
    -   [CVE-2024-27405](https://ubuntu.com/security/CVE-2024-27405) <!-- medium -->
    -   [CVE-2024-26747](https://ubuntu.com/security/CVE-2024-26747) <!-- medium -->
    -   [CVE-2023-52644](https://ubuntu.com/security/CVE-2023-52644) <!-- medium -->
    -   [CVE-2024-26881](https://ubuntu.com/security/CVE-2024-26881) <!-- medium -->
    -   [CVE-2024-26735](https://ubuntu.com/security/CVE-2024-26735) <!-- medium -->
    -   [CVE-2024-26843](https://ubuntu.com/security/CVE-2024-26843) <!-- medium -->
    -   [CVE-2024-26926](https://ubuntu.com/security/CVE-2024-26926) <!-- medium -->
    -   [CVE-2024-26880](https://ubuntu.com/security/CVE-2024-26880) <!-- medium -->
    -   [CVE-2024-26964](https://ubuntu.com/security/CVE-2024-26964) <!-- medium -->
    -   [CVE-2024-27044](https://ubuntu.com/security/CVE-2024-27044) <!-- medium -->
    -   [CVE-2024-26737](https://ubuntu.com/security/CVE-2024-26737) <!-- medium -->
    -   [CVE-2024-27431](https://ubuntu.com/security/CVE-2024-27431) <!-- medium -->
    -   [CVE-2024-26955](https://ubuntu.com/security/CVE-2024-26955) <!-- medium -->
    -   [CVE-2024-26790](https://ubuntu.com/security/CVE-2024-26790) <!-- medium -->
    -   [CVE-2024-26925](https://ubuntu.com/security/CVE-2024-26925) <!-- high -->
    -   [CVE-2024-26838](https://ubuntu.com/security/CVE-2024-26838) <!-- medium -->
    -   [CVE-2024-26984](https://ubuntu.com/security/CVE-2024-26984) <!-- medium -->
    -   [CVE-2024-25739](https://ubuntu.com/security/CVE-2024-25739) <!-- medium -->
    -   [CVE-2024-24861](https://ubuntu.com/security/CVE-2024-24861) <!-- medium -->
    -   [CVE-2024-24859](https://ubuntu.com/security/CVE-2024-24859) <!-- low -->
    -   [CVE-2024-24858](https://ubuntu.com/security/CVE-2024-24858) <!-- low -->
    -   [CVE-2024-24857](https://ubuntu.com/security/CVE-2024-24857) <!-- low -->
    -   [CVE-2024-23307](https://ubuntu.com/security/CVE-2024-23307) <!-- low -->
    -   [CVE-2024-22099](https://ubuntu.com/security/CVE-2024-22099) <!-- medium -->
    -   [CVE-2024-21823](https://ubuntu.com/security/CVE-2024-21823) <!-- medium -->
    -   [CVE-2024-0841](https://ubuntu.com/security/CVE-2024-0841) <!-- low -->
    -   [CVE-2023-7042](https://ubuntu.com/security/CVE-2023-7042) <!-- medium -->
    -   [CVE-2023-6270](https://ubuntu.com/security/CVE-2023-6270) <!-- high -->
    -   [CVE-2022-38096](https://ubuntu.com/security/CVE-2022-38096) <!-- medium -->
-   5.15 - Raspi


### [[USN-6922-1](https://ubuntu.com/security/notices/USN-6922-1)] Linux kernel vulnerabilities {#usn-6922-1-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2024-25739](https://ubuntu.com/security/CVE-2024-25739) <!-- medium -->
    -   [CVE-2024-24859](https://ubuntu.com/security/CVE-2024-24859) <!-- low -->
    -   [CVE-2024-24858](https://ubuntu.com/security/CVE-2024-24858) <!-- low -->
    -   [CVE-2024-24857](https://ubuntu.com/security/CVE-2024-24857) <!-- low -->
-   6.5 - NVIDIA


### [[USN-6923-1](https://ubuntu.com/security/notices/USN-6923-1), [USN-6923-2](https://ubuntu.com/security/notices/USN-6923-2)] Linux kernel vulnerabilities {#usn-6923-1-usn-6923-2-linux-kernel-vulnerabilities}

-   6 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-36016](https://ubuntu.com/security/CVE-2024-36016) <!-- high -->
    -   [CVE-2024-27017](https://ubuntu.com/security/CVE-2024-27017) <!-- medium -->
    -   [CVE-2023-52752](https://ubuntu.com/security/CVE-2023-52752) <!-- medium -->
    -   [CVE-2024-26952](https://ubuntu.com/security/CVE-2024-26952) <!-- medium -->
    -   [CVE-2024-26886](https://ubuntu.com/security/CVE-2024-26886) <!-- medium -->
    -   [CVE-2024-25742](https://ubuntu.com/security/CVE-2024-25742) <!-- medium -->
-   5.15 - generic, AWS, GCP, GKE, HWE, Intel-IOTG, KVM, LowLatency, NVIDIA, Oracle, IBM, Raspi


### [[USN-6921-1](https://ubuntu.com/security/notices/USN-6921-1), [USN-6921-2](https://ubuntu.com/security/notices/USN-6921-2)] Linux kernel vulnerabilities {#usn-6921-1-usn-6921-2-linux-kernel-vulnerabilities}

-   7 CVEs addressed in Noble (24.04 LTS)
    -   [CVE-2024-36016](https://ubuntu.com/security/CVE-2024-36016) <!-- high -->
    -   [CVE-2024-36008](https://ubuntu.com/security/CVE-2024-36008) <!-- medium -->
    -   [CVE-2024-35984](https://ubuntu.com/security/CVE-2024-35984) <!-- medium -->
    -   [CVE-2024-35992](https://ubuntu.com/security/CVE-2024-35992) <!-- medium -->
    -   [CVE-2024-35997](https://ubuntu.com/security/CVE-2024-35997) <!-- medium -->
    -   [CVE-2024-35990](https://ubuntu.com/security/CVE-2024-35990) <!-- medium -->
    -   [CVE-2024-25742](https://ubuntu.com/security/CVE-2024-25742) <!-- medium -->
-   6.8 - generic, AWS, GCP, GKE, IBM, NVIDIA, OEM, Raspi, LowLatency


### [[USN-6924-1](https://ubuntu.com/security/notices/USN-6924-1), [USN-6924-2](https://ubuntu.com/security/notices/USN-6924-2)] Linux kernel vulnerabilities {#usn-6924-1-usn-6924-2-linux-kernel-vulnerabilities}

-   7 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2024-26583](https://ubuntu.com/security/CVE-2024-26583) <!-- high -->
    -   [CVE-2022-48655](https://ubuntu.com/security/CVE-2022-48655) <!-- medium -->
    -   [CVE-2024-26907](https://ubuntu.com/security/CVE-2024-26907) <!-- medium -->
    -   [CVE-2021-47131](https://ubuntu.com/security/CVE-2021-47131) <!-- medium -->
    -   [CVE-2024-26585](https://ubuntu.com/security/CVE-2024-26585) <!-- high -->
    -   [CVE-2024-36016](https://ubuntu.com/security/CVE-2024-36016) <!-- high -->
    -   [CVE-2024-26584](https://ubuntu.com/security/CVE-2024-26584) <!-- high -->
-   5.4 - generic, AWS, Azure, Bluefield, GCP, GKE, HWE, IBM, IOT, KVM, Raspi, Xilinx-ZynqMP


### [[USN-6925-1](https://ubuntu.com/security/notices/USN-6925-1)] Linux kernel vulnerability {#usn-6925-1-linux-kernel-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM)
    -   [CVE-2024-26882](https://ubuntu.com/security/CVE-2024-26882) <!-- medium -->
-   3.13 - generic, lowlatency, server, virtual


### [[USN-6926-1](https://ubuntu.com/security/notices/USN-6926-1)] Linux kernel vulnerabilities {#usn-6926-1-linux-kernel-vulnerabilities}

-   30 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-52752](https://ubuntu.com/security/CVE-2023-52752) <!-- medium -->
    -   [CVE-2023-52444](https://ubuntu.com/security/CVE-2023-52444) <!-- medium -->
    -   [CVE-2024-26882](https://ubuntu.com/security/CVE-2024-26882) <!-- medium -->
    -   [CVE-2023-52449](https://ubuntu.com/security/CVE-2023-52449) <!-- medium -->
    -   [CVE-2024-26934](https://ubuntu.com/security/CVE-2024-26934) <!-- medium -->
    -   [CVE-2024-26840](https://ubuntu.com/security/CVE-2024-26840) <!-- medium -->
    -   [CVE-2024-36016](https://ubuntu.com/security/CVE-2024-36016) <!-- high -->
    -   [CVE-2024-27020](https://ubuntu.com/security/CVE-2024-27020) <!-- medium -->
    -   [CVE-2023-52443](https://ubuntu.com/security/CVE-2023-52443) <!-- medium -->
    -   [CVE-2024-26923](https://ubuntu.com/security/CVE-2024-26923) <!-- high -->
    -   [CVE-2024-26857](https://ubuntu.com/security/CVE-2024-26857) <!-- medium -->
    -   [CVE-2024-36902](https://ubuntu.com/security/CVE-2024-36902) <!-- medium -->
    -   [CVE-2024-35982](https://ubuntu.com/security/CVE-2024-35982) <!-- medium -->
    -   [CVE-2024-26886](https://ubuntu.com/security/CVE-2024-26886) <!-- medium -->
    -   [CVE-2024-35978](https://ubuntu.com/security/CVE-2024-35978) <!-- medium -->
    -   [CVE-2023-52469](https://ubuntu.com/security/CVE-2023-52469) <!-- low -->
    -   [CVE-2024-26901](https://ubuntu.com/security/CVE-2024-26901) <!-- medium -->
    -   [CVE-2024-26884](https://ubuntu.com/security/CVE-2024-26884) <!-- medium -->
    -   [CVE-2023-52436](https://ubuntu.com/security/CVE-2023-52436) <!-- medium -->
    -   [CVE-2024-35997](https://ubuntu.com/security/CVE-2024-35997) <!-- medium -->
    -   [CVE-2023-52620](https://ubuntu.com/security/CVE-2023-52620) <!-- high -->
    -   [CVE-2024-35984](https://ubuntu.com/security/CVE-2024-35984) <!-- medium -->
    -   [CVE-2024-27013](https://ubuntu.com/security/CVE-2024-27013) <!-- medium -->
    -   [CVE-2023-52435](https://ubuntu.com/security/CVE-2023-52435) <!-- medium -->
    -   [CVE-2024-25744](https://ubuntu.com/security/CVE-2024-25744) <!-- medium -->
    -   [CVE-2024-25739](https://ubuntu.com/security/CVE-2024-25739) <!-- medium -->
    -   [CVE-2024-24859](https://ubuntu.com/security/CVE-2024-24859) <!-- low -->
    -   [CVE-2024-24858](https://ubuntu.com/security/CVE-2024-24858) <!-- low -->
    -   [CVE-2024-24857](https://ubuntu.com/security/CVE-2024-24857) <!-- low -->
    -   [CVE-2023-46343](https://ubuntu.com/security/CVE-2023-46343) <!-- medium -->
-   4.15 - generic, AWS, HWE, GCP, KVM, Oracle


### [[USN-6927-1](https://ubuntu.com/security/notices/USN-6927-1)] Linux kernel vulnerabilities {#usn-6927-1-linux-kernel-vulnerabilities}

-   161 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2024-27008](https://ubuntu.com/security/CVE-2024-27008) <!-- medium -->
    -   [CVE-2024-26951](https://ubuntu.com/security/CVE-2024-26951) <!-- medium -->
    -   [CVE-2024-26970](https://ubuntu.com/security/CVE-2024-26970) <!-- medium -->
    -   [CVE-2024-35815](https://ubuntu.com/security/CVE-2024-35815) <!-- medium -->
    -   [CVE-2024-26828](https://ubuntu.com/security/CVE-2024-26828) <!-- high -->
    -   [CVE-2024-35898](https://ubuntu.com/security/CVE-2024-35898) <!-- medium -->
    -   [CVE-2024-26999](https://ubuntu.com/security/CVE-2024-26999) <!-- medium -->
    -   [CVE-2024-35938](https://ubuntu.com/security/CVE-2024-35938) <!-- medium -->
    -   [CVE-2024-27016](https://ubuntu.com/security/CVE-2024-27016) <!-- medium -->
    -   [CVE-2024-35825](https://ubuntu.com/security/CVE-2024-35825) <!-- medium -->
    -   [CVE-2024-35950](https://ubuntu.com/security/CVE-2024-35950) <!-- medium -->
    -   [CVE-2024-26969](https://ubuntu.com/security/CVE-2024-26969) <!-- medium -->
    -   [CVE-2024-26643](https://ubuntu.com/security/CVE-2024-26643) <!-- high -->
    -   [CVE-2024-26924](https://ubuntu.com/security/CVE-2024-26924) <!-- high -->
    -   [CVE-2024-36025](https://ubuntu.com/security/CVE-2024-36025) <!-- medium -->
    -   [CVE-2023-52752](https://ubuntu.com/security/CVE-2023-52752) <!-- medium -->
    -   [CVE-2024-35936](https://ubuntu.com/security/CVE-2024-35936) <!-- medium -->
    -   [CVE-2024-35847](https://ubuntu.com/security/CVE-2024-35847) <!-- medium -->
    -   [CVE-2024-26964](https://ubuntu.com/security/CVE-2024-26964) <!-- medium -->
    -   [CVE-2024-35857](https://ubuntu.com/security/CVE-2024-35857) <!-- medium -->
    -   [CVE-2024-35854](https://ubuntu.com/security/CVE-2024-35854) <!-- medium -->
    -   [CVE-2024-27437](https://ubuntu.com/security/CVE-2024-27437) <!-- medium -->
    -   [CVE-2024-35851](https://ubuntu.com/security/CVE-2024-35851) <!-- medium -->
    -   [CVE-2024-26654](https://ubuntu.com/security/CVE-2024-26654) <!-- medium -->
    -   [CVE-2024-26629](https://ubuntu.com/security/CVE-2024-26629) <!-- medium -->
    -   [CVE-2024-26988](https://ubuntu.com/security/CVE-2024-26988) <!-- medium -->
    -   [CVE-2024-27001](https://ubuntu.com/security/CVE-2024-27001) <!-- medium -->
    -   [CVE-2024-26956](https://ubuntu.com/security/CVE-2024-26956) <!-- medium -->
    -   [CVE-2024-35990](https://ubuntu.com/security/CVE-2024-35990) <!-- medium -->
    -   [CVE-2024-27020](https://ubuntu.com/security/CVE-2024-27020) <!-- medium -->
    -   [CVE-2024-26996](https://ubuntu.com/security/CVE-2024-26996) <!-- medium -->
    -   [CVE-2024-35817](https://ubuntu.com/security/CVE-2024-35817) <!-- medium -->
    -   [CVE-2024-26950](https://ubuntu.com/security/CVE-2024-26950) <!-- medium -->
    -   [CVE-2024-26810](https://ubuntu.com/security/CVE-2024-26810) <!-- medium -->
    -   [CVE-2024-35893](https://ubuntu.com/security/CVE-2024-35893) <!-- medium -->
    -   [CVE-2024-35852](https://ubuntu.com/security/CVE-2024-35852) <!-- medium -->
    -   [CVE-2024-35895](https://ubuntu.com/security/CVE-2024-35895) <!-- medium -->
    -   [CVE-2024-27009](https://ubuntu.com/security/CVE-2024-27009) <!-- medium -->
    -   [CVE-2024-26687](https://ubuntu.com/security/CVE-2024-26687) <!-- medium -->
    -   [CVE-2024-35821](https://ubuntu.com/security/CVE-2024-35821) <!-- medium -->
    -   [CVE-2024-35944](https://ubuntu.com/security/CVE-2024-35944) <!-- medium -->
    -   [CVE-2024-27015](https://ubuntu.com/security/CVE-2024-27015) <!-- medium -->
    -   [CVE-2024-35822](https://ubuntu.com/security/CVE-2024-35822) <!-- medium -->
    -   [CVE-2024-35823](https://ubuntu.com/security/CVE-2024-35823) <!-- medium -->
    -   [CVE-2024-35890](https://ubuntu.com/security/CVE-2024-35890) <!-- medium -->
    -   [CVE-2024-35973](https://ubuntu.com/security/CVE-2024-35973) <!-- medium -->
    -   [CVE-2024-27013](https://ubuntu.com/security/CVE-2024-27013) <!-- medium -->
    -   [CVE-2024-35912](https://ubuntu.com/security/CVE-2024-35912) <!-- medium -->
    -   [CVE-2024-26817](https://ubuntu.com/security/CVE-2024-26817) <!-- medium -->
    -   [CVE-2024-35935](https://ubuntu.com/security/CVE-2024-35935) <!-- medium -->
    -   [CVE-2024-26989](https://ubuntu.com/security/CVE-2024-26989) <!-- medium -->
    -   [CVE-2024-35877](https://ubuntu.com/security/CVE-2024-35877) <!-- medium -->
    -   [CVE-2024-26926](https://ubuntu.com/security/CVE-2024-26926) <!-- medium -->
    -   [CVE-2024-35849](https://ubuntu.com/security/CVE-2024-35849) <!-- medium -->
    -   [CVE-2024-26993](https://ubuntu.com/security/CVE-2024-26993) <!-- medium -->
    -   [CVE-2024-26974](https://ubuntu.com/security/CVE-2024-26974) <!-- medium -->
    -   [CVE-2024-35791](https://ubuntu.com/security/CVE-2024-35791) <!-- medium -->
    -   [CVE-2024-35910](https://ubuntu.com/security/CVE-2024-35910) <!-- medium -->
    -   [CVE-2024-36008](https://ubuntu.com/security/CVE-2024-36008) <!-- medium -->
    -   [CVE-2024-35988](https://ubuntu.com/security/CVE-2024-35988) <!-- medium -->
    -   [CVE-2024-26813](https://ubuntu.com/security/CVE-2024-26813) <!-- medium -->
    -   [CVE-2024-36006](https://ubuntu.com/security/CVE-2024-36006) <!-- medium -->
    -   [CVE-2024-35879](https://ubuntu.com/security/CVE-2024-35879) <!-- medium -->
    -   [CVE-2024-35789](https://ubuntu.com/security/CVE-2024-35789) <!-- medium -->
    -   [CVE-2024-35969](https://ubuntu.com/security/CVE-2024-35969) <!-- medium -->
    -   [CVE-2024-35925](https://ubuntu.com/security/CVE-2024-35925) <!-- medium -->
    -   [CVE-2024-26984](https://ubuntu.com/security/CVE-2024-26984) <!-- medium -->
    -   [CVE-2024-35871](https://ubuntu.com/security/CVE-2024-35871) <!-- medium -->
    -   [CVE-2024-35853](https://ubuntu.com/security/CVE-2024-35853) <!-- medium -->
    -   [CVE-2024-27004](https://ubuntu.com/security/CVE-2024-27004) <!-- medium -->
    -   [CVE-2024-35899](https://ubuntu.com/security/CVE-2024-35899) <!-- medium -->
    -   [CVE-2024-26931](https://ubuntu.com/security/CVE-2024-26931) <!-- medium -->
    -   [CVE-2024-35934](https://ubuntu.com/security/CVE-2024-35934) <!-- medium -->
    -   [CVE-2024-35796](https://ubuntu.com/security/CVE-2024-35796) <!-- medium -->
    -   [CVE-2024-36020](https://ubuntu.com/security/CVE-2024-36020) <!-- medium -->
    -   [CVE-2023-52699](https://ubuntu.com/security/CVE-2023-52699) <!-- medium -->
    -   [CVE-2024-35930](https://ubuntu.com/security/CVE-2024-35930) <!-- medium -->
    -   [CVE-2024-26957](https://ubuntu.com/security/CVE-2024-26957) <!-- medium -->
    -   [CVE-2024-35804](https://ubuntu.com/security/CVE-2024-35804) <!-- medium -->
    -   [CVE-2024-26922](https://ubuntu.com/security/CVE-2024-26922) <!-- medium -->
    -   [CVE-2024-26814](https://ubuntu.com/security/CVE-2024-26814) <!-- medium -->
    -   [CVE-2024-35900](https://ubuntu.com/security/CVE-2024-35900) <!-- medium -->
    -   [CVE-2024-27395](https://ubuntu.com/security/CVE-2024-27395) <!-- medium -->
    -   [CVE-2024-26642](https://ubuntu.com/security/CVE-2024-26642) <!-- high -->
    -   [CVE-2024-26960](https://ubuntu.com/security/CVE-2024-26960) <!-- medium -->
    -   [CVE-2024-26935](https://ubuntu.com/security/CVE-2024-26935) <!-- medium -->
    -   [CVE-2024-36005](https://ubuntu.com/security/CVE-2024-36005) <!-- medium -->
    -   [CVE-2024-26981](https://ubuntu.com/security/CVE-2024-26981) <!-- medium -->
    -   [CVE-2024-26934](https://ubuntu.com/security/CVE-2024-26934) <!-- medium -->
    -   [CVE-2024-26976](https://ubuntu.com/security/CVE-2024-26976) <!-- medium -->
    -   [CVE-2024-35806](https://ubuntu.com/security/CVE-2024-35806) <!-- medium -->
    -   [CVE-2024-35915](https://ubuntu.com/security/CVE-2024-35915) <!-- medium -->
    -   [CVE-2024-35922](https://ubuntu.com/security/CVE-2024-35922) <!-- medium -->
    -   [CVE-2022-48808](https://ubuntu.com/security/CVE-2022-48808) <!-- medium -->
    -   [CVE-2024-26973](https://ubuntu.com/security/CVE-2024-26973) <!-- medium -->
    -   [CVE-2024-35933](https://ubuntu.com/security/CVE-2024-35933) <!-- medium -->
    -   [CVE-2024-35785](https://ubuntu.com/security/CVE-2024-35785) <!-- medium -->
    -   [CVE-2024-26937](https://ubuntu.com/security/CVE-2024-26937) <!-- medium -->
    -   [CVE-2024-35918](https://ubuntu.com/security/CVE-2024-35918) <!-- medium -->
    -   [CVE-2024-27000](https://ubuntu.com/security/CVE-2024-27000) <!-- medium -->
    -   [CVE-2024-26977](https://ubuntu.com/security/CVE-2024-26977) <!-- medium -->
    -   [CVE-2024-27393](https://ubuntu.com/security/CVE-2024-27393) <!-- medium -->
    -   [CVE-2024-35984](https://ubuntu.com/security/CVE-2024-35984) <!-- medium -->
    -   [CVE-2024-35970](https://ubuntu.com/security/CVE-2024-35970) <!-- medium -->
    -   [CVE-2024-27019](https://ubuntu.com/security/CVE-2024-27019) <!-- medium -->
    -   [CVE-2024-26955](https://ubuntu.com/security/CVE-2024-26955) <!-- medium -->
    -   [CVE-2024-35888](https://ubuntu.com/security/CVE-2024-35888) <!-- medium -->
    -   [CVE-2024-35976](https://ubuntu.com/security/CVE-2024-35976) <!-- medium -->
    -   [CVE-2024-35982](https://ubuntu.com/security/CVE-2024-35982) <!-- medium -->
    -   [CVE-2024-35805](https://ubuntu.com/security/CVE-2024-35805) <!-- medium -->
    -   [CVE-2024-35960](https://ubuntu.com/security/CVE-2024-35960) <!-- medium -->
    -   [CVE-2024-26812](https://ubuntu.com/security/CVE-2024-26812) <!-- medium -->
    -   [CVE-2024-27017](https://ubuntu.com/security/CVE-2024-27017) <!-- medium -->
    -   [CVE-2024-26966](https://ubuntu.com/security/CVE-2024-26966) <!-- medium -->
    -   [CVE-2023-52880](https://ubuntu.com/security/CVE-2023-52880) <!-- high -->
    -   [CVE-2024-27396](https://ubuntu.com/security/CVE-2024-27396) <!-- medium -->
    -   [CVE-2024-35809](https://ubuntu.com/security/CVE-2024-35809) <!-- medium -->
    -   [CVE-2024-35997](https://ubuntu.com/security/CVE-2024-35997) <!-- medium -->
    -   [CVE-2024-26958](https://ubuntu.com/security/CVE-2024-26958) <!-- medium -->
    -   [CVE-2024-26961](https://ubuntu.com/security/CVE-2024-26961) <!-- medium -->
    -   [CVE-2024-26923](https://ubuntu.com/security/CVE-2024-26923) <!-- high -->
    -   [CVE-2024-26811](https://ubuntu.com/security/CVE-2024-26811) <!-- medium -->
    -   [CVE-2024-35813](https://ubuntu.com/security/CVE-2024-35813) <!-- medium -->
    -   [CVE-2024-36029](https://ubuntu.com/security/CVE-2024-36029) <!-- medium -->
    -   [CVE-2024-35896](https://ubuntu.com/security/CVE-2024-35896) <!-- medium -->
    -   [CVE-2024-26965](https://ubuntu.com/security/CVE-2024-26965) <!-- medium -->
    -   [CVE-2024-35885](https://ubuntu.com/security/CVE-2024-35885) <!-- medium -->
    -   [CVE-2024-35855](https://ubuntu.com/security/CVE-2024-35855) <!-- medium -->
    -   [CVE-2024-36007](https://ubuntu.com/security/CVE-2024-36007) <!-- medium -->
    -   [CVE-2024-26929](https://ubuntu.com/security/CVE-2024-26929) <!-- medium -->
    -   [CVE-2024-35897](https://ubuntu.com/security/CVE-2024-35897) <!-- medium -->
    -   [CVE-2024-35905](https://ubuntu.com/security/CVE-2024-35905) <!-- medium -->
    -   [CVE-2024-27018](https://ubuntu.com/security/CVE-2024-27018) <!-- medium -->
    -   [CVE-2024-26886](https://ubuntu.com/security/CVE-2024-26886) <!-- medium -->
    -   [CVE-2024-35884](https://ubuntu.com/security/CVE-2024-35884) <!-- medium -->
    -   [CVE-2023-52488](https://ubuntu.com/security/CVE-2023-52488) <!-- medium -->
    -   [CVE-2024-36016](https://ubuntu.com/security/CVE-2024-36016) <!-- high -->
    -   [CVE-2024-35872](https://ubuntu.com/security/CVE-2024-35872) <!-- medium -->
    -   [CVE-2024-35819](https://ubuntu.com/security/CVE-2024-35819) <!-- medium -->
    -   [CVE-2024-35907](https://ubuntu.com/security/CVE-2024-35907) <!-- medium -->
    -   [CVE-2024-26952](https://ubuntu.com/security/CVE-2024-26952) <!-- medium -->
    -   [CVE-2024-35940](https://ubuntu.com/security/CVE-2024-35940) <!-- medium -->
    -   [CVE-2024-35989](https://ubuntu.com/security/CVE-2024-35989) <!-- medium -->
    -   [CVE-2024-27059](https://ubuntu.com/security/CVE-2024-27059) <!-- medium -->
    -   [CVE-2024-26925](https://ubuntu.com/security/CVE-2024-26925) <!-- high -->
    -   [CVE-2024-35955](https://ubuntu.com/security/CVE-2024-35955) <!-- medium -->
    -   [CVE-2024-36004](https://ubuntu.com/security/CVE-2024-36004) <!-- medium -->
    -   [CVE-2024-26994](https://ubuntu.com/security/CVE-2024-26994) <!-- medium -->
    -   [CVE-2024-35807](https://ubuntu.com/security/CVE-2024-35807) <!-- medium -->
    -   [CVE-2024-35886](https://ubuntu.com/security/CVE-2024-35886) <!-- medium -->
    -   [CVE-2024-35978](https://ubuntu.com/security/CVE-2024-35978) <!-- medium -->
    -   [CVE-2024-35958](https://ubuntu.com/security/CVE-2024-35958) <!-- medium -->
    -   [CVE-2024-35902](https://ubuntu.com/security/CVE-2024-35902) <!-- medium -->
    -   [CVE-2024-25742](https://ubuntu.com/security/CVE-2024-25742) <!-- medium -->
    -   [CVE-2024-25739](https://ubuntu.com/security/CVE-2024-25739) <!-- medium -->
    -   [CVE-2024-24861](https://ubuntu.com/security/CVE-2024-24861) <!-- medium -->
    -   [CVE-2024-24859](https://ubuntu.com/security/CVE-2024-24859) <!-- low -->
    -   [CVE-2024-24858](https://ubuntu.com/security/CVE-2024-24858) <!-- low -->
    -   [CVE-2024-24857](https://ubuntu.com/security/CVE-2024-24857) <!-- low -->
    -   [CVE-2024-23307](https://ubuntu.com/security/CVE-2024-23307) <!-- low -->
    -   [CVE-2022-38096](https://ubuntu.com/security/CVE-2022-38096) <!-- medium -->
-   5.15 - GCP


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Discussion of testing for security updates in light of CrowdStrike (11:20) {#discussion-of-testing-for-security-updates-in-light-of-crowdstrike--11-20}

-   Recent outage of over 8 million Windows machines running CrowdStrike Falcon
    -   <https://www.crowdstrike.com/falcon-content-update-remediation-and-guidance-hub/>
-   Initially very little information on what happened - CS have now released more
    details about the apparent testing that was done but clearly were never
    actually testing the combination of Windows + Falcon + Rapid Response Content
    otherwise would have observed this failure immediately
-   Also clearly didn't have any kind of staged/phased update process in place either
    -   If you want to read a good analysis of the response from CS,
        <https://verse.systems/blog/post/2024-07-25-parsing-crowdstrikes-post/>
        -   Toby Murray (full disclosure, my brother) - Associate Professor and
            Co-Lead of Computer Science Research Group at School of Computing and
            Information Systems, University of Melbourne, Director, Defence Science
            Institute (Vic &amp; Tas)
    -   Future plans from CS now include gradual deployment of rules with "canaries" etc and then increased testing:
        -   Local dev testing, content update testing, stress, fuzz, fault-injection,
            stability and interface testing
        -   Toby (not surprisingly as an expert in formal software verification)
            advocates for a formal approach to validating rules and in-kernel code etc
-   What can we learn from this for Ubuntu?
    -   Formal methods might be tractable for a large company like CS who is
        developing a single, specific product like Falcon (particularly if they can
        reduce the size of their kernel module), this is not the case for a Linux
        distribution like Ubuntu which collates over 30,000 different open source
        software projects
        -   over 4TB of source code across the various releases
-   Instead have to take the pragmatic approach of thorough testing
    -   For regular SRUs - detailed review by SRU team including a thorough test
        plan, cross-package testing via [Autopkgtest](https://autopkgtest.ubuntu.com/) plus a minimum 7 day "soak"
        testing in the proposed pocket of the release before being pushed into the
        -updates pocket
    -   Once in -updates, [Phased Updates](https://ubuntu.com/server/docs/about-apt-upgrade-and-phased-updates) implements the gradual deployment model -
        you can check the progress of various updates at
        <https://ubuntu-archive-team.ubuntu.com/phased-updates.html>
        -   Watches for increased error reports via errors.ubuntu.com (captured via
            apport/whoopsie) and if detected stops the release of the package to users
-   Compare that to the process for Security updates
    -   Separate -security pocket in the archive which packages get published to
        immediately
        -   No standardised review by separate team
            -   instead adhoc reviews within the security team
        -   No documented test plan per update
            -   instead [thorough test procedures](https://git.launchpad.net/qa-regression-testing/tree/README.testing) including:
                -   checking for any changes in the build log (e.g. new compiler
                    warnings/errors) and comparing the difference between the generated
                    binaries (e.g. new / changed / missing symbols - ABI breaks)
                -   testing of the patched code including stepping through it with a
                    debugger
                -   running any existing PoC or creating one if none exists and is
                    feasible
                -   running any existing unit/integration tests within the package
                    (including dep8/autopkgtests)
                -   test apt upgrade of the package is smooth
                -   QA regression testing scripts - maintained by the security team,
                    implement various regression tests and system-level tests for
                    different packages to exercise them in various different
                    configurations
        -   Cross-package testing via [security-britney](https://people.canonical.com/~platform/security-britney/) - instance of the autopkgtest
            infrastructure that runs against the public [Ubuntu Security Proposed PPA](https://launchpad.net/~ubuntu-security-proposed/+archive/ubuntu/ppa/)
            (and we have a similar internal instance for the different private PPAs we
            use for embargoed updates or ESM etc)
        -   No phased updates - instead immediate updates via specific
            security.ubuntu.com archive, combined with unattended-upgrades
            -   designed to deliver security updates as soon as possible to remediate
                issues
-   In general, I would argue that the process we have in place results in more
    thorough testing for security updates - particularly checking for anything
    anomalous like new compiler warnings / symbols / unexpected changes in
    binaries etc as well as more thorough, standardised testing for packages
    through the [QA Regression Testing](https://git.launchpad.net/qa-regression-testing/) repo scripts
-   However, the lack of phased/progressive updates combined with the separate
    security.ubuntu.com archive and unattended-upgrades on by default, means any
    security update is delivered to Ubuntu users within 24 hours (on average) -
    BUT then any regression is also rolled out to all users in 24 hours as well
-   As such, kicking off discussions around possible changes to our deployment
    strategy to potentially introduce some more guard rails on the deployment side
-   If you have any thoughts, please let us know


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
