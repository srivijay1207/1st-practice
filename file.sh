
#!/bin/bash

USERID=$(id -u)
    if [ $USERID -ne 0 ]; then
    echo "plss log in with root user"
    exit 1  
    fi
    #validate(){
        # if [ $1 -ne 0 ]; then
         #echo "instalation $2 failure ....."
         #else
         #echo "installation $2 success ......."
         #fi
     #}

    #for i in $@

    #do
    yum list installed $i

    if [ $? -ne 0 ]; then

    echo "install"

    yum install $i -y

    else
    echo "already installed"

    fi
    

   # if [ $? -ne 0 ]; then

    #echo "$i is not installed lets install"

    #yum install $i -y

    #validate $? "package"

    #else

    #echo "$i installation success"

    #fi
#done