#!/bin/bash

# $# contains number of recieved arguments.

if [[  $# -ne 2 ]]; then
    echo "Need exactly two arguments!"
    exit 1
fi
