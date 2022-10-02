#!/bin/bash
<<doc
Name        :Omprakash A Timashetti.
Date        :11/08/2022.
Description :Read 'n' and generate a pattern given below(number increment from top to bottom)
Sample input:Enter the number: 4
Sample Output :1
               2 3
               4 5 6 
               7 8 9 10 
doc

read -p "Enter the number :" number  #Number of element
i=1                                  #initialize i to get pattern
for row in `seq $number`             #number of row to be printed
do
    for col in `seq $row`            #Number of column to be printed    
    do
        echo -n "$i "                #Required value for pattern
       i=$(($i+1))
    done
  echo
done


