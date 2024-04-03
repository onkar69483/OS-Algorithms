#!/bin/sh
echo "Hello Guys! Welcome to my Youtube Channel"
echo "What is your name?"
read name
echo "Like and Subscribe to my channel: $name"
echo " "
echo "Lets perform some calculations!"
echo "Enter value a: "
read a
echo "Enter value b: "
read b
add=$(expr $a + $b)
sub=$(expr $a - $b)
prod=$(expr $a \* $b) 
div=$(expr $a / $b)
exp=$(echo "scale=2; $a^$b" | bc)
mdiv=$(expr $a % $b)
inc=$(expr $a + 5)   
dec=$(expr $a - 5)    
echo "Add: $add"
echo "Sub: $sub"
echo "Prod: $prod"
echo "Div: $div"
echo "Exp: $exp"
echo "Modular Division: $mdiv"
echo "Incrementing: $inc"
echo "Decrementing: $dec"
