#!/bin/bash

# first argument passed to script will be considered host. 
# if feeling uninspired, use instead google.com DNS as first argument.
# Like this: sh av.sh google.com
HOST=$1

# Ping the host

ping -c 1 $HOST > /dev/null
if [ $? -eq 0 ]; then #if last operation was equal to zero, then it means the ping was successful
echo "Host $HOST is available"
else
echo "Host $HOST is not available"
fi