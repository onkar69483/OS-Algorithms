#!/bin/sh

echo -n "Enter number of rows : "
read n


# upper
init=1
while [ $init -lt $((n+1)) ]; do
	
	temp=$init
	
	while [ $temp -gt 0 ]; do
		echo -n "$init"
		temp=$((temp-1))
	done
	echo ""
	init=$((init+1))
done  


# lower
init=$((n-1))

while [ $init -gt 0 ]; do

	temp=$init
	
	while [ $temp -gt 0 ]; do
		echo -n "$init"
		temp=$((temp-1))
	done
	echo ""
	init=$((init-1))
done

