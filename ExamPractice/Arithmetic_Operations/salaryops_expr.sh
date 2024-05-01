#!/bin/sh

echo -n "Enter basic salary: "
read bs

da=`expr $bs \* 165 / 10000`
hra=`expr $bs \* 3 / 1000`
gs=`expr $bs + $hra + $da`

echo "DA: $da"
echo "HRA: $hra"
echo "GS: $gs"
