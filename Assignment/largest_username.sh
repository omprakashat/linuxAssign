#!/bin/bash

<<doc
Name : Omprakash A Timashetti
Date :20/08/2022
Description :Display the longest and shortest user-names on the system
Sample Input :./largestst_username.sh
Sample Output :The Longest Name is: speech-dispatcher
               The Shortest Name is:lp
doc

Array=($(cut -d ":" -f1 /etc/passwd))
smallest=${Array[0]}                                            #initialize small with first user name
largest=${Array[0]}                                             #initialize large with first user name
for i in `seq 1  $((${#Array[@]}-1))`                           #looping number of user
do
    if [ ${#largest} -lt  ${#Array[$i]} ]                       #condition to Check for largest user name
      then
           largest=${Array[$i]}      
   fi
    if [ ${#smallest} -gt  ${#Array[$i]} ]                      #Condition to check fo the smallest user name
      then
           smallest=${Array[$i]}
   fi

done
echo "The Longest Name is: $largest"                            #Largest user name
echo "The smallest Name is:$smallest"                           #smallest user name 
