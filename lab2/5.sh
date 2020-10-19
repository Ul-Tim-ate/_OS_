#!/bin/bash
prevPPid=-1
sum=0
count=0

while read line
do
Runtime=$(echo $line | cut -d ":" -f 3 | cut -d "=" -f 2)
PPid=$(echo $line | cut -d ":" -f 2 | cut -d "=" -f 2)
if [[ $prevPPid -eq -1 ]]
then
echo $line
prevPPid=$PPid
sum=$Runtime
count=1
continue
fi
if [[ $PPid -eq $prevPPid ]]
then
echo $line
sum=$(bc <<< "scale=5; $Runtime + $sum")
count=$(( count + 1 ))
else
echo "Average_Sleeping_children_of_ParentID=$prevPPid is" $(bc <<< "scale=5; $sum / $count")
echo $line
prevPPid=$PPid
sum=0
count=1
fi
done < task4.txt > task5.txt
