#!/bin/bash
<<doc
Name : Omprakash A Timashetti
Date : 12/08/2022
Description : Write a script for arithmetic calculator using command line arguments

Sample Input :./arithmatic_calc.sh 25 + 41
Sample Output : 25 + 41 = 66
Sample Input :./arithmatic_calc.sh 10 x 5 
Sample Output : 10 x 5 = 50
Sample Input :./arithmatic_calc.sh 25 / 5
Sample Output : 25 / 5 = 5.00
Sample Input :./arithmatic_calc.sh 10.2 - 5.6
Sample Output : 10.2 - 5.6 = 4.6
Sample Input :./arithmatic_calc.sh 
Sample Output :Error : Please pass the arguments through command line.
               Usage:./arithmatic_calc.sh 2.3 + 6.7

Sample Input :./arithmatic_calc.sh 25
Sample Output : Error:Please pass 3 arguments.
                Usage:./arithmatic_calc.sh 2.3 + 6.7
doc
if [ $# -eq 0 ]     #check for the command line arguments 
                            
then 
    echo "Error : Please pass the arguments through command line."
    echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"
 
elif [ $# -eq 3 ]   #check for command line argument whether 3 argument passed or not
then 
case $2 in                      #case statement to get basic calculation
    +) sum=`echo "$1+$3" | bc ` #Addition of two number
        echo "$1 $2 $3 = $sum"
        ;;
    -) sub=`echo "$1-$3" | bc `  #substraction of two number
        echo "$1 $2 $3 = $sub"
        ;;
    x) mul=`echo "$1*$3" | bc `  #Multiplication of Two Number
        echo "$1 $2 $3 = $mul"
        ;;
    /) div=`echo "scale=2; $1/$3 " | bc ` #Division of Two Number
        echo "$1 $2 $3 = $div"
        ;;
    *) 
       echo "Error : Please enter valid operator" 
       
esac
    
else 
    echo "Error:Please pass 3 arguments."
    echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"

fi
