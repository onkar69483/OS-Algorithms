#!/bin/sh

echo -n "Enter Num1: "
read num1
echo -n "Enter Num2: "
read num2

sum=$((num1+num2))
difference=$((num1-num2))
product=$((num1*num2))
quotient=$(echo "scale=2; $num1 / $num2" | bc)

echo "$sum"
echo "$difference"
echo "$product"
echo "$quotient"
