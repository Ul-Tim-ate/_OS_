#!/bin/bash
count=0
while [ $count -lt 30  ]
do
(( count++ ))
./newmem.bash 3500000 &
sleep 1s
done
