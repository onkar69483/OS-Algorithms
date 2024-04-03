#!/bin/sh

BLACK="\e[40m"
WHITE="\e[47m"
RESET="\e[0m"

for ((i=1;i<=8;i++))
do
	for ((j=1;j<=8;j++))
	do
	if (( (i + j) % 2 == 0 ))
	then
            printf "${BLACK}   ${RESET}" # Black square
        else
            printf "${WHITE}   ${RESET}" # White square
        fi
    	done
    	printf "\n" # Move to the next row
done
