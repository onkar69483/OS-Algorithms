#!/bin/sh

echo -n "Enter number: "
read num

str=$num
rev=0

while [ $num -gt 0 ]; do
	rem=$(($num%10))
	rev=$(($rev*10 + $rem))
	num=$(($num/10))
done

echo $rev
if [ $str -eq $rev ]
then 
	echo "Palindrome"
else
	echo "Not"
fi
