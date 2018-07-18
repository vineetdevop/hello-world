#!/bin/sh

# 1st if conditional program 

echo "First if- conditional program..."

if grep vineet anish.txt >/dev/null || grep fvfhcd anish.txt >/dev/null
then
    echo "Succeeded..."
else
    echo "Failed..."
fi
