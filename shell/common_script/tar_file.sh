#!/bin/bash
#
TARGET="allfile.tar.gz"
SRC="*.sh *.txt"
ORIGIN_PATH=$1
TARGET_PATH=$2
echo $ORIGIN_PATH
if [ -f $TARGET_PATH"/"$TARGET ]
then
	rm $TARGET_PATH"/"$TARGET
	echo "delete old file"
fi
tar -zcvf  $TARGET_PATH"/"$TARGET $ORIGIN_PATH
if [ $? -eq 0 ]
then
	echo "create new tar.gz file"
else
	echo "create tar.gz file failed"
fi
