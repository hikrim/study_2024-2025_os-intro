#!/bin/bash

LENGTH=${1:-10}  # Длина последовательности (по умолчанию 10)

for ((i=0; i<LENGTH; i++)); do
    RAND_NUM=$((RANDOM % 26))
    LETTER=$(printf \\$(printf '%03o' $((97 + RAND_NUM))))
    echo -n "$LETTER"
done
echo
