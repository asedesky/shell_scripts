#!/bin/bash

#function structure is: function functionName(){function code in here}

function test_shadow(){
if [ -e etc/shadow ];   #function tests if file exists
then
    echo "Yes it exists"
else
    echo "It does not exist"
fi
test_password   #calls the test_password function inside the shadow function which means 
                #no need to call it after functions are defined. Can optionally call it at bottom
}


function test_password(){
if [ -e names.txt ];   #function tests if file exists
then
    echo "Yes it exists"
else
    echo "It does not exist"
fi
}

#call the function
test_shadow
