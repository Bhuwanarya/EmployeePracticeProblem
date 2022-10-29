#!/bin/bash -x

#!/bin/bash

perHourSalary=20;
WorkingHour=0;
totalSalary=0;

for ((day=1; day<=20 ;day++))
do
	isPresent=$((RANDOM%3));
	case $isPresent in
		0)
		#echo "Employee is absent";
		WorkingHour=0;
		;;

		1)
		#echo "Employee is present";
		WorkingHour=8;
		;;

		2)
		echo "Employee is Working as part time";
		WorkingHour=4;
		;;
	esac
	salary=$(($perHourSalary * $WorkingHour));
	totalSalary=$(($totalSalary + $salary));

done

echo "Employee has earned $totalSalary $ in a month";

