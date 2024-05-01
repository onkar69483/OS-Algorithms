#!/bin/sh

echo -n "Enter account balance: "
read accbal

echo -n "Enter withdrawal amount: "
read wamt

if [ $wamt -gt $accbal ]
then
	echo "Insufficient Balance!"
	exit
else
	if [ $wamt -le 1500 ]
	then
		p=3
		tax=$(echo "scale=2; $wamt * 0.03" | bc)
	elif [ $wamt -gt 1500 ] && [ $wamt -le 3000 ]
	then
		p=4
		tax=$(echo "scale=2; $wamt * 0.04" | bc)
	elif [ $wamt -gt 3000 ]
	then
		p=5
		tax=$(echo "scale=2; $wamt * 0.05" | bc)
	fi
fi

echo "Amount Withdrawn: $wamt"
echo "Tax Deducted($p%): $tax"
