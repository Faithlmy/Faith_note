#!/bin/bash
for ((i=1; i<4; i++))
do
	awk 'BEGIN {a=2;a=a*a;} END {print "sum is：", a}'
done
#awk 'BEGIN{print 1/3}'
