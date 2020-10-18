#!/usr/bin/bash

for pid in $(ps -a -u root o pid)
do
PPid=`grep -s "PPid"  "/proc/"$pid"/status" | awk '{print $2}')`
Runtime=`grep -s "sum_exec_runtime"  "/proc/"$pid"/sched" | awk '{print $3}')`
Switch=`grep -s "nr_switches"  "/proc/"$pid"/sched" | awk '{print $3}')`
#Art=$Runtime / $Switch
done


