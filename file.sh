
#!/bin/bash
USERID=$(id -u)
    if [ $USERID -ne 0 ]; then
    echo "plss log in with root user"
    exit 1  
    fi
    validate() {
        if [ $1 -ne 0]; then
        echo "instalation failure $2....."
        else
        echo "installation success $2......."
        fi

    for i in $@
    do
    yum list installed $i
    if [ $? -ne 0]; then
    echo "already installed"
    else
    yum install $i
    validate $? "done"
    echo "installation success"
    fi
    done
