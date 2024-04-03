#!/bin/sh

echo "Shell script to calculate balance of the account"

echo "Enter Account Balance: "
read bal

echo "Enter Withdrawal Amount: "
read amt

if [ $bal -lt $amt ]
then
	echo "Insufficient Balance!"
else
	if [ $amt -le 1500 ]
	then
		tax=`scale=2; echo "0.03*$amt" | bc -l`
		taxp=3
	elif [ $amt -gt 1500 ] && [ $amt -le 3000 ]
	then
		tax=`scale=2; echo "0.04*$amt" | bc -l`
		taxp=4
	elif [ $amt -gt 3000 ]
	then
		tax=`scale=2; echo "0.05*$amt" | bc -l`
		taxp=5
	fi
	echo "Amount Withdrawn: $amt"
	echo "Tax Deducted ($taxp %): $tax"
fi
