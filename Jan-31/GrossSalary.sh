#!/bin/sh

echo "Calculate emoployees salary"
echo "Enter basic salary: "
read bs
da=`scale=2; echo "$bs*0.0165" | bc -l`
hra=`scale=2; echo "$bs*0.003" | bc -l`
gs=`scale=2; echo "$da + $hra + $bs" | bc -l`
echo "Dearness Allowance (da): $da"
echo "House Rent Allowance (hra): $hra"
echo "Gross Salary (gs): $gs"
