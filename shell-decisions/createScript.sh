#!/bin/bash

# create script
# This script creates a new bash script, sets permission.

if [[ ! $1 ]]; then 
    echo "Missing argument"
    exit 1
fi

# set -x

if [[ -e $1 ]]; then
    echo "File ${filename} already exists"
    exit 1
fi

# set +x 

echo '#!/bin/bash' > "$1"

# Add executable permission
chmod u+x "$1"

#Open with editor
# $EDITOR "$1"
if [[ $EDITOR ]]; then
    $EDITOR "$1"
else
    echo "Script '$1' created; not starting editor \$EDITOR is not set."
fi
# -d check for directory.
#  -e check for filename existence.