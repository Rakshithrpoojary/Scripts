#!/bin/bash
at 10:26 UTC
bash pathtoscript
ctrl D


to check the job do 'atq'
Remove the job 'atrm id' id we get when we do atq


________________________________
name.txt
Rakshith
Ranjith
Rakshithpoojary

grep -c "Rakshith" name.txt --> 2 two matching -c is count
grep -n "Rakshith" name.txt --> 
1:Rakshith
3:Rakshithpoojary

grep -i "rakshith" name.txt
Rakshith
Rakshithpoojary

grep -v "Rakshith" name.txt -->not matching
Ranjith

grep -w "Rakshith" name.txt --> match exact
Rakshith


egrep "Rakshith|Ranjith" name.txt
Rakshith
Ranjith
Rakshithpoojary