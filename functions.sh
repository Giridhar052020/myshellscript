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

if [ $ID -eq 0 ]
then
    echo "Success : Your are having root access to install application"
else
    echo "Failure : You Don't have access to install application"

exit 1

fi # END the Conidtion

yum install mysql -y # YUM will download and install the application

VALIDATE $? "Installing mysql"

yum install git -y # GIT Appliation Installing

VALIDATE $? " Installing GIT"

yum install postgresql -y # POSTGRESQL Database Installing

VALIDATE $? "Installing POSTGRESQL"

