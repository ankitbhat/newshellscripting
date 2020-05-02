#!/bin/bash -x
echo Welcome to Employee Wage Computation Program
isparttime=1;
isfulltime=2;
wageperhour=20;
dailywage=$(( $wageperhour * 8 ));
salary=0;
counter=0;
for (( count=0; count<=10; count++ ))

do
	status=$(( $RANDOM%3))
	if [ $status -eq $isparttime ]
	then
		echo "Employee is present and part time"
	elif [ $status -eq $isfulltime ]
	then
                echo "Employee is present and full time"
	else
		echo "Employee is absent"
		salary=$(($salary+0));
	fi
echo $salary
done
