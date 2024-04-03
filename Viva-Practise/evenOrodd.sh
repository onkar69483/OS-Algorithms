#!/bin/sh

echo "Enter number: "
read num
result=`echo "$num % 2" | bc`
if [ $result == 0 ]   
then
    echo "Even"
else
    echo "Odd"
fi