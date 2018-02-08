#!/bin/zsh
# Soubor:  autoclone.zsh
# Datum:   19.10.2017 14:55
# Autor:   Marek Nožka, marek <@T> tlapicka <dot> net
# Licence: GNU/GPL 
# Úloha:   naklonuje repositář a přepne se do něj
#          klonuje repositář uložený v clickbordu
############################################################


if ! command xsel >/dev/null; then
    echo něco mi chybí
    echo apt install xsel xclip
    exit(1)
fi

if [ $1 ]; then
    DST=$1
else
    DST=$(xsel)
fi
ADR=$(basename $DST .git)

git clone $DST

if [[ $0 =~ 'autoclone.zsh' ]]; then
    cd $ADR
else
    xsel -i <<<"cd $ADR"
fi