#!/bin/bash

#
# start.bash
#

GHOST="/ghost"
OVERRIDE="/ghost-override"
# DATA="content/data"

cd "$GHOST"

# # Symlinks files.
# if [[ -n $(ls -A "$OVERRIDE") ]]; then
#   cp -frs "$OVERRIDE/*" "$GHOST" 2> /dev/null
# fi
#
# # Symlink data directory.
# mkdir -p "$OVERRIDE/$DATA"
# rm -fr "$DATA"
# ln -s "$OVERRIDE/$DATA" content

# No, lets instead, just assume we have an existing content directory in our volume
mv content content-old
ln -s "$OVERRIDE/content" content


npm start
