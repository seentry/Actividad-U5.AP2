#!/bin/bash

procLinux=0
procWindows=0

while read linea; 
do
    so=$(echo $linea | awk '{print $2}')
    proc=$(echo $linea | awk '{print $3}')

    if [ $so = "Linux" ];
then
    contLinux=$((contLinux+1))
    procLinux=$((procLinux+proc))
else
    contWindows=$((contWindows+1))
    procWindows=$((procWindows+proc))
fi

done < listado.txt
echo "Linux -> $contLinux $procLinux"
echo "Windows -> $contWindows $procWindows"