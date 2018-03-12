#!/bin/bash
data
who
echo UID:$UID
echo HOME:$HOME

#变量
echo "---------------------res-变量-----------------------------"
day=10
meng=pp
gest="faith"
my='kit'
echo "this is $day and $gest or $my , in  $meng"

#命令替换
echo "------------------res-命令替换---------------------------------------------"
#(命令替换会创建一个subshell来对应命令, 故该subshell是无法使用shell中的变量)
#(在命令行提示符下使用路径./运行命令的话，也会创建出子shell, 不加路径的话就不会创建subshell, 使用内建命令的话就不会设计subshell)
#两种方式
#1. 反引号
#2. $()
t=`date`
echo "The date is "$t
p=$(pwd)
echo "pwd is " $p

#运算(bash shell只支持整数运算，zhell支持浮点运算)
echo "--------------------------res-运算--------------------------------------"
value1=10
value2=20
value3=$(expr $value1 + $value2)
value4=$(expr $value1 \* $value2)
#value5=$(expr $value1 * $value2) #必须加转义，但是[]不用加
echo "add is "$value3 ", and plus is "$value4 ", and value5 is "$value5
# 使用[]
val1=$[1+5]
val2=$[$val1*5]
echo "val1 is "$val1 ", and val2 is "$val2

# 用bc var=$(echo "option; expression" | bc)
var_bc=$(echo "scale=2; 8 / 2" | bc)
echo "answer is:" $var_bc

# if 语句
# if后面的退出状态码为0的话，将执行then的内容
echo "-------------if 语句-----------------"
if cd ..
then
	ls -al
fi

echo "-------if then  else语句-------------"
if cd ../..
then
	echo "then"
else
	echo "else"
fi

echo "--------嵌套if(1)--------------------"
if cd meng
then
	echo "meng"
else
	echo "yao"
	if pwd
	then
		echo "inset if"
	fi
fi

echo "-------嵌套if(2)----------------------"
# 如果第一个if满足，elif将不会被执行
if cd /
then
	echo "meng"
elif cd ..
then
	echo "elif"
fi

echo "--------test测试------------------"
a=1
if test $a
then
	echo "Ture"
else
	echo "False"
fi

echo "---------test判断三类条件---------"
#--数值比较--
# n1 -eq n2  n1与n2是否相等
# n1 -ge n2  大于或等于
# n1 -gt n2  大于
# n1 -le n2  小于或者等于
# n1 -lt n2  等于
# n1 -ne n2 不等于
if [ $a -eq 1 ]
then
	echo "yes"
else
	echo "no"
fi

#--字符串比较--
# s1 = s2
# s1 != s2
# s1 > s2
# s1 < s2
# n str1
# z str1
v1=book
v2=boot
# 字符串的相等性
if [ $v1 = $v2 ] #字符串的标点和大小都会考虑在内
then
	echo "yes"
else
	echo "no"
fi
# 字符串的顺序
if [ $v1 \< $v2 ] # 大于小于号必须转义，否则符号将会被看做重定向，字符串当做文件名。sort处理大写字母方法和test相反
then
	echo "yes"
else
	echo "no"
fi
# 字符串的大小
# 空的和未初始化的变量会对脚本产生严重的影响，故在数值或者字符串比较之前用-z 和 -n测试一下
if [ -n $v1 ]
then
	echo "yes"
else
	echo "no"
fi

if [ -z $v1 ]
then
	echo "yes"
else
	echo "no"
fi

# --文件比较--
# -d file           file是否存在并是一个目录
# -e file           file是否存在
# -f file			file是否存在并是一个文件
# -r file			file是否存在并是可读
# -s file  			file存在并非空
# -w file			file是否存在并可写
# -x file			file是否存在并执行
# -o file			file是否存在并属于当前用户所有
# -G file			file是否存在并默认组与当前用户相同
# file1 -nl file2   file1是否比file2新
# file1 -ol file2   file1是否比file2旧

dir=/home/faith
if [ -d $dir ]
then
	echo "/home/faith"
else
	echo "no path"
fi

#  -------if  then的高级应用-------
echo "-----------if then 的高级应用---------"
vv=10
kk=$vv
if (( $vv ** 2 > 90))
then
	echo "vv**2 is "$kk
else
	echo "0"
fi


# -------for--------
echo "-------for语句---------------"

for i in a b c d
do
	echo "this is "$i
done

echo "-- 用单引号或者反斜杠来定义单引号的值--"

for i in I don\'t know if "this'll" work
do
	echo $i
done

echo "----读取列表中的值----"
list="a b c d"
list=$list" faith"
for i in list
do
	echo $list
done

echo "---从命令中读取文件：值-------"
m="/home/faith/FaithMove/everyday/Faith_note/shell/for_file.txt"
for i in $(cat $m)
do
	echo "this is $i "
done

echo "-------遍历目录--------"
for i in /home/faith/*
do
	if [ -d "$i" ]
	then
		echo "$i is a dir"
	elif [ -f "$i" ]
	then
		echo "$i is file"
	fi
done
echo "---c语言风格的for循环----"
for ((i=1; i<10; i++))
do
	echo "this is "$i
done

echo "---多变量-----"
for ((a=1,b=10;a <= 10, b >5; a++,b--))
do
	echo "$a - $b"
done


echo "----while---"
val=10
while [ $val -gt 0 ]
do
	echo $val
	val=$[ $val - 1 ]
done

echo "----循环嵌套---"
for ((a=1;a < 4; a++))
do
	echo "outloop "$a
	for ((b=1; b < 3; b++))
	do
		echo "   inloop "$b
	done
done


echo "---break的使用----"
# 跳出单个循环
vax="1 2 3 4 5 6 7"
for v in $vax
do
	if [ $v -eq 4 ]
	then
		break
	fi
	echo "$v"
done

# 跳出内循环
for ((a=1; a < 3; a++))
do
	echo "outer loop"$a
	for ((b=9; b > 5; b--))
	do
		if [ $b -eq 7 ]
		then
			break
		fi
		echo "  inner loop"$b
	done
done

echo "---continue的使用(跳过此循环中的剩余命令)----"
for ((val=1; val < 10; val++))
do
	if [ $val -ge 4 ] && [ $val -le 8 ]
	then
		continue
	fi
	echo $val
done

# continue 指定层级
for (( a=1; a < 5; a++ ))
do
	echo "the a is "$a
	for (( b=1; b < 8; b++ ))
	do
		if [ $b -ge 3 ] && [ $b -le 5 ]
		then
			continue 2
		fi
		echo "  this is b "$b
	done
done

echo "-----循环输出重定向-----"
p="/home/faith/FaithMove/everyday/Faith_note/shell"
for i in 1 2 3 4 if 5
do
	echo "this is "$i
done > $p/outfor.txt

# 处理用户输入
echo "----处理用户输入---"

