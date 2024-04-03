#!/bin/bash

# Define colors
BLACK="\e[40m"
WHITE="\e[47m"
RESET="\e[0m"

# Loop through rows
for ((row = 1; row <= 8; row++)); do
    # Loop through columns
    for ((col = 1; col <= 8; col++)); do
        # Calculate whether to print black or white square based on row and column position
        if (( (row + col) % 2 == 0 )); then
            printf "${BLACK}   ${RESET}" # Black square
        else
            printf "${WHITE}   ${RESET}" # White square
        fi
    done
    printf "\n" # Move to the next row
done
