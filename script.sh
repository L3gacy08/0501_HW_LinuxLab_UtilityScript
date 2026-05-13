#!/bin/bash

# starts script
echo "script starting"

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
echo "payroll data" > departments/hr/payroll.txt
echo "employee names" > departments/hr/employees.txt

# showes files
ls -al departments/hr

# copy file to backup
cp -v departments/hr/payroll.txt backup/

# moves temp file
mv temp.txt old_temp.txt

# deletes old temp file
rm -i old_temp.txt

# puts date into report
date > report.txt

# writes stuff into report
echo "directories created: departments/hr and backup" >> report.txt
echo "copied: payroll.txt to backup" >> report.txt
echo "moved: temp.txt to old_temp.txt" >> report.txt
echo "deleted: old_temp.txt" >> report.txt

# shows final report
cat report.txt

# message shows script is done
echo "script finished"
