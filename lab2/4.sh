#!/usr/bin/bash

for pid in $(ps -a -u root o pid)
do
ppid=$(grep -s "PPid"  "/proc/"$pid"/status" | grep -E -o "[0-9]+")
echo "$ppid"
done


