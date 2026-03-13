#!/bin/bash
declare -A array # -A means Array if use -i then number by deafault bash treats string -r readonly
array=([name]=Rakshith [age]=22)
echo "${array[name]}"
