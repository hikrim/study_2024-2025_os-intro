#!/bin/bash

if [ -z "$1" ]; then
    echo "Использование: $0 <директория>"
    exit 1
fi

find "$1" -type f -mtime -7 -print0 | tar -czvf backup.tar.gz --null -T -
echo "Архив backup.tar.gz создан."
