#!/bin/bash

#In a bash script, define an array with the following content “watch, sweet, zebra, want, switch, script, honey, manager, money, maker, home”. Iterate through the array content and output only the words starting with “s” or “m”. Use comments to document your code.


#Define array with provided content
content=("watch" "sweet" "zebra" "want" "switch" "script" "honey" "manager" "money" "maker" "home")

#Iterate through the array content and output selected elements

#for word in ${content[@]} #works with if word and echo word

for ((i = 0; $i < ${#content[@]}; i = $i + 1))

do
	#Indentify and output only entries starting with s or m
	if [ ${content[$i]:0:1} == "s" ] || [ ${content[$i]:0:1} == "m" ]
	#if [ ${word:0:1} == "s" ] || [ ${word:0:1} == "m" ] 	 
	then 
		echo ${content[$i]}
		#echo $word

	#else
		#echo "No matching"

	fi

done

