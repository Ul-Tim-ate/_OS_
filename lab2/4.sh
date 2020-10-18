#!/usr/bin/bash

for pid in $(ps -a -u root o pid)
do
ppid = $(grep -s "ppid"  "/proc/"$pid"/status" | grep -E -o "[0-9]+")
echo "$Ppid"
done


