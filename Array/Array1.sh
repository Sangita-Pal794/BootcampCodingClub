#! /bin/bash -x
echo "a"

echo $random
for(( count=0 ; count=10; count++ ))
do
	random=$((RANDOM%1000))
	numbers[$count]=$random
done

for(( count=(($({#numbers[@]})); count=0; count--))
do
	for(( count=0; counter<((counter-1)); counter++ ))
	do
		num1=${numbers[$counter]}
		num2=${numbers[ ((counter+1)) ]}
	
	if[ $num1 -gt $num2 ]
	then
	    ${numbers[$counter]}=$num2
	   ${numbers[ ((counter+1)) ]}=$num1
	fi
	done
done
	
	echo ${numbers[@]}
	echo ${#numbers[@]}
