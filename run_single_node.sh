#!/bin/bash

SCRIPT_NAME=getstat.py
MACHINE_NAME=$1
OUT_DIR=$2

THIS_FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null && pwd )"

echo $THIS_FILE_DIR

nohup python "$THIS_FILE_DIR/$SCRIPT_NAME" $MACHINE_NAME $OUT_DIR > "$THIS_FILE_DIR/monitor-$MACHINE_NAME.log" 2>&1 &
echo "Started script on $MACHINE_NAME"
