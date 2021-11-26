#!/bin/bash

if [ "$1" = "--uninstall" ]; then
    ( cd $(dirname $(readlink /usr/local/bin/vsr)) && . ./uninstall.sh )
elif [[ "$1" == "-"* ]]; then
    echo "Unknown argument"
    echo ''
elif [ -z "$1" ]; then
    echo "Missing argument"
    echo ''
else
    cd $1
fi
