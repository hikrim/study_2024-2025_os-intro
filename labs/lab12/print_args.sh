#!/bin/bash
echo "Всего аргументов: $#"
echo "Список аргуентов:"

i=1
for arg in "$@"; do
	echo "Аргумент $i: $arg"
	((i++))
done
