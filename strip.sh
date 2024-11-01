#!/bin/sh
function run() {
    for element in $(ls $1); do
        file=$1"/"$element
        echo $file
        if [ -d $file ]; then
            run $file
        else
            strip $file
        fi
    done
}
run .
