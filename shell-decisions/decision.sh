#!/bin/bash

# get the date.
date=$(date)

#get the topic
topic="$1"

# filename to write on
filename="${topic}notes.txt"

# Ask user for input.
read -p "Your Note: " note

if [[ $note ]]; then
    echo "$date: $note" >> "$filename"
    echo "Note: '$note' saved to $filename"
else
    echo "No Input; note wasn't saved."
fi
