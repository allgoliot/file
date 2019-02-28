#!/bin/sh

echo "(a+b)*(c+d)=e"
a=1
b=9
c=5
d=3
e=0
echo "a=$a" 
echo "b=$b"
echo "c=$c"
echo "d=$d\n"
e=$(($a+$b))

echo $e
#let "tmp=c+d"
#let "e=e * tmp"
#echo $e
