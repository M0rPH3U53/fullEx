#!/bin/bash

if [[ "$1" == "-help" ]]; then
    echo "Commande dispo:"
    echo "  -PwnKit64/32   : Exploite PwnKit en architecture 64/32"
    echo "  -DirtyCow      : Exploite DirtyCow"
    echo "  -DirtyPipe     : Exploite DirtyPipe"
    echo "  -Chwoot        : Exploite Sudo Chroot"
    echo "  -SudoHost      : Exploite Sudo Hostname "
    echo "  -Baron         : Exploite sudo_Baron"
    ehco "  -check         : Verifie si gcc est installer"
    exit 0
fi
