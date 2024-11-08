#!/bin/bash

name=$1
info=$2
option=$3

if [ "$option" == "--reset" ]; then
	echo "$name Sinfo" >> DB.txt
	echo "$name $info" >> DB.txt
else
	echo "$name $info" >> DB.txt
fi
