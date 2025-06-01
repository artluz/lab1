#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Использование: $0 число1 число2"
    exit 1
fi

gcd() {
    a=$1; b=$2
    while [ $b -ne 0 ]; do
        temp=$b
        b=$((a % b))
        a=$temp
    done
    echo $a
}

gcd_val=$(gcd $1 $2)
echo "НОК $1 и $2: $(( ($1 * $2) / gcd_val ))"
