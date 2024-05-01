#!/bin/sh

echo -n "Enter ch: "
read ch

case $ch in
	[aeiouAEIOU])
		echo "$char is a vowel"
		;;
	[a-zA-Z])
		echo "$char is a consonant"
		;;
	*)
		echo "$char is invalid"
		;;
esac
