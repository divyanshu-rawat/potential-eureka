#!/bin/bash

# Prints standard input to standard output
# discarding all lines before the first line matching 
# the string given as the first argument.

set -x
if [[ ! $1 ]]; then
	echo "Need first argument" >&2
	exit 1
fi

found=""

# read upto first match
while read -r  answer; do
	if [[ ! $found ]]; then
		if [[ $answer =~ $1 ]]; then
			found="yep"
			break
		else
			continue
		fi
	fi
	echo "$REPLY"	
done

set +x
exit 0
