#!/bin/bash

# Print upper half of the diamond
n=5
i=1
while [ $i -le $n ]; do
    # Print leading spaces
    j=$((n - i))
    while [ $j -gt 0 ]; do
        echo -n " "
        ((j--))
    done
    
    # Print stars
    j=1
    while [ $j -le $((2 * i - 1)) ]; do
        echo -n "*"
        ((j++))
    done
    
    echo "" # Move to the next line
    ((i++))
done

# Print lower half of the diamond
((i-=2))
while [ $i -ge 1 ]; do
    # Print leading spaces
    j=$((n - i))
    while [ $j -gt 0 ]; do
        echo -n " "
        ((j--))
    done
    
    # Print stars
    j=1
    while [ $j -le $((2 * i - 1)) ]; do
        echo -n "*"
        ((j++))
    done
    
    echo "" # Move to the next line
    ((i--))
done

