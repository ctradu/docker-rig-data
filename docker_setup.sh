#!/bin/bash

if [ $# -lt 1 ]
then
    echo "Usage : $0 run | build"
    exit
fi

HOST_DIR=~/data/apcmetrics

case $1 in
    "run")
        docker run --name apcmetrics -i ctradu/apcmetrics ;;

    "build")
        docker build -t ctradu/apcmetrics . ;;

    *)
        echo "Unknown option";
        echo "Accepted options: run | build";
        exit
esac
