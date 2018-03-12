#!/bin/bash
#echo $1
#name=$(basename $0)
#echo $name

#echo "----$*和 $@ ------"
#for param in "$*"
#do
#	echo "param is "$param
#done

#for param in "$@"
#do
#	echo "param is "$param
#done

# 变量的移动
#count=1
#while [ -n "$1" ]
#do
#	echo "pama is "$2
#	count=$[ $count + 1 ]
#	shift
#done

# case查找选项
#echo
#while [ -n "$1" ]
#do
#	case "$1" in
#	-a) echo "-a option";;
#	-b) echo "-b option";;
#	-c) echo "-c option";;
#	 *) echo "$1 is not option";;
#	esac
#	shift
#done


# 分离参数和选项(1)
#echo
#while [ -n "$1" ]
#do
#	case "$1" in
#	-a) echo "-a option";;
#	-b) echo "-b option";;
#	-c) echo "-c oprion";;
#	--) shift # 遇到--将会结束while, 进行下一个for循环
#		break;;
#	 *) echo "$1 is not an option";;
#	esac
#	shift
#done
#count=1
#for param in "$@"
#do
#	echo "param #$count: "$param
#	count=$[ $count + 1 ]
#done

# 分离参数和选项(2)
# 将bo -d -a -b hello  -c -- faith meng参数分离
echo
while [ -n "$1" ]
do
	case "$1" in
	-a) echo "-a option";;
	-d) param="$2"
		echo "param is "$param
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
	echo "param #$count: "$param
	count=$[ $count + 1 ]
done
