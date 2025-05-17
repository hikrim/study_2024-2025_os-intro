#!/bin/bash

MAN_DIR="/usr/share/man/man1"
COMMAND=$1
MAN_FILE="$MAN_DIR/${COMMAND}.1.gz"

if [ -f "$MAN_FILE" ]; then
    gunzip -c $MAN_FILE | less
else
    echo "Справка по команде '$COMMAND' не найдена."
fi
