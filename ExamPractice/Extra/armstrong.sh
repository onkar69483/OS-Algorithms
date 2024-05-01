#!/bin/sh

echo -n "Enter number: "
read num

sum=0
store=$num

while [ $num -gt 0 ]; do
	rem=$(($num%10))
	((sum+=rem*rem*rem))
	num=$(($num/10))
done


echo $sum $prod

if [ $sum -eq $store ]
then 
	echo "Armstrong"
else
	echo "Not"
fi
