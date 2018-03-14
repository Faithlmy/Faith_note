#!/bin/bash
# Determine the input character

read -p "Enter a number or string: " input
case $input in
	[0-9]) echo "numberic";;
	[a-zA-Z]) echo "string";;
	*) echo "your input error,please input again.";;
esac
