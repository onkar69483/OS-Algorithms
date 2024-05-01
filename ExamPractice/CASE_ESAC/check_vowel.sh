#!/bin/sh

echo -n "Enter character: "
read char

case $char in
	[aeiouAEIOU])
		echo "Vowel"
		;;
	[a-zA-Z])
		echo "Consonant"
		;;
	*)
		echo "Nothing"
		;;
esac
