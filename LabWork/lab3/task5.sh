#!/bin/bash


#Write a script that implements a menu for arithmetic operations. The menu should have entries for multiplication, addition, division and subtraction. Interactively request a user to enter two numbers to be calculatedand to make a menu choice of operation. Ensure that your script is able to catch invalid menu selectionand to report it. Implement a termination strategy for the program. On normal termination of the script, output a good bye message.

#Make a menu for arithmetic operations

#Get First number
echo "Enter first number"
read num1
#Get Second number
echo "Enter second number"
read num2
#Display the menu
echo "This is the menu, what choice would you like?"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Division"
echo "4. Multiplacation"
read choice

#First choice of addition
if [ $choice -eq 1 ]
then
	echo  "Add: The output is: $(($num1 + $num2))"
fi
#Second choice of subtraction
if [ $choice -eq 2 ]
then
	echo  "Sub: The output is: $(($num1 - $num2))"
fi
#Third choice of division
if [ $choice -eq 3 ]
then
	echo  "Div: The output is: $(($num1 / $num2))"
fi
#Fourth choice of multiplacation
if [ $choice -eq 4 ]
then
	echo  "Multi: The output is: $(($num1 * $num2))"
fi
#If the choices are beyond the menu options
if [ $choice -lt 1 ] || [ $choice -gt 4  ]
then
	echo  "That menu option is not available "
fi

#UNFINISHED ONLY RUNS ONCE

