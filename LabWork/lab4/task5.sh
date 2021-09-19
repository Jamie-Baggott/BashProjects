#!/bin/bash


#Write a bash script that implementsa function to perform simple arithmetics. The function should  accept  two  integer  parameters  and  implements  an  addition  and  a  multiplication operations. If the first integer parameter is an odd number, then an addition operation should be carried out otherwise a multiplication. Your bash script should be called with two integer arguments representing the numbers to be calculated. If the script is incorrectly called, issue a usage message and terminate execution.  Remember to comment your code.



#Check the presence of correct arguments in calliong script
if [ $# -ne 2 ] 
then 
	echo "Wrong calling of script"
	echo "USAGE $0 num1 num2"
	exit 1
fi
#echo "I was called with the correct arguement" 

#Implement the function to accept two parameters and do add and multiply operations
calc() {

	#asign parameters to local variables
	num1=$1
	num2=$2

	#check if first parameter is odd
	if [ $(($num1%2)) -ne 0 ]
	then 
		echo "$num1 + $num2 = $(($num1+$num2))"
	else
		echo "$num1 * $num2 = $(($num1*$num2))"
	fi

}

#Call the function and pass parameters

calc $1 $2

