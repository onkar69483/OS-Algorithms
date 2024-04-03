#!/bin/sh

echo -n "Enter number: "
read num

case $num in
	[0-9])
		echo "single"
		;;
	[1-9][0-9])
		echo "double"
		;;
	[1-9][0-9][0-9])
		echo "triple"
		;;
	*)
		echo "Invalid"
		;;
esac
