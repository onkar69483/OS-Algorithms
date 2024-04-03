#!/bin/sh

echo "Step 1"
echo "Enter Filename"
read filename
touch $filename

echo " "
echo "Step 2"
echo "$filename successfully created at location " 
pwd

echo " "
echo "Step 3"
echo "Enter the content of the file: "
cat>$filename

echo " "
echo "Step 4"
echo "Displaying the content of the file and also word count!"
cat $filename
wc $filename

echo " "
echo "Step 5"
echo "Sorted file: "
sort $filename

echo " "
echo "Step 6"
echo "Content in Upper Case: "
cat $filename | tr '[:lower:]' '[:upper:]'

echo " "
echo "Step 7"
echo "Enter number of lines to display:"
read fnlines
echo “first $fnlines of the file $filename are:”
head -n $fnlines $filename

echo " "
echo "Step 8"
echo "Enter a Keyword to search"
read word
grep -i $word $filename

echo " "
echo "Step 9"
echo "Enter new name to rename file"
read nname
mv -f $filename $nname
echo "File renamed as $nname"

echo " "
echo "Step 10"
echo "Enter the cut position:"
read cutp
cut -c $cutp $nname

echo " "
echo "Step 11"
echo "Enter the file to be removed"
read delfile
rm $delfile
echo " "
echo "file $delfile is deleted."
echo " "
echo "Checkitout! below doing ls"
ls
echo "File $delfile does not exist in location"
pwd
