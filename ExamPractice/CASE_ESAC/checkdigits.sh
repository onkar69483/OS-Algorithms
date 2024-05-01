#!/bin/sh

echo -n "Enter number: "
read num

case $num in
	[0-9]) echo "Single" ;;
	[1-9][0-9]) echo "Double" ;;
	[1-9][1-9][1-9]) echo "Triple" ;;
	*) echo "Nothing" ;;
esac
