#!/bin/bash


#Write an interactive script to perform some basic arithmetic operations. The script should demand for two numbers. When the first number is greater than the second number, the script should perform a division otherwise it should perform a multiplication. Use comments to document your script

#Multiply or Divide 2 numbers 

#Get First number
echo "Enter first number"
read num1
#Get Second number
echo "Enter second number"
read num2

#If statement to verify is one is greater than the other
if [ $num1 -gt $num2 ]
then
	echo  "Div: The output is: $(($num1 / $num2))"
else
	echo "Multi: The output is: $(($num1*$num2))"
fi



