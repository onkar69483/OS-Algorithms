#!/bin/sh

echo -n "Enter num: "
read num

case $num in 
	[0-9])
		echo "single digit number"
		;;
	[1-9][0-9])
		echo "2 digit"
		;;
	[1-9][0-9][0-9])
		echo "3 digit"
		;;
	*)
		echo "invalid"
		;;
esac
