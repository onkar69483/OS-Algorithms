#!/bin/sh

echo -n "Enter 3 numbers: "
read num1 num2 num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
	echo "$num1 is largest!"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
	echo "$num2 is largest!"
else
	echo "$num3 is largest!"
fi
