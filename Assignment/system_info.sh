#!/bin/bash
<<doc
Name:Omprakash A Timashetti
Date:23/08/2022
Description:Write a script to print system information using commands

Sample Execution:
./system_info.sh
1. Currently logged users
2. Your shell directory
3. Home directory
4. OS name & version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information.
10. Memory Informations
11. File system information.
12. Currently running process.
Enter the choice : 2
Your shell directory is /bin/bash

doc

option=y                            #For first time initialize option to y=yes to get first time menu
while [ $option = y ]
do

echo "1. Currently logged users"     #Dispaly menu
echo "2. Your shell directory"
echo "3. Home directory"
echo "4. OS name & version"
echo "5. Current working directory"
echo "6. Number of users logged in"
echo "7. Show all available shells in your system"
echo "8. Hard disk information"
echo "9. CPU information."
echo "10. Memory Informations"
echo "11. File system information."
echo "12. Currently running process."
read -p "Enter the choice:" choice
 case $choice in
     1)
         echo "Currently logged in user :" $(whoami)      #Get Currently logged in user
         ;;
     2)
         echo "Your shell Directory :" $SHELL            #for shell directory
         ;;
     3)
         echo "Home Directory is :" $HOME                #For home directory
         ;;
     4)
        echo "OS name & version is:" $(uname) $(uname -r)  #for OS name and version
        ;;
    5)
        echo "Current working directory is:" $(pwd)        #to get current working directory
        ;;
    6)
        echo "Number of users logged in:" $(who -q)       #for number of logged in user
        ;;
    7)
        echo "All available shell in your system:" $(cat /etc/shells) #To get Avalable shell
        ;;
    8)
        echo "Hard disk information:" $(hwinfo)      #To get hardware information 
        ;;
    9)
        echo "CPU Information :" $(cat /proc/cpuinfo)   #To get CPU information
        ;;
    10)
        echo "Memory information" $(cat /proc/meminfo)   #To get memory information
        ;;
    11)
        echo "File System info" $(df)                     #for File system
        ;;
    12)
        echo "Current running process" $(ps)            #Current running process
        ;;
    *)
        echo "Error : Invalid option, please enter valid option"  #if no choice given it will print error message
        ;;
 esac
 read -p "do you want to continue:y/n" option                    #Enter option to continue/stop 
 done
