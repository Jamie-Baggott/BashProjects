#!/bin/bash

#Write a script that prints out on the terminal its name, the number of arguments it is called with and the names of those arguments. Try executing this script with varying number of arguments. Remember to comment your code.

#Output the name of the script:
echo "The name of the script is: $0"

#Output the number of arguments passed
echo "The name of arguments is: $#"

#Output the names of those arguments
echo "The arguments are: $*"
