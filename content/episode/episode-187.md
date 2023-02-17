+++
title = "Episode 187"
description = """
  After the announcement of Ubuntu Pro GA last week, we take the time to dispel
  some myths around all things Ubuntu Pro, esm-apps and apt etc, plus Camila sits
  down with Mark and David to discuss the backstory of Editorconfig [CVE-2023-0341](https://ubuntu.com/security/CVE-2023-0341)
  and we also have a brief summary of the security updates from the past week.
  """
date = 2023-02-17T21:44:00+10:30
lastmod = 2023-02-17T22:05:32+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E187.mp3"
podcast_duration = 1628
podcast_bytes = 26573177
permalink = "https://ubuntusecuritypodcast.org/episode-187/"
guid = "e368ca33159db57a94f0736b28893599a408982c77ef1f87a9a904f177e54cceaa98b9b76aef0553281adb927bc41b8754f216c55f2b6e2b1d4a572d28451cb5"
+++

## Overview {#overview}

After the announcement of Ubuntu Pro GA last week, we take the time to dispel
some myths around all things Ubuntu Pro, esm-apps and apt etc, plus Camila sits
down with Mark and David to discuss the backstory of Editorconfig [CVE-2023-0341](https://ubuntu.com/security/CVE-2023-0341)
and we also have a brief summary of the security updates from the past week.


## Ubuntu Pro, esm-apps and apt confusions [00:40] {#ubuntu-pro-esm-apps-and-apt-confusions-00-40}

-   <https://www.theregister.com/2022/10/13/canonical_ubuntu_ad/>
    -   talks in general about Ubuntu Pro notices in apt but doesn't cover any
        details
-   <https://www.omgubuntu.co.uk/2022/10/ubuntu-pro-terminal-ad>
    -   talks more about the details but seems to think it is only beneficial for
        LTS releasing at the end of the LTS
-   <https://news.ycombinator.com/item?id=33260896>
    -   almost no engagement on hacker news
-   But there has been a lot of users expressing a lot of emotion over the
    appearance now of the new 'advertisement' for Ubuntu Pro / esm-apps when they
    run apt update, e.g.:
    ```text
    The following security updates require Ubuntu Pro with 'esm-apps' enabled:
      python2.7-minimal python2.7 libpython2.7-minimal libpython2.7-stdlib
    Learn more about Ubuntu Pro at https://ubuntu.com/pro
    ```
-   There appears to be a few main issues:
    1.  Users don't like what appears to be an advertisement in the apt output
    2.  Some updates now appear to be behind a "paywall"
    3.  Whilst they are free for personal use, to get access to them you need to
        register an account on Ubuntu One etc and this requires providing various
        high-level personal details (Name, Email etc)

-   So let's take some time to look into these issues:
    1.  This is not the first time Canonical has tried to raise awareness of
        various products - e.g. motd etc - so perhaps this causes more frustration
        for users - however, if desired it can be disabled:
        ```text
        pro config set apt_news False
        ```
    2.  Ubuntu Pro is free for personal / small-scale commercial use - any user is
        entitled to a free Ubuntu Pro subscription on up to 5 machines
        -   this can be for bare metal or virtual machines and using either Ubuntu
            Server or Desktop - the install / Ubuntu type doesn't matter
        -   and as we mentioned last week, if you are an Ubuntu member you get an
            entitlement for 50 machines
            -   currently this is not reflected in the <https://ubuntu.com/pro/dashboard>
                (it still says 5 machines against the free personal token)

{{< figure src="/img/ubuntu_pro_dashboard.png" >}}

-   so there is nothing to pay here - likely most folks that find this
    objectionable are personal users and so are entitled to the free
    subscription
-   the other big part of this is that some folks seem to think these updates
    are **now** only available via Ubuntu Pro when previously they were part of
    the regular Ubuntu archive
    -   this is incorrect - the `esm-apps` part of this message indicates that
        these updates are for packages in the Universe component of the Ubuntu
        archive - previously this has only ever been community supported - and
        so the Ubuntu Security team would only ever provide security updates on
        rare occasions OR if a member of the community came along and provided
        an update in the form of a debdiff which could be sponsored by someone
        from the Ubuntu Security team
    -   but now the team **is** starting to do security updates for packages in
        Universe and these are being made available via Ubuntu Pro
    -   so if you do not enrol in Ubuntu Pro, your machine is still getting the
        regular security updates for the Main+Restricted components as it
        always was
    -   but if you **do** choose to enrol in Ubuntu Pro you can get these **extra**
        security updates that were never previously available
-   On the issue of having to provide some personal information to get access
    to Ubuntu One, I realise this can be a bit contentious given that a lot of
    Ubuntu and Linux users in general can be quite privacy conscious - however
    this is not really any different than other online services like
    Github/Gmail etc - **and** as said earlier, if you choose to not enrol in
    Ubuntu Pro, you are just as secure as you always were - and to avoid having
    to see the prompt in your apt update output, you can disable that as
    mentioned earlier and so restore your system to the same state as it used
    to be - as always, you are in control of your own machine
-   Hopefully this helps to dispel some of the myths and concerns surrounding
    Ubuntu Pro and encourage folks to use it - the Ubuntu Security Team and others
    at Canonical have put a lot of work into Ubuntu Pro behind the scenes and we
    think this provides a lot of great security benefits and so encourage all
    listeners to make use of it to ensure their systems are as secure as possible


## The inside story of Editorconfig [CVE-2023-0341](https://ubuntu.com/security/CVE-2023-0341) [09:05] {#the-inside-story-of-editorconfig-cve-2023-0341-09-05}

-   Interview by Camila Camargo de Matos with David Fernandez Gonzalez and Mark
    Esler about the discovery and investigation of [CVE-2023-0341](https://ubuntu.com/security/CVE-2023-0341) in Editorconfig
    ([[USN-5842-1] EditorConfig Core C vulnerability from Episode 186]({{< relref "episode-186#usn-5842-1-editorconfig-core-c-vulnerability-05-24" >}}))
-   [Keynote: Improving FOSS Security - Mark Esler | UbuCon Asia 2022](https://www.youtube.com/watch?v=Oz6_14rT72Q)
-   <https://litios.github.io/2023/01/14/CVE-2023-0341.html>


## This week in Ubuntu Security Updates [25:19] {#this-week-in-ubuntu-security-updates-25-19}

64 unique CVEs addressed


### [[USN-5849-1](https://ubuntu.com/security/notices/USN-5849-1)] Heimdal vulnerabilities {#usn-5849-1-heimdal-vulnerabilities}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-45142](https://ubuntu.com/security/CVE-2022-45142) <!-- medium -->


### [[USN-5835-4](https://ubuntu.com/security/notices/USN-5835-4)] Cinder vulnerability {#usn-5835-4-cinder-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-47951](https://ubuntu.com/security/CVE-2022-47951) <!-- medium -->


### [[USN-5835-5](https://ubuntu.com/security/notices/USN-5835-5)] Nova vulnerability {#usn-5835-5-nova-vulnerability}

-   1 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2022-47951](https://ubuntu.com/security/CVE-2022-47951) <!-- medium -->


### [[USN-5852-1](https://ubuntu.com/security/notices/USN-5852-1)] OpenStack Swift vulnerability {#usn-5852-1-openstack-swift-vulnerability}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-47950](https://ubuntu.com/security/CVE-2022-47950) <!-- medium -->


### [[USN-5850-1](https://ubuntu.com/security/notices/USN-5850-1)] Linux kernel vulnerabilities {#usn-5850-1-linux-kernel-vulnerabilities}

-   5 CVEs addressed in Kinetic (22.10)
    -   [CVE-2023-0590](https://ubuntu.com/security/CVE-2023-0590) <!-- medium -->
    -   [CVE-2022-42895](https://ubuntu.com/security/CVE-2022-42895) <!-- medium -->
    -   [CVE-2022-3640](https://ubuntu.com/security/CVE-2022-3640) <!-- medium -->
    -   [CVE-2022-3628](https://ubuntu.com/security/CVE-2022-3628) <!-- medium -->
    -   [CVE-2022-3619](https://ubuntu.com/security/CVE-2022-3619) <!-- medium -->


### [[USN-5854-1](https://ubuntu.com/security/notices/USN-5854-1)] Linux kernel vulnerabilities {#usn-5854-1-linux-kernel-vulnerabilities}

-   11 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2022-43750](https://ubuntu.com/security/CVE-2022-43750) <!-- medium -->
    -   [CVE-2022-41850](https://ubuntu.com/security/CVE-2022-41850) <!-- medium -->
    -   [CVE-2022-41849](https://ubuntu.com/security/CVE-2022-41849) <!-- medium -->
    -   [CVE-2022-39842](https://ubuntu.com/security/CVE-2022-39842) <!-- low -->
    -   [CVE-2022-3649](https://ubuntu.com/security/CVE-2022-3649) <!-- medium -->
    -   [CVE-2022-3646](https://ubuntu.com/security/CVE-2022-3646) <!-- medium -->
    -   [CVE-2022-29901](https://ubuntu.com/security/CVE-2022-29901) <!-- medium -->
    -   [CVE-2022-29900](https://ubuntu.com/security/CVE-2022-29900) <!-- medium -->
    -   [CVE-2022-2663](https://ubuntu.com/security/CVE-2022-2663) <!-- medium -->
    -   [CVE-2022-26373](https://ubuntu.com/security/CVE-2022-26373) <!-- medium -->
    -   [CVE-2022-20369](https://ubuntu.com/security/CVE-2022-20369) <!-- medium -->


### [[USN-5855-1](https://ubuntu.com/security/notices/USN-5855-1)] ImageMagick vulnerabilities {#usn-5855-1-imagemagick-vulnerabilities}

-   2 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2022-44268](https://ubuntu.com/security/CVE-2022-44268) <!-- medium -->
    -   [CVE-2022-44267](https://ubuntu.com/security/CVE-2022-44267) <!-- medium -->


### [[USN-5856-1](https://ubuntu.com/security/notices/USN-5856-1)] Linux kernel (OEM) vulnerabilities {#usn-5856-1-linux-kernel--oem--vulnerabilities}

-   3 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-3424](https://ubuntu.com/security/CVE-2022-3424) <!-- medium -->
    -   [CVE-2022-1048](https://ubuntu.com/security/CVE-2022-1048) <!-- medium -->
    -   [CVE-2023-0179](https://ubuntu.com/security/CVE-2023-0179) <!-- high -->


### [[USN-5857-1](https://ubuntu.com/security/notices/USN-5857-1)] Linux kernel (OEM) vulnerability {#usn-5857-1-linux-kernel--oem--vulnerability}

-   1 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-0179](https://ubuntu.com/security/CVE-2023-0179) <!-- high -->


### [[USN-5858-1](https://ubuntu.com/security/notices/USN-5858-1)] Linux kernel (OEM) vulnerabilities {#usn-5858-1-linux-kernel--oem--vulnerabilities}

-   4 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2022-45934](https://ubuntu.com/security/CVE-2022-45934) <!-- medium -->
    -   [CVE-2022-42895](https://ubuntu.com/security/CVE-2022-42895) <!-- medium -->
    -   [CVE-2022-3545](https://ubuntu.com/security/CVE-2022-3545) <!-- medium -->
    -   [CVE-2023-0179](https://ubuntu.com/security/CVE-2023-0179) <!-- high -->


### [[USN-5859-1](https://ubuntu.com/security/notices/USN-5859-1)] Linux kernel (OEM) vulnerabilities {#usn-5859-1-linux-kernel--oem--vulnerabilities}

-   4 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2022-42895](https://ubuntu.com/security/CVE-2022-42895) <!-- medium -->
    -   [CVE-2022-4139](https://ubuntu.com/security/CVE-2022-4139) <!-- medium -->
    -   [CVE-2022-3545](https://ubuntu.com/security/CVE-2022-3545) <!-- medium -->
    -   [CVE-2023-0179](https://ubuntu.com/security/CVE-2023-0179) <!-- high -->


### [[USN-5848-1](https://ubuntu.com/security/notices/USN-5848-1)] less vulnerability {#usn-5848-1-less-vulnerability}

-   1 CVEs addressed in Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-46663](https://ubuntu.com/security/CVE-2022-46663) <!-- medium -->


### [[USN-5860-1](https://ubuntu.com/security/notices/USN-5860-1)] Linux kernel (GKE) vulnerabilities {#usn-5860-1-linux-kernel--gke--vulnerabilities}

-   14 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-0590](https://ubuntu.com/security/CVE-2023-0590) <!-- medium -->
    -   [CVE-2022-47940](https://ubuntu.com/security/CVE-2022-47940) <!-- medium -->
    -   [CVE-2022-45934](https://ubuntu.com/security/CVE-2022-45934) <!-- medium -->
    -   [CVE-2022-42895](https://ubuntu.com/security/CVE-2022-42895) <!-- medium -->
    -   [CVE-2022-41850](https://ubuntu.com/security/CVE-2022-41850) <!-- medium -->
    -   [CVE-2022-41849](https://ubuntu.com/security/CVE-2022-41849) <!-- medium -->
    -   [CVE-2022-3643](https://ubuntu.com/security/CVE-2022-3643) <!-- medium -->
    -   [CVE-2022-3640](https://ubuntu.com/security/CVE-2022-3640) <!-- medium -->
    -   [CVE-2022-3628](https://ubuntu.com/security/CVE-2022-3628) <!-- medium -->
    -   [CVE-2022-3623](https://ubuntu.com/security/CVE-2022-3623) <!-- medium -->
    -   [CVE-2022-3619](https://ubuntu.com/security/CVE-2022-3619) <!-- medium -->
    -   [CVE-2022-3543](https://ubuntu.com/security/CVE-2022-3543) <!-- medium -->
    -   [CVE-2022-42896](https://ubuntu.com/security/CVE-2022-42896) <!-- high -->
    -   [CVE-2022-4378](https://ubuntu.com/security/CVE-2022-4378) <!-- high -->


### [[USN-5861-1](https://ubuntu.com/security/notices/USN-5861-1)] Linux kernel (Dell300x) vulnerabilities {#usn-5861-1-linux-kernel--dell300x--vulnerabilities}

-   15 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2022-45934](https://ubuntu.com/security/CVE-2022-45934) <!-- medium -->
    -   [CVE-2022-43750](https://ubuntu.com/security/CVE-2022-43750) <!-- medium -->
    -   [CVE-2022-41850](https://ubuntu.com/security/CVE-2022-41850) <!-- medium -->
    -   [CVE-2022-41849](https://ubuntu.com/security/CVE-2022-41849) <!-- medium -->
    -   [CVE-2022-39842](https://ubuntu.com/security/CVE-2022-39842) <!-- low -->
    -   [CVE-2022-3649](https://ubuntu.com/security/CVE-2022-3649) <!-- medium -->
    -   [CVE-2022-3646](https://ubuntu.com/security/CVE-2022-3646) <!-- medium -->
    -   [CVE-2022-3643](https://ubuntu.com/security/CVE-2022-3643) <!-- medium -->
    -   [CVE-2022-29901](https://ubuntu.com/security/CVE-2022-29901) <!-- medium -->
    -   [CVE-2022-29900](https://ubuntu.com/security/CVE-2022-29900) <!-- medium -->
    -   [CVE-2022-2663](https://ubuntu.com/security/CVE-2022-2663) <!-- medium -->
    -   [CVE-2022-26373](https://ubuntu.com/security/CVE-2022-26373) <!-- medium -->
    -   [CVE-2022-20369](https://ubuntu.com/security/CVE-2022-20369) <!-- medium -->
    -   [CVE-2022-42896](https://ubuntu.com/security/CVE-2022-42896) <!-- high -->
    -   [CVE-2022-43945](https://ubuntu.com/security/CVE-2022-43945) <!-- high -->


### [[USN-5862-1](https://ubuntu.com/security/notices/USN-5862-1)] Linux kernel (Qualcomm Snapdragon) vulnerabilities {#usn-5862-1-linux-kernel--qualcomm-snapdragon--vulnerabilities}

-   11 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2022-43750](https://ubuntu.com/security/CVE-2022-43750) <!-- medium -->
    -   [CVE-2022-41850](https://ubuntu.com/security/CVE-2022-41850) <!-- medium -->
    -   [CVE-2022-41849](https://ubuntu.com/security/CVE-2022-41849) <!-- medium -->
    -   [CVE-2022-39842](https://ubuntu.com/security/CVE-2022-39842) <!-- low -->
    -   [CVE-2022-3649](https://ubuntu.com/security/CVE-2022-3649) <!-- medium -->
    -   [CVE-2022-3646](https://ubuntu.com/security/CVE-2022-3646) <!-- medium -->
    -   [CVE-2022-29901](https://ubuntu.com/security/CVE-2022-29901) <!-- medium -->
    -   [CVE-2022-29900](https://ubuntu.com/security/CVE-2022-29900) <!-- medium -->
    -   [CVE-2022-2663](https://ubuntu.com/security/CVE-2022-2663) <!-- medium -->
    -   [CVE-2022-26373](https://ubuntu.com/security/CVE-2022-26373) <!-- medium -->
    -   [CVE-2022-20369](https://ubuntu.com/security/CVE-2022-20369) <!-- medium -->


### [[USN-5863-1](https://ubuntu.com/security/notices/USN-5863-1)] Linux kernel (Azure) vulnerabilities {#usn-5863-1-linux-kernel--azure--vulnerabilities}

-   4 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2022-45934](https://ubuntu.com/security/CVE-2022-45934) <!-- medium -->
    -   [CVE-2022-3643](https://ubuntu.com/security/CVE-2022-3643) <!-- medium -->
    -   [CVE-2022-42896](https://ubuntu.com/security/CVE-2022-42896) <!-- high -->
    -   [CVE-2022-43945](https://ubuntu.com/security/CVE-2022-43945) <!-- high -->


### [[USN-5865-1](https://ubuntu.com/security/notices/USN-5865-1)] Linux kernel (Azure) vulnerabilities {#usn-5865-1-linux-kernel--azure--vulnerabilities}

-   11 CVEs addressed in Bionic (18.04 LTS)
    -   [CVE-2022-43750](https://ubuntu.com/security/CVE-2022-43750) <!-- medium -->
    -   [CVE-2022-41850](https://ubuntu.com/security/CVE-2022-41850) <!-- medium -->
    -   [CVE-2022-41849](https://ubuntu.com/security/CVE-2022-41849) <!-- medium -->
    -   [CVE-2022-39842](https://ubuntu.com/security/CVE-2022-39842) <!-- low -->
    -   [CVE-2022-3649](https://ubuntu.com/security/CVE-2022-3649) <!-- medium -->
    -   [CVE-2022-3646](https://ubuntu.com/security/CVE-2022-3646) <!-- medium -->
    -   [CVE-2022-29901](https://ubuntu.com/security/CVE-2022-29901) <!-- medium -->
    -   [CVE-2022-29900](https://ubuntu.com/security/CVE-2022-29900) <!-- medium -->
    -   [CVE-2022-2663](https://ubuntu.com/security/CVE-2022-2663) <!-- medium -->
    -   [CVE-2022-26373](https://ubuntu.com/security/CVE-2022-26373) <!-- medium -->
    -   [CVE-2022-20369](https://ubuntu.com/security/CVE-2022-20369) <!-- medium -->


### [[USN-5866-1](https://ubuntu.com/security/notices/USN-5866-1)] Nova vulnerabilities {#usn-5866-1-nova-vulnerabilities}

-   5 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2022-37394](https://ubuntu.com/security/CVE-2022-37394) <!-- medium -->
    -   [CVE-2021-3654](https://ubuntu.com/security/CVE-2021-3654) <!-- low -->
    -   [CVE-2020-17376](https://ubuntu.com/security/CVE-2020-17376) <!-- low -->
    -   [CVE-2017-18191](https://ubuntu.com/security/CVE-2017-18191) <!-- low -->
    -   [CVE-2015-9543](https://ubuntu.com/security/CVE-2015-9543) <!-- low -->


### [[USN-5867-1](https://ubuntu.com/security/notices/USN-5867-1)] WebKitGTK vulnerabilities {#usn-5867-1-webkitgtk-vulnerabilities}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-23518](https://ubuntu.com/security/CVE-2023-23518) <!-- medium -->
    -   [CVE-2023-23517](https://ubuntu.com/security/CVE-2023-23517) <!-- medium -->
    -   [CVE-2022-42826](https://ubuntu.com/security/CVE-2022-42826) <!-- medium -->


### [[USN-5864-1](https://ubuntu.com/security/notices/USN-5864-1)] Fig2dev vulnerabilities {#usn-5864-1-fig2dev-vulnerabilities}

-   14 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS)
    -   [CVE-2021-32280](https://ubuntu.com/security/CVE-2021-32280) <!-- medium -->
    -   [CVE-2021-3561](https://ubuntu.com/security/CVE-2021-3561) <!-- low -->
    -   [CVE-2020-21676](https://ubuntu.com/security/CVE-2020-21676) <!-- medium -->
    -   [CVE-2020-21675](https://ubuntu.com/security/CVE-2020-21675) <!-- medium -->
    -   [CVE-2020-21535](https://ubuntu.com/security/CVE-2020-21535) <!-- medium -->
    -   [CVE-2020-21534](https://ubuntu.com/security/CVE-2020-21534) <!-- medium -->
    -   [CVE-2020-21533](https://ubuntu.com/security/CVE-2020-21533) <!-- medium -->
    -   [CVE-2020-21532](https://ubuntu.com/security/CVE-2020-21532) <!-- medium -->
    -   [CVE-2020-21531](https://ubuntu.com/security/CVE-2020-21531) <!-- medium -->
    -   [CVE-2020-21530](https://ubuntu.com/security/CVE-2020-21530) <!-- medium -->
    -   [CVE-2020-21529](https://ubuntu.com/security/CVE-2020-21529) <!-- medium -->
    -   [CVE-2019-19797](https://ubuntu.com/security/CVE-2019-19797) <!-- low -->
    -   [CVE-2019-19555](https://ubuntu.com/security/CVE-2019-19555) <!-- negligible -->
    -   [CVE-2019-14275](https://ubuntu.com/security/CVE-2019-14275) <!-- negligible -->


### [[LSN-0091-1](https://ubuntu.com/security/notices/LSN-0091-1)] Linux kernel vulnerability {#lsn-0091-1-linux-kernel-vulnerability}

-   2 CVEs addressed in
    -   [CVE-2022-42719](https://ubuntu.com/security/CVE-2022-42719) <!-- medium -->
    -   [CVE-2022-41222](https://ubuntu.com/security/CVE-2022-41222) <!-- high -->


### [[USN-5869-1](https://ubuntu.com/security/notices/USN-5869-1)] HAProxy vulnerability {#usn-5869-1-haproxy-vulnerability}

-   2 CVEs addressed in Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-25725](https://ubuntu.com/security/CVE-2023-25725) <!-- medium -->
    -   [CVE-2023-24580](https://ubuntu.com/security/CVE-2023-24580) <!-- medium -->


### [[USN-5871-1](https://ubuntu.com/security/notices/USN-5871-1)] Git vulnerabilities {#usn-5871-1-git-vulnerabilities}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-23946](https://ubuntu.com/security/CVE-2023-23946) <!-- medium -->
    -   [CVE-2023-22490](https://ubuntu.com/security/CVE-2023-22490) <!-- medium -->


### [[USN-5870-1](https://ubuntu.com/security/notices/USN-5870-1)] apr-util vulnerability {#usn-5870-1-apr-util-vulnerability}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic (18.04 LTS), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-25147](https://ubuntu.com/security/CVE-2022-25147) <!-- medium -->


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
