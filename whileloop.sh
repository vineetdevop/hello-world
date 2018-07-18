#!/bin/bash

# whileloop.sh: basic while loop program

counter=1

while [ $counter -le 10 ]
do
    echo "$counter"
    #counter
    #counter=`expr $counter + 1`
    (($counter++))
    #echo "$counter"
done    
