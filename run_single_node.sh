#!/bin/bash

SCRIPT_NAME=getstat.py
MACHINE_NAME=$1
OUT_DIR=$2


python getstat.py $MACHINE_NAME $OUT_DIR > "monitor-$MACHINE_NAME.log" 2>&1 &
echo "Started script on $MACHINE_NAME"
