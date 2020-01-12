#!/bin/bash
dir=$1
if [ -d ../passed/$dir ]; then
    echo -n "Directory '../passed/$dir' exists"
    if [ -d $dir ]; then
        echo "... moving files."
        mv $1/* ../passed/$1
        rm -r $1
    else
        echo "... but nothing to move."
    fi
else
    echo -n "Directory does not exist in 'passed'"
    if [ -d $dir ]; then
        echo "... moving whole directory."
        mv $1 ../passed/
    else
        echo "... but nothing to move."
    fi
fi
