#!/bin/bash -x

isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
numWorkingDays=20;

for (( day=1; day<=$numWorkingDays; day++ ))
do
	empcheck=$((RANDOM%3));
		case $empcheck in
			$isFullTime)
				empHrs=8
				;;
				*)
				empHrs=0
					;;
		esac
		
		salary=$(($empHrs*$empRatePerHr));
		totalSalary=$(($totalSalary+$salary));
done
