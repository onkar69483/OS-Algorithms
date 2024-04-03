#!/bin/sh

echo "Enter radius"
read r
pi=3.14
perimeter=`scale=2; echo "2*$pi*$r" | bc`
echo "Perimeter: $perimeter"
area=`scale=2; echo "$pi*$r*$r" | bc`
echo "Area: $area"