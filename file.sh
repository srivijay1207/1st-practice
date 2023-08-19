
#!/bin/bash
USERID=$(id -u)
    if [ $USERID -ne 0 ]; then
    echo "plss log in with root user"
    exit 1  
    fi
    for i in $@
    do
    yum list installed $i
    if [ $? -ne 0]; then
    echo "already installed"
    else
    yum install $i
    echo "installation success"
    done
