#!/bin/bash
[[ $# -eq 1 ]] || { echo "Error: wrong number of arguments" ; exit 1 
} 
[[ -e $1 ]] || { echo "Error: this file doesn't exist in this directory" ; exit 3
}
[[ -f $1 ]] || { echo "Error: this file isn't really a file" ; exit 4
}
a=~/.trash
[[ -d $a ]] && : || mkdir ~/.trash
NowTime=$(date +"%d.%m.%Y_%T")
ln $1 $NowTime ; rm ./$1
echo "(Name of link - $NowTime  path - $(pwd))" >> ~/trash.log
