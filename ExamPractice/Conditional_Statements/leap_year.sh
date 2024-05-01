#!/bin/sh

echo -n "Enter year: "
read year

if [ $((year%4)) -eq 0 ]
then
	if [ $((year%100)) -eq 0 ]
	then
		if [ $((year%400)) -eq 0 ]
		then
			echo "Leap Year"
		else	
			echo "Common Year"
		fi
	else
		echo "Leap Year"
	fi
else
	echo "Common Year"
fi
