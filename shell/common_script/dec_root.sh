#!/bin/bash
# 判断路径下是否存在文件
echo "Enter a path: "
read path
echo "Enter a file name: "
read name
if test -e /$path/$name
then
	echo "file is exit."
else
	echo "file is not exit."
fi
