#!/bin/bash
num1=$1
operator=$2
num2=$3

if [ "$operator" == "+" ]; then
	echo $((num1 + num2))
elif [ "$operator" == "-" ]; then
	echo $((num1 - num2))
else
	exit 1
fi
