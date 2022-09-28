#!/bin/bash

echo "Please enter your username: "

read NAME

if [ "$NAME" = "Elliot"];   #semicoling needed 
then
    echo "Welcome back Elliot"
else
    echo "Invalid username"
fi  #fi used to close if statements