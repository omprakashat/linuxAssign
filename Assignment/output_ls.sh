#!/bin/bash

if [ $# -eq 0 ]
then
    echo *

else
    n=($@)
    for i in ${n[@]}
    do
        if [ -d $i ]
        then
          cd $i 
           echo $i
        else
            echo it is not directory
        fi
    done
fi
