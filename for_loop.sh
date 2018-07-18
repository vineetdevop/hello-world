#!/bin/bash

# for_loop.sh : first for-loop program


names='Rajesh Mahesh Sudarsan Ashok Vineet'


for name in $names
do
    if [ $name="Vineet" ]
        then
            echo "$name found"
            break
    else
        echo "Not found!" 
    fi
    #echo $name

done
echo "All done!"
