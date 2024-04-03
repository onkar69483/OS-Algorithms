#!/bin/sh

echo "Shell script to print whether the number entered by the user is even or odd"

echo "Enter Number: "
read num

if [ $(($num % 2)) -eq 0 ]
then
 	echo "$num is a even number"
else
	echo "$num is a odd number"
fi
