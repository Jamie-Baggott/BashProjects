#!/bin/bash

#Write a script to check the presence of a file passed as an argument. The script should exit if no argument is provided at invocation and issue a usage message.If thefilename providedexist,the script should notify of its existenceand further check if it is emptyotherwisethe script should create it and notify of this action. In case the file exist and it is empty or in the case that the file does not exist and is created, redirectthe output of the command envinto it and report of this action. If the file is not empty simply notify of this situation. Use comments to document your script.

#Check if an argument is passed to the script when running it
if [ $# -eq 1 ]
then
	echo "One argument provided"

else
	echo "No argument provided"
	echo "USAGE: $0 filename"
	exit 1

fi

#Check if the file name provided exists
if [ -e $1 ]
then
	echo "Yeah, file $1 exists"
	if [ -s $1 ] #check file is empty
	then
		echo "No, file $1 is not empty"
	else
		echo "Yes, file $1 is empty"
		env > $1
		echo "Content redirected into empty file"
	fi
else
	echo "No, file $1 does not exist, it will now be created"
	touch $1
	echo "File $1 is now created"
	env > $1
	echo "Content redirected into newly created file"

fi
