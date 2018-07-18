#!/bin/bash

echo "Enter two numbers"
read num1 num2

#sum=$((num1 + num2))

sum=$(expr "$num1" + "$num2")

#sum='expr $num1 + $num2' # will not work

echo $sum
