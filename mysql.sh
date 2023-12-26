#!/bin/bash
# MySQL Installation

ID=$(id -u)

if [ $ID -eq 0 ]
then
    echo "Success : I having root access to install application"
else
    echo "Failure : I Don't have access to install application"
fi # END the Conidtion

exit 1

yum install mysql -y # YUM will download and install the application



