#!/bin/bash
# a=(4 7 1 3 8 9)
# b=($(printf "%s\n" "${a[@]}"| sort -nr))

# largest=${b[0]}
# secondlargest=${b[1]}
# smallest=${b[-1]}

# echo $largest
# echo $secondlargest
# echo $smallest


# str="Rakshith"
# length=${#str}
# for((i=length;i>=0;i--))
# do
# data=$data${str:$i:1}
# done
# echo $data

# wc< name.txt
# echo $(wc -l < name.txt)
# echo $(wc -w < name.txt)
# echo $(wc -c < name.txt)

# uniq -d name.txt
# uniq -c num.txt

# comm -12 hi.txt name.txt
# comm -14 hi.txt name.txt
# comm -23 hi.txt name.txt

# cat hi.txt num.txt >merge.txt

# for ((i=1;i<=100;i++))
# do
#  if (($i%3==0 && $i%5==0))
#  then
#  echo "Divisibleby both 3 and 5" $i
#  elif (($i%3==0))
#  then
#  echo "Divisibleby 3" $i
#  elif (($i%5==0))
#  then
#  echo "Divisibleby 5" $i
#  fi
#  done


# read -p "Enter the number " number
# fact=1
# for((i=number;i>0;i--))
# do
# fact=$(($i*fact))
# done
# echo $fact

# awk 'BEGIN{sum=0;count=0} {sum+=$1;count++}  END{print "Sum is " sum; print "Average is " sum/count}' num.txt

# a=(2 4 2 5 6 4)
# declare -A arr
# for i in "${a[@]}"
# do
# if [[ -z ${arr[$i]} ]]
# then
# arr[$i]=1
# fi
# done
# echo ${!arr[@]}

# find .  -type f -exec  du -h {} + | sort -nr | head -5

# find . -type f -exec ls -lt {} + | sort -k5 -nr |head -5

# find . -maxdepth 1 -type f | wc -l

# find . -maxdepth 1 -type f -empty -print -delete

# for files in /home/rakpooja/Scripts/*.bak;
# do

# mv $files ${files%.bak}.txt
# done
# find /home/rakpooja/Scripts/new -type f  -mtime -1  -delete

# srcdir=/home/rakpooja/Scripts
# name=/home/rakpooja/Scripts/Archive/c.tar
# archivedir=/home/rakpooja/Scripts/Archive
# mkdir -p $archivedir
# tar -cvf $name $srcdir

# ls -1t "$archivedir"/*.tar | xargs -r rm -f
# mv $name $archivedir

# tail -7 means last 7
# tail -n 7 same
# tail -n +8 means starting from 8 to last

# ls -lt and ls -1t both are diff
# ls -lt in this l means long list 
# ls -1t means it only gives file names
# same with  ls -ltr and ls- 1tr
# ls -lart and ls -1art

# LOGDIR=/home/rakpooja/Scripts
# ARCDIR=/home/rakpooja/Scripts/Archive

# find "$LOGDIR" -maxdepth 1 -type f -name "*.log" -exec gzip {} \;
# mv "$LOGDIR"/*.gz "$ARCDIR"

# threshold=0
# cpu=$(top -bn1 | awk -F[:,] '/Cpu/{print 100-$5}')
# cpu=${cpu%.*}
# if (($cpu> $threshold))
# then 
# echo "Cpu is over threshold"
# else
# echo "Cpu in limit"
# fi


# threshold=5
# mem=$(free  | awk '/Mem/{print $3/$2*100}')
# # new=$(free | awk '/Mem/{print $3*100/$2}')
# mem=${mem%.*}
# if (( $mem>$threshold))
# then 
# echo "Memory is above limit"
# else
# echo "Memory in limit"
# fi

# echo $mem $new

# df -h | awk 'NR>1{gsub("%","",$5); if($5>50) print "High disk usage",$6,"("$5"%)"}'
# sub and gsub both replaces but sub replaces only first occurence gsub for all replace

# echo "a-b-c-d" | awk '{sub("-",""); print}'
# value="a-b-c-d"
# data=$(echo "$value" | awk '{sub("-",""); print}')
# echo "$data"

# top -bn1 | awk 'NR>7{ print $9}' |head -n 5
# top -bn1 | awk 'NR>7{ print $10,$12}' | sort -k1 -nr | head -n 5

# SERVICE="apache2"
# if ! systemctl is-active --quiet $SERVICE
# then 
# sudo systemctl restart $SERVICE
# fi

# SERVICE="apache2"
# systemctl is-active --quiet $SERVICE
# if [[ $? -ne 0 ]]
# then 
# sudo systemctl restart $SERVICE
# fi

# services=$(systemctl list-unit-files --type=service --state=enabled | awk 'NR>1 {print $1}')
# for svc in $services
# do
# systemctl is-active --quiet $svc
# if [[ $? -ne 0 ]]
# then
# echo "$svc is Not running"
# fi
# done
# echo $services
# ss -tulnp | grep 36791 | awk '{print $NF}'

# cat /etc/passwd |awk -F: '{print $1}'> users.txt
# awk '/^[aeiouAEIOU]/' users.txt

# sed -i s/gg/gambhir/g users.txt
# grep -v Running kubectl.txt | awk 'NR>1{print $1,$3}'

# NAMESPACE="${1:-default}" # means if you don't pass the variables use default
# kubectl get pods -n $NAMESPACE --no-headers | awk '$3==CrashLoopBackOff{print $1}'

# for all namespace
# kubectl get pods -A --no-headers | awk '$3==CrashLoopBackOff{print $1}'

#delete failed pods
# NAMESPACE="${1:-default}" # means if you don't pass the variables use default
# kubectl get pods -n $NAMESPACE --field-selector=status.phase=Failed --no-hedaers | awk '{print $1}' | xargs -r kubrctl delete pod -n $NAMESPACE

# all ns
# kubectl get pods -n $NAMESPACE --field-selector=status.phase=Failed --no-hedaers | while read -r ns pod rest 
# do kubectl delete pod $pod -n $ns
# done

# remove unused dangling docker images

# docker image prune -a -f #-a means remove unused images 

# remove stopped containers unused volumes
# docker container prune -f removes unused containers
# docker image prune -f removes dangling images means when u build image with same tag docker keeps prev images we need to clean up
# docker volume prune -f removes unused volumes