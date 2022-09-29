#!/bin/bash

echo "This is a simple file encrypter/decrypter"
echo "Make a selection"

#make a list of options seperated by a space
choice="encrypt decrypt"

#option in choice sees the numeric option you choose ex 1,2,etc
select option in $choice; do
    if [ $REPLY = 1 ];
then
    echo "you have selected Encrypt"
    echo "Enter the file name"
    read file_encrypt;
    gpg -c $file_encrypt    #encypts the file (use man gpg in terminal to see usage flags)
    echo "The file has been encrypted"
else
    echo "You have selected Decrypt"
    echo "Enter the file name"
    read file_decrypt;
    gpg -d $file_decrypt   #decrypts the file (use man gpg in termnial to see usage flags)
    echo "The file has been decrypted"
fi

done