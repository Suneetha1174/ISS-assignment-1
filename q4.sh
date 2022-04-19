#!/bin/bash
read string
IFS=', ' read -r -a arr <<< "$string"

let n=${#arr[*]}

sort() {
        
        for ((i = 0; i<n; i++))
do
    
    for((j = 0; j<n-i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
}

sort ${arr[*]}
echo ${arr[*]}
