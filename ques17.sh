#!/bin/sh

echo "Menu!"
echo "1. ADD"
echo "2. SUBTRACT"
echo "3. MULTIPLICATION"
echo "4. DIVIDE"
echo "5. MOD"

echo " "
echo "Select option"
read option

echo "Enter num1: "
read num1
echo "Enter num2: "
read num2

if [ $option -eq 1 ]
then
    result=$(echo "scale=2; $num1 + $num2" | bc)
    echo "Add Result: $result"
elif [ $option -eq 2 ]
then
    result=$(echo "scale=2; $num1 - $num2" | bc)
    echo "Subtract Result: $result"
elif [ $option -eq 3 ]
then
    result=$(echo "scale=2; $num1 * $num2" | bc)
    echo "Multiply Result: $result"
elif [ $option -eq 4 ]
then
    result=$(echo "scale=2; $num1 / $num2" | bc)
    echo "Divide Result: $result"
elif [ $option -eq 5 ]
then
    result=$(echo "scale=2; $num1 % $num2" | bc)
    echo "Mod Result: $result"
else
    echo "Incorrect Option selected!"
fi

