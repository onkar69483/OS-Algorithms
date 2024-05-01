#!/bin/sh

echo -n "Enter radius: "
read r

perimeter=`expr 2 \* 3 \* $r`
area=$(echo "scale=2; 3.14 * $r * $r" | bc)

echo "Perimeter: $perimeter"
echo "Area: $area"
