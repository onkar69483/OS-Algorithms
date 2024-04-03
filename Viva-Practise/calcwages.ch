#!/bin/sh

i=1
for day in Mon Tue Wed Thu Fri Sat Sun
do
	if [ "$day" = "Sun" ]
	then
		wage=550
		week="weekend"
	else
		wage=350
		week="weekday"
	fi
	
	echo "Day $i: $day ($week), wage: $wage"
	i=$((i+1))
done
