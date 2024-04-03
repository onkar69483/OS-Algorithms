#!/bin/sh

echo -n "Enter the value of n: "
read n
perm=$n
un=0

# Upper half
while [ $un -lt $((n-1)) ]; do
    ustars=$((2 * un + 1))
    spaces=$((perm-un-1))

    while [ $spaces -gt 0 ]; do
        echo -n " "
        spaces=$((spaces-1))
    done

    while [ $ustars -gt 0 ]; do
        echo -n "*"
        ustars=$((ustars-1))
    done

    echo ""
    un=$((un + 1))
done

# Lower half
while [ $n -gt 0 ]; do
    stars=$((2*n - 1))
    spaces=$n

    while [ $spaces -lt $perm ]; do
        echo -n " "
        spaces=$((spaces + 1))
    done

    while [ $stars -gt 0 ]; do
        echo -n "*"
        stars=$((stars-1))
    done

    echo ""
    n=$((n-1))
done

