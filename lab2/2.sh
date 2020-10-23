#!/bin/bash
ps -a -u root o pid,command | grep /sbin/ | head -n -1 | awk '{print $1}' > task2.txt
