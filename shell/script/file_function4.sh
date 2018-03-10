#!/bin/bash
#
function fun1 {
	temp=$[ $value + 5 ]
	res=$[ $temp * 2 ]
}
temp=4
res=6
fun1
echo "res is $res"
if [ $temp -gt $value ]
then
	echo "temp is larger"
else
	echo "temp is smaller"	
fi
