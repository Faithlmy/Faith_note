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

echo "--------嵌套if--------------------"

