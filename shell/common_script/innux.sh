#!/bin/bash
# 模拟terminal登录
echo -n "login: "
read name
echo -n "password: "
read password
if [ $name = "cht" -a $password = "abc" ]
then
	echo "right."
else
	echo "error."
fi
