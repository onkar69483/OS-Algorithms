#!/bin/sh

echo -n "Enter radius of circle: "
read r

perimeter=$(echo "scale=2; 2*3.14*$r" | bc)
area=$(echo "scale=2; 3.14*$r*$r" | bc)

echo "Area: $area"
echo "Perimeter: $perimeter"
