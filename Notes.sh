#!/bin/bash

# echo $1 >> notes.txt

# In case we want to save the entire string to the notes.txt file.
# One way is to use "".
# Here is the another way!!!.

# echo $* >> notes.txt

# Now lets add date here by leveraging command substitution.
# Asking user for input.

# get the date.
date=$(date)

#get the topic
topic=$1

read -p "Your Note: " note

echo $date: $note >> ${topic}notes.txt
echo Note saved: $note
