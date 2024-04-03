#!/bin/sh
echo "Enter num1: "
read num1
echo "Enter num2: "
read num2

# add=$(expr $num1 + $num2)
# sub=$(expr $num1 - $num2)
# prod=$(expr $num1 \* $num2)
# div=$(expr $num1 / $num2)


add=$(echo "$num1 + $num2" | bc)
sub=$(echo "$num1 - $num2" | bc)
prod=$(echo "$num1 * $num2" | bc)
div=$(echo "scale=2; $num1 / $num2" | bc)

echo "Addition: $add"
echo "Subtraction: $sub"
echo "Multiplication: $prod"
echo "Division: $div"
