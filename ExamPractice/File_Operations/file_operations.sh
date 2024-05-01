#!/bin/sh

#1 create a new file
echo -n "Enter File Name: "
read file_name
touch $file_name.txt

#2 Success Message
echo "$file_name.txt Successfully Created!"

#3 Tell user to enter contents of the file
echo -e "\nEnter Content of the file below: "
cat>$file_name.txt

#4 Display contents of the file
echo -e "\nDisplaying the contents of the file: "
cat $file_name.txt
echo "Word Count: " 
wc $file_name.txt

#5 Display contents of the file in sorted manner
echo -e "\nDisplaying contents of the file in sorted manner: "
sort $file_name.txt

#6 Display contents in uppercase
echo -e "\nDisplay contents in lowercase"
cat $file_name.txt | tr '[:upper:]' '[:lower:]'

#7 Display first n lines of file
echo -ne "\nEnter number of lines to display: "
read n
head -$n $file_name.txt

#8 Perform keyword based search
echo -ne "\nEnter keyword to search: "
read key
grep -i $key $file_name.txt

#9 Rename the file
echo -ne "\nEnter new name of the file: "
read new_file_name
mv -f $file_name.txt $new_file_name.txt
echo "$new_file_name.txt Successfully created!"

#10  Perform cut operations
echo -ne "\nEnter cut position of file (eg: n-m): "
read cut_pos
cut -c $cut_pos $new_file_name.txt

#11 Delete the file
echo -e "\nDeleting $new_file_name.txt!"
rm $new_file_name.txt
echo "Sucessfully Deleted!"

