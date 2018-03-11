#!/bin/bash
# modifying a set trap
#
trap "echo 'ctrl+c is a trap'" SIGINT
#
count=1
while [ $count -le 5 ]
do
	echo "Loop #$count"
	sleep 1
	count=$[ $count + 1 ]
done
#
#trap "echo 'modify trap'" SIGINT
trap - SIGINT
echo "remove the trap."
#
count=1
while [ $count -le 5 ]
do
	echo "second Loop #$count"
	sleep 1
	count=$[ $count + 1 ]
done
