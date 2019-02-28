#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : $0 rep"
	echo "Gives 10 bigger file de rep"
else
	find $1 -type f -exec du -s {} \; | sort -n | tail -n 10
fi
