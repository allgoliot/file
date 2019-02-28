#!/bin/bash
if [ $# == 0 ];then
	echo "Usage : $0 parametre1"
else

	x=3,y=5
	Z=`expr$x+4`
	echo $z

	Z=`expr \( $z + $x \) \* $y`
	echo $z

	q=abcdef
	g=`expr`
	
	
fi
