#!/bin/bash

for name in ./*.tar.gz; do
    liuid=$(sed -e 's/.\/tdde23-la._\(\w*\)\.tar\.gz/\1/g' <<< "$name")

    echo "$name -> $liuid"
    mkdir "$liuid" -p
    tar xvf "$name" -C "$liuid"
    mv "$name" "$liuid"
done
