#!/bin/bash
FILEPATH='/home/rakppooja/Scripts/name.txt'
if [[ -f $FILEPATH ]]
#if [[! -f $FILEPATH ]] for file not exist
#if [[! -d $FILEPATH ]] for directory not exist
then
	echo "File exist"
else
	touch hi.txt
fi
