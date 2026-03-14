#!/bin/bash

# echo $(date)
# read -p "Enter the name " name
# echo $name
# read -p "Enter the number " number1
# read -p "Enter second number " number2
# declare -i sum=number1+number2

# echo $sum

# declare -A array=(1 2 3 4 5 6 7 8 9)

# for  a in {1..9}
# do
# declare -i c=$a%2
# if [[ $c -eq 0 ]]
# then
# echo "Even" $a 
# else
# echo $a
# fi
# done

# a="Rakshith"
# length=${#a}
# echo $length

# for((i=$length-1;i>=0;i--))
# do
#     rev="$rev${a:$i:1}"
# done
# echo "$rev"

# a=(10 20 30 50 25)

# for a in 10 20 30 50 25
# do
# if [[ $a -gt $max ]]
# then
# max=$a
#  fi
#  done
# echo $max

# count numbers of lines characters and words
# head  name.txt # prints first 10 lines
# head -5 name.txt # prints top 5 lines
# tail  name.txt # prints last 10 lines
# tail -5 name.txt # prints bottom 5 lines
# lines=$(wc -l < name.txt)
# words=$(wc -w < name.txt)
# charc=$(wc -c< name.txt)
# wc < name.txt
# echo $lines $words $charc



# name=$(find -type f -name "name.txt")
# echo $name

# name=$(find . -type f -name "*.txt")//finding in current directory
# echo $name

# name=$(find . -type f -iname "NAME.txt")//case insensitive name
# echo $name

# name=$(find . -size +1k) #case insensitive name k is kb M is mb
# echo $name

# name=$(find . -mtime -1) #find modified last day
# echo $name

# name=$(find . -mtime 7) #find modified exactly 7 days means the file is 7 days older
# echo $name

# name=$(find . -mtime +7) #find modified older 7 days
# echo $name

# name=$(find . -name "hi.txt" -delete) #find and delete
# echo $name

# name=$(find /home/rakpooja/Scripts -name "hi.txt" -delete) #find and delete
# echo $name

# for i in {1..100}
# do
#     let a=i%2
#     if [[ $a -eq 0 ]]
#     then 
#         echo $i
#     fi
# done


# threshold=0
# cpu=$(top -bn1 | awk '/Cpu/{print 100-$8}')
# cc=${cpu%.*} # it removes everything after dot
# echo $cc
# if [[ $cc -gt $threshold ]]
# then 
#     echo "Cpu exceeding"
#     else
#     echo "Cpu in limit"
# fi


# awk '{print $1}' name.txt

# for dir in */;
# do 
#  echo "$dir: $(find "/home/rakpooja/Scripts" -type f | wc -l)"
#  done

# status=$(systemctl status apache2 | awk 'NR==3{print $2}')
# echo $status
# if [[ $status -eq "Stopped" ]]
# then 
#     systemctl start apache2
#     fi

# SERVICE='apache2'
# status=$(systemctl is-active  $SERVICE)
# echo $status
# if ! systemctl is-active --quiet $SERVICE
# then
#     sudo systemctl restart $SERVICE
#     fi

# sort sed.txt
# sort -r sed.txt # reverse sort
# sort -n num.txt sort numbers
# du -h | sort -h sort the files storage
# du -h | sort -rh reverse


# softlink is the shortcut for the file to create the softlink

# ln -s Scripts/hi.txt hh
# it creates the file hh in current directory you can change the content it will reflect in original too.
# if you remove the link using 
# rm hi it does not affect original
#  but if you remove original file it will remove the link  also
#  Sodt link both original and shortcut uses differnt inode
#  you can check using 
#  ls -li hh
#  ls -li Scripts/hii.txt

# Hardlink  is the exact mirror of original file for the file to create the hardlink

# ln  Scripts/hi.txt hh
# it creates the file hh in current directory you can change the content it will reflect in original too.
# if you remove the link using 
# rm hi it does not affect original
#  even if you remove original file it will not affect the link
#  both original and shortcut uses same inode
#  you can check using 
#  ls -li hh
#  ls -li Scripts/hii.txt

# a=(3 4 1 2 6 5 7)
# sorted_array=($(for i in "${a[@]}"; do echo $i; done | sort -n))
# echo ${sorted_array[@]}
# length=${#sorted_array[*]}

# echo "Largest ${sorted_array[$length-1]}"
# echo "Second largest ${sorted_array[$length-2]}"

# for data in $(cat hi.txt )
# do
#     echo $data
#     done
# uniq -d hi.txt this showes the duplicate lines
# uniq hi.txt this showes only unique lines

# counts=$(wc < hi.txt)
# echo $counts

# top -bn1 | awk '{print $9}' | egrep -v "average:|stopped,|id,|used,|6816.9" |head -5
# top -bn1 -o %MEM | head -12 | tail -5

# find . -type f  -mtime 1
# find . -type f -exec du -h {} + | sort -rh | head -3
# find . -type f -exec ls -l {} + | sort -k5 -nr | head -3

# awk -f sumavera.awk hi.txt

# find . -type f | wc -l
#  for i in {1..100}
#  do
#  declare -i divisibleby3=i%3
#  declare -i divisibleby5=i%5
#  if [[ $divisibleby3 -eq 0  ||  $divisibleby5 -eq 0 ]]
# then 
#  echo $i
#  fi
#  done

# find . -type f name "*.txt" -exec {}  | mv "*.txt" "*.bck" 

# for files in /home/rakpooja/Scripts/*.bak;
# do
#  mv $files ${files%.bak}.txt
# done

