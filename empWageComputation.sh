#!/bin/bash 
echo Welcome to Employee Wage Computation Program
isabsent=0;
isparttime=1;
isfulltime=2;
fulltimehours=8;
parttimehours=4;
wageperhour=20;
salary=0;
emphours=0;
days=1;
while [ $days -lt 21 -a $emphours -lt 100 ]
do
empcheck=$(( $RANDOM%3 ));
case $empcheck in
	$isfulltime)
	 	emphours=$(( $emphours+8 ))
		echo Employee is present and fulltime
		salary=$(( $fulltimehours*$wageperhour ))
		;;
	$isparttime)
		emphours=$(( $emphours+4 ))
		echo Employee is present and parttime
		salary=$(( $parttimehours*$wageperhour ))
		;;
	$isabsent)
		emphours=$(( $emphours+0 ))
		echo Employee is absent
		salary=$(( 0*$wageperhour ))
		;;
esac
echo salary is $salary
echo day $days
echo hours $emphours
monthlywages=$(( $monthlywages+$salary))
echo Monthly wages are $monthlywages
days=$(( $days+1 ))
done
