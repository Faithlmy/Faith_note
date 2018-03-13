#!/bin/bash
# trying to pass an array variable
#
function fun {
	echo "The param are: $@"
	thisarray=$1
	echo "The received array is ${thisarray[*]}"
}
#
myarray=(1 2 3 4 5)
echo "The origin array is: " ${myarray[*]}
fun $myarray
