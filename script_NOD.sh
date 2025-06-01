#!/bin/bash

gcd() {
    local a=$1
    local b=$2
    
    while [ $b -ne 0 ]; do
        local temp=$b
        b=$((a % b))
        a=$temp
    done
    
    echo $a
}

echo "Нахождение наибольшего общего делителя (НОД) двух чисел"

read -p "Введите первое число: " num1

while ! [[ "$num1" =~ ^[0-9]+$ ]]; do
    read -p "Ошибка! Введите целое число: " num1
done

read -p "Введите второе число: " num2

while ! [[ "$num2" =~ ^[0-9]+$ ]]; do
    read -p "Ошибка! Введите целое число: " num2
done

result=$(gcd "$num1" "$num2")
echo "НОД чисел $num1 и $num2 равен: $result"
