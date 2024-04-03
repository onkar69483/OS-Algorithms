#!/bin/sh

echo "Enter num1"
read num1

echo "Enter num2"
read num2

echo "Enter num3"
read num3

if [ $num1 -ge $num2 ] && [ $num1 -ge $num2 ]
then
    echo "$num1 is largest"
elif [ $num2 -ge $num1 ] && [ $num2 -ge $num3 ]
then
    echo "$num2 is largest"
else
    echo "$num3 is largest"
fi