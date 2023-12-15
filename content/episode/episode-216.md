+++
title = "Episode 216"
description = """
  For the final episode of 2023 we discuss challenges in creating PoCs for vulns
  in tar and the looming EOL for Ubuntu 23.04, plus we look into security updates
  for curl, BlueZ, Netatalk, GNOME Settings and a heap more.
  """
date = 2023-12-15T17:42:00+10:30
lastmod = 2023-12-15T17:44:51+10:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E216.mp3"
podcast_duration = 1276
podcast_bytes = 21878509
permalink = "https://ubuntusecuritypodcast.org/episode-216/"
guid = "a9b3c8424de1fec26c9ae3352932c8fc603ddf45496a325446d859d65d68cb0ba7b872c086f130aff9c646ddf3234459c2a141825bb5214be0d75f4c30e10c69"
+++

## Overview {#overview}

For the final episode of 2023 we discuss challenges in creating PoCs for vulns
in tar and the looming EOL for Ubuntu 23.04, plus we look into security updates
for curl, BlueZ, Netatalk, GNOME Settings and a heap more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

57 unique CVEs addressed


### [[USN-6535-1](https://ubuntu.com/security/notices/USN-6535-1)] curl vulnerabilities (00:54) {#usn-6535-1-curl-vulnerabilities--00-54}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-46219](https://ubuntu.com/security/CVE-2023-46219) <!-- low -->
    -   [CVE-2023-46218](https://ubuntu.com/security/CVE-2023-46218) <!-- medium -->
-   Mishandled cookies from domains with mixed case - allowing an attacker to
    create so called "super cookies" that would then get passed back to more
    domains that what is normally allowed - ie a site can set a cookie which is
    then sent to different / unrelated sites. Depends on a feature called the
    Public Suffix List which is a community initiative (led by Mozilla) to provide
    an accurate list of domain name suffixes - ie. `.com` / `.org` but also `.co.uk`
    etc - since there is no good algorithmic way of determining the highest level
    at which a domain may be registered for a particular TLD as each registrar is
    different
    -   so could set a cookie with `domain=co.UK` with a URL of say `curl.co.uk` and
        this would then get sent to every other `.co.uk` domain contrary to the
        expectations of the PSL which lists `.co.uk` as a PSL domain


### [[USN-6463-2](https://ubuntu.com/security/notices/USN-6463-2)] Open VM Tools vulnerabilities (02:56) {#usn-6463-2-open-vm-tools-vulnerabilities--02-56}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-34059](https://ubuntu.com/security/CVE-2023-34059) <!-- medium -->
    -   [CVE-2023-34058](https://ubuntu.com/security/CVE-2023-34058) <!-- medium -->
-   SAML token signature bypass - allows an attacker who already has Guest
    Operation Privileges within a guest VM to elevate their privileges if the VM
    has been assigned a more privileged Guest Alias
-   File descriptor hijack vulnerability within the `vmware-user-suid` wrapper - a
    local user with non-root privileges that is able to hijack the `/dev/uinput`
    file descriptor may be able to simulate user inputs


### [[USN-6538-1](https://ubuntu.com/security/notices/USN-6538-1)] PostgreSQL vulnerabilities (03:48) {#usn-6538-1-postgresql-vulnerabilities--03-48}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-5870](https://ubuntu.com/security/CVE-2023-5870) <!-- medium -->
    -   [CVE-2023-5869](https://ubuntu.com/security/CVE-2023-5869) <!-- medium -->
    -   [CVE-2023-5868](https://ubuntu.com/security/CVE-2023-5868) <!-- medium -->
-   Upgrades to the latest upstream point releases - includes both security and
    bug fixes etc
    -   15.5 (23.10, 23.04)
    -   14.10 (22.04 LTS)
    -   12.17 (20.04 LTS)


### [[USN-6539-1](https://ubuntu.com/security/notices/USN-6539-1)] python-cryptography vulnerabilities (04:14) {#usn-6539-1-python-cryptography-vulnerabilities--04-14}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-49083](https://ubuntu.com/security/CVE-2023-49083) <!-- medium -->
    -   [CVE-2023-23931](https://ubuntu.com/security/CVE-2023-23931) <!-- low -->
-   NULL pointer dereference / segfault on loading of crafted PKCS7 certificates


### [[USN-6540-1](https://ubuntu.com/security/notices/USN-6540-1)] BlueZ vulnerability (04:57) {#usn-6540-1-bluez-vulnerability--04-57}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-45866](https://ubuntu.com/security/CVE-2023-45866) <!-- medium -->
-   Whilst bluetooth discoverable, possible for an attacker to pair a HID device
    and inject keystrokes etc without any intervention
-   Fixed by enabling the existing configuration `ClassicBondedOnly=true` - this may
    break some legacy input devices like PS3 controller - in which case, should
    edit `/etc/bluetooth/input.conf` and set this back to `false` but then beware that
    you may be vulnerable to attack from anyone within bluetooth range **when your
    machines is discoverable** - ie. bluetooth settings panel is open


### [[USN-6541-1](https://ubuntu.com/security/notices/USN-6541-1)] GNU C Library vulnerabilities (06:30) {#usn-6541-1-gnu-c-library-vulnerabilities--06-30}

-   3 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-5156](https://ubuntu.com/security/CVE-2023-5156) <!-- medium -->
    -   [CVE-2023-4813](https://ubuntu.com/security/CVE-2023-4813) <!-- low -->
    -   [CVE-2023-4806](https://ubuntu.com/security/CVE-2023-4806) <!-- low -->
-   Previous fix for CVE-2023-4806 was not sufficient - UAF in `getaddrinfo()` -
    possible to still trigger


### [[USN-6522-2](https://ubuntu.com/security/notices/USN-6522-2)] FreeRDP vulnerabilities (07:00) {#usn-6522-2-freerdp-vulnerabilities--07-00}

-   3 CVEs addressed in Bionic ESM (18.04 ESM)
    -   [CVE-2023-39356](https://ubuntu.com/security/CVE-2023-39356) <!-- medium -->
    -   [CVE-2023-39352](https://ubuntu.com/security/CVE-2023-39352) <!-- medium -->
    -   [CVE-2022-41877](https://ubuntu.com/security/CVE-2022-41877) <!-- low -->
-   [[USN-6522-1] FreeRDP vulnerabilities from Episode 215]({{< relref "episode-215#usn-6522-1-freerdp-vulnerabilities--01-39" >}})


### [[USN-6542-1](https://ubuntu.com/security/notices/USN-6542-1)] TinyXML vulnerability (07:08) {#usn-6542-1-tinyxml-vulnerability--07-08}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2021-42260](https://ubuntu.com/security/CVE-2021-42260) <!-- medium -->
-   Infinite loop able to be triggered by a crafted XML document - CPU-based DoS


### [[USN-6543-1](https://ubuntu.com/security/notices/USN-6543-1)] GNU Tar vulnerability (07:18) {#usn-6543-1-gnu-tar-vulnerability--07-18}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-39804](https://ubuntu.com/security/CVE-2023-39804) <!-- medium -->
-   Stack buffer overflow on parsing a tar archive with an extremely large
    extended attribute name/value - `PAX` archive format allows to store extended
    attributes - on the kernel's VFS layer these are limited to 255 bytes for the
    name and 64kB for the value - but in a tar these can be basically arbitrary
-   When processing the archive, tar would allocate space for these on the stack -
    BUT the stack is limited to a maximum size of 8MB normally - so if can specify
    an xattr name of more than 8MB can overflow the entire stack memory region -
    then into guard pages or even beyond, triggering a segfault or at worst a heap
    corruption and hence possible RCE -&gt; but in Ubuntu we have enabled stack clash
    protection [since 19.10](https://lists.ubuntu.com/archives/ubuntu-devel/2019-June/040741.html) - which turns this into a DoS only

    -   Reminiscent of the original Stack Clash "System Down" vulnerability in systemd

    <!--listend-->

    ```text
    $ hardening-check $(which tar)
    /usr/bin/tar:
     Position Independent Executable: yes
     Stack protected: yes
     Fortify Source functions: yes (some protected functions found)
     Read-only relocations: yes
     Immediate binding: yes
     Stack clash protection: yes
     Control flow integrity: yes
    ```
-   Speaking from experience, it is not easy to create such an archive - either
    through a real xattr on disk or through specifying one on the command-line
    (since you can specify arbitrary attributes be stored for files when adding
    them to an archive but then you hit the maximum limit of command-line
    arguments) BUT it is possible - in my case I did this though using sed to
    replace the contents of a xattr name in an existing archive with a crafted one
    and then doing a bunch of other hacks to fixup all the metadata of the tar
    archive to match - helpfully, all these attributes in the archive are stored
    as NUL-terminated strings, so can simply used sed to fix them all up assuming
    you can calculate the correct values
-   Fixed by instead allocating these on the heap which does not have the same
    arbitrary limitation as the stack


### [[USN-6500-2](https://ubuntu.com/security/notices/USN-6500-2)] Squid vulnerabilities (11:35) {#usn-6500-2-squid-vulnerabilities--11-35}

-   2 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-46847](https://ubuntu.com/security/CVE-2023-46847) <!-- medium -->
    -   [CVE-2023-46728](https://ubuntu.com/security/CVE-2023-46728) <!-- medium -->
-   [[USN-6500-1] Squid vulnerabilities from Episode 214]({{< relref "episode-214#usn-6500-1-squid-vulnerabilities--10-20" >}})


### [[USN-6544-1](https://ubuntu.com/security/notices/USN-6544-1)] GNU binutils vulnerabilities (11:44) {#usn-6544-1-gnu-binutils-vulnerabilities--11-44}

-   5 CVEs addressed in Trusty ESM (14.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2022-35205](https://ubuntu.com/security/CVE-2022-35205) <!-- medium -->
    -   [CVE-2021-46174](https://ubuntu.com/security/CVE-2021-46174) <!-- medium -->
    -   [CVE-2020-19726](https://ubuntu.com/security/CVE-2020-19726) <!-- medium -->
    -   [CVE-2022-4285](https://ubuntu.com/security/CVE-2022-4285) <!-- low -->
    -   [CVE-2022-38533](https://ubuntu.com/security/CVE-2022-38533) <!-- medium -->
-   Didn't do bounds checking properly in various places - leading to heap buffer
    overflows / OOB reads etc in various things like `objdump` etc


### [[USN-6545-1](https://ubuntu.com/security/notices/USN-6545-1)] WebKitGTK vulnerabilities (12:08) {#usn-6545-1-webkitgtk-vulnerabilities--12-08}

-   2 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-42917](https://ubuntu.com/security/CVE-2023-42917) <!-- medium -->
    -   [CVE-2023-42916](https://ubuntu.com/security/CVE-2023-42916) <!-- medium -->
-   Both issues that come from upstream webkit
    -   OOB read -&gt; info leak
    -   Memory corruption that Apple said was being exploited in the wild against
        various versions of iOS


### [[USN-6546-1](https://ubuntu.com/security/notices/USN-6546-1)] LibreOffice vulnerabilities (12:45) {#usn-6546-1-libreoffice-vulnerabilities--12-45}

-   2 CVEs addressed in Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-6186](https://ubuntu.com/security/CVE-2023-6186) <!-- medium -->
    -   [CVE-2023-6185](https://ubuntu.com/security/CVE-2023-6185) <!-- medium -->
-   Uses gstreamer to play embedded videos (presumably in presentations etc) - to
    do this, creates a gstreamer pipeline including the filename of the video
    itself - this was not adequetely escaped, so could allow arbitrary code
    execution if it contained shell meta characters etc
-   Link targets allow arbitrary script execution - similar to historic
    CVE-2023-2255 from [[USN-6144-1] LibreOffice vulnerabilities in Episode 198]({{< relref "episode-198#usn-6144-1-libreoffice-vulnerabilities--10-59" >}})


### [[USN-6547-1](https://ubuntu.com/security/notices/USN-6547-1)] Python vulnerability (13:46) {#usn-6547-1-python-vulnerability--13-46}

-   1 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-41105](https://ubuntu.com/security/CVE-2023-41105) <!-- medium -->
-   Issue specific to Python 3.11 where if a path contained an embedded NUL byte
    and was passed to `os.path.normpath()` it would get truncated at the NUL byte -
    fixed to remove this behaviour


### [[USN-6550-1](https://ubuntu.com/security/notices/USN-6550-1)] PostfixAdmin vulnerabilities (14:19) {#usn-6550-1-postfixadmin-vulnerabilities--14-19}

-   3 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-28447](https://ubuntu.com/security/CVE-2023-28447) <!-- high -->
    -   [CVE-2022-31129](https://ubuntu.com/security/CVE-2022-31129) <!-- medium -->
    -   [CVE-2022-29221](https://ubuntu.com/security/CVE-2022-29221) <!-- medium -->
-   Issues in various embedded modules - Smarty and Moment.js - allowing possible
    arbitrary code execution, XSS or DoS


### [[USN-6551-1](https://ubuntu.com/security/notices/USN-6551-1)] Ghostscript vulnerability (14:37) {#usn-6551-1-ghostscript-vulnerability--14-37}

-   1 CVEs addressed in Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-46751](https://ubuntu.com/security/CVE-2023-46751) <!-- medium -->
-   UAF on file object on error path


### [[USN-6552-1](https://ubuntu.com/security/notices/USN-6552-1)] Netatalk vulnerability (14:43) {#usn-6552-1-netatalk-vulnerability--14-43}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04)
    -   [CVE-2023-42464](https://ubuntu.com/security/CVE-2023-42464) <!-- medium -->
-   Apple Filing Protocol (AFP) service - similar to SMB for Windows - allows a
    Ubuntu machine to share files with MacOS
-   Also implements support for Spotlight to search - using tracker as the
    indexer, metadata store and search engine under-the-hood
-   Parser for spotlight RPC packets failed to properly do type checking,
    resulting in a type confusion bug and possible RCE via memory corruption -
    similar to CVE-2023-34967 for Samba since the code in netatalk originated from
    that code from Samba ([[USN-6238-1] Samba vulnerabilities from Episode 204]({{< relref "episode-204#usn-6238-1-samba-vulnerabilities-01-15" >}}))


### [[USN-6554-1](https://ubuntu.com/security/notices/USN-6554-1)] GNOME Settings vulnerability (15:57) {#usn-6554-1-gnome-settings-vulnerability--15-57}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Lunar (23.04), Mantic (23.10)
    -   [CVE-2023-5616](https://ubuntu.com/security/CVE-2023-5616) <!-- medium -->
-   GNOME settings allows the ability to turn on / off remote SSH access from the
    sharing panel within the main settings application in Ubuntu
-   Since moving to [socket activated SSHd](https://discourse.ubuntu.com/t/sshd-now-uses-socket-based-activation-ubuntu-22-10-and-later/30189) in 22.10, GNOME Settings was never
    updated in Ubuntu to support this as well
-   Would mean that it would always show the machine was not accessible / sharing
    via SSH even when it was (since it would only check the status of the
    ssh.service, not ssh.socket)
-   Ubuntu specific issue - fixed by extending GNOME settings to check both the
    service and the socket (since it is still a legitimate configuration to use
    the service over the socket in recent Ubuntu releases)
-   Also backported to older releases since it is also a supported configuration
    there to use socket activation (although the sysadmin has to set this up
    themselves)


### [[USN-6553-1](https://ubuntu.com/security/notices/USN-6553-1)] Pydantic vulnerability (17:49) {#usn-6553-1-pydantic-vulnerability--17-49}

-   1 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2021-29510](https://ubuntu.com/security/CVE-2021-29510) <!-- medium -->
-   Python data validation library
-   CPU-based DoS since if passed the value of "infinity" to the validator to be
    parsed as a date/datetime, would result in an infinite loop


### [[USN-6536-1](https://ubuntu.com/security/notices/USN-6536-1)] Linux kernel vulnerabilities (18:10) {#usn-6536-1-linux-kernel-vulnerabilities--18-10}

-   6 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2023-5717](https://ubuntu.com/security/CVE-2023-5717) <!-- medium -->
    -   [CVE-2023-5178](https://ubuntu.com/security/CVE-2023-5178) <!-- medium -->
    -   [CVE-2023-5158](https://ubuntu.com/security/CVE-2023-5158) <!-- medium -->
    -   [CVE-2023-45898](https://ubuntu.com/security/CVE-2023-45898) <!-- medium -->
    -   [CVE-2023-42754](https://ubuntu.com/security/CVE-2023-42754) <!-- medium -->
    -   [CVE-2023-39189](https://ubuntu.com/security/CVE-2023-39189) <!-- medium -->


### [[USN-6537-1](https://ubuntu.com/security/notices/USN-6537-1)] Linux kernel (GCP) vulnerabilities {#usn-6537-1-linux-kernel--gcp--vulnerabilities}

-   11 CVEs addressed in Mantic (23.10)
    -   [CVE-2023-5717](https://ubuntu.com/security/CVE-2023-5717) <!-- medium -->
    -   [CVE-2023-5633](https://ubuntu.com/security/CVE-2023-5633) <!-- high -->
    -   [CVE-2023-5345](https://ubuntu.com/security/CVE-2023-5345) <!-- high -->
    -   [CVE-2023-5178](https://ubuntu.com/security/CVE-2023-5178) <!-- medium -->
    -   [CVE-2023-5158](https://ubuntu.com/security/CVE-2023-5158) <!-- medium -->
    -   [CVE-2023-5090](https://ubuntu.com/security/CVE-2023-5090) <!-- high -->
    -   [CVE-2023-45898](https://ubuntu.com/security/CVE-2023-45898) <!-- medium -->
    -   [CVE-2023-42754](https://ubuntu.com/security/CVE-2023-42754) <!-- medium -->
    -   [CVE-2023-4244](https://ubuntu.com/security/CVE-2023-4244) <!-- high -->
    -   [CVE-2023-39189](https://ubuntu.com/security/CVE-2023-39189) <!-- medium -->
    -   [CVE-2023-31085](https://ubuntu.com/security/CVE-2023-31085) <!-- low -->


### [[USN-6548-1](https://ubuntu.com/security/notices/USN-6548-1)] Linux kernel vulnerabilities {#usn-6548-1-linux-kernel-vulnerabilities}

-   10 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-6176](https://ubuntu.com/security/CVE-2023-6176) <!-- high -->
    -   [CVE-2023-5717](https://ubuntu.com/security/CVE-2023-5717) <!-- medium -->
    -   [CVE-2023-5178](https://ubuntu.com/security/CVE-2023-5178) <!-- medium -->
    -   [CVE-2023-42754](https://ubuntu.com/security/CVE-2023-42754) <!-- medium -->
    -   [CVE-2023-39194](https://ubuntu.com/security/CVE-2023-39194) <!-- medium -->
    -   [CVE-2023-39193](https://ubuntu.com/security/CVE-2023-39193) <!-- medium -->
    -   [CVE-2023-39192](https://ubuntu.com/security/CVE-2023-39192) <!-- medium -->
    -   [CVE-2023-39189](https://ubuntu.com/security/CVE-2023-39189) <!-- medium -->
    -   [CVE-2023-37453](https://ubuntu.com/security/CVE-2023-37453) <!-- medium -->
    -   [CVE-2023-3006](https://ubuntu.com/security/CVE-2023-3006) <!-- medium -->


### [[USN-6549-1](https://ubuntu.com/security/notices/USN-6549-1)] Linux kernel vulnerabilities {#usn-6549-1-linux-kernel-vulnerabilities}

-   11 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-5717](https://ubuntu.com/security/CVE-2023-5717) <!-- medium -->
    -   [CVE-2023-5178](https://ubuntu.com/security/CVE-2023-5178) <!-- medium -->
    -   [CVE-2023-5158](https://ubuntu.com/security/CVE-2023-5158) <!-- medium -->
    -   [CVE-2023-42754](https://ubuntu.com/security/CVE-2023-42754) <!-- medium -->
    -   [CVE-2023-39198](https://ubuntu.com/security/CVE-2023-39198) <!-- medium -->
    -   [CVE-2023-39194](https://ubuntu.com/security/CVE-2023-39194) <!-- medium -->
    -   [CVE-2023-39193](https://ubuntu.com/security/CVE-2023-39193) <!-- medium -->
    -   [CVE-2023-39192](https://ubuntu.com/security/CVE-2023-39192) <!-- medium -->
    -   [CVE-2023-39189](https://ubuntu.com/security/CVE-2023-39189) <!-- medium -->
    -   [CVE-2023-3773](https://ubuntu.com/security/CVE-2023-3773) <!-- medium -->
    -   [CVE-2023-37453](https://ubuntu.com/security/CVE-2023-37453) <!-- medium -->


### [[USN-6534-2](https://ubuntu.com/security/notices/USN-6534-2)] Linux kernel vulnerabilities {#usn-6534-2-linux-kernel-vulnerabilities}

-   12 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-6039](https://ubuntu.com/security/CVE-2023-6039) <!-- low -->
    -   [CVE-2023-5717](https://ubuntu.com/security/CVE-2023-5717) <!-- medium -->
    -   [CVE-2023-5178](https://ubuntu.com/security/CVE-2023-5178) <!-- medium -->
    -   [CVE-2023-5158](https://ubuntu.com/security/CVE-2023-5158) <!-- medium -->
    -   [CVE-2023-42754](https://ubuntu.com/security/CVE-2023-42754) <!-- medium -->
    -   [CVE-2023-39198](https://ubuntu.com/security/CVE-2023-39198) <!-- medium -->
    -   [CVE-2023-39194](https://ubuntu.com/security/CVE-2023-39194) <!-- medium -->
    -   [CVE-2023-39193](https://ubuntu.com/security/CVE-2023-39193) <!-- medium -->
    -   [CVE-2023-39192](https://ubuntu.com/security/CVE-2023-39192) <!-- medium -->
    -   [CVE-2023-39189](https://ubuntu.com/security/CVE-2023-39189) <!-- medium -->
    -   [CVE-2023-3773](https://ubuntu.com/security/CVE-2023-3773) <!-- medium -->
    -   [CVE-2023-37453](https://ubuntu.com/security/CVE-2023-37453) <!-- medium -->


### [[USN-6549-2](https://ubuntu.com/security/notices/USN-6549-2)] Linux kernel (GKE) vulnerabilities {#usn-6549-2-linux-kernel--gke--vulnerabilities}

-   11 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-5717](https://ubuntu.com/security/CVE-2023-5717) <!-- medium -->
    -   [CVE-2023-5178](https://ubuntu.com/security/CVE-2023-5178) <!-- medium -->
    -   [CVE-2023-5158](https://ubuntu.com/security/CVE-2023-5158) <!-- medium -->
    -   [CVE-2023-42754](https://ubuntu.com/security/CVE-2023-42754) <!-- medium -->
    -   [CVE-2023-39198](https://ubuntu.com/security/CVE-2023-39198) <!-- medium -->
    -   [CVE-2023-39194](https://ubuntu.com/security/CVE-2023-39194) <!-- medium -->
    -   [CVE-2023-39193](https://ubuntu.com/security/CVE-2023-39193) <!-- medium -->
    -   [CVE-2023-39192](https://ubuntu.com/security/CVE-2023-39192) <!-- medium -->
    -   [CVE-2023-39189](https://ubuntu.com/security/CVE-2023-39189) <!-- medium -->
    -   [CVE-2023-3773](https://ubuntu.com/security/CVE-2023-3773) <!-- medium -->
    -   [CVE-2023-37453](https://ubuntu.com/security/CVE-2023-37453) <!-- medium -->


### [[USN-6548-2](https://ubuntu.com/security/notices/USN-6548-2)] Linux kernel vulnerabilities {#usn-6548-2-linux-kernel-vulnerabilities}

-   10 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-6176](https://ubuntu.com/security/CVE-2023-6176) <!-- high -->
    -   [CVE-2023-5717](https://ubuntu.com/security/CVE-2023-5717) <!-- medium -->
    -   [CVE-2023-5178](https://ubuntu.com/security/CVE-2023-5178) <!-- medium -->
    -   [CVE-2023-42754](https://ubuntu.com/security/CVE-2023-42754) <!-- medium -->
    -   [CVE-2023-39194](https://ubuntu.com/security/CVE-2023-39194) <!-- medium -->
    -   [CVE-2023-39193](https://ubuntu.com/security/CVE-2023-39193) <!-- medium -->
    -   [CVE-2023-39192](https://ubuntu.com/security/CVE-2023-39192) <!-- medium -->
    -   [CVE-2023-39189](https://ubuntu.com/security/CVE-2023-39189) <!-- medium -->
    -   [CVE-2023-37453](https://ubuntu.com/security/CVE-2023-37453) <!-- medium -->
    -   [CVE-2023-3006](https://ubuntu.com/security/CVE-2023-3006) <!-- medium -->


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu 23.04 (Lunar Lobster) approaching EOL (18:48) {#ubuntu-23-dot-04--lunar-lobster--approaching-eol--18-48}

-   <https://lists.ubuntu.com/archives/ubuntu-security-announce/2023-December/007974.html>
-   Interim releases receive 9 months of support
-   Lunar reaches EOL on 25th January
-   Good opportunity over the holiday break to upgrade to 23.10 (Mantic)
    -   <https://help.ubuntu.com/community/ManticUpgrades>


### Ubuntu Security team (and rest of Canonical) on break till early January 2024 (19:33) {#ubuntu-security-team--and-rest-of-canonical--on-break-till-early-january-2024--19-33}

-   Various members of the team will be checking in each day to look for any
    serious issues
-   Not planning any new security update releases during this time unless
    something major happens (we are still wincing from Log4Shell - [Log4Shell
    explodes the internet from Episode 142 in late December 2022]({{< relref "episode-142#log4shell-explodes-the-internet-04-20" >}}))
-   As usual, contact us via the normal means if something is particularly urgent
    and someone should respond


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
