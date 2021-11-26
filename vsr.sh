#!/bin/bash

if [ "$1" = "--uninstall" ]; then
    echo "Perform uninstall"
elif [[ "$1" == "-"* ]]; then
    echo "Unknown argument"
elif [ -z "$1" ]; then
    echo "No argument"
else
    cd $1
fi
