#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Для использования $0 введите число1 число2"
    exit 1
fi

a=$1; b=$2
while [ $b -ne 0 ]; do
    temp=$b
    b=$((a % b))
    a=$temp
done

echo "НОД $1 и $2: $a"
