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

if [ $ID -eq 0 ]
then
    echo -e "$G Success : Your are having root access to install application $N"
else
    echo -e "$R Failure : You Don't have access to install application $N"

exit 1

fi # END the Conidtion

yum install firefox -y &>>$LOG # YUM will download and install the application

VALIDATE $? "Installing firefox"

yum install wget -y &>>$LOG # Wget Appliation Installing

VALIDATE $? " Installing Wget"

yum install postgresql -y &>>$LOG # POSTGRESQL Database Installing

VALIDATE $? "Installing POSTGRESQL"

yum install mysql -y &>>$LOG # sql database installation

VALIDATE $? "Installing MYSQL"

yum install git -y &>>$LOG # GIT Installation 

VALIDATE $? "Installing GIT"

yum install web -y &>>$LOG # WEB Installation 

VALIDATE $? "Installing web"