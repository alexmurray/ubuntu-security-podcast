+++
title = "Episode 198"
description = """
  This week we investigate the mystery of failing GPG signatures for the 16.04 ISO
  images, plus we look at security updates for CUPS, Avahi, the Linux kernel, FRR,
  Go and more.
  """
date = 2023-06-09T17:12:00+09:30
lastmod = 2023-06-09T17:13:09+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E198.mp3"
podcast_duration = 1054
podcast_bytes = 17666940
permalink = "https://ubuntusecuritypodcast.org/episode-198/"
guid = "805ffacde91c7e1b89609a0a9d218935401df96f8d8efc81afddf79bd8aff377b51684afd73489069699f25c249974d677d3547776e3fcc7d43e2d72841e62ee"
+++

## Overview {#overview}

This week we investigate the mystery of failing GPG signatures for the 16.04 ISO
images, plus we look at security updates for CUPS, Avahi, the Linux kernel, FRR,
Go and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

58 unique CVEs addressed


### [[USN-6128-1](https://ubuntu.com/security/notices/USN-6128-1), [USN-6128-2](https://ubuntu.com/security/notices/USN-6128-2)] CUPS vulnerability (00:56) {#usn-6128-1-usn-6128-2-cups-vulnerability--00-56}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-32324](https://ubuntu.com/security/CVE-2023-32324) <!-- medium -->
-   Heap buffer overflow when printing debug messages - apparently requires
    `cupsd.conf` to have `LogLevel` as `debug` which is not usually the case


