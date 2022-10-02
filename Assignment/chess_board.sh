#!/bin/bash
<<doc
Name : Omprakash A Timashetti
Date : 12/08/2022
Description : Write a script to print chess board
Sample Input : ..
Sample Output : Chess board to be printing on output.

doc

#Script to print chess board

for row in `seq 1 8`                 #Rows of chesss board
do
	for col in `seq 1 8`             #columns of chess board
	do
		rem=$(((row+col)%2))            #To get like chess board pattern we need check row equal to column
		if [ $rem -eq 0 ]
		then
			echo -n -e "\e[40m "    #Black box in chess board
		else
			echo -n -e "\e[47m "    #white box in Chess Board
		fi
	done
	echo -n -e "\e[0m "            #To make it normal
    echo 
done
  
