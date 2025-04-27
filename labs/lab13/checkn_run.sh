#!/bin/bash

gcc check_number.c -o check_number
./check_number

case $? in
    0) echo "Число равно нулю";;
    1) echo "Число больше нуля";;
    2) echo "Число меньше нуля";;
esac    
