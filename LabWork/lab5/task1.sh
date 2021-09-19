#!/bin/bash

#Write a bash script to create and delete user accounts. The script should accept the account name as a parameter argument and use it to create the user account. Ensure that thescript is ran with  root privilegeand theaccount name is provided as argument. Print out all the useraccount names (use cat /etc/passwd) and wait for 10seconds to observe the newlycreated useraccount. Afterwards, delete thisnewly created user accountand again print out all the user account names to verify successful deletion. Do not forget to comment your code.

#Check for root user priviledge for running the script

if [ $EUID -ne 0 ] 
then
	echo "You must run the script as root"
	echo "USAGE: sudo $0 ...."
	exit 1
fi

#Check if parameter argument is provided

if [ $# -ne 1 ] 
then 
	echo "Wrong number of parameter arguments provided"
	echo "USAGE: sudo $0 accountname"
	exit 2
fi

#Create the user account with home directory
useradd -m $1

#Print out all the user account details
cat /etc/passwd

#Wait 10 seconds
sleep 10

#Delete created user
userdel -rf $1

#Print out all the user account details
cat /etc/passwd


