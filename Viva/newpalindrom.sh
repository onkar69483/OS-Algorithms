#!/bin/sh

read num
newnum=0
store=$num

while [ $num -gt 0 ]; do
	rem=`echo "$num % 10" | bc`
	num=`echo "$num / 10" | bc`
	newnum=$((newnum*10+rem))
done	

echo $store $newnum

if [ $newnum -eq $store ]
then
	echo "palindrom"
else
	echo "not"
fi

