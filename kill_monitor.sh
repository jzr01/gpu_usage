#!/bin/bash

SCRIPT_NAME=getstat.py

# select input device 10 to prevent conflicting with ssh
while read -u10 NODE_NAME; do
	echo Killing previous procs on $NODE_NAME:
	ssh -T $NODE_NAME & cd ../../archive/gpu_usage/ & bash kill_single_node.sh getstat.py $NODE_NAME 
done 10< "node-list.txt"
