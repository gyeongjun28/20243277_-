#!/bin/bash

name=$1

if [ ! -f DB.txt ]; then
	echo "Error"
	exit 1
fi
result=$(grep -w "$name" DB.txt)

if [ -z "$result" ]; then
	echo "Error"
else
	echo "$result"
fi

