#!/bin/bash

check_prime() {
num=$1
if [ $num -le 1 ]
then
echo "Not a Prime Number"
return
fi

for ((i=2; i*i<=num; i++))
do
if [ $((num % i)) -eq 0 ]
then
echo "Not a Prime Number"
return
fi
done
echo "Prime Number"
}

check_leap() {
y=$1
if [ $((y%400)) -eq 0 ] || [ $((y%4)) -eq 0 -a $((y%100)) -ne 0 ] 
then
echo "Leap Year"
else
echo "Not a Leap Year"
fi
}

sum_series() {
n=$1
sum=0
for ((i=1; i<=n; i++))
do
sum=$((sum + i))
done
echo "Sum from 1 to $n = $sum"
}

read -p "Enter a number: " num

while true
do
echo ""
echo "1. Check Prime"
echo "2. Check Leap Year"
echo "3. Sum of Series (1 to n)"
echo "4. Exit"

read -p "Enter choice: " ch

case $ch in
1) check_prime $num ;;
2) check_leap $num ;;
3) sum_series $num ;;
4) echo "Exiting..."; exit ;;
*) echo "Invalid Choice" ;;

esac

done
