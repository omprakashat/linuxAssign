#!/bin/bash
<<doc
Name:Omprakash A Timashetti
Date:23/08/2022
Description:Use a recursive function to print each argument passed to the function

Sample Input1:./recursion.sh How are you? I am fine
Sample Output1:How
               are
               you?
               I
               am
               fine
Sample Input2:./recursion.sh
Sampele Output2:Error : Pass the arguments through command line.
doc

if [ $# -ne 0 ]                         #check for the command line Arguments
then
function display()                      #Function defination  
{
    Array=($@)
    echo $1                            #print first argument in 
    Array=(${Array[@]:1})              #Store it in Array
    if [ $# -eq 0 ]                   #Checking for end of argument
    then 
       return                         #Exit from loop
    fi
    display ${Array[@]}              #function call for recursive operation
}
display $@                           #function call
else
    echo "Error : Pass the arguments through command line."  #Error if no command line arguments are passed
fi
