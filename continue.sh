#!/bin/bash
for i in {1..8}
do
	let r=$i%2
	if [[ $r -eq 0 ]]
	then
		continue
	fi
	echo "$i"
done

