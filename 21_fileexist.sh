#!/bin/bash
FILEPATH='/home/rakppooja/Scripts/name.txt'
if [[ -f $FILEPATH ]]
then
	echo "File exist"
else
	touch hi.txt
fi
