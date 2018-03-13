#!/bin/bash
# returning an array value

function fun {
	local originarray
	local newarray
	local element
	local i

	originarray=($(echo "$@"))
	newarray=($(echo "$@"))
	element=$[ $# - 1 ]
	for (( i=0; i<=$element; i++))
	{
		newarray[$i]=$[ ${originarray[$i]} * 2 ]
	}
	echo ${newarray[*]}
}

myarray=(1 2 3 4 5)
echo "The origin array is: " ${myarray[*]}
arg1=$(echo ${myarray[*]})
res=($(fun $arg1))
echo "new array is: "${res[*]}
