#!?bin/bash
<<doc
Name : Omprakash A Timashetti
Date : 16/08/2022
Description :Write script to print contents of file from given line number to next given number of lines.
Sample Input :./print_lines.sh 5 3 myfile.txt
Sample Output :line number 5
               line number 6
               line number 7

Sample Input :./print_lines.sh myfile.txt
Sample Output :Error: arguments missing!
               Usage: ./file_filter.sh start_line upto_line filename
               For eg. ./file_filter.sh 5 5 <file>

Sample Input :./print_lines.sh 5 10 myfile.txt
Sample Output :Error: data.txt is having only 10 lines. file should have atleast 14 lines
doc
if [ $# -eq 3 ]                      #Check for the command line Arguments
then
total=$(($1+$2-1))
lines=$(cat $3 | wc -l)              #Get the number of lines ina file
if [ $lines -lt $total ]             #Comppare number of lines in file and required number of lines  
then
    echo "Error: $3 is having only $lines lines. file should have atleast $total lines"
else
head -$total $3 | tail -$2          #print the contents of file from given line number to next given number of lines
fi
else                                #Error if Arguments are not passed
    echo "Error: arguments missing!"
    echo "Usage: ./file_filter.sh start_line upto_line filename"
    echo "For eg. ./file_filter.sh 5 5 <file>"
fi

