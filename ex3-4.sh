#!/bin/bash
echo -n "are you funny? (yes / no): "
read answer

case "$answer" in
	[yY] | [yY][eE][sS])
		echo "you said linux is funny!!"
		;;
	[nN] | [nN][oO])
		echo "you said linux is no jam!!"
		;;
	*)
		echo "please answer yes or no"
		;;
esac
