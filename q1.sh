#!/bin/bash

isPrime(){
	num=$1
	for (( i=2; i<num; i++ ))
	do
		if [ `expr $num % $i` == 0 ]
		then
				echo 0
				exit
		fi
	done
	
	echo 1
}

echo "Enter a number: "
read
num=$REPLY
echo "Number entered is:" $num

counter=2

while [ $counter -lt $num ]
do
	val1=$(isPrime $counter)
	num2=$(( $counter + 2 ))
	val2=$(isPrime $num2)
	echo $val1 $val2
	counter=$(( $counter + 1))
done
