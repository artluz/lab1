#!/bin/bash

# Функция для вычисления НОД (наибольшего общего делителя) по алгоритму Евклида
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

# Функция для вычисления НОК двух чисел
lcm() {
    local a=$1
    local b=$2
    local gcd_result=$(gcd $a $b)
    echo $(( (a * b) / gcd_result ))
}

# Запрос ввода первого числа
read -p "Введите первое число: " num1

# Проверка что введено целое число
re='^[0-9]+$'
if ! [[ $num1 =~ $re ]]; then
    echo "Ошибка: введено не целое число"
    exit 1
fi

# Запрос ввода второго числа
read -p "Введите второе число: " num2

# Проверка что введено целое число
if ! [[ $num2 =~ $re ]]; then
    echo "Ошибка: введено не целое число"
    exit 1
fi

# Вычисление и вывод результата
result=$(lcm $num1 $num2)
echo "НОК чисел $num1 и $num2 равен: $result"
