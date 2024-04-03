#!/bin/sh

echo "Shell script to print the largest of three numbers"

echo "Enter Number 1: "
read num1

echo "Enter Number 2: "
read num2

echo "Enter Number 3: "
read num3

if [ $num1 -ge $num2 ] && [ $num1 -ge $num3 ]
then
	echo "$num1 is largest"
elif [ $num2 -ge $num1  ] && [ $num2 -ge $num3 ]
then
	echo "$num2 is largest"
else
	echo "$num3 is largest"
fi
