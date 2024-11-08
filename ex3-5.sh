#!/bin/bash
run_ls() {
	echo "Entered the func"
	ls "$@"
	echo "Exited the func" 
}
echo "Starting the program."
run_ls "$@"
echo "Ending the program"
