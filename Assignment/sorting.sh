#!/bin/bash
<<doc
Name:Omprakash A Timashetti
Date:23/08/2022
Description :Write a script to sort a given number in ascending or descending order 

Sample Input1:./sorting.sh -a 5 4 6 2 3 8 9 7 1
Sample Output :Ascending order of array is 1 2 3 4 5 6 7 8 9

Sample Input2 :./sorting.sh -d 5 4 6 2 3 8 9 7 1
Sample Output2 :Descending order of array is 9 8 6 5 4 3 2 1

Sample Input3:./sorting.sh 5 4 6 2 3 8 9 7 1
Sample Output3 :Error : Please pass the choice.
                Usage : ./sorting -a/-d 4 23 5 6 3
Sample Input4: ./sorting.sh
Sample Output:Error : Please pass the argument through command line.
              Usage : ./sorting -a/-d 4 23 5 6 3

Sample Input5:./sorting.sh -d 5 4 6 2 -3 8 -9 7 1
Sample Output : Descending order of array is 8 7 6 5 4 2 1 -3 -9
doc

if [ $# -ne 0 ]                                        #check for command line argument passed or not
then
Array=($@)                                             #Store the command line argument  in an array
option=$1                                              #Get option for ascending and descending
case $option in                                        #case statement for Ascending and descending 
   -a)
     for i in `seq $(($#-1))`                          #Ascending given Array  
     do
        for j in `seq 1 $(($#-$i-1))`                  
        do
           if [ ${Array[$j]} -gt ${Array[$(($j+1))]} ]   #if  array number grater than next number swap number
           then                                          #store in array
           large=${Array[$j]}
           Array[$j]=${Array[$(($j+1))]}
           Array[$(($j+1))]=$large
           fi
         done
      done
      echo "Ascending order of array is ${Array[@]:1} "      #Display the given array in Ascending order
       ;;
   -d)
       for i in `seq $(($#-1))`                             #Case statement for descending order
       do
           for j in `seq 1 $(($#-$i-1))`
           do
               if [ ${Array[$j]} -lt ${Array[$(($j+1))]} ]    #Condition for the value less than next value
               then 
               small=${Array[$j]}                             #If less than swap the values and store it in array
               Array[$j]=${Array[$(($j+1))]}
               Array[$(($j+1))]=$small
               fi

           done
       done
       echo "Descending order of array is ${Array[@]:1}"      #Display ths descending order of array
       ;;
   *)
      echo "Error : Please pass the choice."
      echo "Usage : ./sorting -a/-d 4 23 5 6 3"
      ;;
      
  esac
  else
      echo "Error : Please pass the argument through command line."
      echo "Usage : ./sorting -a/-d 4 23 5 6 3"
  fi
