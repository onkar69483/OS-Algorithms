#!/bin/sh

for (( i=1; i<=8; i++ ))
do
	for (( j=1; j<=8; j++ ))
	do
		if [ $(((i+j) % 2 )) -eq 0 ]
		then
			echo -e -n " \033[47m "
		else
			echo -e -n " \033[40m "
		fi
		done
	echo -e " \033[0m "
done
