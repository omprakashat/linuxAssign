#!/bin/bash
<<doc
Name : Omprakash A Timashetti
Date : 21/08/2022
Description :Count the number of users with user IDs between given range.

Sample Input1: ./user_ids.sh
Sample Ouput1:Total count of user ID between 500 to 10000 is: 2

Sample Input2: ./user_ids.sh 0 100
Sample Output2:Total count of user ID between 0 to 100 is : 3

Sample Input3:./user_ids.sh 100
Sample Output3:Error : Please pass 2 arguments through CL.
               Usage : ./user_ids.sh 100 200

Sample Input4:./user_ids.sh 200 100
Sample Output4:Error : Invalid range. Please enter the valid range through CL.
doc

#Count the number of of users  with user id between given range. 

Array=($(cut -d ":" -f3 /etc/passwd))                          #Store userId in Array
count=0                                                               #Initialize count=0
if [ $# -eq 0 ]                                                      #If no Command line argument is passed
then                                                              
    for i in ${Array[@]}                                             #For loop to get each userid
    do                                                             
    if [ $i -gt 500 -a $i -lt 10000 ]                              #By defualt if no CLA passed it should check how many userId are there 
    then
        count=$(($count+1))                                          #Increament the count
        fi
    done
    echo "Total count of user ID between 500 to 10000 is:$count"     #Print the count

elif [ $# -eq 2 ]                                                    #Check the if CLA passed are equal 2
then
if [ $1 -lt $2 ]                                                     #condition to check first cla greater than Second
then
    for i in ${Array[@]}
    do
    if [ $i -gt $1 -a $i -lt $2 ]                                    #Check the number of id in between given range 
    then
        count=$(($count+1))                                          #get the number how many present in between given range
    fi
    done
    
    echo "Total count of user ID between $1 to $2 is:$count"         #Print the count
else
  echo "Error:Invalid range .Please enter the valid range through CL." #if first argument greater than second .print error message
fi
else
    echo "Error:Please pass 2 arguments throgh CL."         #if command line arguments are not equal to 0 and 2.print the error message
    echo "Usage:./user_ids.sh 100 200"
fi

