#!/bin/bash

#Write a script that receives three inputarguments. The script should create a folder and a file. The name of the folder is the value of the first inputargument, the name of the file inside of it is the value of the second argument. The value of the third argument should be written in the newly created file. Use an appropriate command to only show the content of the file. Use comment to documentyour code.

#Make a folder
mkdir folder3

#Make a file
touch $HOME/SystemScripting/lab2/folder3/file3.txt

#Move to folder3 
cd folder3

#Output the name of the folder:
echo "The name of the first argument is: ${PWD##*/}"

#Output the name of the file
echo "The name of second argument is: $(basename /lab2/folder3/file3.txt)"


