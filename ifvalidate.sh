#!/bin/bash

# ifvalidate.sh: take an input from user and validate it


echo "Please provide an input: \c"
read name

if [ $name='Ekagga' ]
then
    echo "$name"
else
    echo "Not found!"
fi
