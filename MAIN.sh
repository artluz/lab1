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
