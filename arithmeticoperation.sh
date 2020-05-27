#!/bin/bash -x
read -p "Enter a" a
read -p "Enter b" b
read -p "Enter c" c
declare -A results
echo $a ""$b ""$c
results[0]=$(($a +$(($b*$c))))
results[1]=$(($c +$(($b*$a))))
results[2]=$(($c +$(($a/$b))))
results[3]=$(($c +$(($a%$b))))
for i in "{results[@]}"
do
#echo "Array in original order"
echo "$i => ${results[i]}" 
for ((i = 0; i<4; i++)) 
do
      for((j = 0; j<4-i-1; j++)) 
    do
         if [ ${results[j]} -gt ${results[$((j+1))]} ] 
        then
            # swap 
            temp=${results[j]} 
            results[$j]=${results[$((j+1))]}   
            results[$((j+1))]=$temp 
        fi
    done
done
echo "Array in sorted order :"
for i in "{results[@]}"
do
echo "$i => ${results[i]}"
done	
