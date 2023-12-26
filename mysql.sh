#!/bin/bash
# MySQL Installation

ID=$(id -u)

if [ $ID -eq 0 ]
then
    echo "Success : Your are having root access to install application"
else
    echo "Failure : You Don't have access to install application"

    exit 1

fi # END the Conidtion



yum install mysql -y # YUM will download and install the application



