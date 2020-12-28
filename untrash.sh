#!/bin/bash
[[ $# -eq 1 ]] || { echo "Error: wrong number of arguments" ; exit 1 
} 
IFS=$'\n'
for line in $(grep $1 ~/trash.log)
do
echo $line
read -p "Do you want restore this file? Yes/something " answer
[[ $answer = Yes ]] && {
path=$(echo $line | awk '{ print $4}') 
name=$(echo $line | awk '{ print $2}') 
flag=0
cd $path
[[ -d $path ]] && flag=0 || flag=1  
[[ $flag -eq 1 ]] && { echo "Error: some directories doesn't exist" ; ln $name $(~/$1)
} 
[[ $flag -eq 0 ]] && [[ -e $1 ]] && { read -p "This file already exist. Change name " answer ; ln $name $answer 
} 
[[ -e $1 ]] || touch $1 
rm $name
rm ~/.trash/$1
}
done
