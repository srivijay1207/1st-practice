#!/bin/bash

USERID=$(id -u)

if [ $USERID -no 0 ]
then
    echo "error:: please run with sudo user"
    exit 1
fi

yum install mqsql -y
