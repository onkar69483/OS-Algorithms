#!/bin/sh

echo -n "Enter num1: "
read num1
echo -n "Enter num2: "
read num2

add=`expr $num1 + $num2`
sub=`expr $num1 - $num2`
mul=`expr $num1 \* $num2`
div=`expr $num1 / $num2`

echo "Add: $add"
echo "Sub: $sub"
echo "Mul: $mul"
echo "Div: $div"
