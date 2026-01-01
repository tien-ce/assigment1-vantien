#!/bin/bash

if [ $# -ne 2 ];then
	echo "Invalid argument, the number of arguments should be 2"
	exit 1
fi

# Read path to directory from path to file
dir_path=$(dirname $1)

#If is not existing, create the path to directory
if [ ! -d $dir_path ];then
	mkdir -p $dir_path
fi

# Using > to redirect + overwriting (if file existing)
echo $2 > $1
	
