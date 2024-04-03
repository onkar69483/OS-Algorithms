#!/bin/sh

echo "Enter amount balance"
read bal

echo " "
echo "Enter withdrawal amount"
read wamt

if [ $wamt -gt $bal ]
then
    echo "Insufficient Balance!"
else
    tax=0
    if [ $wamt -le 1500 ]
    then 
        tax=3
    elif [ $wamt -gt 1500 ] && [ $wamt -le 3000 ]
    then 
        tax=4
    elif [ $wamt -gt 3000 ]
    then 
        tax=5
    fi
    echo "Withdrawal amt: $wamt"
    taxamt=$(echo "scale=2; $wamt * ($tax / 100)" | bc)
    echo "Tax -> $tax % Amt: $taxamt"
fi
