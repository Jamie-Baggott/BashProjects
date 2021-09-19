#!/bin/bash

#I used this to demonstrate looking for a pattern in a file and showing it. The if statement determines if it is called correctly, the function is set out and using grep as it will look through the directories and show all matches, then it will change to that directory and show the information and size in bytes of the files. Then it calls the function.

#Check the presence of correct arguments in calliong script
if [ $# -ne 2 ] 
then 
	echo "Wrong calling of script"
	echo "USAGE $0 path pattern"
	exit 1
fi


#Implement the function to accept two parameters and search
search() {

	#asign parameters to local variables
	path=$1
	pattern=$2
	
	grep -ilRn  $path -e $pattern
	grep -ilRn  $path -e $pattern > results.txt
		

	cd $path


	du -sb * | sort -n
	du -sb * | sort -n > results.txt
	
	cd


}

#Call the function and pass parameters

search $1 $2

