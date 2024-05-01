#!/bin/bash

echo -n "Enter first number: "
read num1

echo -n "Enter second number: "
read num2

x=$num1
y=$num2

# Calculate HCF
while [ $y -ne 0 ]; do
    temp=$y
    y=$(($x % $y))
    x=$temp
done

hcf=$x

# Calculate LCM
lcm=$(( $num1 * $num2 / $hcf ))

echo "HCF of $num1 and $num2 is $hcf"
echo "LCM of $num1 and $num2 is $lcm"

