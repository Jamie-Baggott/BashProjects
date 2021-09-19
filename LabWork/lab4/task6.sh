#!/bin/bash



#Write an interactive bash script that implements a functionthat accepts a parameter. The function shouldoutput the number of characters in a word or sentence entered by a user. The script should continuously request user inputs. When the character “q” is entered, it should terminate with a Bye message. Remember to comment your code.




#Implement the function to count characters
countCharacter() {

		#assign parameter to local variable
		word=$*
		echo "The number of characters in your input is: ${#word}"
}

#A variable to control message 
msg=0
entry="n"

while [ true ] #[ "$entry" != "q" ]
do 
	if [ $msg -gt 0 ]
	then 
		echo "Enter another word or sentence (q to exit)"
	else
		echo "Enter a word or sentence (q to exit)"
	fi  
	read entry
	
	#check if entry is "q"
	if [ "$entry" == "q" ]
	then
		break
	fi

	#call the function and pass the parameter
	countCharacter $entry

	#increase message count
	msg=$(($msg+1))

	echo " "

	

done

echo "Goodbye."

