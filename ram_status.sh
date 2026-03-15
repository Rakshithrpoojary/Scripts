#!/bin/bash
iam=$(free -mt | grep "Total" | awk '{print $4}')
THRESHOLD=600
if [[ $iam -gt $THRESHOLD ]]
then 
	echo "Sufficiet ram"
else
	echo "Ram is very low"
fi
