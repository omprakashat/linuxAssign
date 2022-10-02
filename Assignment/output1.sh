#!/bin/bash
<<doc
Name :Omprakash A Timashetti
Date : 09/08/2022
Description :Script to print contents of a directory without ls command

Sample Input1 :./output_ls.sh
Sample Output2: Assignments Classwork
Sample Input2:./ouput_ls.sh ~ ~/ECEP
Sample Output:/home/user:
              Downloads Documents Desktop Music Pictures Public Videos
              ECEP
              /home/user/ECEP:
              Linux_Systems Advnc_C Linux_Internals Data_Structures MC
Sample Input3:./output_ls.sh test
Sample Output3:output_ls.sh: Cannot access ‘Test’ : No such a file or directory.
doc
#Script to print contents of a directory without ls command
if [ $# -eq 0 ]                         #Check the command line argument
then
    echo *                              #Print the content of current working directory
else
    dir=($@)                            #Directory Name to be store in array
    for i in ${n[@]}
    do                                  #to get one by one directory through for loop
        if [ -d $i ]
        then
        echo $i:                        #Print Directory nam
        cd $i                           #change Directory to required Directory
        echo *                          #get the content
    else
        echo "output_ls.sh: Cannot access ‘Test’ : No such a file or directory."
    fi                        #To get the error message if no file or directory present
    done
fi
