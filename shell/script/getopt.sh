#!/bin/bash
set -- $(getopt -q ab:cd "$@")
echo
while [ -n "$1" ]
do
	case "$1" in
	-a) echo "-a option";;
	-b) param="$2"
		echo "-b option, and param is "$param
		shift;;
	-c) echo "-c option";;
	--) shift
		break;;
	 *) echo "$1 is not option";;
	esac
	shift
done
#
count=1
for param in "$@"
do
	echo "param #$count is "$param
	count=$[ $count + 1 ]
done
#
