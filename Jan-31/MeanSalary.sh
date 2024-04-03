#!/bin/sh

echo "Calculate Mean Salary"
sum=$(expr 1200 + 1400 + 1350 + 1800)
mean=`echo "scale=2;$sum/4" | bc -l`
echo "Mean: $mean"
