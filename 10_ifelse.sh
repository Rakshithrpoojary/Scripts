#!/bin/bash
read -p "Enter your marks: " marks
if [[ $marks -ge  80 ]]
then
	echo " your first division"
elif [[ $marks -gt 60 ]]
then
	echo "Your pass"
else
	echo "Your fail"
fi
