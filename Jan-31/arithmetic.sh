#!/bin/sh

pi=3.14

echo "Enter radius"
read r

peri=`scale=2; echo "2*$pi*$r" | bc -l`

echo $peri

area=`scale=2; echo "$pi*$r*$r" | bc`

echo $area

