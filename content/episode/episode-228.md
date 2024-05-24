+++
title = "Episode 228"
description = """
  The team is back from Madrid and this week we bring you some of our plans for
  the upcoming Ubuntu 24.10 release, plus we talk about Google's kernelCTF project
  and Mozilla's PDF.js sandbox when covering security updates for the Linux
  kernel, Firefox, Spreadsheet::ParseExcel, idna and more.
  """
date = 2024-05-24T13:24:00+09:30
lastmod = 2024-05-24T13:25:04+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E228.mp3"
podcast_duration = 933
podcast_bytes = 16372367
permalink = "https://ubuntusecuritypodcast.org/episode-228/"
guid = "7fe897927383d15499ef2e7e3c08e8792d6b24459e32554ad9a31465d043a8812e5a1843d57b9d5aaf84360fda39421b224e4953b6524c92d553fc8c1ee58afc"
+++

## Overview {#overview}

The team is back from Madrid and this week we bring you some of our plans for
the upcoming Ubuntu 24.10 release, plus we talk about Google's kernelCTF project
and Mozilla's PDF.js sandbox when covering security updates for the Linux
kernel, Firefox, Spreadsheet::ParseExcel, idna and more.


## This week in Ubuntu Security Updates {#this-week-in-ubuntu-security-updates}

121 unique CVEs addressed


### [[USN-6766-2](https://ubuntu.com/security/notices/USN-6766-2)] Linux kernel vulnerabilities (01:07) {#usn-6766-2-linux-kernel-vulnerabilities--01-07}

