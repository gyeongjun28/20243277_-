


#!/bin/bash
weight=$1
height=$2

height_m=$(echo "scale=2; $height / 100" | bc)
bmi=$(echo "scale=2; $weight / ($height_m * $height_m)" | bc)

if (( $(echo "$bmi < 18.5" | bc -l) )); then
	echo "low weight"
elif (( $(echo "$bmi >=  18.5" | bc -l) && $(echo "$bmi < 23" | bc -l) )); then
	echo "normal weight"
else
	echo "over weight"
fi
