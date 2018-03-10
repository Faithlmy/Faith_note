#!/bin/bash
# using the return command in a function
#
function fun1 {
	read -p "Enter a value: " value
	echo "doubling the value"
	return $[ $value * 2 ]
}
fun1
echo "The new value is $?;"
