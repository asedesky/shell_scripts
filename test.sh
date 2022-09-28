#!/bin/bash
#-e for files, -d for directories
#type help test in terminal for more flags

if [ -e /etc/shadow ];
then
    echo "Yes it exists"
else
    echo "The file does not exist"
fi