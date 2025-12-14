#!/bin/bash

read -p "Enter starting year: " start
read -p "Enter ending year: " end

count=0

echo "Leap years between $start and $end are : "

for  ((year=start; year<=end; year++))
do
if (( (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) ))
then
echo $year
count=$((count + 1))
fi

done

echo "Total number of the year : $count "
