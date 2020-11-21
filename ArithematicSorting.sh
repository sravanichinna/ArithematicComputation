#!/bin/bash
echo "Welcome to Sorting Arithematic computation"
read -p "Enter a number:" num1
read -p "Enter a number:" num2
read -p "Enter a number:" num3
result1=$(( $num1 + $num2 * $num3 ))
result2=$(( $num1 * $num2 + $num3 ))
result3=$(( $num3 + $num1 / $num2 ))
result4=$(( $num1 % $num2 + $num3 ))
arr[0]=$result1
arr[1]=$result2
arr[2]=$result3
arr[3]=$result4
echo -e ${arr[@]}
temp=0
for((i=0 ; i<=4 : i++ ))
do
	for((j=0 ; j<=4-i-1 ; j++ ))
	do
		if[[ ${arr[j]} -lt ${arr[$((j+1))]} ]]
		then
			temp=${arr[j]}
			arr[j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done
done
echo "sort in decending order: " ${arr[@]}
