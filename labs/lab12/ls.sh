#!/bin/bash

dir=${1:-.}

echo "Содержимое каталога $dir: "

for i in "$dir"/*; do
	if [ -d "$i" ]; then
		type="Каталог"
	elif [ -f "$i" ]; then
		type="Файл"
	else
		type="Другое"
	fi
	
	permissions=$(stat -c "%A" "$i")
	echo "$type: ${i##*/} | Права: $permissions"
done
