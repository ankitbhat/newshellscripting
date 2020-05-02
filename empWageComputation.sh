#!/bin/bash -x
echo Welcome to Employee Wage Computation Program
isparttime=1;
isfulltime=2;
wageperhour=20;
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
