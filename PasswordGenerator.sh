#!/bin/bash

#simple password generator

echo "This is a simple password generator"
echo "Please enter the length of the password: "

read PASS_LENGTH

for P in $(seq 1 5);    #in this case using seq will generate the number of PWs in that range. in this case it's 1-5. Set to 1 if you want 1 PW
do
    openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done

#tells it to use openssl w random password and base64 encryption and a max of 48 characters
#pipe and use cut from the first character (cut -c1) to the user submitted password length (-$PASS_LENGTH)