-   92 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-26697](https://ubuntu.com/security/CVE-2024-26697) <!-- medium -->
    -   [CVE-2023-52489](https://ubuntu.com/security/CVE-2023-52489) <!-- medium -->
    -   [CVE-2024-26644](https://ubuntu.com/security/CVE-2024-26644) <!-- medium -->
    -   [CVE-2024-26702](https://ubuntu.com/security/CVE-2024-26702) <!-- medium -->
    -   [CVE-2023-52492](https://ubuntu.com/security/CVE-2023-52492) <!-- medium -->
    -   [CVE-2023-52616](https://ubuntu.com/security/CVE-2023-52616) <!-- medium -->
    -   [CVE-2024-26808](https://ubuntu.com/security/CVE-2024-26808) <!-- high -->
    -   [CVE-2024-26920](https://ubuntu.com/security/CVE-2024-26920) <!-- low -->
    -   [CVE-2023-52494](https://ubuntu.com/security/CVE-2023-52494) <!-- medium -->
    -   [CVE-2024-26698](https://ubuntu.com/security/CVE-2024-26698) <!-- medium -->
    -   [CVE-2024-26695](https://ubuntu.com/security/CVE-2024-26695) <!-- medium -->
    -   [CVE-2023-52635](https://ubuntu.com/security/CVE-2023-52635) <!-- medium -->
    -   [CVE-2024-26707](https://ubuntu.com/security/CVE-2024-26707) <!-- medium -->
    -   [CVE-2024-26715](https://ubuntu.com/security/CVE-2024-26715) <!-- medium -->
    -   [CVE-2023-52597](https://ubuntu.com/security/CVE-2023-52597) <!-- medium -->
    -   [CVE-2023-52435](https://ubuntu.com/security/CVE-2023-52435) <!-- medium -->
    -   [CVE-2024-26668](https://ubuntu.com/security/CVE-2024-26668) <!-- medium -->
    -   [CVE-2023-52598](https://ubuntu.com/security/CVE-2023-52598) <!-- medium -->
    -   [CVE-2024-26593](https://ubuntu.com/security/CVE-2024-26593) <!-- medium -->
    -   [CVE-2023-52643](https://ubuntu.com/security/CVE-2023-52643) <!-- low -->
    -   [CVE-2024-26717](https://ubuntu.com/security/CVE-2024-26717) <!-- medium -->
    -   [CVE-2023-52604](https://ubuntu.com/security/CVE-2023-52604) <!-- medium -->
    -   [CVE-2024-26602](https://ubuntu.com/security/CVE-2024-26602) <!-- medium -->
    -   [CVE-2024-26664](https://ubuntu.com/security/CVE-2024-26664) <!-- medium -->
    -   [CVE-2023-52491](https://ubuntu.com/security/CVE-2023-52491) <!-- medium -->
    -   [CVE-2024-26635](https://ubuntu.com/security/CVE-2024-26635) <!-- medium -->
    -   [CVE-2024-26640](https://ubuntu.com/security/CVE-2024-26640) <!-- medium -->
    -   [CVE-2024-26696](https://ubuntu.com/security/CVE-2024-26696) <!-- medium -->
    -   [CVE-2024-26627](https://ubuntu.com/security/CVE-2024-26627) <!-- medium -->
    -   [CVE-2023-52623](https://ubuntu.com/security/CVE-2023-52623) <!-- medium -->
    -   [CVE-2024-26641](https://ubuntu.com/security/CVE-2024-26641) <!-- medium -->
    -   [CVE-2024-26829](https://ubuntu.com/security/CVE-2024-26829) <!-- medium -->
    -   [CVE-2024-26679](https://ubuntu.com/security/CVE-2024-26679) <!-- medium -->
    -   [CVE-2024-26600](https://ubuntu.com/security/CVE-2024-26600) <!-- medium -->
    -   [CVE-2024-26916](https://ubuntu.com/security/CVE-2024-26916) <!-- medium -->
    -   [CVE-2024-26606](https://ubuntu.com/security/CVE-2024-26606) <!-- medium -->
    -   [CVE-2023-52614](https://ubuntu.com/security/CVE-2023-52614) <!-- medium -->
    -   [CVE-2024-26675](https://ubuntu.com/security/CVE-2024-26675) <!-- medium -->
    -   [CVE-2024-26712](https://ubuntu.com/security/CVE-2024-26712) <!-- medium -->
    -   [CVE-2023-52587](https://ubuntu.com/security/CVE-2023-52587) <!-- medium -->
    -   [CVE-2023-52642](https://ubuntu.com/security/CVE-2023-52642) <!-- low -->
    -   [CVE-2024-26636](https://ubuntu.com/security/CVE-2024-26636) <!-- medium -->
    -   [CVE-2023-52615](https://ubuntu.com/security/CVE-2023-52615) <!-- medium -->
    -   [CVE-2024-26615](https://ubuntu.com/security/CVE-2024-26615) <!-- medium -->
    -   [CVE-2024-26722](https://ubuntu.com/security/CVE-2024-26722) <!-- medium -->
    -   [CVE-2023-52608](https://ubuntu.com/security/CVE-2023-52608) <!-- medium -->
    -   [CVE-2023-52607](https://ubuntu.com/security/CVE-2023-52607) <!-- low -->
    -   [CVE-2023-52631](https://ubuntu.com/security/CVE-2023-52631) <!-- medium -->
    -   [CVE-2023-52486](https://ubuntu.com/security/CVE-2023-52486) <!-- medium -->
    -   [CVE-2024-26645](https://ubuntu.com/security/CVE-2024-26645) <!-- medium -->
    -   [CVE-2023-52617](https://ubuntu.com/security/CVE-2023-52617) <!-- medium -->
    -   [CVE-2024-26660](https://ubuntu.com/security/CVE-2024-26660) <!-- medium -->
    -   [CVE-2023-52595](https://ubuntu.com/security/CVE-2023-52595) <!-- medium -->
    -   [CVE-2023-52599](https://ubuntu.com/security/CVE-2023-52599) <!-- medium -->
    -   [CVE-2024-26592](https://ubuntu.com/security/CVE-2024-26592) <!-- medium -->
    -   [CVE-2024-26610](https://ubuntu.com/security/CVE-2024-26610) <!-- medium -->
    -   [CVE-2024-26608](https://ubuntu.com/security/CVE-2024-26608) <!-- medium -->
    -   [CVE-2024-26704](https://ubuntu.com/security/CVE-2024-26704) <!-- medium -->
    -   [CVE-2024-26671](https://ubuntu.com/security/CVE-2024-26671) <!-- medium -->
    -   [CVE-2024-26676](https://ubuntu.com/security/CVE-2024-26676) <!-- medium -->
    -   [CVE-2023-52583](https://ubuntu.com/security/CVE-2023-52583) <!-- negligible -->
    -   [CVE-2024-26689](https://ubuntu.com/security/CVE-2024-26689) <!-- medium -->
    -   [CVE-2024-26910](https://ubuntu.com/security/CVE-2024-26910) <!-- low -->
    -   [CVE-2023-52619](https://ubuntu.com/security/CVE-2023-52619) <!-- medium -->
    -   [CVE-2023-52498](https://ubuntu.com/security/CVE-2023-52498) <!-- medium -->
    -   [CVE-2023-52638](https://ubuntu.com/security/CVE-2023-52638) <!-- medium -->
    -   [CVE-2024-26685](https://ubuntu.com/security/CVE-2024-26685) <!-- medium -->
    -   [CVE-2024-26673](https://ubuntu.com/security/CVE-2024-26673) <!-- medium -->
    -   [CVE-2023-52602](https://ubuntu.com/security/CVE-2023-52602) <!-- medium -->
    -   [CVE-2023-52627](https://ubuntu.com/security/CVE-2023-52627) <!-- medium -->
    -   [CVE-2024-26614](https://ubuntu.com/security/CVE-2024-26614) <!-- medium -->
    -   [CVE-2024-26720](https://ubuntu.com/security/CVE-2024-26720) <!-- medium -->
    -   [CVE-2024-26625](https://ubuntu.com/security/CVE-2024-26625) <!-- medium -->
    -   [CVE-2024-26594](https://ubuntu.com/security/CVE-2024-26594) <!-- medium -->
    -   [CVE-2023-52606](https://ubuntu.com/security/CVE-2023-52606) <!-- medium -->
    -   [CVE-2024-26825](https://ubuntu.com/security/CVE-2024-26825) <!-- medium -->
    -   [CVE-2023-52637](https://ubuntu.com/security/CVE-2023-52637) <!-- medium -->
    -   [CVE-2023-52588](https://ubuntu.com/security/CVE-2023-52588) <!-- medium -->
    -   [CVE-2023-52618](https://ubuntu.com/security/CVE-2023-52618) <!-- medium -->
    -   [CVE-2024-26663](https://ubuntu.com/security/CVE-2024-26663) <!-- medium -->
    -   [CVE-2024-26684](https://ubuntu.com/security/CVE-2024-26684) <!-- medium -->
    -   [CVE-2023-52633](https://ubuntu.com/security/CVE-2023-52633) <!-- medium -->
    -   [CVE-2023-52493](https://ubuntu.com/security/CVE-2023-52493) <!-- medium -->
    -   [CVE-2024-26665](https://ubuntu.com/security/CVE-2024-26665) <!-- medium -->
    -   [CVE-2023-52622](https://ubuntu.com/security/CVE-2023-52622) <!-- medium -->
    -   [CVE-2024-26826](https://ubuntu.com/security/CVE-2024-26826) <!-- medium -->
    -   [CVE-2023-52601](https://ubuntu.com/security/CVE-2023-52601) <!-- medium -->
    -   [CVE-2023-52594](https://ubuntu.com/security/CVE-2023-52594) <!-- medium -->
    -   [CVE-2024-23849](https://ubuntu.com/security/CVE-2024-23849) <!-- low -->
    -   [CVE-2024-2201](https://ubuntu.com/security/CVE-2024-2201) <!-- medium -->
    -   [CVE-2022-0001](https://ubuntu.com/security/CVE-2022-0001) <!-- high -->
    -   [CVE-2024-1151](https://ubuntu.com/security/CVE-2024-1151) <!-- medium -->
-   5.15 - raspi kernel on 22.04 and OEM or optional HWE on 20.04
-   Linux kernel CNA has been quite busy assigning both historical and recent CVEs against the kernel
-   As discussed previously [Linux kernel becomes a CNA from Episode 219]({{< relref "episode-219#linux-kernel-becomes-a-cna--11-25" >}}) [Follow up
    to Linux kernel CNA from Episode 220]({{< relref "episode-220#follow-up-to-linux-kernel-cna--11-40" >}}), the impact of these CVEs is often not
    apparent so it makes it quite hard to assign a proper priority - even the
    kernel CNA themselves are not assigning a CVSS score - so for now we have
    little information which we can glean for each of these
-   As such, the USNs contain quite little detail and are very generic - and for
    each we will be assigning just a medium priority unless we have some good
    evidence otherwise
-   One example here is [CVE-2024-26808](https://ubuntu.com/security/CVE-2024-26808) - UAF in netfilter - was reported via
    Google's kernelCTF (not to be confused with their [kCTF](https://google.github.io/kctf/) which is their
    kubernetes-based CTF hosting platform - but which also has a [vulnerabilities
    reward program (VRP)](https://google.github.io/kctf/vrp.html)) - [kernelCTF](https://google.github.io/security-research/kernelctf/rules.html) - program to offer rewards for exploits
    against the kernel - but not just any exploits - can't use `io_uring` or
    `nftables` since they were disabled in their target kernel configuration due to
    [high number of historical vulns](https://security.googleblog.com/2023/06/learnings-from-kctf-vrps-42-linux.html) in both subsystems
    -   base reward of $21k, $10k bonus if is reliable more than 90% of the time,
        additional $20k bonus if works without using unprivileged user namespaces,
        and a final additional $20k bonus if it is 0-day (ie not patched in the
        mainline tree and not disclosed anywhere - including via syzkaller)
-   So in this case, we rated this CVE with a high priority since it is known
    exploitable
    -   can see it listed in their [public spreadsheet](https://docs.google.com/spreadsheets/d/e/2PACX-1vS1REdTA29OJftst8xN5B5x8iIUcxuK6bXdzF8G1UXCmRtoNsoQ9MbebdRdFnj6qZ0Yd7LwQfvYC2oF/pubhtml)


### [[USN-6766-3](https://ubuntu.com/security/notices/USN-6766-3)] Linux kernel (AWS) vulnerabilities (04:48) {#usn-6766-3-linux-kernel--aws--vulnerabilities--04-48}

-   92 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2024-26697](https://ubuntu.com/security/CVE-2024-26697) <!-- medium -->
    -   [CVE-2023-52489](https://ubuntu.com/security/CVE-2023-52489) <!-- medium -->
    -   [CVE-2024-26644](https://ubuntu.com/security/CVE-2024-26644) <!-- medium -->
    -   [CVE-2024-26702](https://ubuntu.com/security/CVE-2024-26702) <!-- medium -->
    -   [CVE-2023-52492](https://ubuntu.com/security/CVE-2023-52492) <!-- medium -->
    -   [CVE-2023-52616](https://ubuntu.com/security/CVE-2023-52616) <!-- medium -->
    -   [CVE-2024-26808](https://ubuntu.com/security/CVE-2024-26808) <!-- high -->
    -   [CVE-2024-26920](https://ubuntu.com/security/CVE-2024-26920) <!-- low -->
    -   [CVE-2023-52494](https://ubuntu.com/security/CVE-2023-52494) <!-- medium -->
    -   [CVE-2024-26698](https://ubuntu.com/security/CVE-2024-26698) <!-- medium -->
    -   [CVE-2024-26695](https://ubuntu.com/security/CVE-2024-26695) <!-- medium -->
    -   [CVE-2023-52635](https://ubuntu.com/security/CVE-2023-52635) <!-- medium -->
    -   [CVE-2024-26707](https://ubuntu.com/security/CVE-2024-26707) <!-- medium -->
    -   [CVE-2024-26715](https://ubuntu.com/security/CVE-2024-26715) <!-- medium -->
    -   [CVE-2023-52597](https://ubuntu.com/security/CVE-2023-52597) <!-- medium -->
    -   [CVE-2023-52435](https://ubuntu.com/security/CVE-2023-52435) <!-- medium -->
    -   [CVE-2024-26668](https://ubuntu.com/security/CVE-2024-26668) <!-- medium -->
    -   [CVE-2023-52598](https://ubuntu.com/security/CVE-2023-52598) <!-- medium -->
    -   [CVE-2024-26593](https://ubuntu.com/security/CVE-2024-26593) <!-- medium -->
    -   [CVE-2023-52643](https://ubuntu.com/security/CVE-2023-52643) <!-- low -->
    -   [CVE-2024-26717](https://ubuntu.com/security/CVE-2024-26717) <!-- medium -->
    -   [CVE-2023-52604](https://ubuntu.com/security/CVE-2023-52604) <!-- medium -->
    -   [CVE-2024-26602](https://ubuntu.com/security/CVE-2024-26602) <!-- medium -->
    -   [CVE-2024-26664](https://ubuntu.com/security/CVE-2024-26664) <!-- medium -->
    -   [CVE-2023-52491](https://ubuntu.com/security/CVE-2023-52491) <!-- medium -->
    -   [CVE-2024-26635](https://ubuntu.com/security/CVE-2024-26635) <!-- medium -->
    -   [CVE-2024-26640](https://ubuntu.com/security/CVE-2024-26640) <!-- medium -->
    -   [CVE-2024-26696](https://ubuntu.com/security/CVE-2024-26696) <!-- medium -->
    -   [CVE-2024-26627](https://ubuntu.com/security/CVE-2024-26627) <!-- medium -->
    -   [CVE-2023-52623](https://ubuntu.com/security/CVE-2023-52623) <!-- medium -->
    -   [CVE-2024-26641](https://ubuntu.com/security/CVE-2024-26641) <!-- medium -->
    -   [CVE-2024-26829](https://ubuntu.com/security/CVE-2024-26829) <!-- medium -->
    -   [CVE-2024-26679](https://ubuntu.com/security/CVE-2024-26679) <!-- medium -->
    -   [CVE-2024-26600](https://ubuntu.com/security/CVE-2024-26600) <!-- medium -->
    -   [CVE-2024-26916](https://ubuntu.com/security/CVE-2024-26916) <!-- medium -->
    -   [CVE-2024-26606](https://ubuntu.com/security/CVE-2024-26606) <!-- medium -->
    -   [CVE-2023-52614](https://ubuntu.com/security/CVE-2023-52614) <!-- medium -->
    -   [CVE-2024-26675](https://ubuntu.com/security/CVE-2024-26675) <!-- medium -->
    -   [CVE-2024-26712](https://ubuntu.com/security/CVE-2024-26712) <!-- medium -->
    -   [CVE-2023-52587](https://ubuntu.com/security/CVE-2023-52587) <!-- medium -->
    -   [CVE-2023-52642](https://ubuntu.com/security/CVE-2023-52642) <!-- low -->
    -   [CVE-2024-26636](https://ubuntu.com/security/CVE-2024-26636) <!-- medium -->
    -   [CVE-2023-52615](https://ubuntu.com/security/CVE-2023-52615) <!-- medium -->
    -   [CVE-2024-26615](https://ubuntu.com/security/CVE-2024-26615) <!-- medium -->
    -   [CVE-2024-26722](https://ubuntu.com/security/CVE-2024-26722) <!-- medium -->
    -   [CVE-2023-52608](https://ubuntu.com/security/CVE-2023-52608) <!-- medium -->
    -   [CVE-2023-52607](https://ubuntu.com/security/CVE-2023-52607) <!-- low -->
    -   [CVE-2023-52631](https://ubuntu.com/security/CVE-2023-52631) <!-- medium -->
    -   [CVE-2023-52486](https://ubuntu.com/security/CVE-2023-52486) <!-- medium -->
    -   [CVE-2024-26645](https://ubuntu.com/security/CVE-2024-26645) <!-- medium -->
    -   [CVE-2023-52617](https://ubuntu.com/security/CVE-2023-52617) <!-- medium -->
    -   [CVE-2024-26660](https://ubuntu.com/security/CVE-2024-26660) <!-- medium -->
    -   [CVE-2023-52595](https://ubuntu.com/security/CVE-2023-52595) <!-- medium -->
    -   [CVE-2023-52599](https://ubuntu.com/security/CVE-2023-52599) <!-- medium -->
    -   [CVE-2024-26592](https://ubuntu.com/security/CVE-2024-26592) <!-- medium -->
    -   [CVE-2024-26610](https://ubuntu.com/security/CVE-2024-26610) <!-- medium -->
    -   [CVE-2024-26608](https://ubuntu.com/security/CVE-2024-26608) <!-- medium -->
    -   [CVE-2024-26704](https://ubuntu.com/security/CVE-2024-26704) <!-- medium -->
    -   [CVE-2024-26671](https://ubuntu.com/security/CVE-2024-26671) <!-- medium -->
    -   [CVE-2024-26676](https://ubuntu.com/security/CVE-2024-26676) <!-- medium -->
    -   [CVE-2023-52583](https://ubuntu.com/security/CVE-2023-52583) <!-- negligible -->
    -   [CVE-2024-26689](https://ubuntu.com/security/CVE-2024-26689) <!-- medium -->
    -   [CVE-2024-26910](https://ubuntu.com/security/CVE-2024-26910) <!-- low -->
    -   [CVE-2023-52619](https://ubuntu.com/security/CVE-2023-52619) <!-- medium -->
    -   [CVE-2023-52498](https://ubuntu.com/security/CVE-2023-52498) <!-- medium -->
    -   [CVE-2023-52638](https://ubuntu.com/security/CVE-2023-52638) <!-- medium -->
    -   [CVE-2024-26685](https://ubuntu.com/security/CVE-2024-26685) <!-- medium -->
    -   [CVE-2024-26673](https://ubuntu.com/security/CVE-2024-26673) <!-- medium -->
    -   [CVE-2023-52602](https://ubuntu.com/security/CVE-2023-52602) <!-- medium -->
    -   [CVE-2023-52627](https://ubuntu.com/security/CVE-2023-52627) <!-- medium -->
    -   [CVE-2024-26614](https://ubuntu.com/security/CVE-2024-26614) <!-- medium -->
    -   [CVE-2024-26720](https://ubuntu.com/security/CVE-2024-26720) <!-- medium -->
    -   [CVE-2024-26625](https://ubuntu.com/security/CVE-2024-26625) <!-- medium -->
    -   [CVE-2024-26594](https://ubuntu.com/security/CVE-2024-26594) <!-- medium -->
    -   [CVE-2023-52606](https://ubuntu.com/security/CVE-2023-52606) <!-- medium -->
    -   [CVE-2024-26825](https://ubuntu.com/security/CVE-2024-26825) <!-- medium -->
    -   [CVE-2023-52637](https://ubuntu.com/security/CVE-2023-52637) <!-- medium -->
    -   [CVE-2023-52588](https://ubuntu.com/security/CVE-2023-52588) <!-- medium -->
    -   [CVE-2023-52618](https://ubuntu.com/security/CVE-2023-52618) <!-- medium -->
    -   [CVE-2024-26663](https://ubuntu.com/security/CVE-2024-26663) <!-- medium -->
    -   [CVE-2024-26684](https://ubuntu.com/security/CVE-2024-26684) <!-- medium -->
    -   [CVE-2023-52633](https://ubuntu.com/security/CVE-2023-52633) <!-- medium -->
    -   [CVE-2023-52493](https://ubuntu.com/security/CVE-2023-52493) <!-- medium -->
    -   [CVE-2024-26665](https://ubuntu.com/security/CVE-2024-26665) <!-- medium -->
    -   [CVE-2023-52622](https://ubuntu.com/security/CVE-2023-52622) <!-- medium -->
    -   [CVE-2024-26826](https://ubuntu.com/security/CVE-2024-26826) <!-- medium -->
    -   [CVE-2023-52601](https://ubuntu.com/security/CVE-2023-52601) <!-- medium -->
    -   [CVE-2023-52594](https://ubuntu.com/security/CVE-2023-52594) <!-- medium -->
    -   [CVE-2024-23849](https://ubuntu.com/security/CVE-2024-23849) <!-- low -->
    -   [CVE-2024-2201](https://ubuntu.com/security/CVE-2024-2201) <!-- medium -->
    -   [CVE-2022-0001](https://ubuntu.com/security/CVE-2022-0001) <!-- high -->
    -   [CVE-2024-1151](https://ubuntu.com/security/CVE-2024-1151) <!-- medium -->
-   5.15 - AWS on both 22.04 and 20.04


### [[USN-6774-1](https://ubuntu.com/security/notices/USN-6774-1)] Linux kernel vulnerabilities (05:01) {#usn-6774-1-linux-kernel-vulnerabilities--05-01}

-   13 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-26801](https://ubuntu.com/security/CVE-2024-26801) <!-- medium -->
    -   [CVE-2023-52601](https://ubuntu.com/security/CVE-2023-52601) <!-- medium -->
    -   [CVE-2024-26622](https://ubuntu.com/security/CVE-2024-26622) <!-- medium -->
    -   [CVE-2024-26635](https://ubuntu.com/security/CVE-2024-26635) <!-- medium -->
    -   [CVE-2023-52602](https://ubuntu.com/security/CVE-2023-52602) <!-- medium -->
    -   [CVE-2024-26614](https://ubuntu.com/security/CVE-2024-26614) <!-- medium -->
    -   [CVE-2023-52604](https://ubuntu.com/security/CVE-2023-52604) <!-- medium -->
    -   [CVE-2024-26805](https://ubuntu.com/security/CVE-2024-26805) <!-- medium -->
    -   [CVE-2023-52615](https://ubuntu.com/security/CVE-2023-52615) <!-- medium -->
    -   [CVE-2024-26704](https://ubuntu.com/security/CVE-2024-26704) <!-- medium -->
    -   [CVE-2024-2201](https://ubuntu.com/security/CVE-2024-2201) <!-- medium -->
    -   [CVE-2022-0001](https://ubuntu.com/security/CVE-2022-0001) <!-- high -->
    -   [CVE-2023-47233](https://ubuntu.com/security/CVE-2023-47233) <!-- low -->
-   6.5 - all on 23.10, HWE (all) on 22.04


### [[USN-6775-1](https://ubuntu.com/security/notices/USN-6775-1)] Linux kernel vulnerabilities {#usn-6775-1-linux-kernel-vulnerabilities}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-52530](https://ubuntu.com/security/CVE-2023-52530) <!-- medium -->
    -   [CVE-2024-26622](https://ubuntu.com/security/CVE-2024-26622) <!-- medium -->
    -   [CVE-2023-47233](https://ubuntu.com/security/CVE-2023-47233) <!-- low -->
-   5.15 all on 22.04, HWE (all) on 20.04


### [[USN-6775-2](https://ubuntu.com/security/notices/USN-6775-2)] Linux kernel vulnerabilities {#usn-6775-2-linux-kernel-vulnerabilities}

-   3 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-52530](https://ubuntu.com/security/CVE-2023-52530) <!-- medium -->
    -   [CVE-2024-26622](https://ubuntu.com/security/CVE-2024-26622) <!-- medium -->
    -   [CVE-2023-47233](https://ubuntu.com/security/CVE-2023-47233) <!-- low -->
-   5.15 AWS/GKE


### [[USN-6776-1](https://ubuntu.com/security/notices/USN-6776-1)] Linux kernel vulnerabilities {#usn-6776-1-linux-kernel-vulnerabilities}

-   4 CVEs addressed in Bionic ESM (18.04 ESM), Focal (20.04 LTS)
    -   [CVE-2024-26622](https://ubuntu.com/security/CVE-2024-26622) <!-- medium -->
    -   [CVE-2023-52530](https://ubuntu.com/security/CVE-2023-52530) <!-- medium -->
    -   [CVE-2024-26614](https://ubuntu.com/security/CVE-2024-26614) <!-- medium -->
    -   [CVE-2023-47233](https://ubuntu.com/security/CVE-2023-47233) <!-- low -->
-   5.4 all on 20.04, HWE (all) on 18.04


### [[USN-6777-1](https://ubuntu.com/security/notices/USN-6777-1)] Linux kernel vulnerabilities {#usn-6777-1-linux-kernel-vulnerabilities}

-   17 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM)
    -   [CVE-2023-52583](https://ubuntu.com/security/CVE-2023-52583) <!-- negligible -->
    -   [CVE-2024-26801](https://ubuntu.com/security/CVE-2024-26801) <!-- medium -->
    -   [CVE-2024-26805](https://ubuntu.com/security/CVE-2024-26805) <!-- medium -->
    -   [CVE-2024-26735](https://ubuntu.com/security/CVE-2024-26735) <!-- medium -->
    -   [CVE-2024-26622](https://ubuntu.com/security/CVE-2024-26622) <!-- medium -->
    -   [CVE-2021-46981](https://ubuntu.com/security/CVE-2021-46981) <!-- medium -->
    -   [CVE-2023-52566](https://ubuntu.com/security/CVE-2023-52566) <!-- medium -->
    -   [CVE-2023-52604](https://ubuntu.com/security/CVE-2023-52604) <!-- medium -->
    -   [CVE-2024-26704](https://ubuntu.com/security/CVE-2024-26704) <!-- medium -->
    -   [CVE-2024-26614](https://ubuntu.com/security/CVE-2024-26614) <!-- medium -->
    -   [CVE-2023-52602](https://ubuntu.com/security/CVE-2023-52602) <!-- medium -->
    -   [CVE-2024-26635](https://ubuntu.com/security/CVE-2024-26635) <!-- medium -->
    -   [CVE-2023-52439](https://ubuntu.com/security/CVE-2023-52439) <!-- medium -->
    -   [CVE-2023-52601](https://ubuntu.com/security/CVE-2023-52601) <!-- medium -->
    -   [CVE-2023-52530](https://ubuntu.com/security/CVE-2023-52530) <!-- medium -->
    -   [CVE-2023-52524](https://ubuntu.com/security/CVE-2023-52524) <!-- medium -->
    -   [CVE-2023-47233](https://ubuntu.com/security/CVE-2023-47233) <!-- low -->
-   4.15 - all on 18.04, HWE (all) on 16.04


### [[USN-6777-2](https://ubuntu.com/security/notices/USN-6777-2)] Linux kernel (Azure) vulnerabilities {#usn-6777-2-linux-kernel--azure--vulnerabilities}

-   17 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2023-52583](https://ubuntu.com/security/CVE-2023-52583) <!-- negligible -->
    -   [CVE-2024-26801](https://ubuntu.com/security/CVE-2024-26801) <!-- medium -->
    -   [CVE-2024-26805](https://ubuntu.com/security/CVE-2024-26805) <!-- medium -->
    -   [CVE-2024-26735](https://ubuntu.com/security/CVE-2024-26735) <!-- medium -->
    -   [CVE-2024-26622](https://ubuntu.com/security/CVE-2024-26622) <!-- medium -->
    -   [CVE-2021-46981](https://ubuntu.com/security/CVE-2021-46981) <!-- medium -->
    -   [CVE-2023-52566](https://ubuntu.com/security/CVE-2023-52566) <!-- medium -->
    -   [CVE-2023-52604](https://ubuntu.com/security/CVE-2023-52604) <!-- medium -->
    -   [CVE-2024-26704](https://ubuntu.com/security/CVE-2024-26704) <!-- medium -->
    -   [CVE-2024-26614](https://ubuntu.com/security/CVE-2024-26614) <!-- medium -->
    -   [CVE-2023-52602](https://ubuntu.com/security/CVE-2023-52602) <!-- medium -->
    -   [CVE-2024-26635](https://ubuntu.com/security/CVE-2024-26635) <!-- medium -->
    -   [CVE-2023-52439](https://ubuntu.com/security/CVE-2023-52439) <!-- medium -->
    -   [CVE-2023-52601](https://ubuntu.com/security/CVE-2023-52601) <!-- medium -->
    -   [CVE-2023-52530](https://ubuntu.com/security/CVE-2023-52530) <!-- medium -->
    -   [CVE-2023-52524](https://ubuntu.com/security/CVE-2023-52524) <!-- medium -->
    -   [CVE-2023-47233](https://ubuntu.com/security/CVE-2023-47233) <!-- low -->
-   4.15 - azure


### [[USN-6777-3](https://ubuntu.com/security/notices/USN-6777-3)] Linux kernel (GCP) vulnerabilities {#usn-6777-3-linux-kernel--gcp--vulnerabilities}

-   17 CVEs addressed in Xenial ESM (16.04 ESM)
    -   [CVE-2023-52583](https://ubuntu.com/security/CVE-2023-52583) <!-- negligible -->
    -   [CVE-2024-26801](https://ubuntu.com/security/CVE-2024-26801) <!-- medium -->
    -   [CVE-2024-26805](https://ubuntu.com/security/CVE-2024-26805) <!-- medium -->
    -   [CVE-2024-26735](https://ubuntu.com/security/CVE-2024-26735) <!-- medium -->
    -   [CVE-2024-26622](https://ubuntu.com/security/CVE-2024-26622) <!-- medium -->
    -   [CVE-2021-46981](https://ubuntu.com/security/CVE-2021-46981) <!-- medium -->
    -   [CVE-2023-52566](https://ubuntu.com/security/CVE-2023-52566) <!-- medium -->
    -   [CVE-2023-52604](https://ubuntu.com/security/CVE-2023-52604) <!-- medium -->
    -   [CVE-2024-26704](https://ubuntu.com/security/CVE-2024-26704) <!-- medium -->
    -   [CVE-2024-26614](https://ubuntu.com/security/CVE-2024-26614) <!-- medium -->
    -   [CVE-2023-52602](https://ubuntu.com/security/CVE-2023-52602) <!-- medium -->
    -   [CVE-2024-26635](https://ubuntu.com/security/CVE-2024-26635) <!-- medium -->
    -   [CVE-2023-52439](https://ubuntu.com/security/CVE-2023-52439) <!-- medium -->
    -   [CVE-2023-52601](https://ubuntu.com/security/CVE-2023-52601) <!-- medium -->
    -   [CVE-2023-52530](https://ubuntu.com/security/CVE-2023-52530) <!-- medium -->
    -   [CVE-2023-52524](https://ubuntu.com/security/CVE-2023-52524) <!-- medium -->
    -   [CVE-2023-47233](https://ubuntu.com/security/CVE-2023-47233) <!-- low -->


### [[USN-6778-1](https://ubuntu.com/security/notices/USN-6778-1)] Linux kernel vulnerabilities {#usn-6778-1-linux-kernel-vulnerabilities}

-   14 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM)
    -   [CVE-2023-52524](https://ubuntu.com/security/CVE-2023-52524) <!-- medium -->
    -   [CVE-2023-52530](https://ubuntu.com/security/CVE-2023-52530) <!-- medium -->
    -   [CVE-2023-52604](https://ubuntu.com/security/CVE-2023-52604) <!-- medium -->
    -   [CVE-2024-26614](https://ubuntu.com/security/CVE-2024-26614) <!-- medium -->
    -   [CVE-2021-46939](https://ubuntu.com/security/CVE-2021-46939) <!-- medium -->
    -   [CVE-2024-26704](https://ubuntu.com/security/CVE-2024-26704) <!-- medium -->
    -   [CVE-2023-52566](https://ubuntu.com/security/CVE-2023-52566) <!-- medium -->
    -   [CVE-2024-26801](https://ubuntu.com/security/CVE-2024-26801) <!-- medium -->
    -   [CVE-2023-52602](https://ubuntu.com/security/CVE-2023-52602) <!-- medium -->
    -   [CVE-2024-26635](https://ubuntu.com/security/CVE-2024-26635) <!-- medium -->
    -   [CVE-2024-26805](https://ubuntu.com/security/CVE-2024-26805) <!-- medium -->
    -   [CVE-2024-26622](https://ubuntu.com/security/CVE-2024-26622) <!-- medium -->
    -   [CVE-2023-52601](https://ubuntu.com/security/CVE-2023-52601) <!-- medium -->
    -   [CVE-2023-47233](https://ubuntu.com/security/CVE-2023-47233) <!-- low -->
-   4.4 - all on 16.04, HWE on 14.04


### [[USN-6773-1](https://ubuntu.com/security/notices/USN-6773-1)] .NET vulnerabilities (05:34) {#usn-6773-1-dot-net-vulnerabilities--05-34}

-   2 CVEs addressed in Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-30046](https://ubuntu.com/security/CVE-2024-30046) <!-- medium -->
    -   [CVE-2024-30045](https://ubuntu.com/security/CVE-2024-30045) <!-- medium -->
-   dotnet 7 and 8


### [[USN-6779-1](https://ubuntu.com/security/notices/USN-6779-1)] Firefox vulnerabilities (05:54) {#usn-6779-1-firefox-vulnerabilities--05-54}

-   14 CVEs addressed in Focal (20.04 LTS)
    -   [CVE-2024-4770](https://ubuntu.com/security/CVE-2024-4770) <!-- medium -->
    -   [CVE-2024-4367](https://ubuntu.com/security/CVE-2024-4367) <!-- medium -->
    -   [CVE-2024-4764](https://ubuntu.com/security/CVE-2024-4764) <!-- medium -->
    -   [CVE-2024-4778](https://ubuntu.com/security/CVE-2024-4778) <!-- medium -->
    -   [CVE-2024-4777](https://ubuntu.com/security/CVE-2024-4777) <!-- medium -->
    -   [CVE-2024-4776](https://ubuntu.com/security/CVE-2024-4776) <!-- medium -->
    -   [CVE-2024-4775](https://ubuntu.com/security/CVE-2024-4775) <!-- medium -->
    -   [CVE-2024-4774](https://ubuntu.com/security/CVE-2024-4774) <!-- medium -->
    -   [CVE-2024-4773](https://ubuntu.com/security/CVE-2024-4773) <!-- medium -->
    -   [CVE-2024-4772](https://ubuntu.com/security/CVE-2024-4772) <!-- medium -->
    -   [CVE-2024-4771](https://ubuntu.com/security/CVE-2024-4771) <!-- medium -->
    -   [CVE-2024-4769](https://ubuntu.com/security/CVE-2024-4769) <!-- medium -->
    -   [CVE-2024-4768](https://ubuntu.com/security/CVE-2024-4768) <!-- medium -->
    -   [CVE-2024-4767](https://ubuntu.com/security/CVE-2024-4767) <!-- medium -->
-   126.0
-   UAF due to multiple WebRTC threads trying to use an audio input device if it
    was just added
-   type confusion bug in handling of missing fonts -&gt; arbitrary JS execution via
    PDF.js (this is in the context of PDF.js which uses the [quickjs](https://bellard.org/quickjs/quickjs.html) JS engine
    inside the standard ComponentUtils.Sandbox implementation - which is the same
    sandbox used to execute JS from websites etc in firefox) - unrelated to this
    vuln but PDFs can contain JavaScript (e.g. in a form, to calculate values
    based on user input)
    -   also PDF.js doesn't implement the PDF APIs related to network or disk etc to
        avoid possible security issues


### [[USN-6782-1](https://ubuntu.com/security/notices/USN-6782-1)] Thunderbird vulnerabilities (07:29) {#usn-6782-1-thunderbird-vulnerabilities--07-29}

-   6 CVEs addressed in Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10)
    -   [CVE-2024-4770](https://ubuntu.com/security/CVE-2024-4770) <!-- medium -->
    -   [CVE-2024-4367](https://ubuntu.com/security/CVE-2024-4367) <!-- medium -->
    -   [CVE-2024-4777](https://ubuntu.com/security/CVE-2024-4777) <!-- medium -->
    -   [CVE-2024-4769](https://ubuntu.com/security/CVE-2024-4769) <!-- medium -->
    -   [CVE-2024-4768](https://ubuntu.com/security/CVE-2024-4768) <!-- medium -->
    -   [CVE-2024-4767](https://ubuntu.com/security/CVE-2024-4767) <!-- medium -->
-   115.11.0
-   same PDF.js issues and others as above from Firefox


### [[USN-6781-1](https://ubuntu.com/security/notices/USN-6781-1)] Spreadsheet::ParseExcel vulnerability (07:51) {#usn-6781-1-spreadsheet-parseexcel-vulnerability--07-51}

-   1 CVEs addressed in Trusty ESM (14.04 ESM), Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS)
    -   [CVE-2023-7101](https://ubuntu.com/security/CVE-2023-7101) <!-- medium -->
-   RCE vuln via the use of `eval()` on untrusted user input - high profile,
    disclosed by Mandiant - high profile since it affected Barracuda email gateway
    devices and was publicly reported as being exploited against these by a
    Chinese APT group


### [[USN-6780-1](https://ubuntu.com/security/notices/USN-6780-1)] idna vulnerability (08:59) {#usn-6780-1-idna-vulnerability--08-59}

-   1 CVEs addressed in Xenial ESM (16.04 ESM), Bionic ESM (18.04 ESM), Focal (20.04 LTS), Jammy (22.04 LTS), Mantic (23.10), Noble (24.04 LTS)
    -   [CVE-2024-3651](https://ubuntu.com/security/CVE-2024-3651) <!-- medium -->
-   Python module for handling internationalised domain names (RFC 5895)
-   CPU-based DoS due to inefficient algorithm when encoding a domain name


## Goings on in Ubuntu Security Community {#goings-on-in-ubuntu-security-community}


### Ubuntu Security Plans for 24.10 Development Cycle (09:33) {#ubuntu-security-plans-for-24-dot-10-development-cycle--09-33}

-   Progressing the FIPS certification for 24.04 though NIST
-   Implementation of OpenVEX and OSV data formats for machine readable vulnerability information
    -   Historically have generated [OVAL](https://ubuntu.com/security/oval) data for this purpose
    -   XML-based format, existed for over 20 years
    -   more recently, OpenVEX and OSV have appeared which also serve the same
        purpose and have a more vibrant community around them
    -   Similarly, next version of the SPDX format will also support vulnerability
        descriptions too
    -   Finally, given the recent announcement that
        [CIS has
        relinquished the role in sponsoring OVAL project](https://oval-community-guidelines.readthedocs.io/en/latest/) and there doesn't appear
        to be any other sponsor on the horizon, thought it was prudent to develop a
        "second-supplier" approach given this uncertain future for OVAL upstream
    -   likely will have more to say on this in the future
-   Improvements to the process the team uses for working with the snap store and doing reviews etc
-   AppArmor profile development across the 24.10 release


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntusecurity@fosstodon.org](https://fosstodon.org/@ubuntusecurity), [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
