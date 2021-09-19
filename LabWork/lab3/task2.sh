#!/bin/bash


#Write a script that outputs all the running processes owned by the “root” user into a file. Output to the screen the content of the file. In a further step, search and output from the file only entries that end with a closing square bracket (]). Use comments to document your script.


# Output all the running processes belonging to the root user into a fil
ps -ef | grep ^root > rootList.txt

#Output the file content to the screen
cat rootList.txt

#Output entries from file that ends with ]
echo "" #Empty space line
echo "Entires ending with ] are: "
grep ]$ rootList.txt
