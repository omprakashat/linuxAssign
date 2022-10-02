#!/bin/bash
<<doc
Name : Omprakash A Timashetti
Date:24/08/2022
Description:Write script called say_hello, which will print greetings based on time

Sample Execution:
1. When we start shell (whenever you opening new tab or terminal)
Good Morning user, Have nice day!
This is Thursday 08 in June of 2017 (10:44:10 AM)
doc

#Write script called say_hello, which will print greetings based on time
Hour=`date | cut -d " " -f4 | cut -d ":" -f1`      #Get Hour
Day=`date | cut -d " " -f1`                        #To get only Day
Date=`date | cut -d " " -f3`                      #To get Date
Month=`date | cut -d " " -f2`                     #To get Month
Year=`date | cut -d " " -f6`                      #To Get Year
FullHour=`date | cut -d " " -f4`                  #To get fulltime  
Meridian=`date +%p`                               #To get AM/PM
if [ $Hour -gt 5 -a $Hour -le 12 ]
then                                            #if Hour is between 5 an 12 print Good Morning
    Greet=`echo "Good Morning"`               
elif [ $Hour -gt 12 -a $Hour -le 14 ]           #if Hour is between 12 and 14 print Good noon
then
   Greet=`echo "Good Noon"`
elif [ $Hour -gt 14 -a $Hour -le 17 ]           #If Hour is in between 14 and 17 print Good Afternoon
then
    Greet=`echo "Good Afternoon"`
elif [ $Hour -gt 17 -a $Hour -le 21 ]           #If Hour is between 17 and 21 print Good Evening 
then
   Greet=`echo "Good Evening"`                  
else
    Greet=`echo  "Good night"`              #Else print Good Night
fi                                          #Greeting Message 
echo -e "$Greet $(whoami),have a nice day! \nThis is $Day $Date in $Month of $Year ($FullHour)$Meridian "


