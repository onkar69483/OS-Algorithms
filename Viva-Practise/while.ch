#!/bin/bash

n=5  # Adjust this value to change the size of the diamond
i=1
mid=$((n/2+1))

# Upper half of the diamond
while [ $i -le $mid ]; do
    j=1
    while [ $j -le $((mid - i)) ]; do
        echo -n " "
        j=$((j+1))
    done
    j=1
    while [ $j -le $((2*i-1)) ]; do
        echo -n "*"
        j=$((j+1))
    done
    echo ""
    i=$((i+1))
done

# Lower half of the diamond
i=$((mid-1))
while [ $i -ge 1 ]; do
    j=1
    while [ $j -le $((mid - i)) ]; do
        echo -n " "
        j=$((j+1))
    done
    j=1
    while [ $j -le $((2*i-1)) ]; do
        echo -n "*"
        j=$((j+1))
    done
    echo ""
    i=$((i-1))
done

