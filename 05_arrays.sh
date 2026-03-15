#!/bin/bash
array=(1 2 3 4 5)
echo "${array[0]}"
echo "${array[3]}"
echo "${array[*]}"
echo "length is ${#array[*]}"
echo "From second index need two values ${array[*]:2:2}"
array+=( 6 7)
echo "Adding to array ${array[*]}"

