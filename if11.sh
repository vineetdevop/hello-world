#!/bin/sh

# 1st if conditional program 

echo "First if- conditional program..."
count=10
if [ $count -eq 10 ]
then
    echo "Succeeded..."
else
    echo "Failed..."
fi
