#!/bin/bash
while true
do
read LINE
if [[ "$LINE" == *"TERM"* ]]
then
	kill -SIGTERM $(cat PIDH)
	exit 0
fi
if [[ "$LINE" == "+" ]]
then
	kill -USR1 $(cat PIDH)
fi
if [[ "$LINE" == "MUL" ]]
then
	kill -USR2 $(cat PIDH)
fi
done
