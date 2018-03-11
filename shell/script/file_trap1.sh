#!/bin/bash
# testing signal trapping

trap "echo 'trapped ctrl+c'" SIGINT
echo "this is a test script"
count=1
while [ $count -le 10 ]
do
	echo "loop #$count"
	sleep 1
	count=$[ $count + 1 ]
done
echo "end of signal script"
