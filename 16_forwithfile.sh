#!/bin/bash
FILE="/home/rakpooja/Scripts/name.txt"
for name in $( cat $FILE )
do
	echo $name
done
