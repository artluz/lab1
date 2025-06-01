#!/bin/bash

if [ ! -f "NOD.sh" ] || [ ! -f "NOK1.sh" ]; then
    echo "Ошибка: скрипты NOD.sh или NOK1.sh не найдены в текущей директории!"
    exit 1
fi

if [ ! -x "NOD.sh" ] || [ ! -x "NOK1.sh" ]; then
    echo "Делаем скрипты исполняемыми..."
    chmod +x NOD.sh NOK1.sh
fi

echo "Введите два числа для вычисления НОД и НОК:"
read -p "Первое число: " num1
read -p "Второе число: " num2

if ! [[ "$num1" =~ ^[0-9]+$ ]] || ! [[ "$num2" =~ ^[0-9]+$ ]]; then
    echo "Ошибка: нужно ввести целые числа!"
    exit 1
fi

echo ""
echo "Результаты вычислений:"
echo "---------------------"

echo "НОД чисел $num1 и $num2:"
./NOD.sh "$num1" "$num2"

echo ""

echo "НОК чисел $num1 и $num2:"
./NOK1.sh "$num1" "$num2"
