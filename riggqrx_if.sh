#!/bin/bash

#intermediate frequency for panadapter
interm=68330000

while true; do 
freq=`rigctl -m 2 -r localhost:4532 f`
if [ "$oldfreq" != "$freq" ]
then
echo LNB_LO $((freq-interm)) | netcat localhost 7356
oldfreq=$freq
fi
sleep 0.5
done
