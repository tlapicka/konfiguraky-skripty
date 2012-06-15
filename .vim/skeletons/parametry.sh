#!/bin/bash
# File:    skeletonVIM_FILE_NAME
# Date:    skeletonVIM_CREATION_CZDATETIME
# Author:  Marek Nožka, marek <@t> tlapicka <d.t> net
# Licence: GNU/GPL 
# Task: 
# Description:
#
######################################################################
#                         Proměnné                                   #
######################################################################

var=""
######################################################################
#                          FUNKCE                                    #
######################################################################

##.................................................................###
# funkce vytiskne help
printHelp() {
cat <<EOF
Skript $0
slouží pro jednoduchou kompilaci zdrojového kódu.

EOF
}

##.................................................................###
#   funkce udělá TO a ONO
TOaONO() {  
    return 0
}

######################################################################
#                         Tělo skriptu. 
######################################################################
#
##.................................................................###
#        zpracování přepínačů příkazového řádku

# pokud je zadán parametr -h nebo --help vytiskne help s končí
for param in $@; do
    if [ $param == "-h" ] || [ $param == "--help" ]; then
        printHelp
        exit 0;
    fi
done

# zpracuje parametry příkazového řádku
args=$(getopt --name $(basename $0) -o ab:c -- "$@") || exit 1
# zpracované parametry předá zpět do $@ a $*
eval set -- $args
# projde a posune parametry
while true; do
    i=$1
    case $i in 
        -a)
            shift
            ;;
        -b)
            shift
            echo "volba -b je \"$1\""
            shift
            ;;
        -c)
            shift
            ;;
        --)
            shift
            break ; # tohle byl poslední...
            ;;
    esac
done

#        zpracování parametrů příkazového řádku
##.................................................................###
#      Zpracování ne-přepínačových parametrů
for i in "$@"; do
    echo $i
done
#      Zpracování ne-přepínačových parametrů
##.................................................................###
