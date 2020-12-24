#!/bin/bash
re='^-?[0-9]+$'
while true
do
read LINE
echo $LINE > SalamAleikum
if ! [[ "$LINE" =~ $re ]]
then
	if [[ "$LINE" != "+" && "$LINE" != "MUL" ]]
	then
		echo "Error: wrong input data"
		exit -1
	fi
fi

if [[ "$LINE" == "QUIT" ]]
then 
	exit 0
fi
done
