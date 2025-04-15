#!/bin/sh
set -xe
SRC="$HOME/org/public/blog/posts/" # note the leading forward slash
DEST="./content/posts/"
if [ -d "$SRC" ] && [ -d "$DEST" ]; then
    rsync -auP "$SRC" "$DEST"
else
    echo "$SRC or $DEST not found or not dirs"
    exit 1
fi
