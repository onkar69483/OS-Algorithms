#!/bin/bash

# Print the upper half of the pattern
for ((i = 1; i <= 5; i++)); do
    for ((j = 1; j <= i; j++)); do
        echo -n "$i"
    done
    echo ""
done

# Print the lower half of the pattern
for ((i = 4; i >= 1; i--)); do
    for ((j = 1; j <= i; j++)); do
        echo -n "$i"
    done
    echo ""
done
