#!/bin/bash

#This shows the menu to manipulate files. I first displayed the menu using simple echo commands, then read in the choice. I used if statements to determine which option the user chose. To write I used cat to create new files that the user wants to, for print I used less, I could also use cat but chose to just do something different as a file may be larger so less is better as it is just for displaying files. I used mv to rename files taking each choice as the former and replacement name. Finally I just used exit to exit the menu and display a goodbye message.

#Make a menu


#Display the menu
echo "This is the menu, what choice would you like?"
echo "1. Write"
echo "2. Print"
echo "3. Rename"
echo "4. Exit"
read choice

#First choice of Write
if [ $choice -eq 1 ]
then
	echo  "Enter a file to write"
	read writefilename
	echo "You have created the file $writefilename"
	cat > $writefilename
	echo "Thank you, goodbye!"
	exit
fi
#Second choice of Print
if [ $choice -eq 2 ]
then
	echo  "Enter a file to print"
	read printfilename
	echo "You are viewing the file $writefilename"
	less $printfilename
	echo "Thank you, goodbye!"
	exit
fi
#Third choice of Rename
if [ $choice -eq 3 ]
then
	echo  "Enter a file name to rename"
	read filename1
	echo "Enter the new name of the file"
	read filename2
	mv $filename1 $filename2
	echo "$filename1 is now named $filename2"
	echo "Thank you, goodbye!"
	exit
fi
#Fourth choice to exit
if [ $choice -eq 4 ]
then
	echo "Thank you, goodbye!"
	exit
fi

#If the choices are beyond the menu options
if [ $choice -lt 1 ] || [ $choice -gt 4  ]
then
	echo  "That menu option is not available, sorry! "
fi

