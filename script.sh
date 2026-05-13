#!/bin/bash

# starts script
echo "Script starting"

# shows where you are
pwd

# makes folders
mkdir -p departments/hr
mkdir -p backup

# makes files
touch departments/hr/payroll.txt
touch departments/hr/employees.txt
touch temp.txt

# puts words in files
echo "Payroll data" > departments/hr/payroll.txt
echo "Employee names" > departments/hr/employees.txt

# showes files
ls -al departments/hr

# copy file to backup
cp -v departments/hr/payroll.txt backup/

# moves temp file
mv temp.txt old_temp.txt

# delete old temp file
rm -i old_temp.txt

# putting date into report
date > report.txt

# writing stuff into report
echo "Directories created: departments/hr and backup" >> report.txt
echo "Copied: payroll.txt to backup" >> report.txt
echo "Moved: temp.txt to old_temp.txt" >> report.txt
echo "Removed: old_temp.txt" >> report.txt

# showing final report
cat report.txt

# message shows script is done
echo "Script finished"
