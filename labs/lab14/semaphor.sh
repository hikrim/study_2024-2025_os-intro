#!/bin/bash

LOCK_FILE="/tmp/resource.lock"
FIFO_DIR="/tmp/resource_fifos"
T1=5  
T2=3  

mkdir -p "$FIFO_DIR"

FIFO_PATH="$FIFO_DIR/$$"
mkfifo "$FIFO_PATH"

cleanup() {
    rm -f "$FIFO_PATH"
    if [ -f "$LOCK_FILE" ] && [ "$(cat "$LOCK_FILE")" = "$$" ]; then
        rm -f "$LOCK_FILE"
        echo "Процесс $$ освободил ресурс при завершении"
        next_fifo=$(ls "$FIFO_DIR" | sort -n | head -n 1)
        if [ -n "$next_fifo" ]; then
            echo "1" > "$FIFO_DIR/$next_fifo"
        fi
    fi
    exit
}

trap cleanup EXIT SIGINT SIGTERM

echo "Процесс $$ ожидает освобождения ресурса..."

if [ ! -f "$LOCK_FILE" ]; then
    echo "$$" > "$LOCK_FILE"
    echo "Процесс $$ получил доступ к ресурсу (ресурс был свободен)"
else
    echo "Процесс $$ встал в очередь на ресурс"
    while read -r; do
        if [ ! -f "$LOCK_FILE" ]; then
            echo "$$" > "$LOCK_FILE"
            echo "Процесс $$ получил доступ к ресурсу (получил уведомление)"
            break
        fi
    done < "$FIFO_PATH"
fi

echo "Процесс $$ использует ресурс..."
sleep $T2

rm -f "$LOCK_FILE"
echo "Процесс $$ освободил ресурс"

next_fifo=$(ls "$FIFO_DIR" | sort -n | grep -v "^$$$" | head -n 1)
if [ -n "$next_fifo" ]; then
    echo "1" > "$FIFO_DIR/$next_fifo"
fi

rm -f "$FIFO_PATH"
