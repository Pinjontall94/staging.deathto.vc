#!/bin/sh
set -xe
SRC="./content/posts/" # note the leading forward slash
DEST="$HOME/www/pinjontall94.github.io/content/posts/"
if [ -d "$SRC" ] && [ -d "$DEST" ]; then
    rsync -auPn "$SRC" "$DEST"
else
    echo "$SRC or $DEST not found or not dirs"
    exit 1
fi
