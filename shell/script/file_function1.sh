#!/bin/bash
# using a function in script
#
function fun1 {
	echo "first"
}
#
function fun1 {
	echo "second"
}
#
count=1
while [ $count -le 5 ]
do
	fun1
	fun2
	count=$[ $count + 1 ]
done
echo "the exit status is: $?"
#
#echo "vic"
#fun1
#echo "the end of script"
