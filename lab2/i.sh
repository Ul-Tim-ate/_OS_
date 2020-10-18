#!/bin/bash
ps -a -u | grep -c user > task1.txt
ps -a -u user o user,pid,command | grep user | awk '{print $2 ":" $3}' >> task1.txt 