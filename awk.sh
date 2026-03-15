#!/bin/bash
# awk '{print $2,$1}' sample.txt
# from l
# last column print
# awk '{print $NF}' sample.txt

#print all
# awk '{print $0}' sample.txt

#search awork
# awk '/Rahul/{print $0}' sample.txt

# #print only given line number
# awk '{print NR, $0}' sample.txt

# #print only given line number
# awk '/Rahul/{print NR, $0}' sample.txt


# #print only given line number
# awk 'NR==3{print NR, $0}' sample.txt

#print range of lines
# awk 'NR==3,NR==4{print NR, $0}' sample.txt

# #search multiple words
# awk '/Rahul|Kiran/{print NR, $0}' sample.txt

#add case insensitive
# awk 'BEGIN{IGNORECASE=1} /rahul|kiran/{print NR, $0}' sample.txt

#csv file
# awk -F, '{print $2}' sample.csv //seperate using comas

#salary 50k more
# awk -F, '$NF>70000  {print $0}' sample.csv

# #multiple delimeter
# awk -F[,:-] '{print $4,$1,$2}' multidel.txt

# systemctl status apache2 | awk  'NR==3{print $2}'

# ls -lt | awk 'NR>1{print $NF}'

# ls -ltr | awk '$6=="Mar"'

# awk '{gsub("Rahul","Raju"); print $0}' sample.txt //Replace Rahul with Raju

# awk '{print $2, length($2)}' sample.txt

#lower and upper
# awk '{print tolower($0)}' sample.txt
# awk '{print toupper($0)}' sample.txt

#sum of salary
# awk 'BEGIN{sum=0} {sum=sum+$NF} END{print "Sum of salary " sum}' sample.txt

#average salary 
# awk 'BEGIN{sum=0;count=0} NR>1 {count++;sum+=$NF} END{print "Total Employees " count}' sample.txt
# awk 'BEGIN{sum=0;count=0} NR>1 {count++;sum+=$NF} END{print "Average salary " sum/count}' sample.txt
# awk '{print length($0)}' sample.txt

# find the largest line
# awk 'BEGIN{max=0}{if(length($0)>max)max=length($0)} END{print "Length of longest line is " max}' sample.txt

awk -f file.awk sample.txt
