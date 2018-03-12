#!/bin/bash
if read -t 5 -p "please enter your name:" name
then
	echo "$name,script"
else
	echo
	echo "timeout"
fi
