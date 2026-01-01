#!/bin/bash

# Check the number argument
if [ $# -ne 2 ];then
	echo "The number of arguments is not matched, it should be 2"
	exit 1
fi

# Check the first argument is the path to directory
if [ ! -d $1 ];then
	echo "$1 is not the path to directory"
	exit 1
fi
# Calculate the total of files in directory
X=$(find $1 -type f | wc -l)

# Calculate the total of matched lines
Y=$(grep -r $2 $1 | wc -l)
echo "The number of files are $X and the number of matching lines are $Y"
