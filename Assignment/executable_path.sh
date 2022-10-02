<<doc
Name:Omprakash A Timashetti
Date:24/08/2022
Description:For each directory in the $PATH, display the number of executable files in that directory

Sample execution:

1. ./executable_path.sh
Current dir: /usr/local/sbin
current count: 0
Current dir: /usr/local/bin
current count: 0
Current dir: /usr/sbin
current count: 205
Current dir: /usr/bin
current count: 1889
Current dir: /sbin
current count: 187
Current dir: /bin
current count: 159
Current dir: /usr/games
current count: 5
Current dir: /usr/local/games
current count: 0
Total – 2445
doc

#!/bin/bash
Array=(`echo $PATH | tr ":" " " `)        #Get all the directory n Array
total=0                                   #initialize total =0
for i in ${Array[@]}                        #using loop to get one by one directory
do
   if [ -d $i ]                          #check for directory
    then
        count=0                           #initialize count=0
        echo "Current dir:$i"            #Print current directory name
        cd $i                            #Change tha directory
        list=(`ls`)
        for i in ${list[@]}              #get all file of that directory
        do
            if [ -f $i -a -x $i ]       #check for file exist and is it executable
            then
                count=$(($count+1))     #Count the executable file  
            fi
        done
        echo "Current Count:$count"      #priint the count of current directory
        total=$(($total+$count))         #Get the total count
     fi
 done
 echo "Total:$total"                    #print the total count
