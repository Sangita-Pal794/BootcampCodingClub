#!/bin/bash
read -p "Enter 3 no's" a b c
arr[0]=$(($a))
arr[1]=$(($b))
arr[2]=$(($c))
if [[ $((a+b+c)) -eq 0 ]]
then
	echo "Sum of the no's is zero"
else
	echo "Sum of the no's is not zero"
fi

