#!/bin/bash
var=$1
ope=${var: -1}
#echo $ope
arr=($var)
n=$((${#arr[0]}-2))
#echo $n

case $ope in
    +)
    sum=0
      for i in `seq 0 $n`
      do
       # number=${var:$i:1}
       #echo $number
       sum=$(($sum$ope${var:$i:1}))
      done
     echo $sum
     ;;

 -)
     sub=${var:0:1}
     echo $sub
      for i in `seq 1 $n`
      do
        number=${var:$i:1}
       echo $number
       sub=$(($sub$ope${var:$i:1}))
      done
     echo $sub
     ;;
 x)
     mul=1
      for i in `seq 0 $n`
      do
       # number=${var:$i:1}
       #echo $number
       mul=$((${var:$i:1}*$mul))
      done
     echo $mul
     ;;
     
     /)   
    result=${var:0:1}
   # echo $resultq
      for i in `seq 1 $n`
      do
       div=`echo "scale=2; $result$ope${var:$i:1}" | bc`
      done
     echo $div
     ;;
 esac
