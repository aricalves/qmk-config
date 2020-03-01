#!/bin/bash

START_PATH=$(pwd)
CONFIG=$1

if [ ! -f "$CONFIG" ] ;
  then
    echo "missing valid file path. ex:"
    echo "  ./loadfile.sh configs/alt-default"
    echo "no changes, exiting"

    exit 1
fi

./bin/mdloader_mac \
  --first \
  --restart \
  --download ../configs/$CONFIG

exit 0

