#!/bin/bash
# -*- coding: utf8 


if [ $# = 0 ]                                       
then
    echo "..Aucune cible spécifié. ."
elif [ $1 = -h ]
then
    echo " Utilisation de nmap chainé avec un proxy "
    exit
else
    echo "******* Caglio-Script ********"
    echo "      nmap/proxychains        "

    proxychains nmap -sT -PN -n -sV $1
fi
