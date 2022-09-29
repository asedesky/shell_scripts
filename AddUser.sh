#!/bin/bash
#postional parameters are numbered 0 - 9 and are called with a $ as they are a variable ($0 - $9)
#positional param $0 is given t the script on execution 

echo "Execution of script:$0"
echo "Please enter the name of the user:$1" #user input will be saved into varible. no need to use read

#adding user

adduser --home /$1 $1
#when running script in terminal, run script and add postional ex. bash AddUser.sh user1
#this will store the input (user1 in this case) in $1
#the --home /$1 $1 will create a directory in home with the value stored in $1
#must use lowercase for input