### [[USN-6129-1](https://ubuntu.com/security/notices/USN-6129-1)] Avahi vulnerability (01:39) {#usn-6129-1-avahi-vulnerability--01-39}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-1981](https://ubuntu.com/security/CVE-2023-1981) <!-- medium -->
-   DoS -&gt; if called with an unknown service name, would result in a NULL pointer
    dereference and crash - found via [dfuzzer](https://github.com/dbus-fuzzer/dfuzzer) - a fuzzer for D-Bus services


### [[USN-6130-1](https://ubuntu.com/security/notices/USN-6130-1)] Linux kernel vulnerabilities (02:23) {#usn-6130-1-linux-kernel-vulnerabilities--02-23}

-   4 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-1380](https://ubuntu.com/security/CVE-2023-1380) <!-- high -->
    -   [CVE-2023-30456](https://ubuntu.com/security/CVE-2023-30456) <!-- high -->
    -   [CVE-2023-31436](https://ubuntu.com/security/CVE-2023-31436) <!-- high -->
    -   [CVE-2023-32233](https://ubuntu.com/security/CVE-2023-32233) <!-- high -->
-   4.15 GA for 18.04 ESM (generic, virtual, lowlatency, KVM, AWS, Snapdragon, Azure, GCP, Oracle)
    -   HWE + GCP, Azure, GKE, AWS etc for 16.04 ESM
    -   Azure for 14.04 ESM
-   race condition -&gt; UAF -&gt; privesc in netfilter
    -   [[USN-6122-1] Linux kernel (OEM) vulnerabilities from Episode 197]({{< relref "episode-197#usn-6122-1-linux-kernel--oem--vulnerabilities--04-49" >}})
-   KVM mishandling of control registers for nested guest VMs
    -   [[USN-6123-1] Linux kernel (OEM) vulnerabilities from Episode 197]({{< relref "episode-197#usn-6123-1-linux-kernel--oem--vulnerabilities--06-48" >}})
-   OOB read in the USB handling code for Broadcom FullMAC USB WiFi driver -
    requires an attacker to create a malicious USB device and insert that into
    your machine to be able to trigger (shout out to [USBGuard](https://usbguard.github.io/))
-   OOB write in network queuing scheduler - able to be triggered though an
    unprivileged user namespace (again)


### [[USN-6127-1](https://ubuntu.com/security/notices/USN-6127-1)] Linux kernel vulnerabilities (04:41) {#usn-6127-1-linux-kernel-vulnerabilities--04-41}

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2023-2612](https://ubuntu.com/security/CVE-2023-2612) <!-- medium -->
    -   [CVE-2023-1380](https://ubuntu.com/security/CVE-2023-1380) <!-- high -->
    -   [CVE-2023-30456](https://ubuntu.com/security/CVE-2023-30456) <!-- high -->
    -   [CVE-2023-31436](https://ubuntu.com/security/CVE-2023-31436) <!-- high -->
    -   [CVE-2023-32233](https://ubuntu.com/security/CVE-2023-32233) <!-- high -->
-   5.15
    -   22.10 GA (virtual, raspi, generic, aws, lowlatency, ibm, azure, gcp, oracle, kvm, aws)
    -   22.04 HWE (ditto)
    -   20.04 HWE (ditto + OEMs)
-   Same as above plus a race condition in shiftfs -&gt; kernel deadlock -&gt; DoS


### [[USN-6135-1](https://ubuntu.com/security/notices/USN-6135-1)] Linux kernel (Azure CVM) vulnerabilities (05:06) {#usn-6135-1-linux-kernel--azure-cvm--vulnerabilities--05-06}

-   5 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-2612](https://ubuntu.com/security/CVE-2023-2612) <!-- medium -->
    -   [CVE-2023-1380](https://ubuntu.com/security/CVE-2023-1380) <!-- high -->
    -   [CVE-2023-30456](https://ubuntu.com/security/CVE-2023-30456) <!-- high -->
    -   [CVE-2023-31436](https://ubuntu.com/security/CVE-2023-31436) <!-- high -->
    -   [CVE-2023-32233](https://ubuntu.com/security/CVE-2023-32233) <!-- high -->
-   5.15 Azure FDE (22.04, 20.04)


### [[USN-6131-1](https://ubuntu.com/security/notices/USN-6131-1)] Linux kernel vulnerabilities (05:18) {#usn-6131-1-linux-kernel-vulnerabilities--05-18}

-   5 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-2612](https://ubuntu.com/security/CVE-2023-2612) <!-- medium -->
    -   [CVE-2023-1380](https://ubuntu.com/security/CVE-2023-1380) <!-- high -->
    -   [CVE-2023-30456](https://ubuntu.com/security/CVE-2023-30456) <!-- high -->
    -   [CVE-2023-31436](https://ubuntu.com/security/CVE-2023-31436) <!-- high -->
    -   [CVE-2023-32233](https://ubuntu.com/security/CVE-2023-32233) <!-- high -->
-   5.4 GA 20.04, HWE 18.04


### [[USN-6132-1](https://ubuntu.com/security/notices/USN-6132-1)] Linux kernel vulnerabilities (05:30) {#usn-6132-1-linux-kernel-vulnerabilities--05-30}

-   13 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-2612](https://ubuntu.com/security/CVE-2023-2612) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-1078](https://ubuntu.com/security/CVE-2023-1078) <!-- medium -->
    -   [CVE-2023-1075](https://ubuntu.com/security/CVE-2023-1075) <!-- medium -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
    -   [CVE-2022-3707](https://ubuntu.com/security/CVE-2022-3707) <!-- medium -->
    -   [CVE-2023-1380](https://ubuntu.com/security/CVE-2023-1380) <!-- high -->
    -   [CVE-2023-30456](https://ubuntu.com/security/CVE-2023-30456) <!-- high -->
    -   [CVE-2023-31436](https://ubuntu.com/security/CVE-2023-31436) <!-- high -->
    -   [CVE-2023-32233](https://ubuntu.com/security/CVE-2023-32233) <!-- high -->
-   5.4 (20.04 bluefield, 18.04 AWS)


### [[USN-6133-1](https://ubuntu.com/security/notices/USN-6133-1)] Linux kernel (Intel IoTG) vulnerabilities (05:42) {#usn-6133-1-linux-kernel--intel-iotg--vulnerabilities--05-42}

-   12 CVEs addressed in Jammy (22.04 LTS)
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-20938](https://ubuntu.com/security/CVE-2023-20938) <!-- medium -->
    -   [CVE-2023-1872](https://ubuntu.com/security/CVE-2023-1872) <!-- medium -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-1078](https://ubuntu.com/security/CVE-2023-1078) <!-- medium -->
    -   [CVE-2023-1075](https://ubuntu.com/security/CVE-2023-1075) <!-- medium -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
    -   [CVE-2022-3707](https://ubuntu.com/security/CVE-2022-3707) <!-- medium -->
    -   [CVE-2022-27672](https://ubuntu.com/security/CVE-2022-27672) <!-- medium -->
    -   [CVE-2023-1829](https://ubuntu.com/security/CVE-2023-1829) <!-- high -->
-   5.15 Intel IoTG


### [[USN-6134-1](https://ubuntu.com/security/notices/USN-6134-1)] Linux kernel (Intel IoTG) vulnerabilities {#usn-6134-1-linux-kernel--intel-iotg--vulnerabilities}

-   24 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-1118](https://ubuntu.com/security/CVE-2023-1118) <!-- negligible -->
    -   [CVE-2023-32269](https://ubuntu.com/security/CVE-2023-32269) <!-- medium -->
    -   [CVE-2023-26545](https://ubuntu.com/security/CVE-2023-26545) <!-- medium -->
    -   [CVE-2023-2162](https://ubuntu.com/security/CVE-2023-2162) <!-- medium -->
    -   [CVE-2023-21102](https://ubuntu.com/security/CVE-2023-21102) <!-- medium -->
    -   [CVE-2023-20938](https://ubuntu.com/security/CVE-2023-20938) <!-- medium -->
    -   [CVE-2023-1872](https://ubuntu.com/security/CVE-2023-1872) <!-- medium -->
    -   [CVE-2023-1652](https://ubuntu.com/security/CVE-2023-1652) <!-- medium -->
    -   [CVE-2023-1513](https://ubuntu.com/security/CVE-2023-1513) <!-- low -->
    -   [CVE-2023-1078](https://ubuntu.com/security/CVE-2023-1078) <!-- medium -->
    -   [CVE-2023-1075](https://ubuntu.com/security/CVE-2023-1075) <!-- medium -->
    -   [CVE-2023-1074](https://ubuntu.com/security/CVE-2023-1074) <!-- medium -->
    -   [CVE-2023-1073](https://ubuntu.com/security/CVE-2023-1073) <!-- medium -->
    -   [CVE-2023-0459](https://ubuntu.com/security/CVE-2023-0459) <!-- medium -->
    -   [CVE-2023-0458](https://ubuntu.com/security/CVE-2023-0458) <!-- medium -->
    -   [CVE-2023-0394](https://ubuntu.com/security/CVE-2023-0394) <!-- medium -->
    -   [CVE-2022-4842](https://ubuntu.com/security/CVE-2022-4842) <!-- medium -->
    -   [CVE-2022-47929](https://ubuntu.com/security/CVE-2022-47929) <!-- medium -->
    -   [CVE-2022-4129](https://ubuntu.com/security/CVE-2022-4129) <!-- medium -->
    -   [CVE-2022-3707](https://ubuntu.com/security/CVE-2022-3707) <!-- medium -->
    -   [CVE-2022-27672](https://ubuntu.com/security/CVE-2022-27672) <!-- medium -->
    -   [CVE-2023-0386](https://ubuntu.com/security/CVE-2023-0386) <!-- high -->
    -   [CVE-2023-1281](https://ubuntu.com/security/CVE-2023-1281) <!-- high -->
    -   [CVE-2023-1829](https://ubuntu.com/security/CVE-2023-1829) <!-- high -->
-   5.15 Intel IoTG as well


### [[USN-6112-2](https://ubuntu.com/security/notices/USN-6112-2)] Perl vulnerability (05:54) {#usn-6112-2-perl-vulnerability--05-54}

-   1 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-31484](https://ubuntu.com/security/CVE-2023-31484) <!-- medium -->
-   [[USN-6112-1] Perl vulnerability from Episode 197]({{< relref "episode-197#usn-6112-1-perl-vulnerability--09-35" >}})
-   failed to properly validate TLS certs when using `CPAN` and `HTTP::Tiny`


### [[USN-6136-1](https://ubuntu.com/security/notices/USN-6136-1)] FRR vulnerabilities (06:19) {#usn-6136-1-frr-vulnerabilities--06-19}

-   2 CVEs addressed in Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-31490](https://ubuntu.com/security/CVE-2023-31490) <!-- medium -->
    -   [CVE-2023-31489](https://ubuntu.com/security/CVE-2023-31489) <!-- medium -->
-   Implements BGP, OSPF, RIP, IS-IS, PIM and more - successor to Quagga
-   Two issues in BGP handling - both OOB reads due to failing to use the right
    lengths when reading packet structures, implemented in C


### [[USN-6137-1](https://ubuntu.com/security/notices/USN-6137-1)] LibRaw vulnerabilities (06:43) {#usn-6137-1-libraw-vulnerabilities--06-43}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-1729](https://ubuntu.com/security/CVE-2023-1729) <!-- medium -->
    -   [CVE-2021-32142](https://ubuntu.com/security/CVE-2021-32142) <!-- low -->
-   Heap buffer overflow and stack buffer overflow (mitigated by stack protector
    etc)


### [[USN-6138-1](https://ubuntu.com/security/notices/USN-6138-1)] libssh vulnerabilities (07:01) {#usn-6138-1-libssh-vulnerabilities--07-01}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-2283](https://ubuntu.com/security/CVE-2023-2283) <!-- medium -->
    -   [CVE-2023-1667](https://ubuntu.com/security/CVE-2023-1667) <!-- medium -->
-   NULL ptr deref during re-keying - already authenticated user could trigger a DoS
-   Possible for a client to avoid having its signature fully verified IF during
    the verification process there is insufficient memory - fails, leaves in error
    state that then falls though to an OK state


### [[USN-6139-1](https://ubuntu.com/security/notices/USN-6139-1)] Python vulnerability (07:37) {#usn-6139-1-python-vulnerability--07-37}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-24329](https://ubuntu.com/security/CVE-2023-24329) <!-- medium -->
-   [[USN-5960-1] Python vulnerability from Episode 191]({{< relref "episode-191#usn-5960-1-python-vulnerability-05-51" >}}) - original upstream fix was
    incomplete


### [[USN-6140-1](https://ubuntu.com/security/notices/USN-6140-1)] Go vulnerabilities (07:57) {#usn-6140-1-go-vulnerabilities--07-57}

-   8 CVEs addressed in Kinetic (22.10), Lunar (23.04)
    -   [CVE-2023-29400](https://ubuntu.com/security/CVE-2023-29400) <!-- medium -->
    -   [CVE-2023-24540](https://ubuntu.com/security/CVE-2023-24540) <!-- medium -->
    -   [CVE-2023-24539](https://ubuntu.com/security/CVE-2023-24539) <!-- medium -->
    -   [CVE-2023-24538](https://ubuntu.com/security/CVE-2023-24538) <!-- medium -->
    -   [CVE-2022-41725](https://ubuntu.com/security/CVE-2022-41725) <!-- medium -->
    -   [CVE-2023-24537](https://ubuntu.com/security/CVE-2023-24537) <!-- medium -->
    -   [CVE-2023-24534](https://ubuntu.com/security/CVE-2023-24534) <!-- medium -->
    -   [CVE-2022-41724](https://ubuntu.com/security/CVE-2022-41724) <!-- medium -->
-   Various content injection issues in JS, CSS and HTML template handling due to
    failing to properly parse various delimiting elements (like backtick `` ` `` for JS
    etc)
-   Also two DoS since could trigger a panic due to mishandling of memory


### [[USN-6141-1](https://ubuntu.com/security/notices/USN-6141-1)] xfce4-settings vulnerability (08:31) {#usn-6141-1-xfce4-settings-vulnerability--08-31}

-   1 CVEs addressed in Jammy (22.04 LTS), Kinetic (22.10)
    -   [CVE-2022-45062](https://ubuntu.com/security/CVE-2022-45062) <!-- medium -->
-   MIME helper failed to properly parse input - is called via `xdg-open` - so could
    call `xdg-open` with crafted input that would then get passed through to
    whatever application (like say the browser / file manager etc) and hence could
    run these other applications with arbitrary arguments - e.g. could embed a
    link in a PDF and when the user clicks this can then get say the browser to be
    launched with arbitrary arguments
-   e.g. could set the `--remote-allow-origins` flag to specify an attacker
    controlled domain which is then allowed to connect to the local debugging port
    and hence execute arbitrary JS on any other domain - steal creds etc


### [[USN-6142-1](https://ubuntu.com/security/notices/USN-6142-1)] nghttp2 vulnerability (10:16) {#usn-6142-1-nghttp2-vulnerability--10-16}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2020-11080](https://ubuntu.com/security/CVE-2020-11080) <!-- medium -->
-   C library for HTTP/2
-   Overly large `SETTINGS` frames would cause a CPU-based DoS - mitigated by
    setting a max limit for these frame types and rejecting if too large


### [[USN-6143-1](https://ubuntu.com/security/notices/USN-6143-1)] Firefox vulnerabilities (10:50) {#usn-6143-1-firefox-vulnerabilities--10-50}

-   4 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2023-34415](https://ubuntu.com/security/CVE-2023-34415) <!-- medium -->
    -   [CVE-2023-34417](https://ubuntu.com/security/CVE-2023-34417) <!-- medium -->
    -   [CVE-2023-34416](https://ubuntu.com/security/CVE-2023-34416) <!-- medium -->
    -   [CVE-2023-34414](https://ubuntu.com/security/CVE-2023-34414) <!-- medium -->
-   114.0 release


### [[USN-6144-1](https://ubuntu.com/security/notices/USN-6144-1)] LibreOffice vulnerabilities (10:59) {#usn-6144-1-libreoffice-vulnerabilities--10-59}

-   2 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-2255](https://ubuntu.com/security/CVE-2023-2255) <!-- medium -->
    -   [CVE-2023-0950](https://ubuntu.com/security/CVE-2023-0950) <!-- medium -->
-   Array index underflow in handling of crafted formulas in Calc - memory corruption -&gt; RCE
-   Failed to prompt user before loading a document into an IFrame - document can then contain other elements like JS etc that get executed


### [[USN-6028-2](https://ubuntu.com/security/notices/USN-6028-2)] libxml2 vulnerabilities (11:35) {#usn-6028-2-libxml2-vulnerabilities--11-35}

-   3 CVEs addressed in Lunar (23.04)
    -   [CVE-2023-29469](https://ubuntu.com/security/CVE-2023-29469) <!-- medium -->
    -   [CVE-2023-28484](https://ubuntu.com/security/CVE-2023-28484) <!-- medium -->
    -   [CVE-2022-2309](https://ubuntu.com/security/CVE-2022-2309) <!-- low -->
-   2 different NULL ptr deref, possible double free
    -   DoS / RCE via crafted XML documents


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Recent report of invalid GPG signatures on 16.04 ISOs (12:04) {#recent-report-of-invalid-gpg-signatures-on-16-dot-04-isos--12-04}

-   <https://discourse.ubuntu.com/t/is-ubuntu-vulnerable-to-fake-keys/21997/4>
-   User reported that the SHA256SUMS file for 16.04 ISOs on
    old-releases.ubuntu.com failed to validate
-   Sounds scary - has the server been hacked and the ISOs (and hence SHA256SUMS
    file) been tampered with?
-   We don't sign the ISOs directly - instead (like `apt`) we take a hash of the ISO
    file and then sign the file containing that list of hashes - for performance
-   So in this case, it would appear that the `SHA256SUMS` file has been modified
    and so does not validate properly
-   One other thing to note, this report was made in a follow-up comment to an
    older thread where someone mentioned that they are able to upload arbitrary
    keys to the ubuntu keyserver that mimic the archive / CD image signing keys
    etc - this is the nature of key servers - anyone can upload any key with any
    arbitrary identifiers - but since keys are generated from randomness, it is
    theoretically impossible to generate a key with the same underlying
    cryptographic fingerprint (even if it has the same name / email address
    associated with it)
-   Always important to make sure you use the right keys - as identified by their
    fingerprint - these are listed on the wiki
    <https://wiki.ubuntu.com/SecurityTeam/FAQ#GPG_Keys_used_by_Ubuntu>
-   These keys are also contained on all Ubuntu installs within the
    `/usr/share/keyrings/ubuntu-archive-keyring.gpg` file from the `ubuntu-keyring`
    package
-   Able to easily verify this behaviour locally:

<!--listend-->

```shell
wget -q https://old-releases.ubuntu.com/releases/xenial/SHA256SUMS{,.gpg}
gpg --verify --no-default-keyring --keyring=/usr/share/keyrings/ubuntu-archive-keyring.gpg --verbose SHA256SUMS.gpg SHA256SUMS
```

```text
gpg: Signature made Fri 01 Mar 2019 02:56:07 ACDT
gpg:                using DSA key 46181433FBB75451
gpg: Can't check signature: No public key
gpg: Signature made Fri 01 Mar 2019 02:56:07 ACDT
gpg:                using RSA key D94AA3F0EFE21092
gpg: using pgp trust model
gpg: BAD signature from "Ubuntu CD Image Automatic Signing Key (2012) <cdimage@ubuntu.com>" [unknown]
gpg: binary signature, digest algorithm SHA512, key algorithm rsa4096
```

-   So far so scary - it really does look like the `SHA256SUMS` file was modified
-   But if we look closer, we can see GPG says the signature was made on 28th
    February 2019 - this corresponds with the 16.04.6 point release - yet the most
    recent point release was 16.04.7 from [13th August 2020](https://lists.ubuntu.com/archives/ubuntu-announce/2020-August/000261.html) for BootHole ([Alex and
    Joe take an in-depth and behind-the-scenes look at BootHole / GRUB from
    Episode 84]({{< relref "episode-84#alex-and-joe-take-an-in-depth-and-behind-the-scenes-look-at-boothole-grub-2-08-14" >}})) - so it appears that perhaps the various signature files were
    not regenerated when the 16.04.7 point release was made (yet the various SUMS
    files were)
-   Marc went asking around, `vorlon` from Foundations confirmed this was the case
-   Simply had to run the script to resign this and push it to the server - now
    all is good as can be seen below

<!--listend-->

```text
gpg: Signature made Fri 09 Jun 2023 00:38:30 ACST
gpg:                using RSA key 843938DF228D22F7B3742BC0D94AA3F0EFE21092
gpg: using pgp trust model
gpg: Good signature from "Ubuntu CD Image Automatic Signing Key (2012) <cdimage@ubuntu.com>" [unknown]
gpg: WARNING: This key is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: 8439 38DF 228D 22F7 B374  2BC0 D94A A3F0 EFE2 1092
gpg: binary signature, digest algorithm SHA512, key algorithm rsa4096
```

-   Thanks to the anonymous user in the Ubuntu Discourse for bringing this to our
    attention


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
