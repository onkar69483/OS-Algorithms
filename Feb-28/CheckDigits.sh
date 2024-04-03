#!/bin/sh

echo -n "Enter Number: "
read num

case $num in
    [0-9])
        echo "$num is a single-digit number"
        ;;
    [1-9][0-9])
        echo "$num is a two-digit number"
        ;;
    [1-9][0-9][0-9])
        echo "$num is a three-digit number"
        ;;
    *)
        echo "$num is not a 1/2/3 digit number"
        ;;
esac

