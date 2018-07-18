#!/bin/sh

# third if-else script for nested if

if echo "Comamnd 1" || echo "Command 2"
then
    echo "First if"
elif echo "Command 11" || echo "Command 22"
then
    echo "Second if"
else
    echo "Else part"
fi
