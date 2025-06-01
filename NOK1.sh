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


lcm() {
    local a=$1
    local b=$2
    local gcd_result=$(gcd $a $b)
    echo $(( (a * b) / gcd_result ))
}


read -p "Введите первое число: " num1


re='^[0-9]+$'
if ! [[ $num1 =~ $re ]]; then
    echo "Ошибка: введено не целое число"
    exit 1
fi


read -p "Введите второе число: " num2


if ! [[ $num2 =~ $re ]]; then
    echo "Ошибка: введено не целое число"
    exit 1
fi


result=$(lcm $num1 $num2)
echo "НОК чисел $num1 и $num2 равен: $result"
