#!/bin/bash
ps -a -u root o pid,command | grep /sbin/ | grep -v "grep" | awk '{print $1}' > task2.txt
