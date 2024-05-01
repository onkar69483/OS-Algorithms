#!/bin/sh

echo -n "Enter number: "
read num

for (( i=2; i<$num; i++ ))
do
	if [ $((num%i)) -eq 0 ]
	then
		echo "Not Prime"
		exit
	fi
done

echo "Prime"
