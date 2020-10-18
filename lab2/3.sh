#!/bin/bash
ps -a -u root o start,pid | sort -k1 | tail -2 | head -1 | awk '{print $2}' > task3.txt
