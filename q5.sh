#!/bin/bash

str="$1"

len=${#str}
l=len/2

for (( i=$len-1; i>=0; i-- ))
do
   reversed_string="$reversed_string${str:$i:1}"
done

echo "$reversed_string"

for (( i=$len-1; i>=0; i-- ))
do
   reversed_string1="$reversed_string1${str:$i:1}"
done
y=$(echo "$reversed_string1" | tr "0-9a-zA-Z" "1-9a-zA-Z ")
echo $y

for (( i=$l-1; i>=0; i-- ))
do
   reversed_string3="$reversed_string3${str:$i:1}"
done

for (( i=$l; i<=$len; i++ ))
do
   reversed_string3="$reversed_string3${str:$i:1}"
done

echo "$reversed_string3"
