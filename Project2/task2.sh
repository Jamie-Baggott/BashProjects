#!/bin/bash
#Jamie Baggott R00149982

echo  "Enter name"
	read name
 
sed 's/Placeholder/'${name}'/g' Letter.txt > ${name}letter.txt

	




