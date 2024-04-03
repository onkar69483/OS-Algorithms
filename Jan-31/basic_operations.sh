#!/bin/sh

echo "Let's perform some Arithmetic calculations!"
echo "Enter value a: "
read a
echo "Enter value b: "
read b

add=$(echo "$a + $b" | bc)
sub=$(echo "$a - $b" | bc)
prod=$(echo "$a * $b" | bc)
div=$(echo "scale=2; $a / $b" | bc)

echo "Add: $add"
echo "Sub: $sub"
echo "Prod: $prod"
echo "Div: $div"