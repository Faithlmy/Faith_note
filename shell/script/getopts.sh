#!/bin/bash
echo
while getopts :ab:c opt
do
	case "$opt" in
	a) echo "-a option";;
	b) echo "-b option" ;;
	c) echo "-c option";;
	*) echo "unkonwn option $opt";;
	esac
done
