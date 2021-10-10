#!/usr/bin/bash

# Change dir and list


if [[ -n $1 ]]; then
	if [[ $1 = 'd' ]]; then
		dir=~/Desktop
	elif [[ $1 = 'e' ]]; then
		dir=~/Documents
	elif [[ $1 = 'o' ]]; then
		dir=~/Downloads
	elif [[ $1 = 'm' ]]; then
		dir=~/Music
	elif [[ $1 = 'p' ]]; then
		dir=~/Pictures
	elif [[ $1 = 'v' ]]; then
		dir=~/Videos
	fi
else
	dir=.
	
fi

if [[ -n $2 ]]; then
	echo $3
	cd $dir && ls $2 $3 $4 $5
else
	cd $dir && ls -shct | head -5 | sed 1d
fi
