!/bin/bash
read -p "Enter a" a
read -p "Enter b" b
read -p "Enter c" c
declare -A results
echo $a ""$b ""$c
counter=0
results[counter++]=$(($a +$(($b*$c))))
results[counter++]=$(($c +$(($b*$a))))
results[counter++]=$(($c +$(($a/$b))))
results[counter++]=$(($c +$(($a%$b))))


