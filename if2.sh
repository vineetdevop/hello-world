#!/bin/sh

# second if-conditional program for only one if-statement without else statement

echo "Second if-statement..."

if grep Bibhavesh anish.txt >/dev/null || echo "Command 2"
    then
        echo "Passed..."
fi
