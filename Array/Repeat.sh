#!/bin/bash
cnt=0;
for((i=1;i<100;i++))
do
	div=$((i/10))
	rem=$((i%10))
	if [[ $div -eq $rem ]]
	then
		a[((cnt++))]=$(($i))
	fi
done
echo ${a[@]}
