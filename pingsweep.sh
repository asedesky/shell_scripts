#!/bin/bash

echo "Enter subnet"
read  subnet

for IP in $(seq 1 254); do
    ping -c 1 $SUBNET.$IP
done

#seq with 2 values is like range