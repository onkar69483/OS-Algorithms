#!/bin/sh

i=1

for day in mon tue wed thu fri sat sun
do
	if [ "$day" == "sun" ]
	then
		wage=550
		echo "Day $i weekend, Wage: $wage"
	else
		wage=350
		echo "Day $i weekday, Wage: $wage"
	fi
	i=$((i+1))
done
