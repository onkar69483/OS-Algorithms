#!/bin/sh

echo -n "Enter number: "
read num
store=$num
newnum=0
while [ $num -gt 0 ]; do
	rem=`echo "$num % 10" | bc`
	num=`echo "$num / 10" | bc`
	newnum=$((newnum*10+rem))
done

echo $store $newnum

if [ $newnum = $store ]
then
	echo "palindrome"
else 
	echo "not"
fi
