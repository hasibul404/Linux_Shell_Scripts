#!/bin/bash

pass=0
fail=0

read -p "Enter number of students: " n

for ((i=1; i<=n; i++))
do
echo "Student $i"
read -p "Student ID: " sid
read -p "Marks 1: " m1
read -p "Marks 2: " m2
read -p "Marks 3: " m3

total=$((m1 + m2 + m3))
percentage=$((total * 100 / 300))

if [ $percentage -ge 80 ]
then
grade="A+"
result="Pass"
pass=$((pass+1))

elif [ $percentage -ge 70 ]
then
grade="A"
result="Pass"
pass=$((pass+1))

elif [ $percentage -ge 60 ]
then
grade="B"
result="Pass"
pass=$((pass+1))

elif [ $percentage -ge 40 ]
then
grade="C"
result="Pass"
pass=$((pass+1))

else
grade="F"
result="Fail"
fail=$((fail+1))
fi

echo ""
echo "Student ID: $sid"
echo "Total marks: $total/300"
echo "Percentage: $percentage%"
echo "Grade: $grade"
echo "Result: $result"

done

echo ""
echo "Final Summary"
echo "Total Students: $n"
echo "Total Passed: $pass"
echo "Total Failed: $fail"
