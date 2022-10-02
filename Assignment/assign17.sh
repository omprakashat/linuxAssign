#!/bin/bash
<<doc
Name:Omprakash A Timashetti
Date:24/08/2022
Description:
Sample Execution:
1. ./mounted_fs.sh /dev/sda2
File-system /dev/sda2 is mounted on / and it is having 98% used space with 3298220 KB free.

2. ./mounted_fs.sh /dev
/dev is not mounted.

3. ./mounted_fs.sh
Error : Please pass the name of the file-system through command line.
doc


if [ $# -ne 0 ]
then
FileSys=(`df | cut -d " " -f1`)                      #To get File System
Available=(`df | tr -s " " | cut -d " " -f4`)        #To get Available space
Use=(`df | tr -s " " | cut -d " " -f5`)              #To get Usage
mounted=(`df | tr -s " " | cut -d " " -f6`)         #To get where file system mounted

count=1                                        #initialize count=1 to know file mounted or not
for i in `seq 1 $((${#FileSys[@]}-1))`            
do
    if [ $1  = ${FileSys[$i]} ]                      #Check argument passed present in file system
    then                                             #Print Details of file system   
        echo "File-system $1 is mounted on ${mounted[$i]} it is having ${Use[$i]} used space with  ${Available[$i]} free"
        count=0                                   
    fi

done
    if [ $count -eq 1 ]                              #if count is equal to 1 print file is not mounted on system
    then
        echo "$1 is not Mounted"
    fi
else                                                #print error message if no argument passed
    echo "Error : Please pass the name of the file-system through command line."
fi
