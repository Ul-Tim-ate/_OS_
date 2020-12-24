#!/bin/bash
Operation=0
Number=1
re='^-?[0-9]+$'
(tail -f SalamAleikum) |
while true 
do
read LINE
case $LINE in
	"QUIT")
		killall tail
		echo "planned exit"
		exit 0
		;;
	"+")
		let Operation=0
		;;
	"MUL")
		let Operation=1
		;;
	*)	
		if [[ "$LINE" =~ $re ]]
		then
			if [[ "$Operation" -eq 0 ]]
			then
			Number=$(( $Number + $LINE ))
			fi
			if [[ "$Operation" -eq 1 ]]
			then
			Number=$(( $Number * $LINE ))
			fi
			echo $Number
		else	
			killall tail
			echo "Error: wrong input data"
			exit -1
		fi
		;;
esac
done
