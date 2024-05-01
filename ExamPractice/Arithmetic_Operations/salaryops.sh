#!/bin/bash

echo -n "enter basic salary: "
read bs

da=$(echo "(1.65/100)*$bs" | bc -l)
hra=$(echo "(0.3/100)*$bs" | bc -l)
gs=$(echo "$bs+$da+$hra" | bc)

echo "Gross Salary: $gs"
echo "HRA: $hra"
echo "DA: $da"

