#!/bin/bash

function find_files {
	address="."
	files=""
	while getopts "a:f:" opt; do
		case $opt in
			a) 
				address="$OPTARG"
				;;
			f) 
				files="$OPTARG"
				;;
		esac
	done

	eval "find $address -name $files -type f"
}

alias ff='find_files'
