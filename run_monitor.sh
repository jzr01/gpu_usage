#!/bin/bash


# select input device 10 to prevent conflicting with ssh
while read -u10 NODE_NAME; do
	echo Starting monitoring111 on $NODE_NAME:
	ssh $NODE_NAME bash "../../archive/gpu_usage/run_single_node.sh" $NODE_NAME "../../archive/gpu_usage/nodestats/"
	echo "Started monitoring on $NODE_NAME"
done 10< "node-list.txt"