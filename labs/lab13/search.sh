#!bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Инициализируем переменные
input_file=""
output_file=""
pattern=""
case_sensitive=0
line_numbers=0

while getopts "i:o:p:Cn" opt; do
  case $opt in
    i) input_file=$OPTARG ;;
    o) output_file=$OPTARG ;;
    p) pattern=$OPTARG ;;
    C) case_sensitive=1 ;;
    n) line_numbers=1 ;;
  esac
done

grep_flags=""
if [ $case_sensitive -eq 0 ]; then
  grep_flags+=" -i"
fi
if [ $line_numbers -eq 1 ]; then
  grep_flags+=" -n"
fi

if [ -z "$output_file" ]; then
  grep $grep_flags "$pattern" "$input_file"
else
  grep $grep_flags "$pattern" "$input_file" > "$output_file"
fi

   
   
