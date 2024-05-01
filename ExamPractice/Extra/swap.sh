#!/bin/sh

echo "Enter num1: "
read num1
echo "Enter num2: "
read num2

#swapping
temp=$num1
num1=$num2
num2=$temp

echo "Num1: $num1"
echo "Num2: $num2"
