#‘!/bin/bash
# 不用函数，用命令直接遍历文件
#echo "Enter a path: "
#read path
#cd $path
#for i in ` ls -a`
#for i in ./*
#do
#	echo $i
#done

# 递归遍历指定路径下的文件
function getdir() {
	for element in `ls $1`
	do
		dir_or_file=$1"/"$element
		if [ -d $dir_or_file ]
		then
			getdir $dir_or_file
		else
			echo $dir_or_file
		fi
	done
}
#echo "Enter a path: "
#read dir
#dir="/home/faith/FaithMove/zm/Faith_note"
#getdir $1

#
