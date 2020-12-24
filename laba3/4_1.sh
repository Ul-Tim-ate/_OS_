#!/bin/bash
./4_2.sh &
FirstProcess=$!
./4_2.sh &
./4_2.sh &
ThirdProcess=$!
top -n 1 | grep 4_2.sh
renice -n 10 $FirstProcess
kill $ThirdProcess
top -n 1 | grep 4_2.sh
