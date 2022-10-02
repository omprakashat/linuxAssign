#!/bin/bash
<<doc 
Name : Omprakash A Timashetti 
Date : 17/08/2022
Description: Write a script to delete empty lines from a file
Sample Input: ./delete_empty_lines.sh file.txt
Sample Output: Empty lines are deleted
               Hello
               How
               are
               you?
Sample Input :./delete_empty_lines.sh
Sample Output :Error: Please pass the file name through command line.
doc

#Script to delete Empty line from file

if [ $# -eq  1 ]
then 
    sed -i '/^[[:blank:]]*$/d' $1                #Command to delete empty lines,blank lines from file
    cat $1
else
    echo "Error: Please pass the file name through command linei." #if no file passed it will givean Error
fi
