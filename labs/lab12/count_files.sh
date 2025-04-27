#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Использование: $0 <расширение> <путь_к_каталогу>"
	exit 1
fi

ext="$1"
dir="$2"

count=$(find "$dir" -type f -name "*.$ext" | wc -l)
echo "Количество файлов с расширением .$ext в каталоге $dir: $count"
