#!/bin/bash
<<doc
Name : Omprakash A Timashetti
Date : 17/08/2022
Description : Write a script to perform arithmetic operation on digits of a given number

Sample Input :./operator_dependent.sh 1234+
Sample Output:Sum of digits = 10 

Sample Input:./operator_dependent.sh 8312-
Sample Output :Subtraction of digits = 2

Sample Input :./operator_dependent.sh 5487
Sample Output : Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/

Sample Output :./operator_dependent.sh 1111x
Sample Output :Multiplication of digits = 1

Sample Input :./operator_dependent.sh 12/
Sample Output:Division of digits = .50

Sample Input : ./operator_dependent.sh
Sample Output : Error : Please pass the arguments through CL.
                Usage : ./operator_dependent.sh 2345+
doc

#Script to perform arithmatic operation on digits of a iven number

if [ $# -eq 1 ]                        #check for command line arguments
then
string=$1                              #istring of digit stored in one variable
operator=${string: -1}                 #to get last digit which is operator
                      
n=$((${#string}-2))                     #Get length of string and store it in variable n
case $operator in                      #Used case statement to perform operation 
    +)
    sum=${string:0:1}
      for i in `seq 1 $n`              #Addition of digits
      do
       sum=$(($sum+${string:$i:1}))
      done
     echo "Sum of digits = $sum"
     ;;

    -)
       sub=${string:0:1}
       for i in `seq 1 $n`              #Substraction of Digits
       do
         sub=$(($sub-${string:$i:1}))
       done
       echo "Substraction of digits = $sub"
       ;;
    x)
       mul=${string:0:1}
       for i in `seq 1 $n`
       do                               #Multiplication of Digits
       mul=$((${string:$i:1}*$mul))
       done
       echo "Multiplication of digits = $mul"
       ;; 
     
    /)   
       div=${string:0:1}
       for i in `seq 1 $n`
       do                                #Division of Digits
       div=`echo "scale=2; $div/${string:$i:1}" | bc` 
       done
       echo "Division of digits = $div"
       ;;
   *)
       echo "Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)"
        #if we dont pass any operator this error message will be printed
 esac
 else
     echo "Error : Please pass the arguments through CL." #If no argument passed this error message is printed
     echo "Usage : ./operator_dependent.sh 2345+"
 fi
