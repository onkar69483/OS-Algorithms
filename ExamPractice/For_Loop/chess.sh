#!/bin/sh

for (( i=0; i<8; i++ ))
do
	for (( j=0; j<8;  j++ ))
	do
		if [ $(($(($i+$j))%2)) -eq 0 ]
		then
			echo -ne " \033[47m "
		else
			echo -ne " \033[40m "
		fi
	done
	echo -e " \033[0m "
done
