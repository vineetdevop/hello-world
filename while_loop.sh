#!/bin/bash
# Basic while loop

counter=1

while [ $counter -le 10 ]
do
    echo $counter
    #counter=counter+1
    ((counter++))
    #((++counter))
    #counter=$((counter+2))
    #((counter=counter+3))
    #((counter+=4))
    
done
echo All done
