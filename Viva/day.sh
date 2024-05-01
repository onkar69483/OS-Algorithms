#!/bin/sh

i=1
for day in Mon Tue Wed Thu Fri Sat Sun
do
	if [ "$day" = "Sun" ]
	then 
		wage=550
		echo "Day: $i weekend, wage: $wage"
	else 
		wage=350
		echo "Day: $i weekday, wage: $wage"
	fi
	i=$((i+1))
done
