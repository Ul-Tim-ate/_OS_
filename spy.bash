#!/bin/bash
while true
do 
top -n 1 | grep "МиБ Swap"
top -n 1 | grep "МиБ Mem" 
echo " "
top -n 1 | head  -12 | tail -5
echo "____________________________________________________________________________________"
sleep 1s
done
