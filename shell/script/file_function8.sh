#!/bin/bash
#using recursion
function fun {
	if [ $1 -eq 1 ]
	then
		echo 1
	else
		local temp=$[ $1 - 1 ]
		local res=$(fun $temp)
		echo $[ $res * $1 ]
	fi
}
#
read -p "Enter value: " value
res=$(fun $value)
echo "the origin of $value is : $res"
