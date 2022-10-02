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

if [ $# -ne 0 ]
then
function display()
{
    Array=($@)
    echo $1
    Array=(${Array[@]:1})
    if [ $# -eq 0 ]
    then 
       return
    fi
    display ${Array[@]} 
}
display $@
else
    echo "Error : Pass the arguments through command line."
fi
