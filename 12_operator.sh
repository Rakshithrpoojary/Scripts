#!/bin/bash
read -p "What is your age " age
read -p "Enter your counter " country
if [[ $age -gt 18 ]] || [[ $country == "India" ]]
then
	echo "You can vote"
else
	echo "You can't vote"
fi

[[ $age -gt 18 ]] && echo "Adult" || echo "Minor"
