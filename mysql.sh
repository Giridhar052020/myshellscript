#!/bin/bash
# MySQL Installation and Validation for application

ID=$(id -u)

if [ $ID -eq 0 ]
then
    echo "Success : Your are having root access to install application"
else
    echo "Failure : You Don't have access to install application"

    exit 1

fi # END the Conidtion

yum install mysql -y # YUM will download and install the application

if [$? -eq 0 ]
then
    echo "Successfully MYSQL Is Install"
else
    echo "Failure, Unable to Install the MYSQL"

fi # END Condition

yum install git -y # GIT Appliation Installing

if [ $? -eq 0 ]
then
    echo "Successfully GIT Is Installed"
else
    echo "Failure, Unable to install the GIT"
fi # ENd Condition

yum install PostgreSQL -y # POSTGRESQL Database Installing

if [$? -eq 0 ]
then
    echo "Successfully installed the POSTGRESQL"
else   
    echo "Failure, Unable to install the POSTGRESQL"
fi # END Condition


