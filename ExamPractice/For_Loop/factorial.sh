#!/bin/sh

echo -n "Enter number: "
read num

fact=1

if [ $num -eq 0 ]
then
	echo "Factorial: $fact"
	exit
elif [ $num -le 0 ]
then
	echo "Factorial DNE!"
	exit
else
	for (( i=1; i<=$num; i++ ))
	do
		fact=$((fact*i))
	done
fi 

echo "Factorial: $fact"

