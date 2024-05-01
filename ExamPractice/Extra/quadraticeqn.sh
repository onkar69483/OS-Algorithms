#!/bin/bash

echo -n "Enter coefficient of x^2 (a): "
read a

echo -n "Enter coefficient of x (b): "
read b

echo -n "Enter constant term (c): "
read c

# Calculate the discriminant
discriminant=$(( ($b*$b) - (4*$a*$c) ))

# Check if discriminant is negative, zero, or positive
if [ $discriminant -gt 0 ]; then
    # Two real and distinct roots
    root1=$(echo "scale=2; (-($b) + sqrt($discriminant)) / (2 * $a)" | bc)
    root2=$(echo "scale=2; (-($b) - sqrt($discriminant)) / (2 * $a)" | bc)
    echo "Roots are real and distinct:"
    echo "Root 1: $root1"
    echo "Root 2: $root2"
elif [ $discriminant -eq 0 ]; then
    # Two real and equal roots
    root=$(echo "scale=2; (-($b) / (2 * $a))" | bc)
    echo "Roots are real and equal:"
    echo "Root: $root"
else
    # Complex roots
    realPart=$(echo "scale=2; -($b) / (2 * $a)" | bc)
    imagPart=$(echo "scale=2; sqrt(-($discriminant)) / (2 * $a)" | bc)
    echo "Roots are complex:"
    echo "Root 1: $realPart + ${imagPart}i"
    echo "Root 2: $realPart - ${imagPart}i"
fi

