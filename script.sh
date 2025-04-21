#!/bin/bash

echo "Enter the method: 1 for add, 2 for mul, 3 for div"
read opr

read -p "Enter 1st operand: " num
read -p "Enter 2nd operand: " num2

if [ "$opr" -eq 1 ]; then
    echo "Result: $((num + num2))"
elif [ "$opr" -eq 2 ]; then
    echo "Result: $((num * num2))"
elif [ "$opr" -eq 3 ]; then
    if [ "$num2" -eq 0 ]; then
        echo "Cannot divide by zero"
    else
        echo "Result: $((num / num2))"
    fi
else
    echo "Invalid operation"
fi
