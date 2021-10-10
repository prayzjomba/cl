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
	elif [[ $1 = 'A' ]]; then
		dirA=$(pwd)
	elif [[ $1 = 'a' ]]; then
		dir=$dirA
	elif [[ $1 = 'B' ]]; then
		dirB=$(pwd)
	elif [[ $1 = 'b' ]]; then
		dir=$dirB
	elif [[ $1 = 'C' ]]; then
		dirC=$(pwd)
	elif [[ $1 = 'c' ]]; then
		dir=$dirC
	fi
else
	dir=.
	
fi

if [[ $1 != 'A' && $1 != 'B' && $1 != 'C' ]]; then
	if [[ -n $2 ]]; then
		cd $dir && ls $2 $3 $4 $5
	else
		cd $dir && ls -shct | head -5 | sed 1d
	fi
fi
