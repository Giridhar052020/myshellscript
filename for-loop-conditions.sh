#!/bin/bash
# MySQL Installation and Validation for application

# Validation the above script

VALIDATE(){
if [ $1 -eq 0 ]
then
    echo -e "$2::$G Successfully Installed $N"
else
    echo -e "$2 ::$R Is Failure $N"

fi # END Condition
}

ID=$(id -u)
TIMESTAMP=$(date +%F-%X)
LOG="/tmp/$0::$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo "Script is running at $TIMESTAMP" &>>$LOG

echo -e "$G Total Number of Packages Passed $# $N" # $# indicates the number of arugmentes

echo -e "$Y The Total Packages :: $@"

for software in $@ # SOFTWARE==> Package (mysql, git)
do
    dnf list installed $software &>>LOG
    if [ $? -eq 0 ]
    then
    echo -e "$Y Already $software Installed, Please skip this $N"
else
    yum install $software -y &>>$LOG
    VALIDATE $? " Installing the $software"
    fi # END Condition
done

