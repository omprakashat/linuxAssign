echo "Enter number of elements: "
read n
echo "Enter array elements: "
for ((i=0; i<n; i++))
do
read a[$i]
done
for ((i=0; i<n; i++))
do
for ((j=$i; j<n; j++))
do
if [ ${a[$i]} -gt ${a[$j]} ]
then
temp=${a[$i]}
a[$i]=${a[$j]}
a[$i]=$temp
fi
done
done
echo "Array after sorting: "
for ((i=0; i<n; i++))
do
echo ${a[$i]}
done
