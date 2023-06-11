#!/bin/bash

echo "Please enter the name of a file"
read file_name

# Validate that file exists
if [ -f $file_name ]
then
    echo "Enter text to search inside of file: "
    read searchedText

    grep -i "$searchedText" "$file_name" > pattern.txt
    
    # Find count of matching items
    count=$(grep -c $searchedText pattern.txt)

    echo "Matches found $count"
else
    echo "File not found"
fi