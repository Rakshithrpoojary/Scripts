#!/bin/bash
if [[ ${UID} -ne 0 ]]
then
        echo "Please login as a root user"
        exit 1
fi
if [[ $# -eq 0 ]]
then
        echo "Please pass the username"
        exit 1
fi
USER=$1
shift
COMMENT=$@

PASSWORD=$RANDOM

useradd -c "$COMMENT" -m $USER
if [[ $? -ne 0 ]]
then
        echo "Problem with creaing user"
        exit 1
fi
echo "$USER:$PASSWORD" | chpasswd

if [[ $? -ne 0 ]]
then
        echo "Problem creating password"
        exit 1
fi

passwd -e $USER

echo $USER
echo $PASSWORD