#!/bin/bash -x
echo Welcome to Employee Wage Computation Program
ispresent=1;
status=$(( $RANDOM%2))
if [ $status -eq $ispresent ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
	fi
done
