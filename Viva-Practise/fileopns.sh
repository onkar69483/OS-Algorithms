#!/bin/sh

echo " "
echo "1) creating a new file"
echo "Enter file name"
read fn
touch $fn

echo " "
echo "2) File successfully created"
pwd
ls

echo " "
echo "3) Enter contents of the file"
cat>$fn

echo " "
echo "4) Display the contents of the file and word count"
cat $fn
echo " "
wc $fn

echo " "
echo "5) Display the contents of the file in sorted manner"
sort $fn

echo " "
echo "6) Display the contents of the file in uppercase"
cat $fn | tr '[:lower:]' '[:upper:']

echo " "
echo "7) Display first n lines"
read n
head -$n $fn

echo " "
echo "8) Perform keyword based search"
read kw
grep -i $kw $fn

echo " "
echo "9) Rename an existing file"
read nfn
mv -f $fn $nfn
ls

echo " "
echo "10) Perform cut operations 1-n"
read c
cut -c $c $nfn

echo " "
echo "11) Delete file"
rm $nfn

