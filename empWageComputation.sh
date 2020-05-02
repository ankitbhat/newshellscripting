#!/bin/bash -x
echo Welcome to Employee Wage Computation Program
ispresent=1;
wageperhour=20;
fullday=8
dailywage=$(( $wageperhour * $fullday ));
salary=0;
counter=0;
for (( count=0; count<=10; count++ ))

do
	status=$(( $RANDOM%2))
	if [ $status -eq $ispresent ]
	then
		echo "Employee is present"
		salary=$(( $salary+$dailywage));
		counter=$(( $counter+1 ));
	else
		echo "Employee is absent"
		salary=$(($salary+0));
	fi
echo $salary
done
