#!/usr/bin/bash

for pid in $(ps -a -u root o pid)
do
Ppid = $(grep -s "PPid"  "/proc/"$pid"/status")
echo "$Ppid"
done


