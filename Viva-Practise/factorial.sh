#!/bin/sh

echo -n "Enter Number: "
read num

f=1

for ((i=1;i<=num;i++))
do
	for ((j=1;j<=i;j++))
	do
		echo -n "*"	
	done
	echo ""
done

for ((i=num-1;i>=1;i--))
do
	for ((j=i;j>=1;j--))
	do
		echo -n "*"	
	done
	echo ""
done
echo "Factorial of $num: $f"
