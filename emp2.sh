#!/bin/sh
# emp2.sh: uses Command Line Argument

echo "Program name is: $0
The number of arguments are: $#
And the provided arguments are: $*"

grep "$1" $2

