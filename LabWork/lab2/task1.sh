#!/bin/bash

#Write a script that prints out the environment variables on the terminalas well as save them in a file. The script should go on and count the number of entries in the file and printout theresult on the terminal.Use comments to document every step in your script.

#Output the enviromental variables to the screen
env

#Output the enviromental variables into a file
env > $HOME/SystemScripting/lab2/envVariables.txt

#Count the number of entries in the file
echo "The number of entries is: "
wc -l envVariables.txt
