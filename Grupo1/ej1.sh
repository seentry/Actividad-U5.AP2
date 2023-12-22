#!/bin/bash

while read nombre; do
    mkdir $nombre
    x=1;

    while [ $x -le $1 ]; do
        mkdir "$nombre/persona$x"
        x=$((x+1))
    done
done < nombres.txt