#!/bin/bash
Operation=0
sigterm()
{
	echo "planned exit"
	exit 0
}
sum()
{
	Operation=0	
}
mul()
{
	Operation=1
}
echo $$ > PIDH
Number=1
trap 'sigterm' SIGTERM
trap 'sum' USR1
trap 'mul' USR2

while true
do
	case $Operation in
	0)
		Number=$(( $Number + 2 ))
		;;
	1)
		Number=$(( $Number * 2 ))
		;;
	*)
		:
		;;

	esac
	echo $Number
	sleep 1
done 
