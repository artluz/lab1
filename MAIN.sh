#!/bin/bash


for script in script_NOD.sh NOK1.sh; do
    if [ ! -f "$script" ]; then
        echo "Ошибка: отсутствует скрипт $script"
        exit 1
    fi
    [ ! -x "$script" ] && chmod +x "$script"
done


echo "Введите два числа для вычисления:"
read -p "Первое число: " num1
read -p "Второе число: " num2

if ! [[ "$num1" =~ ^[0-9]+$ && "$num2" =~ ^[0-9]+$ ]]; then
    echo "Ошибка: нужно ввести два целых числа!"
    exit 1
fi

nod=$(./script_NOD.sh "$num1" "$num2")
nok=$(./NOK1.sh "$num1" "$num2")


echo -e "\nРезультаты для чисел $num1 и $num2:"
echo "НОД: ${nod##* }"  
echo "НОК: ${nok##* }"
