#!/bin/sh

echo -n "Enter value: "
read n

for (( i=0; i<n; i++ ))
do
	for (( j=0; j<=i; j++ ))
	do
		echo -n "*"
	done
	echo ""
done

for (( i=n; i>=0; i-- ))
do
	for (( j=i; j>=0; j-- ))
	do
		echo -n "*"
	done
	echo ""
done
