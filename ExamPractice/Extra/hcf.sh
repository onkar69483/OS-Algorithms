#!/bin/sh

echo -n "Enter 2 numbers: "
read num1 num2

x=$num1
y=$num2

while [ $y -ne 0 ]; do
	temp=$y
	y=$(($x % $y))
	x=$temp
done

hcf=$x

lcm=$(($num1*$num2/$hcf))

echo "hcf: $hcf"
echo "lcm: $lcm"
