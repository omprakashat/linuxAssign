#!/bin/bash
<<doc
Name : Omprakash A Timashetti
Date : 18/08/2022
Description : Shell script to convert string lower to upper and upper to lower

Sample Input :./upper_lower.sh file.txt
              1 – Lower to upper
              2 – Upper to lower
              Please select option : 1
Sample Output:WHAT IS OS?
              WHAT ARE THE DIFFERENT OS?
              WHEN IS OS USED?
              WHAT IS PARTITION AND ITS USE?
              HOW MANY PARTITIONS CAN BE DONE?
Sample Input :./upper_lower.sh file.txt
              1 – Lower to Upper
              2 – Upper to Lower
              Please select option : 2
Sample Output :what is os?
              what are the different os?
              when is os used?
              what is partition and its use?
              how many partitions can be done?
Sample Input:./upper_lower.sh file1.txt
Sample Output:Error: No contents inside the file.
Sample Input:./upper_lower.sh
Sample Output: Error : Please pass the file name through command line.
doc

if [ $# -eq 1 ]                        #Check condition for command line argument
then
if [ -f $1 ]                           #Condition to check wheather file given present or not
then
if [ -s $1 ]                           #Condition to check file contain some content or not
then
echo "1 – Lower to upper"
echo "2 – Upper to lower"
read -p "Please select option:" choice  #Enter choice to lower to upper and upper to lower
case $choice in
    1)
        cat $1 | tr [:lower:] [:upper:]  #Change string to upper case
        ;;
    2)
        cat $1 | tr [:upper:] [:lower:]  #change string to lower case
        ;;
    *)
        echo "Please enter valid choice."
        ;;
esac 
else
    echo "Error: No contents inside the file." #provide message if file has no content
fi
else
    echo "Error: No such $1 file present."  #provide messageif file not present
fi
else           #Error message if command line argument not passed
echo "Error : Please pass the file name through command line." 
fi
