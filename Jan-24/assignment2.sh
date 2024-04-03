#!/bin/sh
echo "Lets perform some Arithmetic calculations!"
echo "Enter value a: "
read a
echo "Enter value b: "
read b
add=$(expr $a + $b)
sub=$(expr $a - $b)
prod=$(expr $a \* $b) 
div=$(expr $a / $b)
echo "Add: $add"
echo "Sub: $sub"
echo "Prod: $prod"
echo "Div: $div"
echo "Calculate Area and Perimeter of Circle"
echo "Enter radius: "
read radius
pi=3
area=$(expr $pi \* $radius \* $radius)
perimeter=$(expr 2 \* $pi \* $radius)
echo "Area: $area"
echo "Perimeter: $perimeter"
echo "Calculate emoployees salary"
echo "Enter basic salary: "
read bs
da=$(expr $(expr $bs \* 165) / 10000)
hra=$(expr $(expr $bs \* 3) / 1000)
gs=$(expr $da + $hra + $bs)
echo "da: $da"
echo "hra: $hra"
echo "gross salary: $gs"
echo "Calculate Mean Salary"
sum=$(expr 1200 + 1400 + 1350 + 1800)
mean=$(expr $sum / 4)
echo "Mean: $mean"
