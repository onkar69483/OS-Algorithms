#!/bin/sh

i=1
n=5

while [ $i -le $n ]
do
	j=1
	while [ $j -le $i ]
	do
		echo -n "$i"
		j=$((j+1))
	done
	echo ""
	i=$((i+1))
done
i=$(($n-1))
while [ $i -gt 0 ]
do
	j=$i
	while [ $j -gt 0 ]
	do
		echo -n "$i"
		j=$((j-1))
	done
	echo ""
	i=$((i-1))
done
