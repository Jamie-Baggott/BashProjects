#!/usr/bin/awk


#The –Foperation after awkallows one to change the field separator. Write a simple awkscript which displays (and prints to a file) all usernames and their user ids on a Linux system. If this is working, now extend the script to exclude system users like nobody.

#Define the field separator
BEGIN{FS=":"
}
{

	if($3>= 1000 && $3 < 65000){
		print $1 " " $3
		print $1 " " $3 > "users.txt"

	}
print NR
}
END{print "Total number of entries processed is: " NR}
