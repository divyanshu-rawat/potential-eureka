#!/bin/bash

# $# contains number of recieved arguments.

# set -x
if [[  $# -ne 2 ]]; then
    echo "Need exactly two arguments!"
    exit 1
fi


# Both arguments hould be dirs.

if [[ ! -d $1 ]]; then
    echo "'$1' is not directory"
    exit 1
fi

if [[ ! -d $2 ]]; then 
    echo "'$2' is not a directory"
fi

dir1="$1"
dir2="$2"

# Get number of files in directories.

count_1=$(ls -A1 "$dir1" | wc -l)
count_2=$(ls -A1 "$dir2" | wc -l)

# which one has most files?

if [[ $count_1 -gt $count_2 ]]; then
    echo "'$dir1' won!"
else 
    if [[ $count_1 -eq $count_2 ]]; then
        echo 'Draw!'
    else
        echo "'$dir2' won!"
    fi
fi

# set +x

exit 0