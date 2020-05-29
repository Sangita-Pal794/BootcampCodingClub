#!/bin/bash 
read -p "Enter a" a
read -p "Enter b" b
read -p "Enter c" c
declare -a results
echo $a ""$b ""$c
results[0]=$(($a +$(($b*$c))))
results[1]=$(($c +$(($b*$a))))
results[2]=$(($c +$(($a/$b))))
results[3]=$(($c +$(($a%$b))))
echo ${results[@]}
max ()
{
    #status=$(echo "$1 > $2" |bc)
    if [[ $1 -gt $2 ]]
    then 
        echo $1
    else
        echo $2
    fi

}
min ()
{
    x=$1
    y=$2
    if [[ $x < $y ]]
    then
        echo $x
    else
        echo $y
    fi
}

declare -a sorted
while [[ ${#results[@]} -gt 0 ]]
do
    #echo ${results[@]}
    mx=${results[0]}
    for i in ${results[@]}
    do
        mx=$(max $i $mx )
    done
    #echo $mi
    delete=($mx)
    results=(${results[@]/$delete})
    #echo ${results[@]}
    sorted[${#sorted[@]}]=$mx
done
echo ${sorted[@]}
