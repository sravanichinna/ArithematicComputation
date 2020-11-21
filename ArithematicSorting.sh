#!/bin/bash
echo "Welcome to Sorting Arithematic computation"
read -p "Enter a number:" num1
read -p "Enter a number:" num2
read -p "Enter a number:" num3
result1=$(( $num1 + $num2 * $num3 ))
result2=$(( $num1 * $num2 + $num3 ))
result3=$(( $num3 + $num1 / $num2 ))
arr[0]=$result1
arr[1]=$result2
arr[2]=$result3
