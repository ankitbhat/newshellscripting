#!/bin/bash -x
echo Welcome to Employee Wage Computation Program
isparttime=1;
isfulltime=2;
wageperhour=20;
for(( i=0;i<20;i++ ))
do
empcheck=$(( $RANDOM%3 ));
case $empcheck in
	$isfulltime)
	 	emphours=8
		;;
	$isparttime)
		emphours=4
		;;
	*)
	emphours=0
		;;
esac
	salary=$(( $emphours*$wageperhour ));
echo $salary
monthlywages+=$(( $salary ))
echo monthly wages are $monthlywages
done
