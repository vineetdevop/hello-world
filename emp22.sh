#!/bin/sh

# emp22.sh: basic CLA handling


echo "Program name is: $0
The number of arguments provided are: $#
And the content of the provided arguments are: $*"

grep "$1" $2

echo "My first argument is: $1"
echo "My second argument is: $2"
