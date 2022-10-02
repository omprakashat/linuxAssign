<<doc
Name:Omprakash A Timashetti 
Date:24/08/2022
Description:Write a script to replace 20% lines in a C file randomly and replace it with the pattern
Sample Execution:

1. ./replace_DEL.sh main.c
Before replacing
#incude <stdio.h>
int main()
{
         printf(“Hello world\n”);
}
After replacing
#incude <stdio.h>
int main()
{
<-----------Deleted------------>
}
2. ./replace_DEL.sh main1.c
Error : No such a file.
3. ./replace_DEL.sh main2.c
Error : main2.c is empty file. So can’t replace the string.
4. ./replace_DEL.sh
Error : Please pass the file name through command line.

doc

#!/bin/bash
if [ $# -ne 0 ]                                               #check for command line argument passed or not
then
    if [ -f $1 ]                                              #check for file present or not
    then
        if [ -s $1 ]                                          #Check for content of file  
        then
            echo "Before replacing"                           #Content of file before replacing
            cat $1
            totallines=(`wc -l < $1`)                         #Line contains in file                 
            if [ $totallines -gt 5 ]                          #if file contains greater than 5 
            then
                replace=$(($totallines/5))                    #Number of lines to be replace
               for i in `seq 1 $replace`
                do
                 randomNumbers=`shuf -i 1-$totallines -n1 `   #Get random number for replace
                 sed -i "$randomNumbers s/.*/<-------Deleted-------->/" $1    #replace file content
               done
               echo "After replacement"
               cat $1
        else
            echo  "File contains less than 5 line"               #Print error if file contains less than 5 line
        fi
        else
            echo "Error : main2.c is empty file. So can’t replace the string." #Print message if file not contains any thing
        fi
    else
        echo "Error : No such a file".                            #If file not present
    fi
else
    echo "Error : Please pass the file name through command line."  #print message if command line not passed

fi

