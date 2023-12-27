#!/bin/bash
# MySQL Installation and Validation for application

# Validation the above script

VALIDATE(){
if [ $1 -eq 0 ]
then
    echo "$2 Successfully Applcation Is Installed"
else
    echo "$2 Failure, Unable to Install the Application"

fi # END Condition
}

ID=$(id -u)
TIMESTAMP=$(date +%F-%X)
LOG="/tmp/$0::$TIMESTAMP.log"


if [ $ID -eq 0 ]
then
    echo "Success : Your are having root access to install application"
else
    echo "Failure : You Don't have access to install application"

exit 1

fi # END the Conidtion

yum install firefox -y &>>$LOG # YUM will download and install the application

VALIDATE $? "Installing mysql"

yum install wget -y &>>$LOG # Wget Appliation Installing

VALIDATE $? " Installing Wget"

yum install postgresql -y &>>$LOG # POSTGRESQL Database Installing

VALIDATE $? "Installing POSTGRESQL"

yum install mysql -y &>>$LOG # sql database installation

VALIDATE $? "Installing SQL"

yum install git -y &>>$LOG # GIT Installation 

VALIDATE $? "Installing GIT"