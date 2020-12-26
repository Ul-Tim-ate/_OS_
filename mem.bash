#!/bin/bash
echo > report.log
arr=()
count=0
while true
do
arr+=(4 3 5 6 2 5 2 7 2 1)
count=$(( $count + 1 ))
if [[ $(($count % 100000)) = 0 ]]
then
echo $(( $count * 10 )) >> report.log
fi
done
