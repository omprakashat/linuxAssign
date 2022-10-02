#!/bin/bash
<<doc
Name : Omprakash A Timashetti
Date : 16/08/2022
Description : Write a script to print the length of each and every string using arrays

Sample Input :./string_length.sh hello hai how are you?
Sample Output :Length of string (hello) - 5
               Length of string (hai) - 3
               Length of string (how) - 3
               Length of string (are) - 3
               Length of string (you?) - 4

Sample Input  :./string_length.sh
Sample Output : Error : Please pass the arguments through command-line.
doc


if [ $# -ne 0 ]                                                  #Check for command line Arguments
then
    Array=( $@ )                                                 #Assigning Value to Array 
    for i in `seq 0 $((${#Array[*]}-1))`                         #Get number of Elements
    do
        echo "Length of string (${Array[$i]}) - ${#Array[$i]}"  #Print the elements and Length of element
             
    done
else
    echo "Error : Please pass the arguments through command-line." #Print error message if Command Line Arguments are not Passed
fi

