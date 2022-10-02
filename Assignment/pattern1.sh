#!/bin/bash
<<doc
Name         : Omprakash A Timashetti.
Date         : 11/08/2022.
Description  : Read 'n' and generate a pattern given below(number increment from left to right)
Sample input : Enter the number: 4
Sample Output:1
              1 2
              1 2 3 
              1 2 3 4 
doc

read -p "Enter the number :" number  #Number of element
for row in `seq $number`             #number of row to be printed
do
    for col in `seq $row`          #Number of column to be printed    
    do
        echo -n "$col "          #Required value for pattern
    
    done
  echo
done


