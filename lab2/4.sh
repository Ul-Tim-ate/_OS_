#!/usr/bin/bash

for pid in $(ps -a -u root o pid)
do
ppid = $(grep -s "ppid"  "/proc/"$pid"/status")
echo "$Ppid"
done


