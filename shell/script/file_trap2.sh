#!/bin/bash
# Trapping the script exit.

trap "echo 'Bye'" EXIT
#
count=1
while [ $count -le 5 ]
do
	echo "loop #$count"
	sleep 1
	count=$[ $count + 1 ]
done
