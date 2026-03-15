#!/bin/bash
array=(1 2 3 4 5 Hello)
length=${#array[*]}
for((i=0;i<length;i++))
do
	echo "value of array is ${array[i]}"
done

